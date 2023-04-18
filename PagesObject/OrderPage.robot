*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
enterPersonalInformation
    [Arguments]    ${first_name}    ${last_name}    ${zipcode}
    Input Text    id:first-name    ${first_name}
    Input Text    id:last-name    ${last_name}
    Input Text    id:postal-code    ${zipcode}

continue 
    Click Button    id:continue