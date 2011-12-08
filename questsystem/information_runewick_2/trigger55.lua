require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_runewick_2.trigger55", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 243
local POSTCONDITION_QUESTSTATE = 246

local NPC_TRIGGER_DE = "."
local NPC_TRIGGER_EN = "."
local NPC_REPLY_DE = "Nun, seid ihr ausger�stet. Geht nun zur B�renh�hle und erlegt einige der W�lfe dort. Vielleicht �ber ihr euch aber vorher noch in der Kampfkunst oder sucht nach Weggef�hrten. Kommt anschlie�end wieder zur�ck."
local NPC_REPLY_EN = "Now, you are equipped. Go to the Bear cave now and hunt some of the wolves there. You should maybe practice first or look for support. Come back afterwards."

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
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Geh nun zur B�renh�hle. Bedenke, dass dies kein ungef�hrlicher Ort ist. Sei daher vorbereitet durch etwas Training oder Unterst�tzung durch Mitspieler.", "Go to the Bear cave now. Keep in mind this is not an undangerous place. You should practice before or look for support from other players."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end