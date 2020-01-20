Rails.application.routes.draw do
  resources :reviews
  # resources :media
  # resources :disciplines
  resources :collaborations, only:[:index, :show, :create]
  resources :projects, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  get '/users/:id/projects', to: 'users#user_projects'
  get '/users/:id/reviews', to: 'users#user_reviews'
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
