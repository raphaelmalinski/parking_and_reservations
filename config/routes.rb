Rails.application.routes.draw do
  resources :usuarios
  resources :veiculos
  resources :reservas
  root 'paginas#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
