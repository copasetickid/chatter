Rails.application.routes.draw do

  root 'conversations#index'

  devise_for :users

  resources :users, only: [:index]
  resources :personal_messages, only: [:new, :create]
  resources :conversations, only: [:index, :show]
end
