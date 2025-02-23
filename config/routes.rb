Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token

  root "home#index"

  get "/about_us", to: "about_us#index", as: :about_us
  get "/my_hub", to: "my_hubs#index", as: :my_hub

  resources :organizations
  resources :notes
  resources :profiles
  resources :recordings

  match "*path", to: "application#not_found", via: :all
end
