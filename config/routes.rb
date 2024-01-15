Rails.application.routes.draw do
  root "static_page#home"
  devise_for :users
end
