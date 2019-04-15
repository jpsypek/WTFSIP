Rails.application.routes.draw do
  resources :parking_events
  resources :location_limitations
  resources :users
  resources :limitations
  resources :parking_locations
  resources :destinations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: "users#index"
end
