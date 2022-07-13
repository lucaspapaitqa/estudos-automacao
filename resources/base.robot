*** Settings ***
Library           AppiumLibrary
Resource          helpers.robot

*** Variables ***
${START}                COMEÇAR
${HAMBURGUER}           Xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}             id=io.qaninja.android.twp:id/tvNavTitle

*** Keywords ***
Open Session
    Set Appium Timeout  5    #Configuração de timeout padrão  -- Após o timeout, tabulando algum número, esse número vira o tempo de timeout
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 app=${EXECDIR}/app/twp.apk
    Get Started

Close Session
    Close Application

