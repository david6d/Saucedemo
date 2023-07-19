*** Settings ***
Library  Browser

Resource    ../Data/landingPage.robot

*** Keywords ***
Open Website "saucedemo"
    landingPage.Open New Page
    landingPage.Verifiy Page Loaded