Rails.application.routes.draw do
  devise_for :users
  root to:'posts#index'

  resources :users, only: [:edit, :update]
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
