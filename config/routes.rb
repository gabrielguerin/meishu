Rails.application.routes.draw do
  # Users routes
  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions'
  }

  # Artists routes
  devise_for :artists, path: 'artists', controllers: {
    sessions: 'artists/sessions'
  }
  resources :artists, only: %i[index show]

  # Creative works routes
  resources :creative_works

  # Defines the root path route ("/")
  root 'pages#show', page: 'home'
end
