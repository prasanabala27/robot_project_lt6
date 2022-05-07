*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
TC1
   Append To Environment Variable   path    C:\\Users\\ACER\\Desktop\\LT6\\driver
   Open Browser    browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://smallpdf.com/pdf-to-word
   Click Element    xpath=//span[text()='Got it']
   Choose File    xpath=//input[@type='file']    D:${/}HEALTH CARE MONITORING SYSTEM -1802015.pdf
   ${current_title}     Get Title
   Log To Console    ${current_title}
   ${url}    Get Location
   Log To Console    ${current_title}
   Get Source
