Rails.application.routes.draw do
  
  
  
  
  
  
  
  
  
  root to: "stations#index"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  resources :users, only: [:new, :create]
end