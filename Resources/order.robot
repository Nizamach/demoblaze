***Settings***
Library                    SeleniumLibrary

***Keywords***

Click Samsung S6
    Wait Until Page Contains Element        //a[contains(text(),'Samsung galaxy s6')]
    Click Link                              //a[contains(text(),'Samsung galaxy s6')]

Click Add to Chart
    Wait Until Page Contains Element        //a[contains(text(),'Add to cart')]
    Click Element                           //a[contains(text(),'Add to cart')]

Verif adding item success
    Alert Should Be Present                 Product added              Accept  

