module TurmasHelper
  def disciplinas_para_select(selected = nil)
    discs_ordenadas = Disciplina.all.sort_by(&:nome)
    disciplinas = discs_ordenadas.map { |d| [d.nome, d.id] }
    options_for_select(disciplinas, selected)
  end

  def professores_para_select(selected = nil)
    profs_ordenadas = Professor.all.sort_by(&:nome)
    professores = profs_ordenadas.map { |p| [p.nome, p.id] }
    options_for_select(professores, selected)
  end
end
