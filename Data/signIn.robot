*** Settings ***
Library     Browser

Resource    inputData.robot
Resource    selectors.robot

*** Keywords ***
Login
    [Arguments]  ${LOGIN_USERNAME}  ${LOGIN_PASSWORD}
    Fill "Username" Field  ${LOGIN_USERNAME}
    Fill "Password" Field  ${LOGIN_PASSWORD}
    Click on "Login" button

Fill "Username" Field
    [Arguments]  ${LOGIN_USERNAME}
    Fill Text    ${SEL_USERNAME_FIELD}    ${LOGIN_USERNAME}
    
Fill "Password" Field
    [Arguments]  ${LOGIN_PASSWORD}
    Fill Text    ${SEL_PASSWORD_FIELD}    ${LOGIN_PASSWORD}
    
Click on "Login" button
    Click    ${SEL_LOGIN_BUTTON}

Verify Login
    ${get_product text}  Get Text    css=[class="title"]  ==  Products
    Log To Console    ${get_product text}

Logout
    Click    ${SEL_MENU_BUTTON}
    Click    ${SEL_LOGOUT_BUTTON}

Verify Logout
    ${page_loaded}  Get Text    css=[class="login_logo"]  ==  Swag Labs
    Log To Console    ${page_loaded}


