*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObject/Locators.py


*** Keywords ***
Enter UserName
     [Arguments]    ${username}
     Input Text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Text    ${txt_loginPassword}    ${password}
    
Click SignIn
    Click Button    ${btn_signIn}
    
Verify Succesfull Login
    #Title Should Be    Login: Mercury Tours
    Element Should Contain    xpath=//h3[contains(.,'Login Successfully')]    Login Successfully



