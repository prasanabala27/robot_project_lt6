*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
TC1
   Append To Environment Variable   path    C:\\Users\\ACER\\Desktop\\LT6\\driver
   Open Browser     url=https://www.goto.com/meeting/    browser=chrome
   Click Element    id=truste-consent-button
   Click Element    link=Try Free
   Input Text    id=first-name     john
   Input Text    id=last-name     wick
   Input Text    id=login__email    john@gmail.com
   Input Password    id=login__password    password1
   Input Text    id=contact-number    8989888
   Select From List By Label    id=CompanySize   10 - 99
   Click Element    xpath=//button[@data-button='trial-submit']
