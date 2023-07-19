*** Settings ***
Resource        ../Data/common.robot
Resource        saucedemoKeywords.robot

Test Setup      common.Begin Web Test
Test Teardown   common.End Web Test

*** Test Cases ***
The Website "saucedemo" Should Load
    saucedemoKeywords.Open Website "saucedemo"
