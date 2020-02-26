Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :fashions, only: [:index, :new, :show, :create]
  resources :foods, only: [:index, :new, :show, :create]
  resources :places, only: [:index, :new, :show, :create]
  resources :musics, only: [:index, :new, :show, :create]
  resources :videos, only: [:index, :new, :show, :create]
end
