Rails.application.routes.draw do
  devise_for :users
  resources :person_fields, only: [:index, :new, :create]
  resources :teacher_searches, only: :index
  resources :choices, only: :create
  root to: 'home#show'
end
