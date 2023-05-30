Rails.application.routes.draw do
  devise_for :users
  root to: "powers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :profiles, only: [:show, :edit, :update]

  # Defines the root path route ("/")
  resources :powers, except: [:destroy, :update, :edit] do
    resources :bookings, only: [:new, :create]
  end
end
