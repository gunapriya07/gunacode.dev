Rails.application.routes.draw do
  resources :projects
  resources :users

  root "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  get "up" => "rails/health#show", as: :rails_health_check

  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
