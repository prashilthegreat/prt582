*** Settings ***
Library  SeleniumLibrary
***Variables***
${URL}  http://localhost/loginsystem/login.php
${Browser}  chrome
*** Keywords ***
Go to Login Page
    [Documentation]  This test case verify user is able to open the URL
    Open browser  ${URL}  ${Browser}
    Page Should Contain  Login Registration System

Update details
    [Documentation]  This is used to update the details
    [Arguments]  ${name}  ${username}  ${email}  ${password}  ${confirm_password} 
    Input Text    name    ${name}
    Input Text    username    ${username}
    Input Text    email    ${email}
    Input Text    password    ${password}
    Input Text    cpassword    ${confirm_password}
    Click Button    submit

Input username
    [Arguments]  ${username}
    Input Text    username    ${username}

Input password
    [Arguments]  ${password}
    Input Text    password    ${password}

Click submit
    Click Button    submit

View details
    Click Element    //div[@class="container mt-5"]//table/tbody/tr[9]/td[4]/a

Logout from the System
    Click Link    Logout