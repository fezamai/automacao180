#language: pt

Funcionalidade: Cadastro

    Sendo um musico que possui equipamentos musicais
    Quero fazer meu cadastro no Rocklov
    Para que eu possa dispinibiliza-los para locação

    @cadastro
    Cenario: Fazer cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro completo
        Entao sou redirecionado para o Dashboard
    
    @tentativa_cadastro
    Cenario: Submeter cadastro sem o nome
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o nome
        Entao vejo uma mensagem de alerta: "Oops. Informe seu nome completo!"

    @tentativa_cadastro
    Cenario: Submeter cadastro sem o email
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o email
        Entao vejo uma mensagem de alerta: "Oops. Informe um email válido!"

    @tentativa_cadastro
    Cenario: Submeter cadastro com email incorreto
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com email incorreto
        Entao vejo uma mensagem de alerta: "Oops. Informe um email válido!"

    @tentativa_cadastro
    Cenario: Submeter cadastro sem a senha
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Entao vejo uma mensagem de alerta: "Oops. Informe sua senha secreta!"