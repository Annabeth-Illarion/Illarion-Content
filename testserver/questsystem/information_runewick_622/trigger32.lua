require("handler.sendmessagetoplayer")
require("handler.createplayeritem")
require("questsystem.base")
module("questsystem.information_runewick_622.trigger32", package.seeall)

local QUEST_NUMBER = 622
local PRECONDITION_QUESTSTATE = 208
local POSTCONDITION_QUESTSTATE = 211

local NPC_TRIGGER_DE = "."
local NPC_TRIGGER_EN = "."
local NPC_REPLY_DE = "Ich hab schon gehört was Zaida sagte. Lass mich sehen was du für eine Grüße hast. Hmm... die hier sollte passen. *reicht eine gelbe Robe*"
local NPC_REPLY_EN = "I heared what Zaida said. Let me see what size you have. Hmm...this one should fit. *hands a yellow robe* "

function receiveText(npc, type, text, PLAYER)
    if ADDITIONALCONDITIONS(PLAYER)
    and PLAYER:getType() == Character.player
    and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then
        if PLAYER:getPlayerLanguage() == Player.german then
            NPC_TRIGGER=string.gsub(NPC_TRIGGER_DE,'([ ]+)',' .*');
        else
            NPC_TRIGGER=string.gsub(NPC_TRIGGER_EN,'([ ]+)',' .*');
        end

        foundTrig=false
        
        for word in string.gmatch(NPC_TRIGGER, "[^|]+") do 
            if string.find(text,word)~=nil then
                foundTrig=true
            end
        end

        if foundTrig then
      
            npc:talk(Character.say, getNLS(PLAYER, NPC_REPLY_DE, NPC_REPLY_EN))
            
            HANDLER(PLAYER)
            
            questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
        
            return true
        end
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


function HANDLER(PLAYER)
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "[Quest Hinweis] Gehe nun zurück zu Numila.", "[Quest Hint] Go back to Numila now."):execute()
    handler.createplayeritem.createPlayerItem(PLAYER, 195, 999, 1):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end