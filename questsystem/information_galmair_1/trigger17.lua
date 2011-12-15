require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_galmair_1.trigger17", package.seeall)

local QUEST_NUMBER = 631
local PRECONDITION_QUESTSTATE = 79
local POSTCONDITION_QUESTSTATE = 84

local POSITION = position(313, 233, 1)
local RADIUS = 1
local LOOKAT_TEXT_DE = "Das Bild zeigt einen reich gekleideten Zwerg mit grauer Haut und Haar, der eine Sch�rze tr�gt und seinen gro�en goldene Axt gegen einen Felsen schwingt."
local LOOKAT_TEXT_EN = "The painting shows a rich dressed gray skinned and haired dwarf, who is wearing an apron and swings his big golden axe against a rock."

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
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Geh zur�ck zu Iradona und teile ihr mit auf was der Zwerg einschl�gt.", "Go to Iradona and tell her against what the dwarf swings his axe."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end