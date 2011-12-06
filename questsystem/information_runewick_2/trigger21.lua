require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_runewick_2.trigger21", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 123
local POSTCONDITION_QUESTSTATE = 132

local POSITION = position(904, 773, 5)
local RADIUS = 0

function UseItem( PLAYER, item, TargetItem, counter, Param, ltstate )
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
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Auf der Pergamentrolle ist das Wort 'Eibental' zulesen. Es scheint nun Zeit zur�ck zu Numila.", "The word 'Yewdale' appears on the pell. It seems to be time to go back to Numila now."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end