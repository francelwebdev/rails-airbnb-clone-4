Rails.application.routes.draw do

  devise_for :users

  resources :equipment do
    resources :rentals, only: [ :new, :create ]
  end

  namespace :account do
    resources :equipment
    resources :rentals, only: [ :index ]
  end

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
