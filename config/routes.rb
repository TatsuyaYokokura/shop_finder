Rails.application.routes.draw do
  resources :shops, only: :show
  root 'shops#index'
end
