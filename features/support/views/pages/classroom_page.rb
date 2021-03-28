class ClassroomPage
  include Capybara::DSL

  def clear
    results = page.all('a[class="_dwmetq _1ozlirx"]').map { |a| a["href"] }
    results.each do |result|
      visit result
      find("span", text: "Configurações").click
      click_button "Excluir esta turma"
      page.driver.browser.switch_to.alert.accept
    end
  end

  def recomendar
    find("span", text: "Recomendações").click
    find("span", text: "Recomendar").click
    click_button "+ Adicione um curso para criar recomendações"
    page.find('[data-test-id="class-picker-item-4-0"]').click
    click_button "Salvar"
    page.find('[data-test-id="row-checkbox-2"]').click
    click_button "Recomendar 15" #page
    page.find('[data-test-id="new-assignment-post-button"]').click #modal
  end

  def menu_gerenciar?
    find("span", text: "Gerenciar").click
    page.find('[data-test-id="select-all-assignments"]').click

    return has_css?("h1", text: "Administrar recomendações")
  end

  def removeuser(usuario)
    page.find("[aria-label='Selecionar #{usuario} para mover para uma turma']").click
    click_button "Ações (1)"
    click_link "Remover da turma"
    page.find('[data-test-id="confirmation-modal-submit"]').click
  end

  def contemuser?(usuario)
    click_link "Alunos" #ajuda a nao precisar por sleep para validar a nova lista
    result = page.has_css?("[aria-label='Selecionar #{usuario} para mover para uma turma']")
    return result
  end
end
