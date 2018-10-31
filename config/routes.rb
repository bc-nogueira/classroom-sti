Rails.application.routes.draw do
  root to: 'home#index'
  # get 'home/index'

  resources :alunos, only: [:index, :show]
  resources :disciplinas, only: [:index]
  resources :professores, only: [:index]
  resources :turmas, only: [:index, :show]
end
