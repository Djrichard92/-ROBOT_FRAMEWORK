*** Settings ***
Documentation    Page url: 
...
...
...

Library           SeleniumLibrary

Resource          ../keywords/enviroment.robot

*** Variables ***

${BUTTON_SEARCH} =  xpath:(//*[@id="search-form"]/input) [2]
${SELECT_POSTMAN} =  xpath:(.//a[@href="/postman/postman-cheat-sheet/"])
${CATEGORY_POSTMAN} =  xpath:(.//a[@href="/categories/postman"])
${GO_YOUTUBE} =  xpath:(.//a[@href="https://www.youtube.com/channel/UCSVljVzYbFphBtHvJgwMLsg"])
${YOUTUBE} =  xpath:(.//a[@href="/@toolsqa-destinationforqapr8414/about"])

*** Keywords ***

Go to landingpage
    [Documentation]    Landing
    Set Selenium Implicit Wait    10s
    Go to  ${URL}

Verify Page Loaded
    [Documentation]    Validación
    Set Selenium Implicit Wait       20s
    Title Should Be                  Tools QA
    Page Should Contain              Selenium Online Trainings
    Page Should Contain              Training Batch starts from 04-Feb-2022

Search Postman
    [Documentation]    Buscador POSTMAN
    Set Selenium Implicit Wait       20s
    Wait Until Element Is Visible    ${BUTTON_SEARCH}           10s
    Input Text                       ${BUTTON_SEARCH}           Postman Cheat
    Press Keys	                     ${BUTTON_SEARCH}	        ENTER
    Set Selenium Implicit Wait       20s
    Page Should Contain              Postman Cheat Sheet
    Click Element                    ${SELECT_POSTMAN}
    Set Selenium Implicit Wait       20s
    Wait Until Element Is Visible    ${CATEGORY_POSTMAN}           10s
    Page Should Contain              ${TEXT_POSTMAN} 

Go to Youtube
    [Documentation]    Ir a Youtube
    Set Selenium Implicit Wait       20s
    Execute JavaScript    window.scrollBy(0,2200)
    Set Selenium Implicit Wait       20s
    Click Element                    ${GO_YOUTUBE}


