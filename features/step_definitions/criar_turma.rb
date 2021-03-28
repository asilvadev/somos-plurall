Quando("inicio o processo de adicionar uma nova turma") do
  expect(@dash_page.ondash?).to be true
  #   @dash_page.addclassroom()
end

Quando("coloco o nome da turma sendo: {string}") do |nome_turma|
  @dash_page.newclassroom(nome_turma)
end

Quando("cadastro meus alunos com o sequintes dados") do |dados|
  @dash_page.addstudents(dados)

  # table is a Cucumber::MultilineArgument::DataTable

  # @dash_page.addStudents(nomes, senha)
  # pending # Write code here that turns the phrase above into concrete actions
end

Então("ao finalizar devo ver a lista dos meus alunos") do
  expect(@dash_page.have_studentlist?).to be true
end
