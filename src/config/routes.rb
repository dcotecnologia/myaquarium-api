# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users,
    controllers: {
        sessions: "users/sessions",
        registrations: "users/registrations",
        confirmations: "users/confirmations"
    }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
end
