Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :fashions, only: [:index, :new, :show, :create, :destroy]
  resources :foods, only: [:index, :new, :show, :create, :destroy]
  resources :places, only: [:index, :new, :show, :create, :destroy]
  resources :musics, only: [:index, :new, :show, :create, :destroy]
  resources :videos, only: [:index, :new, :show, :create, :destroy]
end
