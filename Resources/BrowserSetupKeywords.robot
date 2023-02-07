*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObject/Locators.py

*** Keywords ***
Open site Browser
    #Open Browser    ${SiteUrl}      ${Browser}
    Open Browser  https://demo.guru99.com/test/newtours/        firefox
    Maximize Browser Window
    Sleep    5

accept cookies
    #Maximize Browser Window
    #Wait Until Page Contains  guru99 bank
    #Execute JavaScript  document.cookie = "cookies_accepted=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/"
    Execute JavaScript  document.cookie = "Alle akzeptieren=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/"
#    Reload Page
#    Execute JavaScript  document.cookie = "cookies_accepted=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/"

Close site Browser
    Close All Browsers

*** Test Cases ***
lance le set
    Open site Browser
    accept cookies