Rails.application.routes.draw do  
  root 'home#index'
  
  get 'mypage', to: 'users#show'
  resources :users, only: [:new, :create]

  resources :boards
  resources :comments, only: [:create, :destroy]

  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
