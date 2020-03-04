Rails.application.routes.draw do
  root 'stores#home'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/delete'
  resources :stores 
  resources :games 
  resources :game_sessions
  resources :players 
  get "/signup", to: "players#new"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  
  patch "/game_sessions", to: "game_sessions#add_player"#, as: "add_player"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
