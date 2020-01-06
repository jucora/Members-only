Rails.application.routes.draw do
  get 'users/create'
  get 'posts/new'
  get 'posts/create'
  post 'posts/create'
  get 'posts/index'
  root 'sessions#new'
  get 'signup', to:'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#delete'

  resources :posts, only: %i[new create index]
  resources :users
  resources :sessions
end
