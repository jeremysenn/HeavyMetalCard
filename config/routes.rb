HeavyMetalCard::Application.routes.draw do
  resources :field_descriptions
  resources :backouts
  resources :workstation_cameras
  resources :workstation_devices

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end