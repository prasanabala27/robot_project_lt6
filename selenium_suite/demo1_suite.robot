*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
TC1
   Append To Environment Variable   path    C:\\Users\\ACER\\Desktop\\LT6\\driver
   Open Browser     url=https://www.facebook.com/     browser=chrome
   Input Text    id=email    ba@gmail.comm
   Input Password    id=pass    heloooo
   Click Element    name=login