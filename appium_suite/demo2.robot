*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=prasannabalaji_XeoPia
    ...     browserstack.key=ri8ikPfG63sAaUr3bz2x
    ...     app=bs://c6afd5dd3419921474fa590098a1b8495fa9d035
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build_fb
    ...     name=fb test

    ${app_source}       Get Source
    Log   ${app_source}

    Close Application
