Rails.application.routes.draw do
  devise_for :users
  resources :organizations do
    post :addMunicipality, on: :member
  end
      
  resources :service_providers
  
  get 'about', to: 'pages#about'
  root 'pages#home'
end
