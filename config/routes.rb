Chaptrak::Application.routes.draw do
  resources :locations

  devise_for :users

  root to: "home#index"

  resources :posts
end
