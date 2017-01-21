Rails.application.routes.draw do

  root 'conversations#index'

  devise_for :users

  resources :personal_messages, only: [:create]
  resources :conversations, only: [:index, :show]
end
