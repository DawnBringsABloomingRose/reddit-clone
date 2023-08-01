Rails.application.routes.draw do
  resources :users, except: [:index]
  resources :posts
  get '/all', to: 'subreddits#index'
  resources :subreddits, path: 'r', except: [:show] do
    resources :posts, only: [:show, :index]
  end
  get "/r/:title", to: 'subreddits#show', title: /[A-Za-z]+/
  #get "/r/:title/:post", to: 'posts#show'

  root "users#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
