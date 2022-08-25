Rails.application.routes.draw do
  # get 'profiles/index'
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
  resources :profiles, only: %i[show edit]
end
