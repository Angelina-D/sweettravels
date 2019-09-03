Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/search", to: 'requests#index'
  get "/search_sweets", to: 'sweets#index'

  resources :requests, only: [:index, :show, :create, :destroy] do
    resources :offers, only: [:new, :create, :show, :edit, :update]
  end
  resources :offers, only: [] do
    resources :messages, only: [:create]
  end

  resources :sweets, only: [:index, :show] do
    resources :requests, only: [:new]
  end

  get 'profile', to: 'pages#profile', as: 'profile'

  mount ActionCable.server => "/cable"

end
