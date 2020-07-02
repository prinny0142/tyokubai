Rails.application.routes.draw do
  devise_for :admins, class_name: "Admin::Admin"
  devise_for :users

  root "homes#home"

  resources :users, only:[:index, :show, :edit, :update]
  resources :products, only:[:index, :show, :new, :create, :update, :destroy]
end
