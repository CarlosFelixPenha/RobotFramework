***Settings***
Documentation   Ações da pagina de login

***Keywords***
#Chamando a tela de login no Chrome
Open Login Page      
    Open Browser    https://parodify.herokuapp.com/users/sign_in   chromium
##    Maximize Browser Window

# Facilitando a chamada e imput na tela de login 
Login With
    [Arguments]          ${email_arg}    ${pass_arg}

    Fill Text            id=user_email      ${email_arg}
    Fill Text            id=user_password   ${pass_arg}

    Click           css=input[type=submit]

# Validando a mensagem de erro
Alert Should Be 
    [Arguments]          ${expect_arg}

    Get Text             css=.is-danger .message-body   ==   ${expect_arg}
    Sleep                2
