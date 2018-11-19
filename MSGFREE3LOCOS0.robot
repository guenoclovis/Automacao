*** Settings ***
Library         AutoItLibrary
Library         SikuliLibrary
Library     		DateTime


*** Test Cases ***
#

      Sleep    44
Entra Panel
      SikuliLibrary.Click In       C:/Automacao_Robot/STC/img/Panel.PNG    C:/Automacao_Robot/STC/img/PanelB.PNG

loopmessagelivre
      : FOR    ${i}    IN RANGE    1		2000
      \    ${TODAY}    Get Current Date
      \    Click In                      C:/Automacao_Robot/STC/img/FremessageA.JPG     C:/Automacao_Robot/STC/img/FremessageB.JPG
      \    SikuliLibrary.Click In        C:/Automacao_Robot/STC/img/ComboboxTrem.PNG    C:/Automacao_Robot/STC/img/ComboboxTrem2.PNG
      \    SikuliLibrary.Click In        C:/Automacao_Robot/STC/img/Locos.PNG           C:/Automacao_Robot/STC/2locos/Loco.PNG
      \    Input Text                    C:/Automacao_Robot/STC/img/Texto.PNG           TESTE GPRS ${I} ${TODAY}
      \    SikuliLibrary.Click           C:/Automacao_Robot/STC/img/Send.PNG
      \    Sleep                         15
      \
      \    Sleep                         10
      \
      \    Click In                      C:/Automacao_Robot/STC/img/FremessageA.JPG     C:/Automacao_Robot/STC/img/FremessageB.JPG
      \    SikuliLibrary.Click In        C:/Automacao_Robot/STC/img/ComboboxTrem.PNG    C:/Automacao_Robot/STC/img/ComboboxTrem2.PNG
      \    SikuliLibrary.Click In        C:/Automacao_Robot/STC/2locos/Locos.PNG        C:/Automacao_Robot/STC/2locos/Loco.PNG
      \    Input Text                    C:/Automacao_Robot/STC/img/Texto.PNG           TESTE INMARSART ${I} ${TODAY}
      \    SikuliLibrary.Click           C:/Automacao_Robot/STC/img/Send.PNG
      \    Sleep                         1

      \    Run Keyword If    ${i} == 1999		log		Acabou o loop
