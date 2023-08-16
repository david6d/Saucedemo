*** Settings ***
Library  Browser

Resource    ../Data/landingPage.robot
Resource    ../Data/inputData.robot
Resource    ../Data/signIn.robot

*** Keywords ***
Open Website "saucedemo"
    landingPage.Open New Page
    landingPage.Verifiy Page Loaded

Login With Valid Credentials
    [Arguments]  ${LOGIN_USERNAME}  ${LOGIN_PASSWORD}
    Open Website "saucedemo"
    signIn.Login  ${LOGIN_USERNAME}  ${LOGIN_PASSWORD}
    signIn.Verify Login
    signIn.Logout
    signIn.Verify Logout

