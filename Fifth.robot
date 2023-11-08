*** Settings ***
Library  SeleniumLibrary

Documentation
...     Register User
...     Create a new account

*** Test Cases ***
Register User Test automation
        Open Browser                http://automationexercise.com   chrome
        Wait Until Page Contains    Automation    timeout=5s
        Click Element               link=Signup / Login
        Wait Until Page Contains    Login to your account   timeout=5s
        Input Text                  name=name    Andy test1
        Input Text                  xpath=//*[@id="form"]/div/div/div[3]/div/form/input[3]  addy9@xyz.com
        Click Button                xpath=//*[@id="form"]/div/div/div[3]/div/form/button
        Wait Until Page Contains    Email Address already exist!   timeout=5s



        Close Browser