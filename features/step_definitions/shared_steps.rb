Dado("que acesso a página principal") do
  @home_page.open
end
Dado("submeto o login com meu cadastro: {string} e {string}") do |email, senha|
  @home_page.login(email, senha)
end
