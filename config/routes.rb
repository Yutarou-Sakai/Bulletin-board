Rails.application.routes.draw do
  # root 'boards#index'

  resources :boards, only: [:index, :show, :new, :create]
end
