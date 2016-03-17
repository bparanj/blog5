Rails.application.routes.draw do
  get 'comments/create'

  resources :products
  resources :users
  
  resources :projects
  resources :tasks do
    resources :comments, only: [:create]
  end
end
