Given ("eu estou logada no sistema") do 
    visit "/usuarios/new"
    fill_in 'user[login]', :with => "patricia"
    fill_in 'user[email]', :with => "patricia@email.com"
    fill_in 'user[senha]', :with => "123456"
    click_button 'salvar'
    visit "/login"
    fill_in 'email', :with => "patricia@email.com"
    fill_in 'senha', :with => "123456"
    click_button 'entrar'
end
Given("cadastrar nova reclamação corretamente") do 
    click_link 'Nova reclamação'
end
When("eu crio uma reclamação com o titulo {string} and texto {string} and categoria {string} and nome da empresa {string}") do |titulo, cat_problema, texto, nome_empresa|
    fill_in 'reclamacoes[titulo]', :with => titulo
    fill_in 'reclamacoes[cat_problema]', :with => cat_problema
    fill_in 'reclamacoes[texto]', :with => texto
    fill_in 'reclamacoes[nome_empresa]', :with => nome_empresa
end
When("eu clico em criar reclamação")  do 
    click_button 'salvar'
end
Then("eu vejo a mensagem {string}") do |mensagem|
    expect(page).to have_content(mensagem)
end 
Given("eu estou na página de edição de produto") do
    click_link 'editar'
end
When("eu edito uma reclamação com o titulo {string} and texto {string} and categoria {string} and nome da empresa {string}") do |titulo, cat_problema, texto, nome_empresa|
    fill_in 'reclamacoes[titulo]', :with => titulo
    fill_in 'reclamacoes[cat_problema]', :with => cat_problema
    fill_in 'reclamacoes[texto]', :with => texto
    fill_in 'reclamacoes[nome_empresa]', :with => nome_empresa
end
When("I click edit cliente")  do 
    click_button 'editar'
end