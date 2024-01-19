Rails.application.routes.draw do
  root "static_page#splash_screen"

  devise_for :users

  get 'profile', to: 'profile_user#show'
  
  as :user do
    get 'register', to: 'devise/registrations#new', as: :new_register
    get 'login', to: 'devise/sessions#new', as: :new_login
    post 'register', to: 'devise/registrations#create'
    get 'logout', to: 'devise/sessions#destroy', as: :logout
    post 'login', to: 'devise/sessions#create'
  end
end
