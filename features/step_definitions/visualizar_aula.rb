Quando("entro em um curso de determinada disciplina: {string}") do |disciplina|
  @dash_page.addcourse(disciplina)
end

Quando("visualizo uma aula") do
  @dash_page.setview
end

Então("devo ver a pagina da aula") do
  expect(@class_page.tutorial_page?).to be true
end
