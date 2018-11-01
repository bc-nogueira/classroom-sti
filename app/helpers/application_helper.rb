module ApplicationHelper
  # Procura alunos que podem ser inscritos na turma
  def alunos_para_insc_turma(selected = nil)
    ordenados = Aluno.all.sort_by(&:nome)
    nao_inscritos = ordenados.select { |a| a.turma_ids.exclude? @turma.id }
    alunos = nao_inscritos.map { |a| [a.nome, a.id] }
    options_for_select(alunos, selected)
  end

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

  # Procura turmas para o aluno se inscrever
  def turmas_nao_inscrito(selected = nil)
    turmas_nao_insc = Turma.all.select { |t| t.aluno_ids.exclude? @aluno.id }
    turmas = turmas_nao_insc.map { |t| [t.nome_com_codigo, t.id] }
    options_for_select(turmas, selected)
  end
end
