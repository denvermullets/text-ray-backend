Rails.application.routes.draw do

  get '/games' => 'games#index'
  get '/users' => 'users#index'
  get '/words' => 'words#index'

  resources :gamewords
  resources :gameusers

end
