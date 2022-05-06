*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
TC1
   Append To Environment Variable   path    C:\\Users\\ACER\\Desktop\\LT6\\driver
   Open Browser     url=https://www.salesforce.com/in/form/signup/freetrial-sales/    browser=chrome
   Input Text    name=UserFirstName     john
   Input Text    name=UserLastName     wick
   Input Text    name=UserEmail    john@gmail.com
   Select From List By Label    name=UserTitle    IT Manager
   Input Text    name=CompanyName    com
   Select From List By Label    name=CompanyEmployees    101 - 500 employees
   Select From List By Label    name=CompanyCountry     United Kingdom
   Click Element    xpath=//div[@class='checkbox-ui']
   Click Element    name=start my free trial
   Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]   Enter a valid phone number


