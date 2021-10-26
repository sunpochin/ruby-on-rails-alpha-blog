Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'
  # resources :articles, only: [:show]
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :others, :delete, :destroy]
  resources :articles

  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  # resources :users, except: [:new]
  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]

end


