Rails.application.routes.draw do
  get '/sign_in', to: 'sessions#sign_in', as: 'sign_in'
  post '/sign_in', to: 'sessions#create'
  delete '/sign_out', to: 'sessions#destroy', as: 'sign_out'

  resources :users, only: [:new, :create]
  resources :marks, only: [:index]

  root 'marks#index'
end
