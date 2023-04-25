*** Settings ***
Documentation    Page uri: N/A is commonPage
...
...
...


Library           SeleniumLibrary
Resource          ../keywords/enviroment.robot


*** Variables ***


*** Keywords ***

Open browser with url
    [Documentation]    Abre Navegador
    [Arguments]    ${URL} 
    Open Browser    ${URL}
    Maximize Browser Window
    Set Browser Implicit Wait    10

Open browser with url and browserType
    [Documentation]    Abre Navegador
    [Arguments]     ${URL}    ${BROWSER} 
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    10
