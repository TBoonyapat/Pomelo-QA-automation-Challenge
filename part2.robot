*** Settings ***
Resource         keywords${/}import_setting.resource
Test Teardown    Close All Browsers

*** Test Cases ***
TS_01
    [Documentation]    A customer adds the products any cetegory and click "Cart" Icon
    [Tags]      TS_01
    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop    ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify     ${SIZE}
    Click Bag

TS_02
    [Documentation]    A customer be able to adjusts quantity of product items or items.
    [Tags]      TS_02
    Open Pomelo Website           ${BROWSER} 
    Select Category At Shop      ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify         ${SIZE}
    Click Bag
    Adjust Quantity Of Product    ${QUANTITY} 

TS_03
    [Documentation]    A customer be able to adjusts size of product items or items.
    [Tags]      TS_03
    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop   ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify      ${SIZE}
    Click Bag
    Adjust Size Of Product     ${NEW_SIZE}

TS_04
    [Documentation]    A customer be able to adjust and delete product items or items.
    [Tags]      TS_04
    Open Pomelo Website          ${BROWSER} 
    Select Category At Shop      ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify       ${SIZE}
    Click Bag
    Delete Product And Verify

TS_05
    [Documentation]    A customer be able to fill-in and click apply promo code. (even if promocode is not eligible)
    [Tags]      TS_05
    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop    ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify     ${SIZE}
    Click Bag
    Fill-in Promotion          ${CODE_PROMOTION}

TS_06
    [Documentation]    A customer be able to validate proceed to checkout button.
    [Tags]      TS_06
    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop    ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify     ${SIZE}
    Click Bag
    Check Out

