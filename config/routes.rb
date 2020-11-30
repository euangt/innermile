Rails.application.routes.draw do

  get 'conversations/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :conversations, only: :show do
    resources :messages, only: :create
  end

  concern :commentable do resources :messages
  end
  resources :businesses, concerns: :commentable

  resources :businesses do
    resources :bookmarks, only: [ :create ]
  end
  resources :users, only: [ :edit, :update ] do
    resources :bookmarks, only: [ :index,  :destroy ]
  end
  resources :businesses do
    resources :posts, only: [:create, :destroy, :edit, :update]
    resources :events, only: [:show, :new, :create, :edit, :update, :destroy ]
  end
  resources :bookmarks, only: [ :destroy ]
  resources :posts, only: [ :index ]
  resources :events, only: [ :index ]
end
