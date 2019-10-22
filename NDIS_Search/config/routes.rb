Rails.application.routes.draw do
  root to: 'search#new'
  get 'search/new' => 'search#new', :as => 'home'
  get 'search/result' => 'search#result'#, as => 'show_result'
  get 'search/:name' => 'search#show', :as => 'show_provider'

  get '/signup' => 'user#new'
  post '/users' => 'user#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/kitten/all' => 'kitten#all', :as => 'show_kitten'
  get '/kitten/select/:id' => 'kitten#select', :as => 'select_kitten'

  get '/kittens/moods/:id' => 'kitten#get_kitten_mood'

  end
