class TurmasController < ApplicationController
  def index
    @turmas = Turma.all
  end

  def show
    @turma = Turma.find(params[:id])
  end

  def new
    @turma = Turma.new
  end

  def create
    @turma = Turma.create(turma_params)
    redirect_to turma_path(@turma)
  end

  private

  def turma_params
    params.require(:turma).permit(:codigo, :periodo,
                                  :disciplina_id, :professor_id)
  end
end
