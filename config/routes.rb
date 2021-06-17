Rails.application.routes.draw do
  devise_for :users
  get 'prototype/index'
  post '/prototypes/:id(.:format)' => 'prototypes#show'
  get '/prototypes/:prototype_id/comments' => 'comments#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "prototypes#index"
  resources :prototypes

  resources :prototypes do
    resources :comments, only: :create
  end

  resources :users, only: :show
end
