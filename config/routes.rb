Rails.application.routes.draw do
  devise_for :users
  root to: "maps#index"
  get   'maps/new' =>  'maps#new'
end
