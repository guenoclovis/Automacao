*** Settings ***
Library         AutoItLibrary
Library         SikuliLibrary
Library     		DateTime
Library     		Collections

*** Variable ***
@{loco}  203  207
${qtdMessage}  2
${qtdLoco}  Get Length  ${loco}
${control}  0
${index}  0


#*** Keywords ***
#Incrementar
#${index} = index + 1

*** Test Cases ***
#
Entra Panel
      SikuliLibrary.Click In       C:/Automacao_Robot/STC/img/Panel.PNG    C:/Automacao_Robot/STC/img/PanelB.PNG

loopmessagelivre
      : FOR    ${i}    IN RANGE    0		${qtdMessage}
      \    ${TODAY}    Get Current Date
      \    ${date} =	 Convert Date      ${TODAY}    exclude_millis=yes
      \    Click In                      C:/Automacao_Robot/STC/img/FremessageA.JPG      C:/Automacao_Robot/STC/img/FremessageB.JPG
      \    Click In                      C:/Automacao_Robot/STC/img/ComboboxLoco.PNG     C:/Automacao_Robot/STC/img/ComboboxLoco.PNG
      \    Input Text                    C:/Automacao_Robot/STC/img/ComboboxTrem.PNG     ${loco}[1]
      \    Input Text                    C:/Automacao_Robot/STC/img/Texto.PNG            TESTE MCF SEG R AUTOMACAO ${I} ${date}
      \    SikuliLibrary.Click           C:/Automacao_Robot/STC/img/Send.PNG
      \    Sleep                         2
      \    Run Keyword If    ${i} == ${qtdMessage}		log		Acabou o loop
