class Turma < ApplicationRecord
  belongs_to :disciplina
  belongs_to :professor

  has_many :aluno_turmas
  has_many :alunos, through: :aluno_turmas
end
