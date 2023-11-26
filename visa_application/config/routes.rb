Rails.application.routes.draw do
  resources :documents, only: [:new, :create, :index, :show]
  get 'dashboard', to: 'dashboard#index'
  root to: 'documents#index'
end
