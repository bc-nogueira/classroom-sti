class AlunosController < ApplicationController
  before_action :find_aluno, only: [:show, :inscrever_turma]

  def index
    @alunos = Aluno.all
  end

  def show; end

  def new
    @aluno = Aluno.new
  end

  def create
    @aluno = Aluno.create(aluno_params)
    redirect_to aluno_path(@aluno)
  end

  def inscrever_turma
    AlunoTurma.create(aluno_id: params[:id], turma_id:params[:turma_id])
  end

  private

  def find_aluno
    @aluno = Aluno.find(params[:id])
  end

  def aluno_params
    params.require(:aluno).permit(:nome, :iduff, :matricula, :email)
  end
end
