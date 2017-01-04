Rails.application.routes.draw do

  resources :users, only: [:index, :show]
  resources :registrations, only: [:new, :create]
  resources :settings, only: [:edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :tweets

  root to: 'registrations#new'

  resources :user_s__no_stylesheets__skip_migrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
