*** Settings ***
Resource         keywords${/}import_setting.resource
Test Teardown    Close All Browsers

*** Test Cases ***
Scenario_01
    [Documentation]    A customer adds the products any cetegory and click "Cart" Icon

    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop    ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify     ${SIZE}
    Click Bag

Scenario_02
    [Documentation]    A customer be able to adjusts quantity of product items or items.

    Open Pomelo Website           ${BROWSER} 
    Select Category At Shop      ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify         ${SIZE}
    Click Bag
    Adjust Quantity Of Product    ${QUANTITY} 

Scenario_03
    [Documentation]    A customer be able to adjusts size of product items or items.

    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop   ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify      ${SIZE}
    Click Bag
    Adjust Size Of Product     ${NEW_SIZE}

Scenario_04
    [Documentation]    A customer be able to adjust and delete product items or items.

    Open Pomelo Website          ${BROWSER} 
    Select Category At Shop      ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify       ${SIZE}
    Click Bag
    Delete Product And Verify

Scenario_05
    [Documentation]    A customer be able to fill-in and click apply promo code. (even if promocode is not eligible)

    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop    ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify     ${SIZE}
    Click Bag
    Fill-in Promotion          ${CODE_PROMOTION}

Scenario_06
    [Documentation]    A customer be able to validate proceed to checkout button.

    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop    ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify     ${SIZE}
    Click Bag
    Check Out

