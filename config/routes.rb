Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]

  resources :maps, only: [:new, :create]

  root to: "maps#index"
end
