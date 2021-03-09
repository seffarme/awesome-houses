Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bookings, only: [ :new, :create ]
  resources :properties, only: [ :index, :show, :new, :create, :edit, :update, :destroy]
end
