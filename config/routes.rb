Rails.application.routes.draw do
  root 'users#show'

  namespace :api do
    # get '/signup' => 'users#show'
    # post '/users' => 'users#create'

    get '/login' => 'users#show'
    post '/login' => 'sessions#create'
    get '/logout' => 'users#show'


    resources :users, only: [:create, :new, :edit, :update, :show]
    resources :songs, only: [:create, :index]
    resources :party, only: [:show, :create, :destroy, :update, :edit]
    resources :playlists, only: [:show]

    scope ':username' do
      # patch '/playlist/:id', to: 'playlist_songs#update'
      # delete '/playlist/:id', to: 'playlist_songs#destroy'
      post '/playlist/songs', to: 'playlist_songs#create'
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

