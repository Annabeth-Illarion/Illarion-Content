require("handler.sendmessagetoplayer")
require("handler.createeffect")
require("questsystem.base")
module("questsystem.Gravestone.trigger10", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 76
local POSTCONDITION_QUESTSTATE = 88

local POSITION = position(605, 344, 0)
local RADIUS = 1

function UseItem(PLAYER, item, ltstate)
  if PLAYER:isInRangeToPosition(POSITION,RADIUS)
      and ADDITIONALCONDITIONS(PLAYER)
      and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then
    --informNLS(PLAYER, TEXT_DE, TEXT_EN)
    
    HANDLER(PLAYER)
    
    questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
    return true
  end

  return false
end

function informNLS(player, textDe, textEn)
  if player:getPlayerLanguage() == Player.german then
    player:inform(player, item, textDe)
  else
    player:inform(player, item, textEn)
  end
end

-- local TEXT_DE = TEXT -- German Use Text -- Deutscher Text beim Benutzen
-- local TEXT_EN = TEXT -- English Use Text -- Englischer Text beim Benutzen


function HANDLER(PLAYER)
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Du legst die Firnisbl�te ans Grab und pl�tzlich verschwindet diese vor deinen Augen. Du blickst nochmals genauer hin.", "You place the firnis blossom on the grave and suddenly it disappears in front of your eyes. You take a closer look."):execute()
    handler.createeffect.createEffect(position(605, 344, 0), 32):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end