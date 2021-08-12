Rails.application.routes.draw do
  get 'search' => 'search#index'
  devise_for :users
  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts, only: [:new, :create, :show, :destroy]
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :comments, only: [:new, :create]
end
