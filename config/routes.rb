Rails.application.routes.draw do
  root 'contents#index'

  get '/login' => 'sessions#index'
end
