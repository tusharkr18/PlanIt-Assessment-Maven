*** Settings ***
Documentation    Test Cases related to Contact Page
Test Teardown    Test Closure 
Default Tags    contactpage-smoke
Test Setup    Set Environment Path
Resource    ../../resources/CommonLib.robot
Resource    ../../resources/ContactPageLib.robot
Resource    ../../resources/ErrorValidationLib.robot
Resource    ../../resources/HomePageLib.robot

*** Test Cases ***
Test_Case_01
	[Documentation]    Test Case to Validate the Contacts Page Mandatory Fields
	[Tags]    smoke-p2
    Open Browser To Page
    Navigate to Contacts Page 
    Normal Sleep 
    Click CPSubmit   
    Normal Sleep
    Validate Error Message
    Log    Error Message Displayed, enter the Mandatory Fields
    Input Mandatory Fields In Contact Page
    Normal Sleep
    Validate No Error Message
    
Test_Case_02
    [Documentation]    Test Case to successfully submit Form and validate the Success Message 
    [Tags]    smoke-p1   
    Open Browser To Page
    Navigate to Contacts Page 
    Normal Sleep 
    Input Mandatory Fields In Contact Page
    Normal Sleep
    Click CPSubmit
    Validate Post Submit Message
   	Normal Sleep 
    
Test_Case_03
    [Documentation]    Test Case to validate Error Message displayed for Invalid Data   
    [Tags]    smoke-p2 
    Open Browser To Page
    Navigate to Contacts Page 
    Normal Sleep 
    Input Invalid Data
    Normal Sleep
    Validate Error(s) for Invalid Data  