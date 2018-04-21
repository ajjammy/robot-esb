*** Setting ***
Library           SeleniumLibrary
Test Teardown     Close Browser

*** Test Cases ***
ค้นหาคำว่า มาริโอ้ ด้วย Google แล้วแสดงผลค้นหา หนังสติ๊ก-ยิงปอร์เช่
    เปิดเบราเซอร์เข้า Google.com
    พิมพ์คำค้น มาริโอ้
    กดปุ่น enter เพื่อค้นหา
    แสดงผลค้นหา หนังสติก ยิงปอเช่

*** Keywords ***
เปิดเบราเซอร์เข้า Google.com
    Open Browser    http://www.google.com    headlesschrome

พิมพ์คำค้น มาริโอ้
    Input Text      q    มาริโอ้

กดปุ่น enter เพื่อค้นหา
    Submit Form

แสดงผลค้นหา หนังสติก ยิงปอเช่
    Page Should Contain    หนังสติ๊ก
    Page Should Contain    หนังสติ๊ก-ยิงปอร์เช่
    Capture Page Screenshot
