#Test Case 9: Search Product
#1. Launch browser
#2. Navigate to url 'http://automationexercise.com'
#3. Verify that home page is visible successfully
#4. Click on 'Products' button
#5. Verify user is navigated to ALL PRODUCTS page successfully
#6. Enter product name in search input and click search button
#7. Verify 'SEARCHED PRODUCTS' is visible
#8. Verify all the products related to search are visible


*** Settings ***
Library  SeleniumLibrary

Documentation
...     Click on 'Products' button
...     Verify 'SEARCHED PRODUCTS' is visible

*** Test Cases ***
Test Case 9: Search Product
           Open Browser                  http://automationexercise.com       chrome
           Wait Until Page Contains      Home                               timeout=5s
           Click Element                 xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a
           Wait Until Page Contains      All Products                        timeout=5s
           Input text                    id=search_product                   blue top
           Click Button                  id=submit_search
           Wait Until Page Contains      Searched Products                   timeout=5s
           Wait Until Page Contains      Blue Top                            timeout=5s
           Close Browser