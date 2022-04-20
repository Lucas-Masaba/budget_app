Rails.application.routes.draw do
  devise_for :users
  resources :category_transactions
  # resources :transactions
  # resources :categories
  resources :users
  resources :categories, only: [:index, :show, :new, :create, :destroy] do
    resources :transactions, only: [ :new, :show, :create, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#index"
  root 'categories#index'
end
