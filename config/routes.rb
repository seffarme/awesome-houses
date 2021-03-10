Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :properties, only: [ :index, :show, :new, :create, :edit, :update, :destroy ] do
    collection do
      get :by_category
    end
    resources :bookings, only: [ :new, :create ]
  end
end
