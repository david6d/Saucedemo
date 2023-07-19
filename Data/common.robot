*** Settings ***
Library     Browser
Resource    inputData.robot


*** Keywords ***
Begin Web Test
    New Browser     ${BROWSER}      headless=False


End Web Test
    Close Browser
