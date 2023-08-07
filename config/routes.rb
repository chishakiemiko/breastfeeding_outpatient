Rails.application.routes.draw do
  devise_for :hospitals
  root 'patients#index'
  resources :patients
  resources :breast_conditions
  
    
    
  # get '/hospitals/sign_in', to: 'hospitals#sign_in'
  # get '/hospitals/sign_up', to: 'hospitals#sign_up'
  # get '/hospitals/edit', to: 'hospitals#edit'
end
