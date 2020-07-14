Rails.application.routes.draw do
  root to: 'tweets#index'

  resources :tweets do
    resources :likes
    resources :comments
  end

  get '/signup', to: "users#new"
  resources :users, except: :new

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
end
