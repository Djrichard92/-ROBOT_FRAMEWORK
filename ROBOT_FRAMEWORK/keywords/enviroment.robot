*** Settings ***
Documentation      Setup And Initialize System.
...                A set of URLs for differents Enviroments
...                Load Variables
...                Has usefull functions


Library           SeleniumLibrary
Library           String
Library           DateTime


*** Variables ***


*** Keywords ***

urls production
    [Documentation]    Funcionalidad: Ninguna
    ...                Tipo: Seteo de Variables
    ...                Caracteristicas: Ambiente PROD
    Set Global Variable    ${BROWSER}
    
    #URLs del sitio
    Set Global Variable    ${URL}          https://www.toolsqa.com/


    Set Global Variable    ${TEXT_POSTMAN}          A cheat sheet by name looks like something which is not allowed or which can be misused. In software reference a cheat sheet is something which is used for quick reference or which is used for knowing something too specific without any details mainly codes, syntax or formulas. So this tutorial is designed for your quick reference for some Postman commands, codes and syntax. Please Note that all the syntax and code used here is as of latest style of writing codes/tests in Postman.

###########################################################################################################
###########################################################################################################

