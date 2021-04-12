Rails.application.routes.draw do
  resources :albums, only: :index
  root to: 'albums#index'
end
