*** Settings ***
Documentation     clicoh_loginKeywords
...               Steps of a group of testCases
...               Validations in each keywords
...               Call to pago object from here

Resource          enviroment.robot
Resource          ../pages/commonPage.robot
Resource          ../pages/home_Page.robot

*** Keywords ***

Homepage
    [Documentation]    Funcionalidad: Homepage
    commonPage.Open browser with url and browserType    ${URL}    ${BROWSER}

Validation Go to landingpage
    [Documentation]    Validacion de pagina de destino
    home_Page.Verify Page Loaded

Home Elements
    [Documentation]    Elementos del Home
    ...                Tipo: 
    ...                Caracteristicas: 
    Set Selenium Implicit Wait    10s
    commonPage.Open browser with url and browserType  ${URL}    ${BROWSER}
    home_Page.Verify Page Loaded

Search Postman
    [Documentation]    Buscar POSTMAN
    ...                Tipo: 
    ...                Caracteristicas: 
    Set Selenium Implicit Wait    10s
    home_Page.Search Postman

Go to Youtube
    [Documentation]    Ir a la pagina de youtube
    ...                Tipo: 
    ...                Caracteristicas: 
    Set Selenium Implicit Wait    10s
    home_Page.Go to Youtube
