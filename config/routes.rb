Chaptrak::Application.routes.draw do
  resources :locations
  resources :abouts, as: 'about'
  resources :chaprooms, as: 'chaproom'
  resources :reviews
  resources :chaps
  resources :dashboards, as: 'dashboard'
  resources :posts
  
  devise_for :users

  root to: "home#index"


end
