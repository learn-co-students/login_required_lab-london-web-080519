Rails.application.routes.draw do
  get 'secrets/new'

  get 'sessions/new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create' 
  post 'logout', to: 'sessions#destroy' 
  get '/secret', to: 'secrets#show', as: 'secret'

end
