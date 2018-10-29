Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]

  resources :maps do
    collection do
      get "search"
    end
    resources :likes, only: [:create, :destroy]
  end

  root to: "maps#index"
end
