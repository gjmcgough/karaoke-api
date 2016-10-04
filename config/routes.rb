Rails.application.routes.draw do
  get 'artists/index'

  get 'artists/show'

  root 'users#show'

  namespace :api do
    # get '/signup' => 'users#show'
    # post '/users' => 'users#create'

    get '/login' => 'users#show'
    post '/login' => 'sessions#create'
    get '/logout' => 'users#show'


    get '/artists', to: 'artists#index'
    get '/artists/:id', to:'artists#show', as: 'artist'
    post 'songs' => 'songs#create'


    resources :users, only: [:create, :new, :edit, :update, :show]
    resources :songs, only: [:create, :index]
    resources :party, only: [:show, :create, :destroy, :update, :edit]

    scope ':users' do
      resources :playlists, only: [:show]
      patch '/playlist/:id', to: 'playlist_songs#update'
      delete '/playlist/:id', to: 'playlist_songs#destroy'
      post '/playlist', to: 'playlist_songs#create'
    end
  end

    get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  # resources :users, only: [:show] do
  #   resources :playlists
  # end

  # resources :users, only: [:create, :new, :edit, :update]
  # resources :songs, only: [:create, :index]

  # resources :parties, except: [:index, :edit]
  # resources :playlist_songs, only: [:new, :create, :destroy]

end

