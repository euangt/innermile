Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookmarks, only: [ :index,  :destroy ]
  resources :users, only: [ :edit, :update ]
  resources :businesses do
    resources :posts, only: [:create, :destroy, :edit, :update]
    resources :events, only: [:show, :new, :create, :edit, :update, :destroy ]
    resources :bookmarks, only: [ :create ]
  end
  resources :posts, only: [ :index ]
  resources :events, only: [ :index ]
end
