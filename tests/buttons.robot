*** Settings ***
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases ***
Deve realizar um click simples
    [tags]    shot
    Go To Short Click

    Click Element

    Wait Until Page Contains        Isso é um clique simples

Deve realizar um click long
    [tags]    long
    Go To Long Click

    Long Press

    Wait Until Page Contains        CLICK LONGO OK
