# == Route Map
#
#   Prefix Verb URI Pattern          Controller#Action
#     root GET  /                    pages#home
#    posts POST /posts(.:format)     posts#create
# new_post GET  /posts/new(.:format) posts#new
#    users POST /users(.:format)     users#create
# new_user GET  /users/new(.:format) users#new
#

Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/users/edit' => 'users#edit', :as => 'edit_user'
  resources :posts
  resources :users, :except => [:index]


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
