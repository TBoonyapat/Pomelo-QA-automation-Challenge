*** Settings ***
Resource         keywords${/}import_setting.resource
Test Teardown    Close All Browsers

*** Test Cases ***
TS_01
    [Documentation]    A customer adds the products any cetegory and click "Cart" Icon
    ...                ${BROWSER}  browser used to open
    ...                ${CATEGORY}  category in shop
    ...                ${SUB_CATEGORY}  subcategory in category
    [Tags]      TS_01
    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop    ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify     ${SIZE}
    Click Bag

TS_02
    [Documentation]    A customer be able to adjusts quantity of product items or items.
    ...                ${BROWSER}  browser used to open
    ...                ${CATEGORY}  category in shop
    ...                ${SUB_CATEGORY}  subcategory in category
    ...                ${SIZE}  set size of prodcut
    ...                ${QUANTITY}  set quantity of prodcut
    [Tags]      TS_02
    Open Pomelo Website           ${BROWSER} 
    Select Category At Shop      ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify         ${SIZE}
    Click Bag
    Adjust Quantity Of Product    ${QUANTITY} 

TS_03
    [Documentation]    A customer be able to adjusts size of product items or items.
    ...                ${BROWSER}  browser used to open
    ...                ${CATEGORY}  category in shop
    ...                ${SUB_CATEGORY}  subcategory in category
    ...                ${SIZE}  set size of prodcut
    ...                ${NEW_SIZE}  set new size of prodcut
    [Tags]      TS_03
    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop   ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify      ${SIZE}
    Click Bag
    Adjust Size Of Product     ${NEW_SIZE}

TS_04
    [Documentation]    A customer be able to adjust and delete product items or items.
    ...                ${BROWSER}  browser used to open
    ...                ${CATEGORY}  category in shop
    ...                ${SUB_CATEGORY}  subcategory in category
    ...                ${SIZE}  set size of prodcut
    [Tags]      TS_04
    Open Pomelo Website          ${BROWSER} 
    Select Category At Shop      ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify       ${SIZE}
    Click Bag
    Delete Product And Verify

TS_05
    [Documentation]    A customer be able to fill-in and click apply promo code. (even if promocode is not eligible)
    ...                ${BROWSER}  browser used to open
    ...                ${CATEGORY}  category in shop
    ...                ${SUB_CATEGORY}  subcategory in category
    ...                ${SIZE}  set size of prodcut
    ...                ${CODE_PROMOTION}  code promotion 
    [Tags]      TS_05
    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop    ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify     ${SIZE}
    Click Bag
    Fill-in Promotion          ${CODE_PROMOTION}

TS_06
    [Documentation]    A customer be able to validate proceed to checkout button.
    ...                ${BROWSER}  browser used to open
    ...                ${CATEGORY}  category in shop
    ...                ${SUB_CATEGORY}  subcategory in category
    ...                ${SIZE}  set size of prodcut
    [Tags]      TS_06
    Open Pomelo Website        ${BROWSER} 
    Select Category At Shop    ${CATEGORY}    ${SUB_CATEGORY}
    Add Product And Verify     ${SIZE}
    Click Bag
    Check Out

