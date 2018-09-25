Rails.application.routes.draw do
  devise_for :users
  get 'maps' => 'maps#index'
end
