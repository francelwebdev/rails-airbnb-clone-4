Rails.application.routes.draw do

  devise_for :users

  resources :equipment do
    resources :rentals
  end

  namespace :account do
    resources :equipment
  end

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
