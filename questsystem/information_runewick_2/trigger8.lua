require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_runewick_2.trigger8", package.seeall)

local QUEST_NUMBER = 622
local PRECONDITION_QUESTSTATE = 123
local POSTCONDITION_QUESTSTATE = 132

local POSITION = position(904, 773, 5)
local RADIUS = 1
local LOOKAT_TEXT_DE = "Auf der Pergamentrolle ist das Wort 'Eibental' zulesen."
local LOOKAT_TEXT_EN = "The word 'Yewdale' appears on the pell. "

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
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Auf der Pergamentrolle ist das Wort 'Eibental' zulesen. Es scheint nun Zeit zur�ck zu Numila.", "The word 'Yewdale' appears on the pell. It seems to be time to go back to Numila now."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end