class PasswordsController < ApplicationController
  before_action :require_user_logged_in!, only: [:edit, :update]

  def edit

  end

  def update
    if Current.user.update(password_params)
      redirect_to root_path, notice: "Password updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new_reset

  end

  def create_reset
    @user = User.find_by(email: params[:email])

    if @user
      PasswordMailer.with(user: @user).reset.deliver_now
    end

    redirect_to root_path, notice: "If a user has been found with that email, we have sent a link to reset your password"
  end

  def edit_reset
    @user = User.find_signed!(params[:token], purpose: "password_reset")
    rescue ActiveSupport::MessageVerifier::InvalidSignature
      redirect_to reset_password_path, alert: "Your link has expired, please try again"
  end

  def update_reset
    @user = User.find_signed!(params[:token], purpose: "password_reset")
    if @user.update(password_params)
      redirect_to root_path, notice: "Password reset!"
    else
      render :edit_reset, status: :unprocessable_entity
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end