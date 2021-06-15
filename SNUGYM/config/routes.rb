Rails.application.routes.draw do
  # get 'gym', to: 'gym#index'
  # get 'gym/:id', to: 'gym#show'
  
  get 'gym', to: 'gym#index'
  get 'gym/show/:id', to: 'gym#show'
  get 'gym/new', to: 'gym#new'
  post 'gym/new', to: 'gym#create'
  get 'gym/detailsearch', to: 'gym#detailsearch'
  get 'gym/search', to: 'gym#search'
  get 'gym/detailsearchresult', to: 'gym#detailsearchresult'
  
  get 'yoga', to: 'yoga#index'
  get 'yoga/show/:id', to: 'yoga#show'
  get 'yoga/new', to: 'yoga#new'
  post 'yoga/new', to: 'yoga#create'
  get 'yoga/search', to: 'yoga#search'
  
  get 'pilates', to: 'pilates#index'
  get 'pilates/show/:id', to: 'pilates#show'
  get 'pilates/new', to: 'pilates#new'
  post 'pilates/new', to: 'pilates#create'
  get 'pilates/search', to: 'pilates#search'
  
  get 'sessions/new'
  get 'users/new'
  
  root 'users#new'
  
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
