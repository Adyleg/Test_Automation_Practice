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
        Wait Until Page Contains    Enter Account Information   timeout=5s
        Click Element               id=id_gender1
        Input Text                  id=password       *Adylegtest1
        Select From List By Value   id=days       12
        Select From List By Label   id=months     November
        Select From List By Value   id=years      1990
        Select Checkbox             name=newsletter
        Select Checkbox             name=optin
        Input Text                  id=first_name        Aditya
        Input Text                  id=last_name         Tripathi
        Input Text                  id=company           Intel
        Input Text                  id=address1          Kolte Patil
        Input Text                  id=address2          Marunji
        Select From List By Label   id=country           India
        Input Text                  id=state             Mahar
        Input Text                  id=city              Pune
        Input Text                  id=zipcode           411057
        Input Text                  id=mobile_number     +91 999992192
        Click Button                xpath=//*[@id="form"]/div/div/div/div[1]/form/button
        Wait Until Page Contains    Account Created!      timeout=5s

        Click Button                xpath=//*[@id="form"]/div/div/div/div/a
        Click Element               xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a
        Wait Until Page Cotains     ACCOUNT DELETED!     timeout=5s


        Close Browser