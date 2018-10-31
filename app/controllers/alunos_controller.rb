class AlunosController < ApplicationController
  def index
    @alunos = Aluno.all
  end

  def show
    @aluno = Aluno.find(params[:id])
  end

  def new
    @aluno = Aluno.new
  end

  def create
    @aluno = Aluno.create(aluno_params)
    redirect_to aluno_path(@aluno)
  end

  def inscrever_turma
    @aluno = Aluno.find(params[:id])
    AlunoTurma.create(aluno_id: params[:id], turma_id:params[:turma_id])
  end

  private

  def aluno_params
    params.require(:aluno).permit(:nome, :iduff, :matricula, :email)
  end
end
