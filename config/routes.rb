Rails.application.routes.draw do
  resources :uploads, only: [:new, :create, :show, :index]

  get "/", to: "uploads#home", as: "home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
