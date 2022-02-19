*** Settings ***
Library     SeleniumLibrary
Resource     /Users/makzibs/Project2/TestCases/Resources/Resources.robot

*** Variables ***
${Browser}  Chrome
${URL}   https://petstore.octoperf.com/actions/Catalog.action

*** Test Cases ***
First Test case

    Open and maximize browser
    Login
    Shopping
    Log the total cost
    Close the browser

*** Keywords ***



