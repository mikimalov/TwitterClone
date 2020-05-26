Rails.application.routes.draw do
  root to: 'tweets#index'
  # get '/tweets', to: 'tweets#index'
  # post '/tweets', to: 'tweets#create'
  # get '/tweets/new', to: 'tweets#new', as: :new_tweet
  # get '/tweets/:id/edit', to: 'tweets#edit', as: :edit_tweet
  # get '/tweets/:id', to: 'tweets#show', as: :tweet
  # patch '/tweets/:id', to: 'tweets#update'
  # delete 'tweets/:id', to: 'tweets#destroy'
  resources :tweets
end
