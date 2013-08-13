	-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (74, 'quest.cormac_74_galmair');

require("base.common")
module("quest.cormac_74_galmair", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Der Schw�tzer von Galmair"
Title[ENGLISH] = "Galmair's Gossiper"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Cormac ist immer noch durstig. Bring ihm einen vollen Krug Bier."
Description[ENGLISH][1] = "Cormac is still thirsty so bring him a full mug of beer."
Description[GERMAN][2] = "Jetzt f�hlt sich Cormac ein bisschen gespr�chiger. Du kannst ihm nun alle Fragen stellen, die du hast."
Description[ENGLISH][2] = "Now Cormac is feeling a bit more talkative you can ask him any questions you might have."


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {392, 327, -6}

-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(392, 327, -6)} -- Cormac


-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 2


function QuestTitle(user)
    return base.common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end

function QuestDescription(user, status)
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""

    return base.common.GetNLS(user, german, english)
end

function QuestStart()
    return Start
end

function QuestTargets(user, status)
    return QuestTarget[status]
end

function QuestFinalStatus()
    return FINAL_QUEST_STATUS
end
