Rails.application.routes.draw do
  resources :categories, only: [:index]

  root 'categories#index'
end
