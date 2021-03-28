class ClassPage
  include Capybara::DSL

  def tutorial_page?
    click_link "O que é Programação?"

    result = page.has_css?('[data-test-id="tutorial-page"]')
    return result
  end
end
