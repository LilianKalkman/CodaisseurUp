Rails.application.routes.draw do

  root to: 'pages#home'

  get "about" => "pages#about"

  devise_for :users

  resources :events, except: [:destroy] do
    resources :registrations, only: [:create]
    end
  resources :photos, only: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]

  namespace :api do resources :events
  end



end
