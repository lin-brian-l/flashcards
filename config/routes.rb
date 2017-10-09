Rails.application.routes.draw do
  resources :decks, :sessions, :users

  root "decks#index"

  get '/' => 'decks#index'

  get '/register', to: 'users#new', as: :register
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get '/login', to: 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

end
