Rails.application.routes.draw do
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions'
  }
  devise_for :artists, path: 'artists', controllers: {
    sessions: 'artists/sessions'
  }

  # Defines the root path route ("/")
  root 'pages#show', page: 'home'
end
