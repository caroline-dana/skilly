Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :edit, :update ]
  resources :job_offers, only: [ :index ] do
    resources :user_likes, only: [ :create ]
  end
  resources :matches, only: [ :show, :update ]
end
