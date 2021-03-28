class DashPage
  include Capybara::DSL

  def ondash?
    return page.has_css?('[data-test-id="coach-welcome-name"]')
  end

  def firstclassroom
    return links = page.all('a[class="_dwmetq _1ozlirx"]').map { |a| a["href"] }
  end

  def newclassroom(nome_turma)
    find_link("Adicionar nova turma").click

    page.find('[data-test-id="class-name-input"]').set nome_turma

    click_button "Próximo"
    click_button "Pular"
    click_button "Pular"
    click_button "Ir para a turma"
  end

  def addstudents(dados)
    alunos = dados.rows_hash[:nomes]
    alunos = alunos.split(",")

    click_button "Adicionar novos alunos"

    find("span", text: "Crie as contas dos seus alunos").click

    alunos.each_with_index do |e, index|
      page.find("[data-test-id='new-student-name-#{index}']").set e
      click_link "Adicione nova linha"
    end

    click_button "Próximo"

    click_button "Criar contas"
    click_button "Pular"
    click_button "Feito"
  end

  def have_studentlist?
    return page.has_css?('[data-test-id="check_all_checkbox"]')
  end

  def have_classroom?
    return page.has_css?("div", text: "Nome da turma: Curso da turma")
  end

  def addcourse(disciplina)
    click_link "Cursos"
    click_button "Adicionar outro curso"
    find("label", text: disciplina).click
    click_button "Continuar com 2 cursos"
  end

  def removecourse(disciplina)
    click_link "Cursos"
    click_button "Editar cursos"
    find("label", text: disciplina).click
    click_button "Continuar com 1 curso"
    click_link "Cursos" #trick
  end

  def findclassroom(nome_turma)
    page.find("[data-test-id='#{nome_turma}']").click
  end

  def setview
    click_link "Introdução a JavaScript: Desenho & Animação"
  end

  def have_course?(disciplina)
    return page.has_css?("h3", text: disciplina)
  end
end
