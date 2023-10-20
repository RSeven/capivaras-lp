Rails.application.routes.draw do
  root to: 'home#index'
  resources :contact, only: %i[create]
end
