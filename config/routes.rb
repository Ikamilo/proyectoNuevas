Rails.application.routes.draw do
  resources :pizzas
  resources :flavors
  resources :sizes
  resources :sauces
  resources :aditions
  resources :ingredients
  resources :shapes
  resources :users

  root "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
