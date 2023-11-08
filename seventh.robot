# . Launch browser
# 2. Navigate to url 'http://automationexercise.com'
# 3. Verify that home page is visible successfully
# 4. Click on 'Test Cases' button
# 5. Verify user is navigated to test cases page successfully

*** Settings ***
Library  SeleniumLibrary

Documentation
...     Open test Cases

*** Test Cases ***
Verify that home page is visible 'Test Cases' successfully
        Open Browser                    http://automationexercise.com         chrome
        Wait Until Page Contains        Home                                  timeout=5s
        Click Element                   link=Test Cases
        Wait Until Page Contains        Test Cases                            timeout=5s
        Close Browser

