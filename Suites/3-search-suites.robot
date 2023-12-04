*** Settings ***
Resource    ../PageObject/base/base.robot
Resource    ../PageObject/HomePageObjects/home-page.robot
Resource    ../PageObject/LoginPageObjects/Login-page.robot
Resource    ../PageObject/SearchPageObject/Search-Page.robot

*** Keywords ***

*** Test Cases ***
Open and login Flight Application
    Open Flight Application
    Click Sign In Button On Home Screen
    Input Username On Login Page     ${valid-username}
    Input Password On Login page    ${valid-password}
    Click Button Sign In On Login page

Search Number Flight
    Click Search Button
    Input Flight Number            ${flight-number}
    Click Button Search Flight

