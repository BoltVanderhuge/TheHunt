Rails.application.routes.draw do
  root "static#splash_page"
  resources :users, only: [:new, :create]

end
