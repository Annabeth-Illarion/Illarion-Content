require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_runewick_2.trigger26", package.seeall)

local QUEST_NUMBER = 622
local PRECONDITION_QUESTSTATE = 189
local POSTCONDITION_QUESTSTATE = 185

local POSITION = position(924, 940, 0)
local RADIUS = 1

function MoveItemAfterMove(PLAYER, itemBefore, item)
  if PLAYER:isInRangeToPosition(POSITION,RADIUS)
      and ADDITIONALCONDITIONS(PLAYER)
      and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then
    -- informNLS(PLAYER, TEXT_DE, TEXT_EN)
    
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

-- local TEXT_DE = TEXT -- German Text after movement -- Deutscher Text nach Bewegung
-- local TEXT_EN = TEXT -- English Text after movement -- Englischer Text nach Bewegung


function HANDLER(PLAYER)
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Numila wird dir dankbar f�r diesen Akt sein. Geh nun zur�ck zu ihr.", "Numila will be thankful for this act. Go back to her now."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end