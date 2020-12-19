Rails.application.routes.draw do

  get 'conversations/show'
  devise_for :users, controllers: { confirmations: 'confirmations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :conversations, only: [ :index, :show ] do
    resources :messages, only: :create
  end

  concern :commentable do resources :messages
  end
  resources :businesses, concerns: :commentable
  resources :bookmarks, only: [ :index, :destroy ]
  resources :users, only: [ :edit, :update ]
  resources :businesses do
    resources :posts, only: [:create, :destroy, :edit, :update]
    resources :events, only: [:show, :new, :create, :edit, :update, :destroy ]
    resources :bookmarks, only: [ :create ]
    resources :conversations, only: :index
  end
  resources :posts, only: [ :index ]
  resources :events, only: [ :index ]
end
