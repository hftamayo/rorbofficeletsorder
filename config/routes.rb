Rails.application.routes.draw do
  resources :prodproviders
  resources :productlines
  get 'welcome/index'
  root 'welcome#index'
  get '/plines', to: redirect('/productlines')
  get '/provider', to: redirect('/prodproviders')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
