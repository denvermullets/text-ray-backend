Rails.application.routes.draw do

  get '/users/search', to: 'users#check_user' 

  resources :game_words
  resources :game_users
  resources :games
  resources :words
  resources :users

  get '/user_by_id/:id', to: 'users#user_by_id'

end
