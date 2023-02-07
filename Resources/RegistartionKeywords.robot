*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObject/Locators.py
*** Keywords ***
Click register Link
    Click Link    ${link_Reg}

Enter FirstName
     [Arguments]    ${firstname}
     Input Text    ${txt_firstName}    ${firstname}

Enter lastName
     [Arguments]    ${lastname}
     Input Text    ${txt_lastNmae}    ${lastname}

Enter Phone
    [Arguments]     ${Phone}
    Input Text    ${txt_phone}    ${Phone}

Enter Email
    [Arguments]     ${email}
    Input Text    ${txt_email}    ${email}

Enter Adress1
    [Arguments]     ${adr1}
    Input Text    ${txt_add1}    ${adr1}

Enter City
    [Arguments]     ${city}
    Input Text    ${txt_city}    ${city}

Enter State
    [Arguments]     ${state}
    Input Text    ${txt_state}    ${state}

Enter Postcode
    [Arguments]     ${pstcode}
    Input Text    ${txt_postCode}    ${pstcode}

Select Country
    [Arguments]     ${country}
    Select From List By Label    ${drp_contry}      ${country}

Enter User Name
    [Arguments]     ${username}
    Input Text    ${txt_userName}    ${username}

Enter Psw
    [Arguments]     ${psw}
    Input Text    ${txt_password}    ${psw}

confirm Password
    [Arguments]     ${confpsw}
    Input Text    ${txt_confpsw}    ${confpsw}

Click Submit
    Click Button    ${btn_submit}

Verify Succesfull registration
    Page Should Contain    Thank you for registering.

Close my Browser
    Close All Browsers

