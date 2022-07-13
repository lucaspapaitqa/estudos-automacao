***Settings***
Library     hello.py

# semi CodeLess

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${resultado}=          Hello Robot             #Hello é a library
    #Log To Console        ${resultado}   
    Should Be Equal        ${resultado}    Olá, Bem vindo ao curso de Robot Mobile.        #tab após o equal, faz a comparação