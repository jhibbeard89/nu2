Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :banks, only: [:index, :show]
  resources :insurances, only: [:index, :show]
  resources :registration_offices, only: [:index, :show]
  resources :questions

  get 'tv_license', to: 'pages#tv_license'
  get 'req_index', to: 'pages#req_index'
end
