***Settings***
Library                    SeleniumLibrary

***Keywords***
Click Chart menu
    Click Element                           //a[@id='cartur']

Click place order
    Click Element                           //button[contains(text(),'Place Order')]
    Sleep                                   1s

Input name order
    [Arguments]                             ${name}
    Input Text                              //input[@id='name']                             ${name}

Input country order
    [Arguments]                             ${country}
    Input Text                              //input[@id='country']                             ${country}

Input city order
    [Arguments]                             ${city}
    Input Text                              //input[@id='city']                             ${city}

Input card order
    [Arguments]                             ${card}
    Input Text                              //input[@id='card']                             ${card}

Input month order
    [Arguments]                             ${month}
    Input Text                              //input[@id='month']                             ${month}

Input year order
    [Arguments]                             ${year}
    Input Text                              //input[@id='year']                             ${year}

Click purchase button
    Click Element                           //button[contains(text(),'Purchase')]

Verif purchase success
    Wait Until Page Contains Element        //h2[contains(text(),'Thank you for your purchase!')]

Click OK Purchase
    Click Element                           //button[contains(text(),'OK')]