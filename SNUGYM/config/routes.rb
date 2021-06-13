Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'
  root 'users#new'
  
  resources :users, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
