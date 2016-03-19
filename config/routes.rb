Rails.application.routes.draw do
  get '/tasks/:year/:month' => "tasks#archive", as: :task_archive
  
  resources :products
  resources :users
  
  resources :projects
  resources :tasks do
    resources :comments, only: [:create]
  end
  
  root 'projects#index'
end
