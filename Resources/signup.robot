***Settings***
Library                    SeleniumLibrary

***Keywords***

Maximize window
    Maximize Browser Window

Click Sign Up menu
    Click Element                           xpath=//a[@id='signin2']
    Sleep                                   1s


Input username
    [Arguments]                             ${usernameValid}
    Input Text                              xpath=//input[@id='sign-username']      ${usernameValid}

Input password
    [Arguments]                             ${passwordValid}
    Input Text                              //input[@id='sign-password']                      ${passwordValid}

Click Sign Up Button
    Click Element                           xpath=//button[contains(text(),'Sign up')]

Verif Signup success
    Alert Should Be Present                 Sign up successful.              Accept
    Sleep                                   2s

Verif Signup exist username
    Alert Should Be Present                 This user already exist.              Accept   

Verif Signup empty
    Alert Should Be Present                 Please fill out Username and Password.              Accept       

Click Close Sign Up
    Click Element                           xpath=//body/div[@id='signInModal']/div[1]/div[1]/div[3]/button[1]
    Sleep                                   2s