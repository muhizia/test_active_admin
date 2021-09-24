Rails.application.routes.draw do
  resources :types
  resources :materials
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'home#index'
end