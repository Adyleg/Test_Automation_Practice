#Test Case 12: Add Products in Cart
#1. Launch browser
#2. Navigate to url 'http://automationexercise.com'
#3. Verify that home page is visible successfully
#4. Click 'Products' button
#5. Hover over first product and click 'Add to cart'
#6. Click 'Continue Shopping' button
#7. Hover over second product and click 'Add to cart'
#8. Click 'View Cart' button
#9. Verify both products are added to Cart
#10. Verify their prices, quantity and total price

*** Settings ***
Library  SeleniumLibrary

Documentation
...     'Continue Shopping'
...     'Add to cart'

*** Test Cases ***
Add Products in Cart
    Open Browser                    http://automationexercise.com       chrome
    Wait Until Page Contains        Home                                timeout=5s
    Click Element                   xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a
    Sleep                           2s
    Wait Until Page Contains        All Products                         timeout=5s

    # Click the first product and handle any pop-up
    Scroll Element Into View         xpath=//html/body/section[2]/div/div/div[2]/div/div[2]/div/div[1]/div[2]
    Click Element                    xpath=/html/body/section[2]/div/div/div[2]/div/div[2]/div/div[1]/div[2]/div/a
    # Click 'Continue Shopping' button
    Wait Until Element Is Visible   xpath=//*[@id="cartModal"]/div/div/div[3]/button    timeout=10s
    Click Button                     xpath=//*[@id="cartModal"]/div/div/div[3]/button

    # Click the second product and handle any pop-up
    Scroll Element Into View        xpath=/html/body/section[2]/div/div/div[2]/div/div[3]/div/div[1]/div[2]
    Click Element                   xpath=/html/body/section[2]/div[1]/div/div[2]/div/div[3]/div/div[1]/div[2]/div/a
    # Click 'View Cart' button
    Wait Until Element Is Visible   link=View Cart                        timeout=10s
    Click Element                   link=View Cart




    # Add more validations and interactions for the shopping cart
    Wait Until Page Contains        Shopping Cart                          timeout=5s
    Wait Until Page Contains        Blue Top                               timeout=5s
    Wait Until Page Contains        Women > Tops                           timeout=5s
    Wait Until Page Contains        Rs. 500                                timeout=5s
    Wait Until Page Contains        1                                      timeout=5s
    Wait Until Page Contains        Rs. 500                               timeout=5s
    Wait Until Page Contains        Men Tshirt                             timeout=5s
    Wait Until Page Contains        Men > Tshirts                          timeout=5s
    Wait Until Page Contains        Rs. 400                                timeout=5s
    Wait Until Page Contains        1                                      timeout=5s
    Wait Until Page Contains        Rs. 400                               timeout=5s



    # Close the browser
    Close Browser









