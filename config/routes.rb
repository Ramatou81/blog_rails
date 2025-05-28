Rails.application.routes.draw do
  get "/articles", to: "articles#index"

  get "/articles/new", to: "articles#new"
  post "/articles", to: "articles#create"

  get "/articles/:id", to: "articles#show", as: :article

  get "/articles/:id/edit", to: "articles#edit"

  patch "/articles/:id", to: "articles#update"
  put "/articles/:id", to: "articles#update"

  delete "/articles/:id", to: "articles#destroy"

  # Comments Routes
  get "/comments", to: "comments#index"

  get "/comments/new", to: "comments#new"
  post "/comments", to: "comments#create"

  get "/comments/:id", to: "comments#show", as: :comment

  get "/comments/:id/edit", to: "comments#edit"

  patch "/comments/:id", to: "comments#update"
  put "/comments/:id", to: "comments#update"

  delete "/comments/:id", to: "comments#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
