*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=prasannabalaji_XeoPia
    ...     browserstack.key=ri8ikPfG63sAaUr3bz2x
    ...     app=bs://5c8a5523be636f82effd8c9cb096980e52acd122
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Close Application
