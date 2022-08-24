Rails.application.routes.draw do
  # get 'profiles/index'
  get 'profile/show', to: "profiles#show"
  devise_for :users
  root to: "pages#home"
  resources :granny_offers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings
  resources :granny_offers
  # resources :profiles
end
