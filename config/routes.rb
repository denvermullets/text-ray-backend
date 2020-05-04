Rails.application.routes.draw do

  resources :games
  resources :users
  resources :words
  resources :gamewords
  resources :gameusers

end
