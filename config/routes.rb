Rails.application.routes.draw do
  devise_for :users
  resources :organizations do
    resources :municipalities 
    end
    
    resources :service_providers

  
  get 'about', to: 'pages#about'
  root 'pages#home'
end
