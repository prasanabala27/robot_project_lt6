*** Variables ***
&{MY_DETAILS}   name=prasana    role=student    location=chn


*** Test Cases ***
TC1
   Log To Console    ${MY_DETAILS}[name]
   Log To Console    ${MY_DETAILS}[role]