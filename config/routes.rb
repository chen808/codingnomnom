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
  post '/createlink/:id' => 'contents#create_link'
  patch '/updatepost/:id' => 'contents#update'
  patch '/updateprofile' => 'users#update'
  patch '/updatelink/:id' => 'contents#update_link'
  delete '/content/:id' => 'contents#destroy'
  delete '/users/:id' => 'users#destroy'
  delete '/sessions/:id' => 'sessions#destroy'

end

# <%if @article_video%>
#   <% @article_video.each do |x| %>
#     <%= x.video_link %>
#     <iframe width="420" height="315" src="<%= x.video_link %>">
#     </iframe>
#   <% end %>
# <%end%>