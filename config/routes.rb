Rails.application.routes.draw do

  resources :routes, except: [:create, :update, :delete, :destroy]
  resources :rides, except: [:create, :update, :delete, :destroy]
  resources :reviews, except: [:create, :update, :delete, :destroy]
  resources :reports, except: [:create, :update, :delete, :destroy]
  resources :members, except: [:create, :update, :delete, :destroy]
  resources :bikes, except: [:create, :update, :delete, :destroy]
  root to: "stations#index"
  resources :stations
  get "/pages/:page" => "pages#show"

end
