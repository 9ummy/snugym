Rails.application.routes.draw do
  get 'post/index'
  get 'post/new1'
  get 'post/create'
  post 'post/create'
  get 'post/edit'
  get 'post/update'
  get 'post/destroy'

  get 'gym', to: 'gym#index'
  get 'gym/show/:id', to: 'gym#show'
  get 'gym/new', to: 'gym#new'
  post 'gym/new', to: 'gym#create'
  
  get 'yoga', to: 'yoga#index'
  get 'yoga/show/:id', to: 'pilates#show'
  get 'yoga/new', to: 'yoga#create'
  post 'yoga/new', to: 'yoga#create'
  
  get 'pilates', to: 'pilates#index'
  get 'pilates/show/:id', to: 'pilates#show'
  get 'pilates/new', to: 'pilates#new'
  post 'pilates/new', to: 'pilates#create'


  get 'sessions/new'
  get 'users/new'
  
  root 'users#new'
  
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
