class DisciplinasController < ApplicationController
  def index
    @disciplinas = Disciplina.all
  end

  def new
    @disciplina = Disciplina.new
  end

  def create
    Disciplina.create(disciplina_params)
    redirect_to disciplinas_path
  end

  private

  def disciplina_params
    params.require(:disciplina).permit(:codigo, :nome)
  end
end
