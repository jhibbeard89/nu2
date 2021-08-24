Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # Pages#Home will be included from Christine Check controller home is deleted
  root to: "home#index"
  resources :banks, only: [:index, :show]
  resources :insurances, only: [:index, :show]
end
