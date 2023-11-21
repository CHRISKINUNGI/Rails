Rails.application.routes.draw do
  root "main#index"

  get "/about", to: "about#index"

  get "/sign_up", to: "registrations#signup"
  post "sign_up", to: "registrations#create"
 
  get "/sign_in", to: "sessions#signin"
  post "sign_in", to: "sessions#create" 

  delete "/logout", to: "sessions#destroy"

 # root to: "main#index"

end
