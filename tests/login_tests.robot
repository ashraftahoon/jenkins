*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Library    Collections
Resource   ../resources/locators.robot
Resource   ../keywords/user_keywords.robot
Suite Setup  Open Login Page
*** Variables ***
${JSON_FILE_PATH}    ${EXECDIR}${/}..${/}data${/}credentials.json

*** Test Cases ***

Invalid Login
    [Template]    Login Template
    $.credentials.invalid.username    $.credentials.invalid.password    ${ERROR_MESSAGE}

Valid Login
    [Template]    Login Template
    $.credentials.valid.username    $.credentials.valid.password

*** Keywords ***

Login Template
    [Arguments]    ${username_path}    ${password_path}    ${expected_error}=None
    ${json_data}=    Load JSON From File    ${JSON_FILE_PATH}
    ${username_list}=    Get Value From JSON    ${json_data}    ${username_path}
    ${password_list}=    Get Value From JSON    ${json_data}    ${password_path}

    # Extract the first value from the list
    ${username}=    Get From List    ${username_list}    0
    ${password}=    Get From List    ${password_list}    0

    Log To Console    Username: ${username}
    Log To Console    Password: ${password}

    Login To Application    ${username}    ${password}

    Run Keyword If    '${expected_error}' == '${ERROR_MESSAGE}'    Verify Error Message