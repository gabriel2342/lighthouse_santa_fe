Rails.application.routes.draw do
  devise_for :users
  resources :organizations do
    resources :municipalities do
      resources :service_providers
      end
    end
    

  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  root 'pages#home'
end
