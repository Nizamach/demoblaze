***Settings***
Library                    SeleniumLibrary

***Keywords***

Click login menu
    Click Element                       //a[@id='login2']
    Sleep                               1s                         

Input valid username 
    [Arguments]                         ${usernameValid}    
    Input Text                          //input[@id='loginusername']        ${usernameValid}

Input valid password
    [Arguments]                         ${passwordValid}
    Input Text                          //input[@id='loginpassword']        ${passwordValid}

Click login button
    Click Element                       xpath=//button[contains(text(),'Log in')]

Verification Login valid
    Wait Until Page Contains Element    //a[@id='nameofuser']

Verification Login invalid
    Alert Should Be Present             Wrong password.              Accept

Verification Login empty
    Alert Should Be Present             Please fill out Username and Password.              Accept