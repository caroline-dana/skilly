Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  #get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :edit, :update, :show ]

  resources :user_skills, only: [ :create, :delete ]

  resources :job_offers, only: [ :index ] do
    resources :user_likes, only: [ :create ]
  end


  resources :matches, only: [ :show, :update ]

  get 'book_date', to: 'matches#book_date'

  resource :dashboard, only: [ :show ]
end
