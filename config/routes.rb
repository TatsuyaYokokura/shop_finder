Rails.application.routes.draw do
  resources :shops, only: :show do
    resources :reviews, only: :create
  end
  root 'shops#index'
end
