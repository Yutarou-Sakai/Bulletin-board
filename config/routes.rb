Rails.application.routes.draw do
  root 'boards#index'

  resources :boards
  resources :comments, only: [:create, :destroy]
end
