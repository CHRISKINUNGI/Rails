Rails.application.routes.draw do
  # Get /Main Page
  root to: "main#index"

  # GET /about
  get "/about", to: "about#index"

  get "/sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
 
end
