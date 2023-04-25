*** Settings ***
Documentation      Config Enviroments
...                Initialize System
...                This Test Must Execute with all Enviroments
...                The Enviroment is: ${ENV}


Resource          ../keywords/enviroment.robot

Test Teardown    Close All Browsers

# Ejecucion en local 
# robot -v ENV:prod -v BROWSER:chrome -d results --include development . 

*** Test Cases ***

Setting Variables of Enviroment
    [Documentation]    Seteo de Variables de Entorno
    [Tags]    development
    Run Keyword If  '${ENV}' == 'prod'     enviroment.urls production
