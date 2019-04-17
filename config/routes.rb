Rails.application.routes.draw do

  resources :location_limitations
  resources :users
  resources :limitations
  resources :parking_locations do
    resources :parking_events
    end
  
  resources :destinations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: "users#index"
  get 'user/:id/user_reviews', to: "users#user_reviews", as: 'user_reviews'
end
