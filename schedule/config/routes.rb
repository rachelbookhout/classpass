Rails.application.routes.draw do
  resources :lessons, only: [:new, :create, :update, :edit, :show]
  resources :studios,only:[:index, :show]
  resources :days, only:[:index, :show]
  resources :types, only:[:index, :show]
  resources :times, only:[:index, :show]
  resources :teachers, only: [:show]
end
