Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  get 'users/index'
  root to: "rooms#index"
  resources :users, only: [:index]
  resources :rooms, only: [:index, :new, :create] do
    collection do
      get 'search'
    end
    resources :messages, only: [:index,:create]
  end
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
