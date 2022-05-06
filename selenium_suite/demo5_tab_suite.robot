*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
TC1
   Append To Environment Variable   path    C:\\Users\\ACER\\Desktop\\LT6\\driver
   Open Browser    browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://www.medibuddy.in/
   Click Element    id=wzrk-cancel
   Click Element    link=For Employer
   Switch Window    MediBuddy LaunchPad
   Input Text    id=getInTouchName    prasanna
   Input Text    id=getInTouchEmail    prasanna@gmail.com
   Input Text    id=getInTouchMobile    5555555
   Input Text    id=getInTouchDesignation    trainer
   Input Text    id=getInTouchEmpCount    40
   Click Element    xpath=//button[@class='btn-primary mt-10 w-full']
   Element Text Should Be    xpath=//div[contains(@class,'text-red')]    Mobile Number should be 10 digits