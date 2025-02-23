Rails.application.routes.draw do
  # Simple get routes
  get "notebooks/index"
  get "notebooks/show"
  get "notebooks/new"
  get "notebooks/create"
  get "notebooks/edit"
  get "notebooks/update"
  get "notebooks/destroy"

  resource :session
  resources :passwords, param: :token

  # Health check / PWA
  get "up" => "rails/health#show", :as => :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", :as => :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", :as => :pwa_manifest

  # Graph routes
  get "graph/index"
  get "/graph", to: "graph#index"

  # Root path
  root "home#index"

  # Chat
  post "chat/summarize_documents", to: "chat#summarize_documents"

  # Misc pages
  get "/about_us", to: "about_us#index", as: :about_us

  # My Hub
  get "/my_hub", to: "my_hubs#index", as: :my_hub
  post "/my_hub/message", to: "my_hubs#message"
  get "/my_hubs/graph_data", to: "my_hubs#graph_data", as: :my_hub_graph_data

  resources :organizations do
    member { delete "remove_user", to: "organizations#remove_user" }
  end
  resources :notes do
    collection { get "/download/:id", to: "notes#download", as: :download }
  end
  resources :profiles
  resources :recordings

  resources :notebooks do
    resources :notes, only: %i[create update destroy show index]
    member do
      post "add_member"
      delete "remove_member/:user_id",
             to: "notebooks#remove_member",
             as: "remove_member"
    end
  end

  # NEW route for listing .md files in public/Employee_Notes
  get "/employ_notes_files", to: "files#employ_notes_files"

  # Catch-all for 404
  match "*path", to: "application#not_found", via: :all
end
