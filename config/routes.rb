Rails.application.routes.draw do
  resources :veiculos
  resources :reservas
  # root 'reservas#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
