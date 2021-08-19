Rails.application.routes.draw do
  # root 'boards#index'

  get 'boards', to: 'boards#index'
  get 'boards/:id', to: 'boards#show'
  get 'boards/new', to: 'boards#new'
  post 'boards', to: 'boards#create'
end
