Rails.application.routes.draw do

  resources :acessorios_rpas
  resources :relatorio_plano_de_voos
  resources :cadastro_pilotos
  resources :acessorio_rpas
  resources :cadastro_equipe_rpas
  resources :plano_de_voos
  resources :cadastro_rpas
  root to: 'static_pages#index'

  # Using Devise for authentication
  devise_for :users,
    path_names: {
      sign_in: 'login', sign_out: 'logout',
      password: 'senha', confirmation: 'confirmar'
    },
    controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords'
    },
    skip: [:registrations]

  devise_scope :user do
    get "login", to: "users/sessions#new"
  end


  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :units, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :permissions, only: [:index, :new, :create, :edit, :update, :destroy]

end
