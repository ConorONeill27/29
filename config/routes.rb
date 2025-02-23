Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token

  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", :as => :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", :as => :pwa_manifest

  get "graph/index"

  # Defines the root path route ("/")
  # root "posts#index"
  root "home#index"
  post "chat/message", to: "chat#message"

  post "chat/clear", to: "chat#clear"
  post "chat/reimport", to: "chat#reimport"

  get "/graph", to: "graph#index"
  get "/about_us", to: "about_us#index", as: :about_us

  get "/my_hub", to: "my_hubs#index", as: :my_hub
  post "/my_hub/message", to: "my_hubs#message"
  get "/my_hubs/graph_data", to: "my_hubs#graph_data", as: :my_hub_graph_data

  resources :organizations
  resources :notes
  resources :profiles
  resources :recordings

  match "*path", to: "application#not_found", via: :all
end
