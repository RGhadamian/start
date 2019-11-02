Rails.application.routes.draw do


  root to: 'search#new'
  get 'search/new' => 'search#new', :as => 'home'
  post 'search/create' => 'search#create', :as => 'create_search'
  get 'search/result' => 'search#result', :as => 'show_result'
  get 'search/index' => 'search#index', :as => 'provider_index'
  get 'provider/show/:id' => 'search#show', as: 'show_provider'

  get 'info/about' => 'info#about', as: 'about'

  get '/signup' => 'user#new'
  post '/users' => 'user#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'request/new:id' => 'request#new', as: 'new_request'

  get 'review/new/:id' => 'review#new', as: 'new_review'
  post 'review/create' => 'review#create', :as => 'create_review'
  get 'provider/show/:id/edit' => 'review#edit', as: 'edit_review'
  post 'provider/show/:id/update' => 'review#update', as: 'update_review'
  delete 'provider/show/:id/delete' => 'review#delete', as: 'delete_review'


end
