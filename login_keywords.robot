***Settings***
Documentation   Testes da página de login

Library           Browser
##Library           SeleniumLibrary2

#Envocando as Keywords da pasta resources
Resource    resources/login_actions.robot
Resource    resources/home_actions.robot

#Gancho para tirar screnshot apos a execução de cada teste
Test Teardown      Take Screenshot

***Test Cases***
Login com sucesso
#    [tags]      smoke
    Open Login Page
    Login With      papito@parodify.com     pwd123
    Logout Link Shoud Be Visible

Login senha incorreta
    Open Login Page
    Login With          papito@parodify.com     abc123
    Alert Should Be     Opps! Dados de acesso incorretos!

Login e-mail incorreto
    Open Login Page
    Login With          4041@parodify.com     pwd123
    Alert Should Be     Opps! Dados de acesso incorretos!

Login campo e-mail vazio
    Open Login Page
    Login With          ${EMPTY}    pwd123
    Alert Should Be     Opps! Dados de acesso incorretos!

Login campo senha vazio
    Open Login Page
    Login With           papito@parodify.com     ${EMPTY}
    Alert Should Be      Opps! Dados de acesso incorretos!