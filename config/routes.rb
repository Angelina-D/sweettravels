Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'requests/index'
  get 'requests/show'
  get 'requests/new'
  get 'requests/create'
  get 'requests/delete'
  get 'profiles/show'

  resource :offers, only: [:new, :create, :show, :edit, :update]
end
