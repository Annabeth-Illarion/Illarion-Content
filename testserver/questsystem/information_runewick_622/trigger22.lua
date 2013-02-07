require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_runewick_622.trigger22", package.seeall)

local QUEST_NUMBER = 622
local PRECONDITION_QUESTSTATE = 189
local POSTCONDITION_QUESTSTATE = 185

local POSITION = position(924, 940, 0)
local RADIUS = 1

function MoveItemAfterMove(PLAYER, itemBefore, item)
  if PLAYER:isInRangeToPosition(POSITION,RADIUS)
      and ADDITIONALCONDITIONS(PLAYER)
      and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then
    PLAYER:inform(TEXT_DE, TEXT_EN)
    
    HANDLER(PLAYER)
    
    questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
    return true
  end

  return false
end


-- local TEXT_DE = TEXT -- German Text after movement -- Deutscher Text nach Bewegung
-- local TEXT_EN = TEXT -- English Text after movement -- Englischer Text nach Bewegung


function HANDLER(PLAYER)
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "[Quest Hinweis] Numila wird dir dankbar für diesen Akt sein. Gehe nun zurück zu ihr.", "[Quest Hint] Numila will be thankful for this act. Go back to her now."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end