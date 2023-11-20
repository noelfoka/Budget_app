Rails.application.routes.draw do
  root 'splash#show'
  devise_for :users
  resources :users, only: [:index, :show, :new, :create]
  resources :tran_groups, only: [:index, :show, :new, :create] do
  resources :details, only: [:index, :show, :new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end