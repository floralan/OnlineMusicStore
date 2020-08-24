Rails.application.routes.draw do
  get 'other/questions'
  get 'other/news'
  get 'other/contact'
  get 'access/new'
  get 'access/create'
  get 'access/destroy'
  get 'admin/index'
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  get 'shopper/index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get '/', to: "shopper#index"
  root "shopper#index", as: 'shopper' #shopper_path
  get '/shopper', to: "shopper#index"

  get 'admin', to: "admin#index"
  get 'login', to: "access#new"
  post 'access/new', to:"access#create"
  post 'login', to: "access#create"
  delete 'logout', to: "access#destroy"

  get 'shopper/search'
  post 'shopper/search', to: "shopper#search"
  get 'products/search'
  post 'products/search', to: "products#search"

  get 'questions', to: "other#questions"
  get 'news', to: "other#news"
  get 'contact', to: "other#contact"

end
