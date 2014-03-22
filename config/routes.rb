Chaptrak::Application.routes.draw do
  resources :locations
  resources :abouts, path: 'about'
  resources :chaprooms, path: 'chaproom'
  resources :reviews
  resources :chaps
  resources :dashboards, path: 'dashboard'
  resources :posts
  
  devise_for :users

  root to: "home#index"


end
