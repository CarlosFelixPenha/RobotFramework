***Settings***
Documentation   Testes da página de login

Library   Browser

#Envocando a Keywords na pasta resources
Resource    resources/login_actions.robot

#Gancho para tirar screnshot apos a execução de cada teste
Test Teardown   Sleep   2    Take Screenshot

***Test Cases***
Login com sucesso
    Open Browser    https://parodify.herokuapp.com/users/sign_in   chromium

    Login With      papito@parodify.com     pwd123

    Wait For Elements State     css=a[href$=sign_out]   visible    10


Login senha incorreta
    Open Browser    https://parodify.herokuapp.com/users/sign_in   chromium

    Login With      papito@parodify.com     abc123

    Get Text    css=.is-danger .message-body   ==   Opps! Dados de acesso incorretos!


Login e-mail incorreto
    Open Browser    https://parodify.herokuapp.com/users/sign_in   chromium

    Login With      4041@parodify.com     pwd123

    Get Text    css=.is-danger .message-body   ==   Opps! Dados de acesso incorretos!


Login campo e-mail vazio
    Open Browser    https://parodify.herokuapp.com/users/sign_in   chromium

    Login With      ${EMPTY}    pwd123

    Get Text        css=.is-danger .message-body   ==   Opps! Dados de acesso incorretos!


Login campo senha vazio
    Open Browser    https://parodify.herokuapp.com/users/sign_in   chromium

    Login With      papito@parodify.com     ${EMPTY}

    Get Text        css=.is-danger .message-body   ==   Opps! Dados de acesso incorretos!
