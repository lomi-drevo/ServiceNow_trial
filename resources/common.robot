*** Settings ***
Library                   QWeb
Resource                  ${lang}.robot

*** Variables ***
${BROWSER}               chrome
${login_url}             https://dev79016.service-now.com

*** Keywords ***
Setup Browser
    Open Browser          about:blank                 ${BROWSER}
    SetConfig             DefaultTimeout              30s

End suite
    Close All Browsers

Login
    [Documentation]      Login to Servicenow instance
    GoTo                 ${login_url}
    Dropdown             language_select              ${lang}
    VerifyText           ${username_lbl}              # wait until label is translated correctly
    TypeText             ${username_lbl}              ${username}         delay=2
    TypeText             ${password_lbl}              ${password}
    ClickText            ${btn_login}
    ClickText            ${all_applications}
    VerifyText           ${homepage}