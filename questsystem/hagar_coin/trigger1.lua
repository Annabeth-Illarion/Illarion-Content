require("questsystem.base")
module("questsystem.hagar_coin.trigger1", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 0
local POSTCONDITION_QUESTSTATE = 3

local NPC_TRIGGER_DE = "quest"
local NPC_TRIGGER_EN = "quest"
local NPC_REPLY_DE = "Psst... Ich habe da etwas munkeln geh�rt von einer Botschaft, die in eine Kiefer eingeritzt wurde... gleich au�erhalb Galmairs"
local NPC_REPLY_EN = "Psst... I heard rumors about something that was carved into a pine tree, right outside of Galmair"

function receiveText(type, text, player)
  if questsystem.base.fulfilsPrecondition(player, QUEST_NUMBER, PRECONDITION_QUESTSTATE)
      and player:getType() == Character.player
      and string.find(text, getNLS(player, NPC_TRIGGER_DE, NPC_TRIGGER_EN)) then
    thisNPC:talk(Character.say, getNLS(player, NPC_REPLY_DE, NPC_REPLY_EN))
    
    
    questsystem.base.setPostcondition(player, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)

    return true
  end

  return false
end

function getNLS(player, textDe, textEn)
  if player:getPlayerLanguage() == Player.german then
    return textDe
  else
    return textEn
  end
end
