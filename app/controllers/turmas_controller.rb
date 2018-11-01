class TurmasController < ApplicationController
  before_action :find_turma, only: [:show, :inscrever_aluno, :alterar_professor]

  def index
    @turmas = Turma.all
  end

  def show; end

  def new
    @turma = Turma.new
  end

  def create
    @turma = Turma.create(turma_params)
    redirect_to turma_path(@turma)
  end

  def inscrever_aluno
    AlunoTurma.create(aluno_id: params[:aluno_id], turma_id:params[:id])
  end

  def alterar_professor
    @turma.update({ professor: Professor.find(params[:professor_id]) })
  end

  private

  def find_turma
    @turma = Turma.find(params[:id])
  end

  def turma_params
    params.require(:turma).permit(:codigo, :periodo,
                                  :disciplina_id, :professor_id)
  end
end
