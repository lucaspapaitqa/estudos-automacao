*** Settings ***
Documentation        Aqui teremos as KWs helpers        ## Documentação, palavra reservada
Library    AppiumLibrary

*** Variables ***
${START}                COMEÇAR
${HAMBURGUER}           Xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}             id=io.qaninja.android.twp:id/tvNavTitle

*** Keywords ***
Get Started
    Wait Until Page Contains            ${START}        #timeout         #Esse texto deve conter na página
    Click Text                          ${START}        # Click no texto começar
    Wait Until Element Is Visible       ${HAMBURGUER}    # --checkpoints-- Aguardar até o elemento ficar visível
Open Nav
    Click Element                       ${HAMBURGUER} 
    Wait Until Element Is Visible       ${NAV_VIEW}


Go To Login Form
    Open Nav      

    Click Text                  FORMS
    Wait Until Page Contains    FORMS

    Click Text                  LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?

Go To Radion Buttons
    Open Nav

    Click Text                  INPUTS
    Wait Until Page Contains    INPUTS

    Click Text                  BOTÕES DE RADIO
    Wait Until Page Contains    Escolha sua linguagem preferida

Go To CheckBox
    Open Nav

    Click Text                  INPUTS
    Wait Until Page Contains    INPUTS

    Click Text                  CHECKBOX
    Wait Until Page Contains    Marque as techs que usam Appium

Go To Short Click
    Open Nav

    Click Text                  BOTÔES
    Wait Until Page Contains    CLIQUE SIMPLES

    Click Text                  CLIQUE SIMPLES
    Wait Until Page Contains    Botão clique simples

Go To Long Click
    Open Nav

    Click Text                  BOTÕES
    Wait Until Page Contains    CLIQUE SIMPLES

    Click Text                  CLIQUE SIMPLES
    Wait Until Page Contains    Botão clique simples