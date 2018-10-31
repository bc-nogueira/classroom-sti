Rails.application.routes.draw do
  root to: 'home#index'
  # get 'home/index'

  resources :alunos, only: [:index, :show, :new, :create] do
    member { post 'inscrever_turma' }
  end
  resources :disciplinas, only: [:index, :new, :create]
  resources :professores, only: [:index, :show, :new, :create]
  resources :turmas, only: [:index, :show, :new, :create] do
    member { post 'inscrever_aluno' }
  end
end
