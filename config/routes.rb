Rails.application.routes.draw do
  resources :outflows
  resources :people
  resources :cashflows
  resources :transactions
  resources :cashboxes
  devise_for :users
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
