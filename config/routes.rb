Rails.application.routes.draw do
  root 'contents#index'

  get '/login' => 'users#login'
  get '/profile' => 'users#show'
  get '/newrecipe' => 'contents#create_page'
  get '/recipe' => 'contents#show'
  get '/editprofile' => 'users#edit'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  patch '/updateprofile' => 'users#update'
  delete '/users/:id' => 'users#destroy'
  delete '/sessions/:id' => 'sessions#destroy'


end
