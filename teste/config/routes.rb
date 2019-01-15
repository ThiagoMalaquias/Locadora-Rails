Rails.application.routes.draw do
  resources :pedidos
  resources :filmes
  resources :classis
  resources :cats
  devise_for :users
  resources :home 

  root to: 'home#index'
  get 'carts/show'
  get "/home/:id" => "home#show"
  get "/cat/:id" => "home#cat"
  get "/carrinho" => "cart#card"
  post '/add_to_cart/:id' => 'cart#add_to_cart', :as => 'add_to_cart'
  post '/remove_to_cart/:id' => 'cart#remove_to_cart', :as => 'remove_to_cart'
  get "/deslogar" => "user#logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
