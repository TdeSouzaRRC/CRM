Rails.application.routes.draw do
  get 'customers/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "customers#index"

  get "customers/alphabetized", to: "customers#alphabetized", as: "alphabetized"
  get "customers/missing_email", to: "customers#missing_email", as: "missing_email"
end
