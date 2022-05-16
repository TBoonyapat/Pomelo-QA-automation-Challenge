*** Keywords ***
Select Category At Shop
    [Documentation]           Select a category and a subcategory by take the category and subcategory values 
    ...                       and inserting path and pressing .
    [Arguments]               ${category}=Dresses           ${subcategory}=Dresses
    Wait Element And Click    ${HOME_HEADER_BUTTON_SHOP}    10s
    ${select_category}        Replace String                ${HOME_HEADER_SHOP_CATEGORY}    <category>        ${category} 
    ${path_category}          Replace String                ${select_category}              <sub_category>    ${subcategory} 
    Wait Element And Click    ${path_category}              10s

Add Product And Verify
    [Documentation]           Get size and put in path then click on the product. 
    ...                       choose product and size then verify the product has been added to the bag.
    [Arguments]               ${size}=XXS
    ${add_to_bag}             Replace String               ${DRESSES_ADD_TO_BAG_SELECT_SIZE}    <size>    ${size}
    ${product_name}           Wait Element And Get Text    ${DRESSES_PRODUCT_NAME}              10s
    Mouse Over                ${DRESSES_ADD_TO_BAG}
    ${product_status}             Get Element Attribute       ${add_to_bag}     class
    Run Keyword If      '${product_status}' == 'option-item sold-out button'        Fail        select size is out of stock.     
    Wait Element And Click    ${add_to_bag}                10s             
    ${xpath_product_in_bag}          Replace String               ${TOPBAR_BAG_ITEM_NAME}    <name>    ${product_name}
    Wait Until Element Is Visible    ${xpath_product_in_bag}                      10s
    Wait Element And Click           ${TOPBAR_BAG_CLOSE}                          10s
    Log                              product was successfull add to the bag.

Click Bag
    [Documentation]           Click bag icon
    Wait Element And Click    ${TOPBAR_BAG_ICON}    10s

Adjust Quantity Of Product
    [Documentation]        Get quantity value and put in the path then input the quantity. 
    ...                    Able to edit product quantity from product name or 
    ...                    doesn't have a name it will always input quantity at first list.
    [Arguments]     ${quantity}     ${product_name}=None        
    ${xpath_quantity}          Replace String         ${BAG_QUANTITY}    <name>    ${product_name}
    Run Keyword If     '${product_name}' != 'None'      Wait Element And Select     ${xpath_quantity}     ${quantity}     10s
    ...     ELSE        Wait Element And Select     ${BAG_QUANTITY_FIRST_ITEM}     ${quantity}     10s

Adjust Size Of Product
    [Documentation]        Get size value and put in the path then input the size. 
    ...                    Able to edit product size from product name or 
    ...                    doesn't have a name it will always input size at first list.
    [Arguments]     ${size}     ${product_name}=None        
    IF     '${product_name}' != 'None'      
        ${select_size}          Replace String         ${BAG_SIZE}    <size>    ${size}
        ${xpath_size}          Replace String         ${select_size}    <name>    ${product_name}    
        Wait Element And Click     ${xpath_size}     10s
    ELSE           
        ${select_size}          Replace String         ${BAG_SIZE_FIRST_ITEM}    <size>    ${size}
        Wait Element And Click    ${select_size}    10s
    END

Delete Product And Verify
    [Documentation]        Can be deleted product from name or 
    ...                    if it doesn't have a name it will always delete the first list.
    [Arguments]     ${product_name}=None       
    ${xpath_button_delete}          Replace String         ${BAG_BUTTON_DELETE}    <name>    ${product_name}
    Run Keyword If     '${product_name}' != 'None'      Wait Element And Click  ${xpath_button_delete}   10s
    ...     ELSE            Wait Element And Click  ${BAG_BUTTON_DELETE_FiRST_ITEM}   10s
    Wait Until Element Is Visible       ${BAG_EMPTY}        10s      
    Log        product has been delete.

Fill-in Promotion
    [Documentation]        Get promotion code and fill-in and press confirm.
    [Arguments]     ${promotion_code}
    Wait Element And Input          ${BAG_INPUT_PROMPTION}      ${promotion_code}   10s  
    Wait Element And Click          ${BAG_BUTTON_APPLY}  10s  

Check Out
    [Documentation]     Click Check Out button in the bag
    Wait Element And Click  ${BAG_BUTTON_CHECK_OUT}  10s  
