Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"
  
  resources :shoppings
  resources :butchers
  resources :drinks
  resources :vegetables
end
