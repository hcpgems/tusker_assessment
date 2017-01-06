Rails.application.routes.draw do
	root "customers#index"
  resources :customers
  resources :cities
  resources :box_contents
  resources :boxes
  resources :contents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
