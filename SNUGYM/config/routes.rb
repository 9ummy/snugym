Rails.application.routes.draw do
  get 'gym/index'
  get 'yoga/index'
  get 'pilates/index'
  get 'gym/new'
  get 'yoga/new'
  get 'pilates/new'
  get 'sessions/new'
  get 'users/new'
  root 'users#new'
  
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  resources :gym, only: [:index, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
