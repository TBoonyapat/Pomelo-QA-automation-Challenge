*** Variables ***
${BAG_QUANTITY}                    //a[text()="<name>"]/../../..//label[@for="Quantity"]/..//select
${BAG_QUANTITY_FIRST_ITEM}         (//label[@for="Quantity"]/..//select)[1]
${BAG_SIZE}                        //a[text()="<name>"]/../../..//label[@for="Size"]/..//select//option[text()="<size>"]
${BAG_SIZE_FIRST_ITEM}             (//label[@for="Size"]/..//select//option[text()="<size>"])[1]
${BAG_BUTTON_DELETE}               (//a[text()="<name>"]/../../../..//span/img)[1]
${BAG_BUTTON_DELETE_FiRST_ITEM}    (//label[@for="Size"]/../../../../..//span/img)[1]
${BAG_BUTTON_APPLY}                //button/span[text()="Apply"]
${BAG_BUTTON_CHECK_OUT}                //button/span[text()="Check out now"]
${BAG_EMPTY}                       //span[text()="Your Bag is Empty"]
${BAG_INPUT_PROMPTION}             //div[text()="Promotions & Discounts"]/..//input