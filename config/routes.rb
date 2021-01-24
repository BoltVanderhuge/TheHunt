Rails.application.routes.draw do
  
  get 'hunt_progressions/new'
  post "/hunt_progressions/create", to: "hunt_progressions#create", as: "hp_create"
  get "/hunts/1", to: "hunts#level_1", as: "level_1"
  get "/hunts/2", to: "hunts#level_2", as: "level_2"
  get "/hunts/3", to: "hunts#level_3", as: "level_3"
  root "static#splash_page"

  post "/findinglevel", to: "hunts#level_select", as: "current_level"
  
  get "/users/login", to: "users#login", as: "login_user"
  post "/logging_in", to: "users#logging_in"
  delete "/logout", to: "users#logout", as: "logout"
  delete "/users/:id", to: 'users#destroy', as: "delete_user"
  resources :hunts, only: [:show]
  resources :users, only: [:new, :create, :show]
  



end
