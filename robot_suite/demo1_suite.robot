*** Settings ***
Library    DateTime
*** Test Cases ***
TC1
   Log To Cons ole    robot
   Log To Console    ROBOTS

TC2
   Log To Console    HELLO
   
TC3
   ${my_name}    Set Variable    bala
   Log To Console    ${my_name}
   Log    ${my_name}
   
TC4
   ${radius}     Set Variable    10
   ${output}     Evaluate    3.14${radius}*${radius}
   Log To Console    ${output}

TC5
   ${base}   Set Variable    25
   ${height}     Set Variable   1
   ${areaoftriangle}     Evaluate    ${base}*${height}/2
   Log To Console    ${areaoftriangle}

TC6
   ${base1}     Set Variable    25
   ${base2}     Set Variable    2.56
   ${height}     Set Variable   70
   ${areaoftrapezium}    Evaluate    (${base1}+${base2})*${height}/2
   Log To Console    ${areaoftrapezium}

TC7
   Get Current Date
