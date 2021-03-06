Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders
  resources :meals, only: [:show, :index]
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  #resources :restaurants 
  root 'meals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
