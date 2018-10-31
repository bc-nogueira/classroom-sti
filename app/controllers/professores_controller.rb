class ProfessoresController < ApplicationController
  def index
    @professores = Professor.all
    binding.pry
  end
end
