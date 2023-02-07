*** Settings ***
Library  SeleniumLibrary
#Library     RPA.Browser.Selenium

*** Variables ***
${ACCEPT_COOKIES_BUTTON}    xpath=(//span[contains(.,'Alle akzeptieren')])[2]
*** Test Cases ***
Accept Cookies
    #Open Browser  https://demo.guru99.com  firefox
    Open Browser  https://demo.guru99.com/test/newtours/        firefox
    Maximize Browser Window
    Select Frame    index=3
    Click Element    xpath=//button[3]/span/div/span
    #Wait Until Page Contains  guru99 bank
    #Sleep    3
    #Execute JavaScript  document.cookie = "cookies_accepted=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/"
    #Reload Page
    #Close Browser
#Accept cookies
    #Open Available Browser    https://demo.guru99.com/test/newtours/    firefox                    #https://hub.knime.com/    firefox
    #Select Frame    locator
    #Click Element When Visible    css=#save > .mat-button-wrapper span                    #css=.accept-button