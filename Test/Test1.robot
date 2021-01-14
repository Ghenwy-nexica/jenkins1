*** Settings ***
Documentation        Test_suite para pruebas de automatización en jenkins
Library              SeleniumLibrary
Resource             ../Resources/Recursos.robot
Test Setup          Abrir Navegador
Test Teardown       Cerrar Navegador


*** Variables ***




*** Test Cases ***
Test 001 Pruebas para jenkins
  [Tags]            Prueba
  [Documentation]   Test de pruebas para integración con jenkins
  Sleep    2seconds
  Page Should Contain Image    xpath=//*[@id="content"]/div/div/div/div[1]/div/img
  Click Element    xpath=//*[@id="u_0_h"]
  Input Text    xpath=//*[@id="email"]    Esto es una prueba
  Input Text    xpath=//*[@id="pass"]     Esto es otra prueba


Test 002 Pruebas de jenkins 2
  [Tags]        Prueba
  [Documentation]   Test de pruebas para integración con jenkins
  Sleep    1seconds
  Go To    https://elpais.com/
  Click Element    xpath=//*[@id="didomi-notice-agree-button"]

Test 003 Pruebas de Jenkins 3
  [Tags]            Prueba
  [Documentation]   Test de pruebas para integración con jenkins
  Go To    https://duckduckgo.com/
  Wait Until Element Is Visible    xpath=//*[@id="search_form_input_homepage"]
  Page Should Contain Element    id=logo_homepage_link
  Page Should Contain Element    id=logo_homepage_link
  Page Should Contain Element    xpath=//*[@id="search_form_input_homepage"]
  Input Text    xpath=//*[@id="search_form_input_homepage"]    Parece que vaya a buscar algo, pero no, es una prueba.
  Clear Element Text    xpath=//*[@id="search_form_input_homepage"]
  Press Keys    xpath=//*[@id="search_form_input_homepage"]   Puede que si escriba algo..... nah!
  Click Element    id=logo_homepage_link
