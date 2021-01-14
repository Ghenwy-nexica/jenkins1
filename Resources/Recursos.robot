*** Settings ***
Library       SeleniumLibrary


*** Variables ***
${Browser}      Chrome
${URL}          https://www.facebook.com
${Capturas}     ../Screenshoots



*** Keywords ***
Config Capturas
  Set Screenshot Directory    ${Capturas}

Velocidad de Selenium
  Set Selenium Speed    0.3seconds

Abrir Navegador
  ${opciones}=        Evaluate            sys.modules["selenium.webdriver.chrome.options"].Options()  sys
  Call method         ${opciones}         add_argument        --disable-notifications
  ${Diver}            Create Webdriver    Chrome              options=${opciones}
  Go to               ${URL}
  Maximize Browser Window
  Velocidad de Selenium
  Config Capturas

Cerrar Navegador
    Sleep    1seconds
    Close All Browsers
