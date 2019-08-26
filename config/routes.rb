Rails.application.routes.draw do
  devise_for :users
  get 'requests/index'
  get 'requests/show'
  get 'requests/new'
  get 'requests/create'
  get 'requests/delete'
  get 'profiles/show'
  get 'offers/new'
  get 'offers/create'
  get 'offers/show'
  get 'offers/edit'
  get 'offers/update'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
