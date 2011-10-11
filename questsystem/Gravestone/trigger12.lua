require("questsystem.base")
module("questsystem.Gravestone.trigger12", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 99
local POSTCONDITION_QUESTSTATE = 102

local NPC_TRIGGER_DE = "[Ff]ertig, [Ff]irnisbl�te, [Gg]rab"
local NPC_TRIGGER_EN = "[Dd]one, [Ff]irnisbl�te, [Gg]rave"
local NPC_REPLY_DE = "Ich danke euch vielmals. Ich schenke euch einen Rubinring,  ein Symbol der Ewigkeit. Ein Geschenkt f�r eure wahre Liebe."
local NPC_REPLY_EN = "Thank you very much. I give you a ruby ring, a symbol of eternity. Save it for your true love one day."

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
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end