Demo::Application.routes.draw do
  get "users/show"

  devise_for :users
  resources :users, only: [:show]

  get 'home/about', to: 'home#about', as: 'about'
  root to: 'home#index'
end
