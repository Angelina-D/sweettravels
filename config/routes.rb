Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :requests, only: [:index, :show, :new, :create, :destroy]
  resource :offers, only: [:new, :create, :show, :edit, :update]

end
