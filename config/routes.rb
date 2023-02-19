Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "about-us", to: "about#index", as: :about

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"

  delete "logout", to: "sessions#delete"
  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"

  root "main#index"
end
