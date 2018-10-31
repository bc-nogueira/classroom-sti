class ProfessoresController < ApplicationController
  def index
    @professores = Professor.all
  end

  def show
    @professor = Professor.find(params[:id])
  end
end
