Rails.application.routes.draw do
  resources :flavors
  resources :sizes
  resources :sauces
  resources :aditions
  resources :ingredients
  resources :shapes
  resources :pizzas
  resources :users do 
    resources :pizzas do
      resources :aditions
    end
  end
  
  root "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
