*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators.robot

*** Keywords ***
Add Job Title

  Wait Until Element Is Visible      ${ADMIN_BTN}  timeout=10s
  Click Link       ${ADMIN_BTN}
  Wait Until Element Is Visible    ${JOB_LIST}    timeout=10s
  Click Element    ${JOB_LIST}
  Wait Until Element Is Visible    ${JOB_LIST}    timeout=10s
  Click Element    ${JOB_TITLE}
   Wait Until Element Is Visible    ${JOB_LIST}    timeout=10s
  Click Button     ${ADD_BTN}
  # Input Text    ${JOB_TITLE_FIELD}    textddddd

