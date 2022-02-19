*** Settings ***
Library  SeleniumLibrary
Library    /Users/makzibs/Project2/TestCases/ExternalKeywords/UserKeywords.py


*** Variables ***
${Browser}  Chrome
${URL}   https://petstore.octoperf.com/actions/Catalog.action
*** Keywords ***
Open and maximize browser
    Open Browser       ${URL}    ${Browser}
    Maximize Browser Window

Login
    Click element  //*[@id="MenuContent"]/a[2]
    sleep  2s
    Input Text   name=username    aa_bb
    Input Text   name=password   aabbaabb
    click button    name=signon
    sleep  2s

Shopping
    click element   //*[@id="SidebarContent"]/a[1]/img
    sleep  2s
    click element  //*[@id="Catalog"]/table/tbody/tr[2]/td[1]/a
    sleep  2s
    click element  //*[@id="Catalog"]/table/tbody/tr[2]/td[5]/a
    sleep  2s
    click element  //*[@id="BackLink"]/a
    sleep  2s
    click element  //*[@id="SidebarContent"]/a[2]/img
    sleep  2s
    click element  //*[@id="Catalog"]/table/tbody/tr[2]/td[1]/a
    sleep  2s
    click element  //*[@id="Catalog"]/table/tbody/tr[2]/td[5]/a
    sleep  2s
    click element  //*[@id="Cart"]/a
    sleep  2s
    select checkbox  shippingAddressRequired
    sleep  3s
    click element  name=newOrder
    sleep  2s
    click element  //*[@id="Catalog"]/form/input
    sleep  2s
    click element  //*[@id="Catalog"]/a
    sleep  5s


Log the total cost
     ${Text}=  Get Text  xpath://*[@id="Catalog"]/table/tbody/tr[26]/td/table/tbody/tr[4]/th
     log to console  ${Text}

Close the browser
    Close Browser
