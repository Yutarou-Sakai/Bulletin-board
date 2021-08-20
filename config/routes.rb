Rails.application.routes.draw do
  get 'home/index'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'boards#index'

  resources :boards
  resources :comments, only: [:create, :destroy]
end
