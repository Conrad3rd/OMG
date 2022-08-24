Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :granny_offers do
    resources :bookings, only: :create
  end


  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:update]
  resources :bookings
  resources :granny_offers
  resources :profiles, only: [:show, :edit]
end
