Rails.application.routes.draw do
  resources :pet_kinds
  root to: "pets#index"
  resources :pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
