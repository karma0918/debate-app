Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  root to: "users#index"
  resources :users, only: [:index]
  resources :room, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
