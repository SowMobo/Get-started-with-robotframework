*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
connexion
    [Arguments]    ${user_name}    ${password}
    Input Text    css:input#user-name    ${user_name}
    Input Text    id:password    ${password}
    Click Button    id:login-button
