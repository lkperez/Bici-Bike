Rails.application.routes.draw do
  get 'routes/index'
  get 'routes/show'
  get 'routes/new'
  get 'routes/edit'
  get 'rides/index'
  get 'rides/show'
  get 'rides/new'
  get 'rides/edit'
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  get 'reviews/edit'
  get 'reports/index'
  get 'reports/show'
  get 'reports/new'
  get 'reports/edit'
  get 'members/index'
  get 'members/show'
  get 'members/new'
  get 'members/edit'
  get 'bikes/index'
  get 'bikes/show'
  get 'bikes/new'
  get 'bikes/edit'
  root to: "stations#index"

  resources :stations

end
