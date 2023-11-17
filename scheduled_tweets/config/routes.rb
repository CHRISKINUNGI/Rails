Rails.application.routes.draw do
  # GET /about
  get "about", to: "about#index"

  # Get /Main Page
  root to: "main#index"
 
end
