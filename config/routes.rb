Rails.application.routes.draw do

  resources :products
  resources :users
  resources :projects
  
  resources :tasks
  
  get 'completed', to: 'tasks#completed', as: :completed_tasks
  put 'complete/:id', to: 'tasks#complete', as: :complete_task  
  root 'projects#index'
  
  get '*path', to: 'catch_all#index'
end
