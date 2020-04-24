Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'expressions', to: 'pages#expressions', as: :expressions
  resources :categories, only: %i[index show new create edit update]
  resources :recipes, only: %i[show new create edit update]
end
