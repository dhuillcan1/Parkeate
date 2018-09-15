Rails.application.routes.draw do
  resources :services
  get 'static/about'

  get 'static/contact'

  get 'home/index'
  root 'home#index'
  resources :ubications
  resources :rents
  resources :parkings
  resources :users

  get 'parkings/index'
  get 'parkings/new'

  get 'rents/index'
  get 'rents/new'

  get 'users/index'
  get 'users/new'
  get 'users/show'

  get 'services/index'
  get 'services/new'

  get 'about', controller: :static, action: :about, alias: 'about'

  get 'contact', controller: :static, action: :contact, alias: 'contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
