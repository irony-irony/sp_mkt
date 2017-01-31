Rails.application.routes.draw do
  root 'spaces#index'
  devise_for :users, :controllers => {
  :sessions => 'users/sessions',
  :registrations => 'users/registrations'
  }

  resources :spaces
  resources :event_types
  resources :space_types
  resources :areas
  resources :amenities
end
