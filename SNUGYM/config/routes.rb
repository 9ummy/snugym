Rails.application.routes.draw do
  # get 'gym', to: 'gym#index'
  # get 'gym/:id', to: 'gym#show'
  
  get 'gym', to: 'gym#index'
  get 'gym/:id', to: 'gym#show'
  get 'gym/new'
  post 'gym/new', to: 'gym#create'
  
  get 'yoga', to: 'yoga#index'
  get 'yoga/new'
  post 'yoga/new', to: 'yoga#create'
  
  get 'pilates', to: 'pilates#index'
  get 'pilates/new'
  post 'pilates/new', to: 'pilates#create'
  
  get 'sessions/new'
  get 'users/new'
  
  root 'users#new'
  
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
