Rails.application.routes.draw do
  devise_for :hospitals
  root 'patients#index'
  
  resources :patients do
    resources :breast_conditions, only: [:show, :edit, :update, :new, :create]
    resources :medical_treatments, only: [:show, :edit, :update, :new, :create]
  end
end

