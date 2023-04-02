Rails.application.routes.draw do
  resources :videos
  resources :reviews
  resources :movies, only: [:index, :show]
  resources :favorites, only: [:create, :index, :show, :destroy]
  resources :ratings, only: [:create, :update, :destroy]
  
  #videos
  get '/all_videos', to:"videos#all_videos"
  get '/all_videos/:id', to:"videos#oneVid"
  post '/all_videos/:id', to:'videos#like'
  #reviews
  get '/users/reviews', to:"reviews#user_reviews"
   #user
  #  get '/all', to:"users#index"
   delete '/users/logout', to: "users#logout"
   post '/users', to:"users#register"
   post '/users/login', to:"users#login"
   get 'users/login/check', to:"users#check_login_status"
   post '/users/reset', to:"users#reset_password"
   get 'users/:id', to:"users#show"
   #to delete a user 
  delete '/users/delete/:id', to:"users#delete_account" 
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
