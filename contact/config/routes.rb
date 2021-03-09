Rails.application.routes.draw do
  resources :personnes
  #get 'home/index'
  get 'home/about'
  root 'personnes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
