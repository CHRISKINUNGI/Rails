Rails.application.routes.draw do
  root 'home#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get "signup", to: 'registrations#signup'
  post "signup", to: 'registrations#create'

end