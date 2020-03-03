Rails.application.routes.draw do

  resources :stores 
  resources :games 
  resources :game_sessions
  resources :players 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
