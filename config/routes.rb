Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :requests, only: [:index, :show, :new, :create, :destroy] do
    resources :offers, only: [:new, :create, :show, :edit, :update]
  end
end
