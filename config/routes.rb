Rails.application.routes.draw do
  resources :robots
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Define root path
  get '/home' => 'pages#home'
end
