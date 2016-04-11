Rails.application.routes.draw do
  resources :movies
  devise_for :users, controllers: { sessions: "users/sessions" }
  resources :clients
  get '/clients/:id', to: 'clients#show'
  root 'clients#index'
  get 'こんにちは', to: 'clients#index'
  get '/clients/:id/clients', to: 'clients#update'
  post '/clients/client', to: 'clients#create'
  get '/home', to: 'home#index'
  post '/home', to: 'home#index'
  get '/orders', to: 'orders#index'
  resources :clients do
    resources :orders
  end
end
