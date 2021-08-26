Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  devise_for :users, controllers: {registrations: 'registrations'}

  resources :banks, only: [:index, :show]
  resources :insurances, only: [:index, :show]
  resources :registration_offices, only: [:index, :show]
  resources :questions, only: [:new, :set_session_questions]
  post 'set_session', to: 'questions#set_session_questions', as: 'set_session_questions'
  post 'questions_create', to: 'questions#create', as: 'questions_create'

  get 'tv_license', to: 'pages#tv_license'
  get 'req_index', to: 'pages#req_index'
end
