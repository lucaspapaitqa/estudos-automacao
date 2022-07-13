**Settings**
Library  AppiumLibrary

#{
 # "automationName": "UiAutomator2",
 # "platformName": "Android",
 # "deviceName": "Emulator",
 # "app": "~/Desktop/Quality Assurance/automacao/aplicativo/apk/twp.apk",
 # "udid": "emulator-5554"

***Test Cases***
Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 app=${EXECDIR}/app/twp.apk


    Wait Until Page Contains        Training Wheels Protocol        10  #timeout         #Quando texto tem quebra de linha, existe a quebra de linha aqui
    Wait Until Page Contains        Mobile Version                  10
    Close Application
    