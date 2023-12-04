*** Settings ***
Resource        ../base/base.robot
Resource        ../HomePageObjects/home-page.robot
Variables       ../BookPageObject/book-locator.yaml
Variables       ../HomePageObjects/home-locators.yaml
Variables       ../LoginPageObjects/login-locators.yaml
Variables       ../SearchPageObject/search-locator.yaml

*** Keywords ***
Click Sign Button
    Click Sign In Button On Home Screen

Input Username Sign In On Login Page
    [Arguments]       ${username}
    Wait Until Element Is Visible    ${username-input}
    Input Text        ${username-input}        ${username}

Input Password Sign In On Login Page
    [Arguments]        ${password}
    Wait Until Element Is Visible    ${password-input}
    Input Password    ${password-input}        ${password}
Click Button Sign In On Login page
    
    Click Element    ${log-in-button}
Click Search Button
    Wait Until Element Is Visible    ${search-flight}
    Click Element     ${search-flight}

Input Flight Number
    [Arguments]        ${number-flight}
    Wait Until Element Is Visible    ${input-flight-number}
    Input Text    ${input-flight-number}    ${number-flight}

Click Button Search Flight
    Wait Until Element Is Visible    ${button-search-flight}
    Click Element    ${button-search-flight}