Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#home"
  resources :banks, only: [:index, :show]
  resources :insurances, only: [:index, :show]
  resources :registration_offices, only: [:index, :show]
  resources :questions
  get 'questions/:id/register', to: 'questions#user_new', as: 'user_new'
  patch 'quesions/:id/register', to: 'questions#user_create', as: 'user_create'

  get "tv_license", :to => "pages#tv_license"
  get "req_index", :to => "pages#req_index"
end
