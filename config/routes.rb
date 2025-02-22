Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  Rails.application.routes.draw { resources :organizations }
  Rails.application.routes.draw { resources :notes }
  Rails.application.routes.draw { resources :profiles }

  # Define the root path route to your home controller's index action.
  get "/", to: "home#index"
  
end
