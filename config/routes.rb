Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #READ ALL
  get "restaurants", to: "restaurants#index"

  #CREATE
  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants", to: "restaurants#create"

  #READ ONE
  # NB: The `show` route needs to be *after* `new` route.
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  #UPDATE
  get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  patch  "restaurants/:id",      to: "restaurants#update"

  #DELETE
  delete "restaurants/:id",      to: "restaurants#destroy"

  # resources :restaurants
end
