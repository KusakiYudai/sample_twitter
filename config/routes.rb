Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#top"
  # post "posts/create" => "posts#create"
  # get "posts/new" => "posts#new"
  get "login" => "users#login"

  # get "posts/:id" => "posts#show"

end
