require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_runewick_622.trigger29", package.seeall)

local QUEST_NUMBER = 622
local PRECONDITION_QUESTSTATE = 196
local POSTCONDITION_QUESTSTATE = 207

local ITEM_ID = 388
local ITEM_AMNT = 1
local NPC_TRIGGER_DE = "."
local NPC_TRIGGER_EN = "."
local NPC_REPLY_DE = "Gut, aber eigentlich will ich sie gar nicht, daher bringt sie lieber Zaida. Ihr findet sie in der Werktstatt unten."
local NPC_REPLY_EN = "Good, but actually I do not want them. Please bring them to Zaida. You can find her in the workshop downstairs."
local NPC_NOITEM_DE = "Wo sind die Trauben? Ohne Trauben gibt es keine Belohung!"
local NPC_NOITEM_EN = "Where are the grapes? You do not get your reward without them!"

function receiveText(npc, type, text, PLAYER)
    if PLAYER:getType() == Character.player
    and ADDITIONALCONDITIONS(PLAYER)
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
            if PLAYER:countItem(ITEM_ID)>=ITEM_AMNT then
                npc:talk(Character.say, getNLS(PLAYER, NPC_REPLY_DE, NPC_REPLY_EN))
            
                HANDLER(PLAYER)
            
                questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
        
                return true
            elseif (NPC_NOITEM_DE~="") then
                npc:talk(Character.say, getNLS(PLAYER, NPC_NOITEM_DE, NPC_NOITEM_EN))
          
                return true
            else
                return false
            end
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
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "[Quest Hinweis] Gehe zu Zaida und bringe ihr die Trauben. Du findest Zaida in der Werkstatt. Wenn du nicht weißt wo dieser ist frage Elesil.", "[Quest Hint] Go to Zaida and bring her the grapes. You can find her in the workshop. If you do not know where the workshop is, ask Elesil."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end