Rails.application.routes.draw do

  get '/terms', to: 'pages#terms'

  devise_for :users

  resources :equipment do
    resources :rentals, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create, :index ]
  end

  namespace :account do
    resources :equipment
    resources :rentals, only: [ :index, :edit, :update, :destroy ]
  end

  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
