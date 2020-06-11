Rails.application.routes.draw do
  get 'items/index'

  devise_for :users
  root to:'posts#index'

  resources :users, only: [:edit, :update]
  resources :posts do
    collection do
      get "search"
      # post "/" => "posts#search"
    end
    resources :comments, only: :create
    
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
