Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index" #ここは気を付ける、一番最初に写すところ
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create 
  end
  resources :users, only: :show
end