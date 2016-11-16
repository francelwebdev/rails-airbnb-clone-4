Rails.application.routes.draw do

  devise_for :users

  resources :equipment

  namespace :account do
    resources :equipment
    resources :rentals
  end

  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
