Rails.application.routes.draw do
  resources :decks, :sessions, :users

  root "decks#index"

  get '/' => 'decks#index'

  get '/register', to: 'users#new', as: :register

  get '/login', to: 'sessions#new', as: :login

end
