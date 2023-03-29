Rails.application.routes.draw do
  resources :reviews
  resources :movies
  resources :favorites
  resources :ratings
  
  get '/users/reviews', to:"reviews#user_reviews"
   #user
   delete '/users/logout', to: "users#logout"
   post '/users', to:"users#register"
   post '/users/login', to:"users#login"
   get 'users/login/check', to:"users#check_login_status"
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
