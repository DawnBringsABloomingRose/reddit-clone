Rails.application.routes.draw do
  resources :users, except: [:index]
  resources :subreddits, path: 'r', path_names: {index: 'all'} do
    resources :posts, only: [:index]
  end

  root "users#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
