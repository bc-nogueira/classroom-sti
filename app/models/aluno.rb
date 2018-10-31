class Aluno < ApplicationRecord
  has_many :aluno_turmas
  has_many :turmas, through: :aluno_turmas
end
