Rails.application.routes.draw do

  root to: 'search#new'
  get 'search/new' => 'search#new', :as => 'home'
  post 'search/create' => 'search#create', :as => 'create_search'
  get 'search/result' => 'search#result', :as => 'show_result'
  get 'search/index' => 'search#index', :as => 'provider_index'
  get 'provider/show/:id' => 'search#show', as: 'show_provider'

  get '/signup' => 'user#new'
  post '/users' => 'user#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  get 'request/new:id' => 'request#new', as: 'new_request'
  get 'review/new/:id' => 'review#new', as: 'new_review'


end
