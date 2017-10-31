Rails.application.routes.draw do
  resources :questions
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'questions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
