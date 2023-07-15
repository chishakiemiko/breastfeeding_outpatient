Rails.application.routes.draw do
  root 'patients#index'
  resources :patients
  resources :visit_histories
    
    
  get '/hospitals/sign_in', to: 'hospitals#sign_in'
  get '/hospitals/sign_up', to: 'hospitals#sign_up'
  get '/hospitals/edit', to: 'hospitals#edit'
end
