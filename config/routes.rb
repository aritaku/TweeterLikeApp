Rails.application.routes.draw do

  resources :users, only: [:index, :show] do
    resources :follows, only: [:create, :destroy]
    get :favorites, on: :member
    get :follows, on: :member
    get :followers, on: :member
  end
  resources :registrations, only: [:new, :create]
  resources :settings, only: [:edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :tweets do
    resources :favorites, only: [:create, :destroy]
    get :timeline, on: :collection
  end

  root to: 'registrations#new'

  resources :user_s__no_stylesheets__skip_migrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
