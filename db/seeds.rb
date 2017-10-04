# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


boletim.delete_all


boletim.create!([
  {nome: "a", cpf: "000000001" , matricula: 444444444, endereco: "aaaaaa", telefone: "993090932", data: 01-01-1956, cr_periodo: 5, materia: "aaaa", nota_final: 5.6, carga_horaria: 6.5, creditos: 3, situacao_final: "aprovado"},
  {nome: "b", cpf: "000000002" , matricula: 444565544, endereco: "abbbaa", telefone: "993080932", data: 01-01-1956, cr_periodo: 5, materia: "aaaf", nota_final: 5.6, carga_horaria: 6.5, creditos: 3, situacao_final: "aprovado"},
  {nome: "c", cpf: "000000003" , matricula: 444544444, endereco: "afcaaa", telefone: "993060932", data: 01-01-1956, cr_periodo: 5, materia: "aaag", nota_final: 5.6, carga_horaria: 6.5, creditos: 3, situacao_final: "aprovado"},
])

