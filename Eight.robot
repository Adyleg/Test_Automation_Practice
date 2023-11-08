# 1. Launch browser
# 2. Navigate to url 'http://automationexercise.com'
# 3. Verify that home page is visible successfully
# 4. Click on 'Products' button
# 5. Verify user is navigated to ALL PRODUCTS page successfully
# 6. The products list is visible
# 7. Click on 'View Product' of first product
# 8. User is landed to product detail page
# 9. Verify that detail detail is visible: product name, category, price, availability, condition, brand

*** Settings ***
Library  SeleniumLibrary


Documentation
...     'Products' button
...     'View Product'
...     visible: product name, category, price, availability, condition, brand

*** Test Cases ***
Verify All Products and product detail page
        Open Browser                    http://automationexercise.com           chrome
        Wait Until Page Contains         Home                                   timeout=5s
        Click Element                   xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a
        Wait Until Page Contains        All Products                            timeout=5s
        Click Element                   xpath=/html/body/section[2]/div[1]/div/div[2]/div/div[2]/div/div[2]/ul/li/a
        Wait Until Page Contains        Blue Top                                timeout=5s
        Wait Until Page Contains        Category: Women > Tops                  timeout=5s
        Wait Until Page Contains        Rs. 500                                 timeout=5s
        Wait Until Page Contains        Availability:                           timeout=5s
        Wait Until Page Contains        In Stock                                timeout=5s
        Wait Until Page Contains        Condition:                              timeout=5s
        Wait Until Page Contains        New                                     timeout=5s
        Wait Until Page Contains        Brand:                                  timeout=5s
        Wait Until Page Contains        Polo                                     timeout=5s
        Close Browser
