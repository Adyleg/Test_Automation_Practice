#Test Case 13: Verify Product quantity in Cart
#1. Launch browser
#2. Navigate to url 'http://automationexercise.com'
#3. Verify that home page is visible successfully
#4. Click 'View Product' for any product on home page
#5. Verify product detail is opened
#6. Increase quantity to 4
#7. Click 'Add to cart' button
#8. Click 'View Cart' button
#9. Verify that product is displayed in cart page with exact quantity

*** Settings ***
Library  SeleniumLibrary

Documentation
...     Increase quantity to 4
...     Verify that product is displayed in cart page with exact quantity

*** Test Cases ***
Verify Product quantity in Cart
            Open Browser                    http://automationexercise.com       chrome
            Maximize Browser Window
            Wait Until Page Contains        Home                                timeout=5s
            Click Element                   link=View Product
            Wait Until Page Contains        Blue Top                            timeout=5s
            Input Text                      id=quantity                         4
            Click Button                    xpath=/html/body/section/div/div/div[2]/div[2]/div[2]/div/span/button
            Wait Until Element is visible   link=View Cart                      timeout=5s
            Click Element                   xpath=//*[@id="cartModal"]/div/div/div[2]/p[2]/a
            Wait Until Page Contains        Shopping Cart                        timeout=5s
            Wait Until Page Contains        4                                    timeout=5s
            CLose Browser
