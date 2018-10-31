class Turma < ApplicationRecord
  belongs_to :disciplina
  belongs_to :professor

  has_many :aluno_turmas
  has_many :alunos, through: :aluno_turmas

  def nome_com_codigo
    "#{disciplina.nome} - #{codigo}"
  end
end
