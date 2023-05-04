#language: pt

Funcionalidade: Cadastro

    Sendo um musico que possui equipamentos musicais
    Quero fazer meu cadastro no Rocklov
    Para que eu possa dispinibiliza-los para locação

    @cadastro
    Cenario: Fazer cadastro
        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome           | email              | senha  |
            | Fernando Zamai | fernando@gmail.com | pwd123 |
        Entao sou redirecionado para o Dashboard

    @tentativa_cadastro
    Esquema do Cenario: Tentativa de cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input     | email_input        | senha_input | mensagem_output                  |
            |                | fernando@gmail.com | abc123      | Oops. Informe seu nome completo! |
            | Fernando Zamai |                    | pwd123      | Oops. Informe um email válido!   |
            | Fernando Zamai | fernando*gmail.com | pwd123      | Oops. Informe um email válido!   |
            | Fernando Zamai | fernando&gmail.com | pwd123      | Oops. Informe um email válido!   |
            | Fernando Zamai | fernando@gmail.com |             | Oops. Informe sua senha secreta! |