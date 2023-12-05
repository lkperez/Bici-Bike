Rails.application.routes.draw do

  resources :routes, except: [:create, :update, :delete, :destroy]
  resources :rides, except: [:update, :delete, :destroy]
  resources :reviews, except: [:create, :update, :delete, :destroy]
  resources :reports, except: [:create, :update, :delete, :destroy]
  resources :members, except: [:create, :update, :delete, :destroy]
  resources :bikes, except: [:create, :update, :delete, :destroy]
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

end
