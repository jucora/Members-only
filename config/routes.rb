Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/create'
  post 'posts/create'
  get 'posts/index'
  root 'sessions#new'
  # get 'signup', to:'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :posts, only: %i[new create index]
  resources :users
end
