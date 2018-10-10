Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]

  resources :maps, only: [:new, :create, :show] do
    collection do
      get "search"
    end
  end

  root to: "maps#index"
end
