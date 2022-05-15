*** Settings ***
Resource         keywords${/}import_setting.resource
Test Teardown    Close All Browsers

*** Variables ***
${Browser}    chrome

*** Test Cases ***
Scenario #1
    [Documentation]    A customer adds the products any cetegory and click "Cart" Icon

    Open Pomelo Website        ${Browser} 
    Select Category At Shop    Dresses    Dresses
    Add Product And Verify     XXS
    Click Bag

Scenario #2
    [Documentation]    A customer be able to adjusts quantity of product items or items.

    Open Pomelo Website           ${Browser} 
    Select Category At Shop       Dresses        Dresses
    Add Product And Verify        XXS
    Click Bag
    Adjust Quantity Of Product    2

Scenario #3
    [Documentation]    A customer be able to adjusts size of product items or items.

    Open Pomelo Website        ${Browser} 
    Select Category At Shop    Dresses        Dresses
    Add Product And Verify     XXS
    Click Bag
    Adjust Size Of Product     XS

Scenario #4
    [Documentation]    A customer be able to adjust and delete product items or items.

    Open Pomelo Website          ${Browser} 
    Select Category At Shop      Dresses        Dresses
    Add Product And Verify       XXS
    Click Bag
    Delete Product And Verify

Scenario #5
    [Documentation]    A customer be able to fill-in and click apply promo code. (even if promocode is not eligible)

    Open Pomelo Website        ${Browser} 
    Select Category At Shop    Dresses        Dresses
    Add Product And Verify     XXS
    Click Bag
    Fill-in Promotion          GET30TH

Scenario #6
    [Documentation]    A customer be able to validate proceed to checkout button.

    Open Pomelo Website        ${Browser} 
    Select Category At Shop    Dresses        Dresses
    Add Product And Verify     XXS
    Click Bag
    Check Out

