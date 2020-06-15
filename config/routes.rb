Rails.application.routes.draw do
  get 'items/index'

  devise_for :users
  root to:'posts#index'

  resources :users, only: [:edit, :update]
  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: :create
    collection do
      get "search"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
