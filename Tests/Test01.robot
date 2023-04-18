*** Settings ***
Library    SeleniumLibrary
Resource    ../PagesObject/LoginPage.robot
Resource    ../PagesObject/HomePage.robot
Resource    ../PagesObject/CartPage.robot
Resource    ../PagesObject/OrderPage.robot
Resource    ../PagesObject/ValidationPage.robot
Resource    ../PagesObject/BackHomePage.robot
Resource    ../Data/variables.robot

Test Setup    Open Browser    ${sutUrl}    chrome

*** Test Cases ***
Test valid connexion
    connexion    standard_user    secret_sauce    
    # Element Text Should Be    css:div.app_logo    Swag Labs
    Element Should Be Visible    css:div.app_logo


Test fail connexion - invalid password
    connexion    standard_user    secret_sauce1
    Element Text Should Be    css:div.error-message-container.error    Epic sadface: Username and password do not match any user in this service

Test fail connexion - invalid Username
    connexion    locked_out_user    secret_sauce
    Element Text Should Be    css:div.error-message-container.error    Epic sadface: Sorry, this user has been locked out.


Test order products
    connexion    standard_user    secret_sauce
     Element Should Be Visible    css:div.app_logo
     addToCard    add-to-cart-sauce-labs-bike-light
     openCart
     checkout
     enterPersonalInformation    mobo    sow    78955
     continue
     finish
     back_home
