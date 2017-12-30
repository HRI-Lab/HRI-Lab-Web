Rails.application.routes.draw do
  resources :daily_records
  
  get 'home/index'
  get 'publication', to: 'home#publication'
  get 'member', to: 'home#member'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
