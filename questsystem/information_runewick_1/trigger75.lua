require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_runewick_1.trigger75", package.seeall)

local QUEST_NUMBER = 621
local PRECONDITION_QUESTSTATE = 169
local POSTCONDITION_QUESTSTATE = 73

local POSITION = position(954, 762, 5)
local RADIUS = 1
local LOOKAT_TEXT_DE = "Du findest eine Notiz 'Gefunden, gut! Bringe mir nun einen Apfel. Elesil'"
local LOOKAT_TEXT_EN = "You find a note 'Found, good! Bring me an apple now. Elesil'"

function LookAtItem(PLAYER, item)
  if PLAYER:isInRangeToPosition(POSITION,RADIUS)
      and ADDITIONALCONDITIONS(PLAYER)
      and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then

    itemInformNLS(PLAYER, item, LOOKAT_TEXT_DE, LOOKAT_TEXT_EN)
    
    HANDLER(PLAYER)
    
    questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
    return true
  end

  return false
end

function itemInformNLS(player, item, textDe, textEn)
  if player:getPlayerLanguage() == Player.german then
    world:itemInform(player, item, textDe)
  else
    world:itemInform(player, item, textEn)
  end
end


function HANDLER(PLAYER)
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Gehe zu einem Apfelbaum deiner Wahl, pflucke einen Apfel und bringe diesen Elesil.", "Go to the appletree of your choice, pick an apple and bring it Elesil."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end