Rails.application.routes.draw do
  resources :products

  get 'products/index'

  get 'products/new'

  get 'products/edit'

  get 'products/show'

  resources :visitors
  # resources :items
  root to: 'visitors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
