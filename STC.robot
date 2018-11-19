*** Settings ***
Library         AutoItLibrary
Library         SikuliLibrary
Library     		DateTime

*** Variable ***
${Loco}   203

*** Test Cases ***

#
Entra Panel
      SikuliLibrary.Click In       C:/Automacao_Robot/STC/img/Panel.PNG    C:/Automacao_Robot/STC/img/PanelB.PNG

loopmessagelivre
      : FOR    ${i}    IN RANGE    1		3000
      \    ${TODAY}    Get Current Date
      \    ${date} =	 Convert Date      ${TODAY}    exclude_millis=yes
      \    Click In                      C:/Automacao_Robot/STC/img/FremessageA.JPG      C:/Automacao_Robot/STC/img/FremessageB.JPG
      \    Click In                      C:/Automacao_Robot/STC/img/ComboboxLoco.PNG     C:/Automacao_Robot/STC/img/ComboboxLoco.PNG
      \    Input Text                    C:/Automacao_Robot/STC/img/ComboboxTrem.PNG     ${Loco}
      \    Input Text                    C:/Automacao_Robot/STC/img/Texto.PNG            TESTE MCF SEG R AUTOMACAO ${I} ${date}
      \    SikuliLibrary.Click           C:/Automacao_Robot/STC/img/Send.PNG
      \    Sleep                         2
      \    Run Keyword If    ${i} == 2999		log		Acabou o loop
