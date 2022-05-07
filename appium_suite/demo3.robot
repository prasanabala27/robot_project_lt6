*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=prasannabalaji_XeoPia
    ...     browserstack.key=ri8ikPfG63sAaUr3bz2x
    ...     app=bs://5aaccdfa29a32a9944ae3b9705987f7baf5b7596
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=zomato test

    ${app_source}       Get Source
    Log   ${app_source}
    Sleep    5s
    Click Element    xpath=//*[@text='Deny']
    Close Application
