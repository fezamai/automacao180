Dado('que acesso a página de cadastro') do
    visit "http://localhost:3000/signup"
end
  
Quando('submeto o meu cadastro completo') do

    MongoDB.new.remove_user("fernando@gamil.com")

    find('#fullName').set "Fernando Zamai"
    find('#email').set "fernando@gmail.com"
    find('#password').set "pwd123"
    click_button "Cadastrar"
end

Entao('sou redirecionado para o Dashboard') do
    expect(page).to have_css ".dashboard"
end

Quando('submeto o meu cadastro sem o nome') do
    find('#email').set Faker::Internet.free_email
    find('#password').set "pwd123"
    click_button "Cadastrar"
end
  
Entao('vejo uma mensagem de alerta: Oops. Informe seu nome completo!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe seu nome completo!"
end

Quando('submeto o meu cadastro sem o email') do
    find('#fullName').set "Fernando Zamai"
    find('#password').set "pwd123"
    click_button "Cadastrar"
end

Quando('submeto o meu cadastro com email incorreto') do
    find('#fullName').set "Fernando Zamai"
    find('#email').set "fernando.gmail.com"
    find('#password').set "pwd123"
    click_button "Cadastrar"
end
  
Entao('vejo uma mensagem de alerta: Oops. Informe um email válido!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe um email válido!"
end

Quando('submeto o meu cadastro sem a senha') do
    find('#fullName').set "Fernando Zamai"
    find('#email').set Faker::Internet.free_email
    click_button "Cadastrar"
end

Entao('vejo uma mensagem de alerta: Oops. Informe sua senha secreta!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe sua senha secreta!"
end

Entao('vejo uma mensagem de alerta: {string}') do |expect_alert|
    alert = find(".alert-dark")
    expect(alert.text).to eql expect_alert
end
  