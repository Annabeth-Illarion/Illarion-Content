require("questsystem.base")
module("questsystem.questsystem.trigger9", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 54
local POSTCONDITION_QUESTSTATE = 76

local NPC_TRIGGER_DE = "[Mm]ary [Ss]ue"
local NPC_TRIGGER_EN = "[Mm]ary [Ss]ue"
local NPC_REPLY_DE = "Ahhh Mary Sue, meine einzige und wahre Liebe. Ich w�nschte ich k�nnte noch einemal ihr Grab besuchen, doch bin ich zu alt f�r so eine lange Reise. W�rdet ihr so nett sein und ihr eine Firnisbl�te ans Grab legen? Ich w�rde mich erkenntlich zeigen.  Ahhh ich vermisse sie ja so sehr. "
local NPC_REPLY_EN = "Ahh Mary Sue, my one and only true love. I wish I could see her grave one last time unfortunately I�m to old to take such a long journey. Would you be so nice and bring her a firnis blossom? Ahhh I miss her so much."

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