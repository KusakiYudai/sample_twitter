Rails.application.routes.draw do
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#top"
  post "posts/create" => "posts#create"
  get "posts/new" => "posts#new"
end
