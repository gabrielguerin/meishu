Rails.application.routes.draw do
  # Admin routes
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions'
  }

  # Artists routes
  devise_for :artists, path: 'artists', controllers: {
    sessions: 'artists/sessions'
  }
  resources :artists, only: %i[index show]

  # Defines the root path route ("/")
  root 'pages#show', page: 'home'
end
