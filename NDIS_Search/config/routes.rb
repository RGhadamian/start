Rails.application.routes.draw do
  get 'request/new'
  get 'review/new'
  root to: 'search#new'
  get 'search/new' => 'search#new', :as => 'home'
  post 'search/create' => 'search#create', :as => 'create_search'
  get 'search/result' => 'search#result', :as => 'show_result'
  get 'search/index' => 'search#index', :as => 'provider_index'
  get 'search/show' => 'search#show', :as => 'show_provider'

  get '/signup' => 'user#new'
  post '/users' => 'user#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  end
