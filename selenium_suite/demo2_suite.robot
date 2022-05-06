*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
TC1
   Append To Environment Variable   path    C:\\Users\\ACER\\Desktop\\LT6\\driver
   Open Browser     url=https://www.facebook.com/    browser=chrome
   Maximize Browser Window
   Click Element    link=Create New Account
   Set Selenium Implicit Wait    30s
   Input Text    name=firstname    prasanna
   Input Text    name=lastname    bala
   Input Text    name=reg_email__    prasanabalaji@gmail.com
   Input Text    name=reg_email_confirmation__    prasanabalaji@gmail.com
   Input Password    name=reg_passwd__    password
   Select From List By Label    id=day   20
   Select From List By Label    id=month   Dec
   Select From List By Label    id=year   2000

   Click Element    xpath=//input[@value='-1']
   Select From List By Value    value
   Click Element    name=websubmit

