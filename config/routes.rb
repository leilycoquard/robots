Rails.application.routes.draw do
  resources :robots
  root "sessions#welcome"

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get '/home' => 'pages#home'

end
