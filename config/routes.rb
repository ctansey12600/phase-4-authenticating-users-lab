Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  # POST /login: run the SessionsController#create method
  post "/login", to: "sessions#create"

  # GET /me: run the UsersController#show method
  get "/me", to: "users#show"

  # DELETE /logout: run the SessionsController#destroy method
  delete "/logout", to: "sessions#destroy"


end
