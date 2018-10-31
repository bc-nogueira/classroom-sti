class ProfessoresController < ApplicationController
  def index
    @professores = Professor.all
  end

  def show
    @professor = Professor.find(params[:id])
  end

  def new
    @professor = Professor.new
  end

  def create
    @professor = Professor.create(professor_params)
    redirect_to professor_path(@professor)
  end

  private

  def professor_params
    params.require(:professor).permit(:nome, :iduff, :siape, :email)
  end
end
