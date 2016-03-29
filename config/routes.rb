Rails.application.routes.draw do
  resources :clients
  get '/clients/:id', to: 'clients#show'
  root 'clients#index'
  get 'こんにちは', to: 'clients#index'
  get '/clients/:id/clients', to: 'clients#update'
  post '/clients/client', to: 'clients#create'
  resources :clients do
    resources :orders
  end
end
