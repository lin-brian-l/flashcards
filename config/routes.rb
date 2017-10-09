Rails.application.routes.draw do
  resources :decks, :sessions, :users, :cards

  root "decks#index"

  get '/' => 'decks#index'

  get '/register', to: 'users#new', as: :register
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get '/login', to: 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout


  get '/cards/:id' => 'cards#show'
  post '/cards/:id' => 'cards#check', as: :card_check

end
