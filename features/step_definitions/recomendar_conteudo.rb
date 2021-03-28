Quando("seleciono uma turma existente") do
  results = @dash_page.firstclassroom
  visit results[0]
end

Quando("recomendo {int} conteúdos") do |total_recomendacao|
  @classroom_page.recomendar
end

Então("ao finalizar devo ver o painel de Administrar recomendações com {int} recomendações") do |total_recomendacao|
  expect(@classroom_page.menu_gerenciar?).to be true
end
