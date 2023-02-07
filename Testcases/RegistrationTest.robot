*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistartionKeywords.robot
Resource    ../Resources/BrowserSetupKeywords.robot
#Library     DataDriver  ../Testdata/TestData.xlsx       sheet_name=Tabelle1
#Library    DatabaseLibrary

Test Setup     Open site Browser
Test Teardown       Close my Browser

*** Variables ***

*** Test Cases ***
RegistrationTest

    Click register Link
    Enter FirstName     ahmed
    Enter lastName      medo
    Enter Phone     12345687
    Enter Email    rifi@hotmail.com
    Enter Adress1    adr1Toronto
    Enter City    $city
    Enter State    $state
    Enter Postcode    $pstcode
    Select Country    CANADA
    Enter User Name    $username
    Enter Psw    $psw
    confirm Password    $psw
    Click Submit
    Verify Succesfull registration


# parralell run comond -> pabot --processes 2 -d .\Results\  .\Testcases\*.robot