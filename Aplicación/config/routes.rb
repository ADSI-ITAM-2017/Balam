Rails.application.routes.draw do
  
  root 'startup#index'
  
  
  get  '/ayuda',    to: 'startup#ayuda'
  get '/registrate', to: 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
