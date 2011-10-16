require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.Irmorom.trigger2", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 3
local POSTCONDITION_QUESTSTATE = 9

local POSITION = position(312, 232, 1)
local RADIUS = 0
local LOOKAT_TEXT_DE = "Du neigst deinen Kopf vor dem Altar und f�ngst an zu beten."
local LOOKAT_TEXT_EN = "You lower your head in front of the altar and you start to pray."

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
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Du f�hlst Irmoroms Pr�senz.", "You feel Irmoroms presence."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end