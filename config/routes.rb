Rails.application.routes.draw do
  devise_for :users

  unauthenticated do
    root "users#index"
  end
  resources :category_transactions
  # resources :transactions
  # resources :categories
  resources :users, only: [:index]
  resources :categories, only: [:index, :show, :new, :create] do
    resources :transactions, only: [ :new, :show, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#index"
  root 'categories#index', as: "home"
end
