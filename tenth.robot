#Test Case 10: Verify Subscription in home page
#1. Launch browser
#2. Navigate to url 'http://automationexercise.com'
#3. Verify that home page is visible successfully
#4. Scroll down to footer
#5. Verify text 'SUBSCRIPTION'
#6. Enter email address in input and click arrow button
#7. Verify success message 'You have been successfully subscribed!' is visible

*** Settings ***
Library  SeleniumLibrary

Documentation
...     Verify text 'SUBSCRIPTION'
...     'You have been successfully subscribed!' is visible

*** Test Cases ***
Verify Subscription in home page
            Open Browser               http://automationexercise.com        chrome
            Wait Until Page Contains   Home                                timeout=5s
            Scroll Element Into View   xpath=//*[@id="footer"]/div[2]/div/div
            Sleep                      2s
            Page Should Contain        Subscription                         timeout=5s
            Input Text                 id=susbscribe_email                 add9311@gmail.com
            Click Button               id=subscribe
            Wait Until Page Contains   You have been successfully subscribed!
            Sleep
            Close Browser


