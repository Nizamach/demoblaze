***Settings***
Documentation              Tugas 5 
Library                    SeleniumLibrary
Resource                   Resources/signup.robot
Resource                   Resources/signin.robot
Resource                   Resources/order.robot
Resource                   Resources/chart.robot
Test Setup                 Open Browser                        ${URL}          ${BROWSERS}
Test Teardown              Close Browser

***Variables***
${URL}                      https://www.demoblaze.com/index.html
${BROWSERS}                 Chrome


***Test Cases***

User Do Sign Up
    Maximize window
    Click Sign Up menu                      
    Input username                          usernameValid=admin12325
    Input password                          passwordValid=admin123
    Click Sign Up Button
    Verif Signup success

Signup Exist
    Maximize window
    Click Sign Up menu                      
    Input username                          usernameValid=admin12322
    Input password                          passwordValid=admin123
    Click Sign Up Button
    Verif Signup exist username

Signup Empty
    Maximize window
    Click Sign Up menu                      
    Input username                          usernameValid=
    Input password                          passwordValid=
    Click Sign Up Button
    Verif Signup empty


Login Valid
    Maximize window
    Click login menu
    Input valid username                    usernameValid=admin12321
    Input valid password                    passwordValid=admin123
    Click login button
    Verification Login valid

Login invalid
    Maximize window
    Click login menu
    Input valid username                    usernameValid=admin12321
    Input valid password                    passwordValid=admin1234
    Click login button
    Verification Login invalid

Login Empty
    Maximize window
    Click login menu
    Input valid username                    usernameValid=
    Input valid password                    passwordValid=
    Click login button
    Verification Login empty

Order Samsung S6
    Click Samsung S6
    Click Add to Chart
    Verif adding item success
    Click Chart menu
    Click place order
    Input name order                        name=admin
    Input country order                     country=wakanda
    Input city order                        city=WakandaCity
    Input card order                        card=123546
    Input month order                       month=March
    Input year order                        year=2022
    Click purchase button
    Verif purchase success
    Click OK Purchase