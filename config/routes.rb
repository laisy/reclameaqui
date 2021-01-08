Rails.application.routes.draw do
  resources :login
  resources :reclamacaos
  resources :usuarios
  get 'login/index'
  root "reclamacaos#index"
  get 'login/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
