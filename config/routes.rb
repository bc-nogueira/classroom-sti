Rails.application.routes.draw do
  root to: 'home#index'
  # get 'home/index'

  resources :alunos, only: [:index]
  resources :disciplinas, only: [:index]
  resources :professores, only: [:index]
end
