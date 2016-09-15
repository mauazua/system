Rails.application.routes.draw do
  namespace :admin do
    resources :users
resources :choices
resources :fields
resources :person_fields
resources :taxonomies
resources :teachers

    root to: "users#index"
  end

  devise_for :users
  resources :person_fields, only: [:index, :new, :create]
  resources :teacher_searches, only: :index
  resources :choices, only: :create
  root to: 'home#show'
end
