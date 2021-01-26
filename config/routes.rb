Rails.application.routes.draw do
  
  get 'hunt_progressions/new'
  get 'hunt_progressions/dead_horse', to: "hunt_progressions#dead_horse", as: "dead_horse"
  post "/hunt_progressions/create", to: "hunt_progressions#create", as: "hp_create"
  get "/hunts/1", to: "hunts#level_1", as: "level_1"
  get "/hunts/2", to: "hunts#level_2", as: "level_2"
  get "/hunts/3", to: "hunts#level_3", as: "level_3"
  get "/hunts/who-do-I-hate/The-Gentry", to: "hunts#level_4", as: "level_4"
  get "/hunts/who-do-I-hate/The-Peasantry", to: "hunts#rotunda4"
  get "/hunts/5", to: "hunts#level_5", as: "level_5"

  
  # get '*unmatched_route', to: 'application#raise_not_found'

  get "/hints/1", to: "hints#hint_level_1", as: "level_1_hint"
  get "/hints/2", to: "hints#hint_level_2", as: "level_2_hint"
  get "/hints/3", to: "hints#hint_level_3", as: "level_3_hint"
  get "/hints/4", to: "hints#hint_level_4", as: "level_4_hint"
  get "/hints/5", to: "hints#hint_level_5", as: "level_5_hint"

  get "/hunts/welldoneyoucrackedthecase", to: "hunts#rotunda"
  root "static#splash_page"

  post "/findinglevel", to: "hunts#level_select", as: "continue_level"
  get "/redirect", to: "hunts#level_select", as: "current_level"
  
  get "/users/login", to: "users#login", as: "login_user"
  post "/logging_in", to: "users#logging_in"
  delete "/logout", to: "users#logout", as: "logout"
  delete "/users/:id", to: 'users#destroy', as: "delete_user"
  resources :hunts, only: [:show]
  resources :users, only: [:new, :create, :show]
  



end
