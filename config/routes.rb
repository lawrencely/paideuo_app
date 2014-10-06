# == Route Map
#
#             Prefix Verb   URI Pattern                                       Controller#Action
#               root GET    /                                                 pages#home
#          edit_user GET    /users/edit(.:format)                             users#edit
#              users GET    /users(.:format)                                  users#index
#                    POST   /users(.:format)                                  users#create
#           new_user GET    /users/new(.:format)                              users#new
#               user GET    /users/:id(.:format)                              users#show
#                    PATCH  /users/:id(.:format)                              users#update
#                    PUT    /users/:id(.:format)                              users#update
#                    DELETE /users/:id(.:format)                              users#destroy
#         categories GET    /categories(.:format)                             categories#index
#                    POST   /categories(.:format)                             categories#create
#       new_category GET    /categories/new(.:format)                         categories#new
#           category GET    /categories/:id(.:format)                         categories#show
#                    PATCH  /categories/:id(.:format)                         categories#update
#                    PUT    /categories/:id(.:format)                         categories#update
#                    DELETE /categories/:id(.:format)                         categories#destroy
#              tasks GET    /tasks(.:format)                                  tasks#index
#                    POST   /tasks(.:format)                                  tasks#create
#           new_task GET    /tasks/new(.:format)                              tasks#new
#               task GET    /tasks/:id(.:format)                              tasks#show
#                    PATCH  /tasks/:id(.:format)                              tasks#update
#                    PUT    /tasks/:id(.:format)                              tasks#update
#                    DELETE /tasks/:id(.:format)                              tasks#destroy
#           sessions GET    /sessions(.:format)                               sessions#index
#                    POST   /sessions(.:format)                               sessions#create
#        new_session GET    /sessions/new(.:format)                           sessions#new
#            session GET    /sessions/:id(.:format)                           sessions#show
#                    PATCH  /sessions/:id(.:format)                           sessions#update
#                    PUT    /sessions/:id(.:format)                           sessions#update
#                    DELETE /sessions/:id(.:format)                           sessions#destroy
#              pages GET    /pages(.:format)                                  pages#index
#                    POST   /pages(.:format)                                  pages#create
#           new_page GET    /pages/new(.:format)                              pages#new
#               page GET    /pages/:id(.:format)                              pages#show
#                    PATCH  /pages/:id(.:format)                              pages#update
#                    PUT    /pages/:id(.:format)                              pages#update
#                    DELETE /pages/:id(.:format)                              pages#destroy
#              login GET    /login(.:format)                                  sessions#new
#                    POST   /login(.:format)                                  sessions#create
#                    DELETE /login(.:format)                                  sessions#destroy
#     category_tasks GET    /categories/:category_id/tasks(.:format)          tasks#index
#                    POST   /categories/:category_id/tasks(.:format)          tasks#create
#  new_category_task GET    /categories/:category_id/tasks/new(.:format)      tasks#new
# edit_category_task GET    /categories/:category_id/tasks/:id/edit(.:format) tasks#edit
#      category_task GET    /categories/:category_id/tasks/:id(.:format)      tasks#show
#                    PATCH  /categories/:category_id/tasks/:id(.:format)      tasks#update
#                    PUT    /categories/:category_id/tasks/:id(.:format)      tasks#update
#                    DELETE /categories/:category_id/tasks/:id(.:format)      tasks#destroy
#                    GET    /categories(.:format)                             categories#index
#                    POST   /categories(.:format)                             categories#create
#                    GET    /categories/new(.:format)                         categories#new
#      edit_category GET    /categories/:id/edit(.:format)                    categories#edit
#                    GET    /categories/:id(.:format)                         categories#show
#                    PATCH  /categories/:id(.:format)                         categories#update
#                    PUT    /categories/:id(.:format)                         categories#update
#                    DELETE /categories/:id(.:format)                         categories#destroy
#

Rails.application.routes.draw do

  root to: 'pages#home'

  get '/users/edit' => 'users#edit', :as => :edit_user

  resources :users, :categories, :tasks, :sessions, :pages, :except => [:edit]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

  resources :categories do
    resources :tasks
  end
end

































