Rails.application.routes.draw do
 
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :businesses
  resources :users, only: [ :edit, :update ] do 
    resources :bookmarks, only: [ :index, :new, :create, :destroy ]
  end
end
