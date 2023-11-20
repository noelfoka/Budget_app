Rails.application.routes.draw do
  #devise_for :users
  root 'splash#show'
  devise_for :users
  resources :users, only: [:index, :show, :new, :create]
  resources :tran_groups, only: [:index, :show, :new, :create] do
  resources :tran_details, only: [:index, :show, :new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
