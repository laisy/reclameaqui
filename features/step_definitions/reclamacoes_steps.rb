Given ("eu estou logada no sistema") do 
    visit "/usuarios/new"
    fill_in 'usuario[login]', :with => "patricia"
    fill_in 'usuario[email]', :with => "patricia@email.com"
    fill_in 'usuario[senha]', :with => "123456"
    click_button 'salvar'
    visit "/login"
    fill_in 'email', :with => "patricia@email.com"
    fill_in 'senha', :with => "123456"
    click_button 'entrar'
end
Given("eu estou na página de cadastro de reclamacao") do 
    click_link 'Nova reclamação'
end
When("eu crio uma reclamacao com o titulo {string} and texto {string} and categoria {string} and nome da empresa {string}") do |titulo, texto, cat_problema, nome_empresa|
    fill_in 'reclamacao[titulo]', :with => titulo
    fill_in 'reclamacao[texto]', :with => texto
    fill_in 'reclamacao[cat_problema]', :with => cat_problema
    select nome_empresa, from:'reclamacao[nome_empresa]'
end
When("eu clico em criar reclamacao") do 
    click_button 'salvar'
end
Then("eu vejo a mensagem {string}") do |mensagem|
    expect(page).to have_content(mensagem)
end 
Given("eu estou na página de edição do produto de titulo {string}") do |titulo|
    expect(page).to have_content("RECLAMAÇÃO EFETUADA COM SUCESSO")
    click_link "e-#{titulo}"
end
When("eu edito uma reclamacao com o titulo {string} and texto {string} and categoria {string} and nome da empresa {string}") do |titulo, texto, cat_problema, nome_empresa|
    fill_in 'reclamacao[titulo]', :with => titulo
    fill_in 'reclamacao[texto]', :with => texto
    fill_in 'reclamacao[cat_problema]', :with => cat_problema
    select nome_empresa, from:'reclamacao[nome_empresa]'
end
When("eu clico em editar reclamacao") do 
    click_button 'salvar'
end