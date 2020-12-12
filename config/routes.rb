Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#top"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  post "likes/:post_id/create", to: "likes#create", as: "create_likes"
  post "likes/:post_id/destroy", to: "likes#destroy", as: "destroy_likes"
  
end
