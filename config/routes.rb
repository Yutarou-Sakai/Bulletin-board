Rails.application.routes.draw do
  # root 'boards#index'

  get 'boards', to: 'boards#index'
  get 'boards/new', to: 'boards#new'
end
