Rails.application.routes.draw do

  resources :game_words
  resources :game_users
  resources :games
  resources :words
  resources :users

end
