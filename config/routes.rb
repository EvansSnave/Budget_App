# config/routes.rb
Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  root "home#index"
  
  resources :groups do
    resources :entities, only: [:index, :new, :create]
  end
  
end
