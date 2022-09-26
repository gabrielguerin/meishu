Rails.application.routes.draw do
  devise_for :admins, path: 'admins'
  devise_for :artists, path: 'artists'
  resources :pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#show', page: 'home'
end
