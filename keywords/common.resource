*** Keywords ***
Wait Element And Click
    [Arguments]                      ${locator}    ${time}=30s    ${error}=element is not visible within specified time.
    [Documentation]                   Use to wait element is visible and click 
    Wait Until Element Is Visible    ${locator}    ${time}        ${error}
    Click Element                    ${locator}

Wait Element And Input
    [Arguments]                      ${locator}     ${text}    ${time}=30s    ${error}=element is not visible within specified time.
    [Documentation]                   Use to wait element is visible and input data 
    Wait Until Element Is Visible    ${locator}     ${time}    ${error}
    Input Text                       ${locator}     ${text}

Wait Element And Get Text
    [Arguments]                      ${locator}    ${time}=30s      ${error}=element is not visible within specified time.
    [Documentation]                   Use to wait element is visible, get text and reture text 
    [Return]                         ${text}
    Wait Until Element Is Visible    ${locator}    ${time}      ${error}
    ${text}                          Get Text      ${locator}     

Wait Element And Select
    [Arguments]                      ${locator}    ${value}       ${time}=30s    ${error}=element is not visible within specified time.
    [Documentation]                   Use to wait element is visible and select value 
    Wait Until Element Is Visible    ${locator}    ${time}        ${error}
    Select From List By Value        ${locator}    ${value}

Open Pomelo Website
    [Arguments]         ${browser}
    [Documentation]            Get browser and open pomelo web in browser
    Open Browser    ${URL}     ${browser}    
