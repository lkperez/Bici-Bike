Rails.application.routes.draw do

  resources :routes
  resources :rides
  resources :reviews
  resources :reports
  resources :members
  resources :bikes
  root to: "stations#index"
  resources :stations
  get '/index.html', to: 'stations#index'
  get "/pages/:page" => "pages#show"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/signup', to: 'members#new', as: 'signup'
  post '/signup', to: 'members#create'
  resources :users, only: [:new, :create]
  get 'pages/map', to: 'pages#map'

end
