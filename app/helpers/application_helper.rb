module ApplicationHelper
  def disciplinas_para_select(selected = nil)
    discs_ordenadas = Disciplina.all.sort_by(&:nome)
    disciplinas = discs_ordenadas.map { |d| [d.nome, d.id] }
    options_for_select(disciplinas, selected)
  end

  def professores_para_select(selected = nil)
    profs_ordenados = Professor.all.sort_by(&:nome)
    professores = profs_ordenados.map { |p| [p.nome, p.id] }
    options_for_select(professores, selected)
  end

  def turmas_para_select(selected = nil)
    turmas_ordenadas = Turma.all
    turmas = turmas_ordenadas.map { |t| [t.nome_com_codigo, t.id] }
    options_for_select(turmas, selected)
  end
end
