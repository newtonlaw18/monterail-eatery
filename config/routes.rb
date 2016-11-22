Rails.application.routes.draw do
  resources :orders
  resources :meals
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :restaurants do
  	resources :meals
  end
  root 'meals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
