Rails.application.routes.draw do
  devise_for :users
  resources :person_fields, only: [:index, :new, :create]
  root to: 'home#show'
end
