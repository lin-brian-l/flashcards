Rails.application.routes.draw do
  resources :sessions, :users, :cards

  resources :decks do
    resources :rounds
  end

  resources :rounds do
    resources :cards
  end

  root "decks#index"

  get '/' => 'decks#index'

  get '/register', to: 'users#new', as: :register
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get '/login', to: 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  get 'rounds/:round_id/cards/:id' => 'cards#show'
  post 'rounds/:round_id/cards/:id' => 'cards#check', as: :card_check

  get 'decks/:deck_id/rounds' => 'rounds#create'

end
