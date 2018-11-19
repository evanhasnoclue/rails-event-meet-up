Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [ :create, :show, :update ]
      resources :events, only: [:index, :show, :create, :update, :destroy ] do
        resources :bookings, only: [:create, :destroy]
      end
      resources :bookings, only: [] do
        resources :reviews, only: [:create]
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
