require("handler.createplayeritem")
require("questsystem.base")
module("questsystem.grapes'n_nuts.trigger3", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 0
local POSTCONDITION_QUESTSTATE = 3

local NPC_TRIGGER_DE = "auftrag"
local NPC_TRIGGER_EN = "task"
local NPC_REPLY_DE = "Hilfe! Ja, die brauch ich! Ein Ork hat mir meine Trauben-Nuss-Mischung gestohlen. Daf�r hab ich den Schl�ssel zu seiner Kiste geklaut. Er verkauft Glasswaren s�dlich von hier. Da, nimm den Schl�ssel und schau in seine Kiste. Du kannst alles behalten, aber bring mir meine Mischung!"
local NPC_REPLY_EN = "Help! Yes, I do need help. An orc has stolen my mix of grapes and nuts. But in return, I've stolen the key to his chest. He sells glasses, southern from here. You can keep everything else, but bring me my mix back!"

function receiveText(type, text, player)
  if questsystem.base.fulfilsPrecondition(player, QUEST_NUMBER, PRECONDITION_QUESTSTATE)
      and player:getType() == Character.player
      and string.find(text, getNLS(player, NPC_TRIGGER_DE, NPC_TRIGGER_EN)) then
    thisNPC:talk(Character.say, getNLS(player, NPC_REPLY_DE, NPC_REPLY_EN))
    
handler.createplayeritem.createPlayerItem(PLAYER, 2144, 333, 1):execute()
    
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
