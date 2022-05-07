*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${MY_NAME}   Balaji
${ROLE}     Student
@{COLORS}    red    green    yellow

*** Test Cases ***
TC1
   Log To Console    ${MY_NAME}

TC2
   Log To Console    ${MY_NAME}
   Log To Console    ${ROLE}
   Log To Console    ${COLORS}
   Log To Console    ${COLORS}[0]

TC3
   @{fruits}    Create List     apple   grapes  orange
   Log To Console    ${fruits}[1]
   Append To List    ${fruits}   pineapple
   Log To Console    ${fruits}
   Remove From List    ${fruits}    0
   Log To Console    ${fruits}
   Insert Into List    ${fruits}    0    mango
   Log To Console    ${fruits}



TC5
   @{fruits}    Create List     apple   grapes  orange
   FOR    ${i}    IN RANGE  0   3   1
       Log    ${fruits}[${i}]
   END

TC6
   @{fruits}    Create List     apple   grapes  orange
   FOR    ${fruit}    IN    @{fruits}
       Log    ${fruit}

   END

