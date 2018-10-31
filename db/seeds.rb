# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
breno = Aluno.create!({ nome: 'Breno', iduff: '12467993752',
                        matricula: '116083091', email: 'breno@id.uff.br' })

gabriel = Aluno.create!({ nome: 'Gabriel', iduff: '11111111111',
                        matricula: '115083051', email: 'gabriel@id.uff.br' })

professor = Professor.create!({ nome: 'Leo', iduff: '33333333333',
                                siape: '11111111', email: 'leo@id.uff.br' })

disciplina = Disciplina.create!({ codigo: 'TCC00100', nome: 'POO' })

turma = Turma.create!({ codigo: 'A1', periodo: '20182',
                        professor: professor, disciplina: disciplina })

AlunoTurma.create!({ aluno: breno, turma: turma })
AlunoTurma.create!({ aluno: gabriel, turma: turma })