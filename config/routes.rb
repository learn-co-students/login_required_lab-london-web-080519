Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/homepage", to: "sessions#home"
  get "/login", to: "sessions#new"
  get "/secret", to: "secrets#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
