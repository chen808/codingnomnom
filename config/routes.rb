Rails.application.routes.draw do
  root 'contents#index'

  get '/login' => 'users#login'
  get '/profile' => 'users#show'
  get '/newrecipe' => 'contents#create_page'
  get '/recipe/:id' => 'contents#show'
  get '/editprofile' => 'users#edit'
  get '/editpost/:id' => 'contents#edit'

  get '/show_lang_pg/:id' => 'contents#show_lang_pg'


  post '/sessions' => 'sessions#create'
  post '/create_new_recipe' => 'contents#new_recipe'
  post '/users' => 'users#create'
  patch '/updatepost/:id' => 'contents#update'
  patch '/updateprofile' => 'users#update'
  patch '/updatelink/:id' => 'content#update_link'
  delete '/content/:id' => 'contents#destroy'
  delete '/users/:id' => 'users#destroy'
  delete '/sessions/:id' => 'sessions#destroy'

end
