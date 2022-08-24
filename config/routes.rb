Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :granny_offers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:update]
  resources :bookings
  resources :granny_offers
  resources :profiles, only: [:show, :edit]
end
