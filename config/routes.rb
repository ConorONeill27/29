Rails.application.routes.draw do
  get "notebooks/index"
  get "notebooks/show"
  get "notebooks/new"
  get "notebooks/create"
  get "notebooks/edit"
  get "notebooks/update"
  get "notebooks/destroy"
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

  resources :organizations do
    collection do
      delete "/:oid/:uid", to: "organizations#remove_user", as: :remove_user
    end
  end
  resources :notes do
    collection { get "download", to: "notes#download", as: :download }
  end
  resources :profiles
  resources :recordings

  resources :notebooks do
    resources :notes, only: %i[create update destroy show index]
    member do
      post "add_member" # Add a user to a shared notebook
      delete "remove_member/:user_id",
        to: "notebooks#remove_member",
        as: "remove_member"
    end
  end

  Rails.application.routes.draw do
    get "notebooks/index"
    get "notebooks/show"
    get "notebooks/new"
    get "notebooks/create"
    get "notebooks/edit"
    get "notebooks/update"
    get "notebooks/destroy"
    resources :notebooks do
      resources :notes
    end
  end

  match "*path", to: "application#not_found", via: :all
end
