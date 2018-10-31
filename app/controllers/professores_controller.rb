class ProfessoresController < ApplicationController
  def index
    @professores = Professor.all
  end
end
