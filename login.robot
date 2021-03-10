***Settings***
Documentation   Testes da página de login

Library   Browser

#Gancho para tirar screnshot apos a execução de cada teste
Test Teardown   Take Screenshot

***Test Cases***
Login com sucesso
    Open Browser   https://parodify.herokuapp.com/users/sign_in   chromium
#    Fill Text   css=#user_email    papito@parodify.com
#    Fill Text   css=#user_password   pwd123

    Fill Text   id=user_email    papito@parodify.com
    Fill Text   id=user_password   pwd123

    Click       css=input[type=submit]

    Wait For Elements State     css=a[href$=sign_out]   visible    10

    Take Screenshot
    
    Sleep       2

Login senha incorreta
    Open Browser    https://parodify.herokuapp.com/users/sign_in   chromium

    Fill Text   id=user_email    papito@parodify.com
    Fill Text   id=user_password   abc123   

    Click       css=input[type=submit]


    Get Text    css=.is-danger .message-body   ==   Opps! Dados de acesso incorretos!

    Take Screenshot

    Sleep       2

Login e-mail incorreto
    Open Browser    https://parodify.herokuapp.com/users/sign_in   chromium

    Fill Text   id=user_email    abcd@parodify.com
    Fill Text   id=user_password   pwd123   

    Click       css=input[type=submit]


    Get Text    css=.is-danger .message-body   ==   Opps! Dados de acesso incorretos!

    Take Screenshot

    Sleep       2

Login campo e-mail vazio
    Open Browser    https://parodify.herokuapp.com/users/sign_in   chromium

    Fill Text   id=user_email    ${EMPTY}
    Fill Text   id=user_password   pwd123   

    Click       css=input[type=submit]


    Get Text    css=.is-danger .message-body   ==   Opps! Dados de acesso incorretos!

    Take Screenshot

    Sleep       2

Login campo senha vazio
    Open Browser    https://parodify.herokuapp.com/users/sign_in   chromium

    Fill Text   id=user_email    papito@parodify.com
    Fill Text   id=user_password   ${EMPTY}

    Click       css=input[type=submit]


    Get Text    css=.is-danger .message-body   ==   Opps! Dados de acesso incorretos!

    Take Screenshot

    Sleep       2