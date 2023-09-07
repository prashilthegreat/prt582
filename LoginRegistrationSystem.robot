*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary
Resource  LRS_Resources.robot

Suite Setup  Go to Login Page
Suite Teardown  Close Browser
Task Setup  Set Selenium Speed    .5 seconds




*** Test Cases ***
# Open Website
#    Go to Login Page

Login into the System
    Input username    test_user1
    Input password    pwtest1
    Click submit

View and Update details
    View details
    Update details    test_user    test_user1    test@gmail.com    pwtest1    pwtest1
Logout
   Logout from the System