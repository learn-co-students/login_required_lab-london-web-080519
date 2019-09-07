Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :secrets, only: [:index, :show]

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/secret', to: 'secrets#show', as: 'secret'
  get '/secret', to: 'secrets#new', as: 'new_secret'

end
