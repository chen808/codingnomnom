Rails.application.routes.draw do
  root 'contents#index'

  get '/login' => 'users#login'
  get '/profile' => 'users#show'
  get '/newrecipe' => 'contents#create_page'
  get '/recipe' => 'contents#show'
  get '/editprofile' => 'users#edit'
  post '/sessions' => 'sessions#create'
  post '/create_new_recipe' => 'contents#new_recipe'
  post '/users' => 'users#create'
  patch '/updateprofile' => 'users#update'
  delete '/users/:id' => 'users#destroy'
  delete '/sessions/:id' => 'sessions#destroy'


end
