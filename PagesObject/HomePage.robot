*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

addToCard
    [Arguments]    ${product}
    Click Element    id:${product} 

removeFromCart
    [Arguments]    ${product}
    Click Button     id:${product}   
openCart
    Click Element    id:shopping_cart_container