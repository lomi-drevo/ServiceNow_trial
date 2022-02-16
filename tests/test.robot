*** Settings ***
Resource            resources/common.robot
Suite Setup         Setup Browser
Suite Teardown      End suite


*** Test Case ***
Homepage localization example with ${lang}
    [Documentation]
    [Tags]
    Appstate             Login
    ClickText            ${homepage}    
    ClickText            ${hide_menu}

    VerifyText           ${title_03f38475d7021100b9a5c7400e6103af}
    VerifyText           ${description_03f38475d7021100b9a5c7400e6103af}
    VerifyText           ${title_14f38475d7021100b9a5c7400e610388}
    VerifyText           ${description_14f38475d7021100b9a5c7400e610388}
    VerifyText           ${title_31e38475d7021100b9a5c7400e610376}
    VerifyText           ${description_31e38475d7021100b9a5c7400e610376}
    VerifyText           ${description_3ec614b4eb030100d4360c505206fec4}
    VerifyText           ${title_3ec614b4eb030100d4360c505206fec4}
    VerifyText           ${description_4e06891b937032009c8579b4f47ffbb9}
    VerifyText           ${title_4e06891b937032009c8579b4f47ffbb9}
    VerifyText           ${description_6fe615d6eb430100d4360c505206fed3}
    VerifyText           ${title_6fe615d6eb430100d4360c505206fed3}
    VerifyText           ${description_b580b52ad7021100b9a5c7400e6103eb}
    VerifyText           ${title_b580b52ad7021100b9a5c7400e6103eb}
    VerifyText           ${title_cabe7fe0eb030100d4360c505206fe64}
    VerifyText           ${description_cabe7fe0eb030100d4360c505206fe64}
    VerifyText           ${description_e5354ab3eb330100d4360c505206fed5}
    VerifyText           ${title_e5354ab3eb330100d4360c505206fed5}
    VerifyText           ${description_f2c38475d7021100b9a5c7400e61037b}
    VerifyText           ${title_f2c38475d7021100b9a5c7400e61037b}
    VerifyText           ${description_f5f38475d7021100b9a5c7400e610382}
    VerifyText           ${title_f5f38475d7021100b9a5c7400e610382}
    VerifyText           ${description_fc000d749f10120066dabde8132e7091}
    VerifyText           ${title_fc000d749f10120066dabde8132e7091}

    ClickText            ${unhide_menu}
    VerifyText           ${homepage}