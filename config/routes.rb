Rails.application.routes.draw do
  get 'employees/index'
  devise_for :users
  resources :jobs
  resources :cars
  resources :users
  root to:"users#index"
  resources :companies 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
