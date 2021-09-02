Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  devise_for :users, controllers: {registrations: 'registrations'}

  resources :journey, only: [:index]
  resources :banks, only: [:index, :show]
  resources :insurances, only: [:index, :show]
  resources :registration_offices, only: [:index, :show]

  resources :questions, only: [:new, :set_session_questions]
  post 'set_session', to: 'questions#set_session_questions', as: 'set_session_questions'
  post 'questions_create', to: 'questions#create', as: 'questions_create'
  resources :appointments, only: [:edit, :update, :create, :show]
  resources :questions

  get 'tv_license', to: 'pages#tv_license'
  get 'req_index', to: 'pages#req_index'

  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end
  post 'insurance/:id/create', to: 'insurances#create', as: 'insurances_create'
  patch 'insurance/:id/update', to: 'insurances#update', as: 'insurances_update'
  patch 'insurance/:id/delete', to: 'insurances#destroy', as: 'insurances_delete'

  post 'banks/:id/create', to: 'banks#create', as: 'banks_create'
  patch 'banks/:id/update', to: 'banks#update', as: 'banks_update'
  patch 'banks/:id/delete', to: 'banks#destroy', as: 'banks_delete'

end
