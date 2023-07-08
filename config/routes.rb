Rails.application.routes.draw do
  devise_for :hospitals
  root 'patients#index'
  resources :patients
  resources :medical_treatments
    
    
  # get '/hospitals/sign_in', to: 'hospitals#sign_in'
  # get '/hospitals/sign_up', to: 'hospitals#sign_up'
  # get '/hospitals/edit', to: 'hospitals#edit'
end
