Rails.application.routes.draw do
  root 'users#show'

  # get 'users/show'
  # get 'users/new'
  # post 'users'
  # get 'users/:id/edit'
  # put 'users'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

end
