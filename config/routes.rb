# == Route Map
#
#      Prefix Verb   URI Pattern             Controller#Action
#        root GET    /                       pages#home
#   edit_user GET    /users/edit(.:format)   users#edit
#       users GET    /users(.:format)        users#index
#             POST   /users(.:format)        users#create
#    new_user GET    /users/new(.:format)    users#new
#        user GET    /users/:id(.:format)    users#show
#             PATCH  /users/:id(.:format)    users#update
#             PUT    /users/:id(.:format)    users#update
#             DELETE /users/:id(.:format)    users#destroy
#    sessions GET    /sessions(.:format)     sessions#index
#             POST   /sessions(.:format)     sessions#create
# new_session GET    /sessions/new(.:format) sessions#new
#     session GET    /sessions/:id(.:format) sessions#show
#             PATCH  /sessions/:id(.:format) sessions#update
#             PUT    /sessions/:id(.:format) sessions#update
#             DELETE /sessions/:id(.:format) sessions#destroy
#       pages GET    /pages(.:format)        pages#index
#             POST   /pages(.:format)        pages#create
#    new_page GET    /pages/new(.:format)    pages#new
#        page GET    /pages/:id(.:format)    pages#show
#             PATCH  /pages/:id(.:format)    pages#update
#             PUT    /pages/:id(.:format)    pages#update
#             DELETE /pages/:id(.:format)    pages#destroy
#       login GET    /login(.:format)        sessions#new
#             POST   /login(.:format)        sessions#create
#             DELETE /login(.:format)        sessions#destroy
#

Rails.application.routes.draw do

  root to: 'pages#home'

  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :categories, :tasks, :sessions, :pages, :except => [:edit]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

end

































