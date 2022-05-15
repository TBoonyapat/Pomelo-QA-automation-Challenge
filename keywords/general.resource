*** Keywords ***
Wait Element And Click
    [Arguments]                      ${locator}    ${time}=30s    ${error}=element is not visible within specified time.
    Wait Until Element Is Visible    ${locator}    ${time}        ${error}
    Click Element                    ${locator}

Wait Element And Input
    [Arguments]                      ${locator}     ${text}    ${time}=30s    ${error}=element is not visible within specified time.
    Wait Until Element Is Visible    ${locator}     ${time}    ${error}
    Input Text                       ${locator}     ${text}

Wait Element And Get Text
    [Arguments]                      ${locator}    ${time}=30s      ${error}=element is not visible within specified time.
    [Return]                         ${text}
    Wait Until Element Is Visible    ${locator}    ${time}      ${error}
    ${text}                          Get Text      ${locator}     

Wait Element And Select
    [Arguments]                      ${locator}    ${value}       ${time}=30s    ${error}=element is not visible within specified time.
    Wait Until Element Is Visible    ${locator}    ${time}        ${error}
    Select From List By Value        ${locator}    ${value}

Open Pomelo Website
    [Arguments]     ${browser}
    Open Browser    https://www.pomelofashion.com/th/en/    ${browser}
