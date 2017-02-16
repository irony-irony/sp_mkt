Rails.application.routes.draw do

  root to:'spaces#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    confirmaions: 'users/confirmaions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  devise_scope :user do
    post 'users/sign_up/confirm' => 'users/registrations#confirm'
    post 'users/sign_up/complete' => 'users/registrations#complete'
  end

  resources :spaces do
    resources :rooms, only: %i(show)
  end

  resources :event_types, only: %i(index show), param: :purpose_eng
  resources :amenities, only: %i(index show),   param: :facility_eng
  resources :space_types, only: %i(index show), param: :space_sort_eng
  resources :prefectures, only: %i(index show), param: :prefecture_eng
end
