Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :restaurants, only: [:show, :new, :create, :index] do
    resources :reviews, only: [:new, :create]
  end
end
