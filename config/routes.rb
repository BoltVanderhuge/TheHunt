Rails.application.routes.draw do
  
  get 'hunt_progressions/new'
  root "static#splash_page"
  
    get "/users/login", to: "users#login", as: "login_user"
    post "/logging_in", to: "users#logging_in"
    delete "/logout", to: "users#logout", as: "logout"

  resources :users, only: [:new, :create, :show]

  get "/hunts/:level", to: "hunt#show", as: "hunt"
  post "/hunt_progressions/create", to: "hunt_progressions#create", as: "hp_create"



end
