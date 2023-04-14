*** Settings ***
Documentation     Robot to solve the first challenge at rpachallenge.com, which
...               consists of filling a form that randomly rearranges itself,
...               with data taken from a provided Microsoft Excel file.
Library           RPA.Browser.Selenium    ${auto_close}=${False}

*** Keywords ***
Launch Browser

[Arguments]
    ${url}    ${searchWord}

*** Keywords ***
Get screenshot
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Screenshot    ${locator}    ${OUTPUT_DIR}${/}screenshot.png

*** Keywords ***
Close Browser
    Close All Browsers
#test23
