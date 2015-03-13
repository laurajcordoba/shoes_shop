Rails.application.routes.draw do

  mount API => '/'

  resources :stores
  resources :articles

  root 'articles#index'

end
