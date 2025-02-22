Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  Rails.application.routes.draw { resources :organizations }
  Rails.application.routes.draw { resources :notes }
  Rails.application.routes.draw { resources :profiles }

  # Define the homepage route
  get "/", to: "home#index"

  # Add a route for "My Hub"
  get "/my_hub", to: "my_hubs#index", as: :my_hub

end
