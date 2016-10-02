Rails.application.routes.draw do

  namespace :api do
    resources :users, only: [:create, :new, :edit, :update]
    resources :songs, only: [:create, :index]
    resources :parties, except: [:index, :edit]
    resources :users, only: [:show] do
      resources :playlists, only: [:show, :edit, :update]
    end
  end

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

  resources :parties, except: [:index, :edit]
  resources :playlist_songs, only: [:new, :create, :destroy]


end
