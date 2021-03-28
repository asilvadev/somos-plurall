Quando("inicio o processo de limpa de resquício") do
  @classroom_page.clear
end

Então("ao finalizar não devo ter nenhuma turma criada") do
  expect(@dash_page.have_classroom?).to be true
end

Então("ao finalizar não devo ter nenhuma disciplina de {string}") do |disciplina|
  @dash_page.removecourse(disciplina)
  expect(@dash_page.have_course?(disciplina)).not_to be true
end
