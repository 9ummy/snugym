Rails.application.routes.draw do
  get 'pil_review/index'
  get 'pil_review/index' => 'pil_review#show'
  get 'pil_review/index' => 'pil_review#new'
  post 'pil_review/index' => 'pil_review#create'
  post 'pil_review/index/:id' => 'pil_review#destroy'  

  get 'yoga_review/index'
  get 'yoga_review/index' => 'yoga_review#show'
  get 'yoga_review/index' => 'yoga_review#new'
  post 'yoga_review/index' => 'yoga_review#create'
  post 'yoga_review/index/:id' => 'yoga_review#destroy'


  get 'post/index'
  get 'post/index' => 'post#create'
  get 'post/index' => 'post#show'
  post 'post/index' => 'post#create'
  post 'post/index/:id' => 'post#destroy'
  
  get 'review/index'
  get 'review/index' => 'review#show'
  get 'review/index' => 'review#new'
  post 'review/index' => 'review#create'
  post 'review/index/:id' => 'review#destroy'

  # get 'gym', to: 'gym#index'
  # get 'gym/:id', to: 'gym#show'
  
  get 'gym', to: 'gym#index'
  get 'gym/show/:id', to: 'gym#show'
  get 'gym/new', to: 'gym#new'
  post 'gym/new', to: 'gym#create'
  
  get 'yoga', to: 'yoga#index'
  get 'yoga/show/:id', to: 'yoga#show'
  get 'yoga/new', to: 'yoga#new'
  post 'yoga/new', to: 'yoga#create'
  
  get 'pilates', to: 'pilates#index'
  get 'pilates/show/:id', to: 'pilates#show'
  get 'pilates/new', to: 'pilates#new'
  post 'pilates/new', to: 'pilates#create'
  
  
  root 'users#new'
  
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
