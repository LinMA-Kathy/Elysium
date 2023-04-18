Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index, :edit, :update]
  resources :products do
    resources :transactions, only: [:create]
  end

  resources :transactions, only: [:destroy, :edit, :update, :show]
  root to: 'pages#home'
  # Defines the root path route ("/")
  # root "articles#index"
  get 'pages/home'
  get 'pages/about'
end
