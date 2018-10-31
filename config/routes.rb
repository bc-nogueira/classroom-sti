Rails.application.routes.draw do
  root to: 'home#index'
  # get 'home/index'

  resources :alunos, only: [:index, :show, :new, :create]
  resources :disciplinas, only: [:index]
  resources :professores, only: [:index, :show]
  resources :turmas, only: [:index, :show]
end
