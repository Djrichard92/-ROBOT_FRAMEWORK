*** Settings ***
Documentation     Integrity of pages.
...
...               
...


Resource          ../keywords/enviroment.robot
Resource          ../keywords/home_Keywords.robot


Test Teardown    Close All Browsers

*** Test Cases ***

Home Elements
    [Documentation]    Elementos del home
    [Tags]    development
    home_Keywords.Home Elements

Search Postman
    [Documentation]    Busqueda de postman
    [Tags]    development
    home_Keywords.Home Elements
    home_Keywords.Search Postman

Youtube Tools
    [Documentation]    IR a Youtube
    [Tags]    development
    home_Keywords.Home Elements
    home_Keywords.Go to Youtube
