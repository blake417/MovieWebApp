Rails.application.routes.draw do

  root to: 'dashboard#index'

  get '/profile', to: 'dashboard#profile', as: "profile"

  resources :users
  resources :movies
  resources :genres

  get    '/login',  to: 'session#new'
  post   '/login',  to: 'session#create'
  delete '/logout', to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
