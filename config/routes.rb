Rails.application.routes.draw do
  resources :productcatalogs
  resources :prodproviders
  resources :productlines
  get 'welcome/index'
  root 'welcome#index'
  get '/plines', to: redirect('/productlines')
  get '/provider', to: redirect('/prodproviders')
  get '/product', to: redirect('/productcatalogs')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
