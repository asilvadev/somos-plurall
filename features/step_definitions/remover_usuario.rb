Quando("seleciono uma turma {string}") do |nome_turma|
  @dash_page.findclassroom(nome_turma)
end

Quando("inicio o processo de remoção do usuário {string}") do |nome_usuario|
  @usuario = nome_usuario
  @classroom_page.removeuser(@usuario)
end

Então("ao finalizar não devo ver o usuário presente na lista de alunos atuais") do
  expect(@classroom_page.contemuser?(@usuario)).not_to be true
end
