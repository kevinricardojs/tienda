Rails.application.routes.draw do
  resources :departamentos
  resources :productos

get '/dashboard' => 'dashboard#index'
  devise_for :usuarios
  
   root 'inicio#index'


end
