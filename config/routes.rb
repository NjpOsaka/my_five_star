Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :fashions, only: [:index, :new, :show]
end
