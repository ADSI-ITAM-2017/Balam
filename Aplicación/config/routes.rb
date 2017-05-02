Rails.application.routes.draw do
  
  get 'sessions/new'

  root 'startup#index'
  
  
  get  '/ayuda',    to: 'startup#ayuda'
  get '/registrate', to: 'users#new'
  post '/registrate',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
