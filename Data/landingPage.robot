*** Settings ***
Library     Browser

Resource    inputData.robot

*** Keywords ***
Open New Page
    New Page        ${BASE_URL}

Verifiy Page Loaded
    ${page_loaded}  Get Text    css=[class="login_logo"]  ==  Swag Lab
    Log To Console    ${page_loaded}


