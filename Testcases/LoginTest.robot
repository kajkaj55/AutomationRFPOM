*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/BrowserSetupKeywords.robot
Library     DataDriver  ../Testdata/TestData.xlsx       sheet_name=Tabelle2
Library    DatabaseLibrary

Test Setup     Open site Browser
Test Teardown       Close site Browser
Test Template   Valed login

*** Test Cases ***
 using ${username} and ${password}

*** Keywords ***
Valed login
    Execute JavaScript  document.cookie = "cookies_accepted=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/"
    [Arguments]     ${username}        ${password}
    Enter UserName          ${username}
    Enter Password              ${password}
    Click SignIn
    Verify Succesfull Login

