Rails.application.routes.draw do

  resources :products
  resources :users
  resources :projects
  
  resources :tasks
  
  get 'completed', to: 'tasks#completed', as: :completed_tasks
  put 'complete_task', to: 'tasks#complete', as: :complete_tasks  
  root 'projects#index'
  
  get '*path', to: 'catch_all#index'
end
