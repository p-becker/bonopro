Rails.application.routes.draw do
  devise_for :users
  resources :companies
  resources :organizations
  root 'tasks#index'
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
