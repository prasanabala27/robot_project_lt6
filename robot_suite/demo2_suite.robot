*** Settings ***
Library    OperatingSystem
*** Test Cases ***
TC1
   Create File     path=D:\\hello.txt
   ${files}     List Files In Directory    path=D:\c-pro
   Log To Console    ${files}

TC2
   Remove File    path=D:\\hello.txt

TC3
   .