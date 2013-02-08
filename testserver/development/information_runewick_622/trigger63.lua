require("handler.sendmessagetoplayer")
require("questsystem.base")
require("monster.base.kills")
module("questsystem.information_runewick_622.trigger63", package.seeall)

local QUEST_NUMBER = 622
local PRECONDITION_QUESTSTATE = 246
local POSTCONDITION_QUESTSTATE = 250

local MONSTER_AMNT = 2

function onDeath(MONSTER)
    if monster.base.kills.hasLastAttacker(MONSTER) then
        PLAYER = monster.base.kills.getLastAttacker(MONSTER); -- get killer
        if ADDITIONALCONDITIONS(PLAYER)
                and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then -- this one is really doing our quest
            if killList == nil then
                killList = {};
            end
            if killList[PLAYER.id] == nil then
                killList[PLAYER.id] = {};
                killList[PLAYER.id][MONSTER:getMonsterType()] = 0;
            end
            killList[PLAYER.id][MONSTER:getMonsterType()] = killList[PLAYER.id][MONSTER:getMonsterType()] + 1;
            if killList[PLAYER.id][MONSTER:getMonsterType()] == MONSTER_AMNT then
                HANDLER(PLAYER)
                killList[PLAYER.id][MONSTER:getMonsterType()] = 0;
                questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE);
            end
        end
    end
    return false;
end


function HANDLER(PLAYER)
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "[Quest Hinweis] Genug gejagt. Gehe nun zurück zu Numila", "[Quest Hint] Enough hunted. Go back to Numila now."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end