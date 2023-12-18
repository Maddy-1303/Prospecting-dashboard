Rails.application.routes.draw do
  devise_for :users
  resources :prospects
  get "up" => "rails/health#show", as: :rails_health_check
  root "prospects#index"
end
