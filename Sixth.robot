*** Settings ***
Library  SeleniumLibrary

Documentation
...     Contact us form
...     Fill up Contact us form

*** Test Cases ***
Contact Us form
    Open Browser                 https://automationexercise.com/     chrome
    Click Element                link=Contact us
    Wait Until Page Contains     Get In Touch  timeout=5s
    Input Text                   name=name           Aditya Tripathi
    Input Text                   name=email          addy111@gmail.com
    Input Text                   name=subject        I have a problem with login
    Input Text                   name=message        I want to log in, but I am not able to do that! Please help me.
    Choose File                  name=upload_file     C:/Users/ADMIN/Pictures/Screenshots/Screenshot (1).png
    Click Button                 name=submit
    Handle Alert                accept    # To click 'OK' button in the alert
    Wait Until Page Contains     Success! Your details have been submitted successfully.   timeout=10s
    Click Element                link=Home
    Wait Until Page Contains     Home   timeout=5s
    Close Browser
