Rails.application.routes.draw do
  root 'tasks#index'
  resources :users
  put 'complete/:id'  => 'tasks#complete', as: 'complete_task'
  resources :tasks
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'signup'  => 'users#new'
end
