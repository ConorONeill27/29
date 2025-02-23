Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token

  root "about_us#index"

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :organizations
  resources :notes
  resources :profiles

  Rails.application.routes.draw { resources :organizations }
  Rails.application.routes.draw { resources :notes }
  Rails.application.routes.draw { resources :profiles }
  Rails.application.routes.draw { resources :recordings }

  # Add a route for "My Hub"
  # Specific routes should come before catch-all routes:
  get "/my_hub", to: "my_hubs#index", as: :my_hub
  get "/about", to: "about_us#index", as: :about_us

  # Catch-all route (should be the very last route)
  match "*path", to: "application#not_found", via: :all
end
