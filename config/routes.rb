Rails.application.routes.draw do
  root 'login#index'
  post "login" => "login#create"
  resources :shareds
  resources :comments
  resources :categories do
    resources :posts
  end
  resources :posts
  resources :users do
    resources :posts
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
