Rails.application.routes.draw do
  root "articles#index"

  resources :students

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA routes
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Articles routes
  # resources :articles, only: [:index, :show, :new, :create]
  resources :articles, only: [:index, :show, :new, :create, :destroy]
end
