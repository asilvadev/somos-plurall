class HomePage
  include Capybara::DSL

  def open
    return visit "/"
  end

  def login(email, senha)
    sleep 1
    click_link "Entrar"
    sleep 1
    # find("#login-or-signup").click
    page.find('[data-test-id="identifier"]').set email
    page.find('[data-test-id="password"]').set senha

    # find("input=[#uid-identity-text-field-8-senha]").set senha

    click_button "Entrar"
  end
end
