*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators.robot

*** Keywords ***

Open Login Page
    Open Browser    ${LOGIN_URL}    chrome
    Maximize Browser Window

Login To Application
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USERNAME_INPUT}    timeout=30s
    Input Text        ${USERNAME_INPUT}  ${username}
    Input Password    ${PASSWORD_INPUT}  ${password}
    Click Button      ${LOGIN_BUTTON}

Verify Error Message
    Wait Until Element Is Visible    ${ERROR_MESSAGE}    timeout=10s
    Element Should Be Visible    ${ERROR_MESSAGE}
    Element Text Should Be    ${ERROR_MESSAGE}    Invalid credentials
