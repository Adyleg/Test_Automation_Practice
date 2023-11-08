*** Settings ***
Library  SeleniumLibrary

Documentation
...     Login with real email
...     Login with orignal email



*** Test Cases ***
Register User Test automation
        Open Browser                http://automationexercise.com   chrome
        Wait Until Page Contains    Automation    timeout=5s
        Click Element               link=Signup / Login
        Wait Until Page Contains    Login to your account   timeout=5s
        Input Text                  xpath=//*[@id="form"]/div/div/div[1]/div/form/input[2]    addy@xyz.com
        Input Text                  name=password  *Adylegtest1
        Click Button                xpath=//*[@id="form"]/div/div/div[1]/div/form/button
        Wait Until Page Contains     Your email or password is incorrect!    timeout=5s



        Close Browser