Rails.application.routes.draw do
  root 'contents#index'

  get '/login' => 'sessions#index'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  delete '/sessions/:id' => 'sessions#destroy'


end
