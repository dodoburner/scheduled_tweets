class MainController < ApplicationController
  def index
    flash.now[:notice] = "Logged in succesfully"
    flash.now[:alert] = "Failed to log in"
  end
end