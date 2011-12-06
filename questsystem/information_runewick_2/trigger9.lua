require("handler.sendmessagetoplayer")
require("handler.createplayeritem")
require("handler.eraseplayeritem")
require("questsystem.base")
module("questsystem.information_runewick_2.trigger9", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 132
local POSTCONDITION_QUESTSTATE = 137

local NPC_TRIGGER_DE = "Eibental"
local NPC_TRIGGER_EN = "Yewdale"
local NPC_REPLY_DE = "Richtig! Und es meine neue Tinte scheint gut zu funktionieren mit dem Licht der S�ule des Feuers. Hier habt ihr eure Belohnung und eine weitere Aufgabe. Geht eben nach Eibental, klettert auf den Leuchturm, und z�hlt die Reiterstatuen auf dem Dach."
local NPC_REPLY_EN = "Very good! And it seems as my new ink seems good to work with the light of the Column of Fire. Here your reward and a new task. Go to Yewdale, climb up the lighttower and count the riderstatues on the top."

function receiveText(type, text, PLAYER)
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
      
            thisNPC:talk(Character.say, getNLS(PLAYER, NPC_REPLY_DE, NPC_REPLY_EN))
            
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
    handler.eraseplayeritem.erasePlayerItem(PLAYER, 3109, 1):execute()
    handler.createplayeritem.createPlayerItem(PLAYER, 2658, 999, 1):execute()
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Gehe nach Eibental und z�hle die Reiterstatuen an der Spitze des Leuchturms am Hafen.", "Go to Yewdale and count the riderstatues on the top of the lighttower at the harbour."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end