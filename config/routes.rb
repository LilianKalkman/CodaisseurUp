Rails.application.routes.draw do

  root to: 'pages#home'

  get "about" => "pages#about"

  devise_for :users

  resources :events, except: [:destroy]
  resources :photos, only: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :registrations 

end
