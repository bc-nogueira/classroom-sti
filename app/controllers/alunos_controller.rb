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

  private

  def aluno_params
    params.require(:aluno).permit(:nome, :iduff, :matricula, :email)
  end
end
