Rails.application.routes.draw do
  devise_for :users
  root to: "powers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :profiles, only: [:show, :edit, :update] do
  end

  # Defines the root path route ("/")
  resources :powers do
    resources :bookings, only: [:new, :create, :update]
  end

  resources :bookings, only: [] do
    member do
      get :confirm
      get :cancel
    end
  end
end
