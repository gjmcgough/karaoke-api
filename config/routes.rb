Rails.application.routes.draw do

  root 'users#show'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  resources :users, only: [:show] do
    resources :playlists
  end

  resources :users, only: [:create, :new, :edit, :update]

  resources :songs, only: [:create, :index]

  # get  '/profile', to: 'users#show', as: 'users_profile'
  # get '/profile/playlist', to: 'playlist#show'

  resources :parties, except: [:index, :edit]
  resources :playlist_songs, only: [:new, :create, :destroy]


end
