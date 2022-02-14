Rails.application.routes.draw do
  resources :nclientes
  resources :clientes
  #get 'home/index'
  root 'home#index'
  get 'home/pag2'
  get 'home/pag3'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
