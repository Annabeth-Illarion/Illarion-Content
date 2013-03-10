-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (713, 'quest.daniel_brock_713_runewick');

require("base.common")
module("development.daniel_brock_713_runewick", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Das Schreinerhandwerk"
Title[ENGLISH] = "The carpentry craft"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Sammel 20 Laubholzbretter und zeig diese Daniel Brock. Sammel erstmal mit dem Beil an einem Apfelbaum 20 Laubholzscheite. Hast du das erstmal gemacht geh zur�ck zum Windturm und s�ge die Scheite mit der S�ge in der Hand bei der Werkbank neben Daniel zu Brettern."
Description[ENGLISH][1] = "Collect 20 deciduous wood boards for Daniel Brock. You should start by collecting 20 deciduous wood using the hatchet in your hand whilst standing in front of an apple tree. Once you have the deciduous wood you can saw it into boards at the workbench in the Wind Tower. Saw the wood by standing in front of the work bench and using it with the saw in your hand."
Description[GERMAN][2] = "Geh zu Daniel Brock. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][2] = "Go back to Daniel Brock, he is sure to have another task for you."
Description[GERMAN][3] = "Stell f�nf Holzbecher f�r Daniel Brock her. Um die Holzbecher herzustellen, brauchst du Laubholzbretter. Hast du diese, nimmst du den Hobel in die Hand und benutzt ihn, w�hrend du vor einer Werkbank stehst."
Description[ENGLISH][3] = "Produce five wooden cups for Daniel Brock. To produce the wooden cups you need deciduous wood boards. Once you have them take the plane in your hand and use it, whilst standing in front of the workbench."
Description[GERMAN][4] = "Geh zu Daniel Brock. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][4] = "Go back to Daniel Brock, he is sure to have another task for you."
Description[GERMAN][5] = "Stell f�nf Hammergriffe f�r Daniel Brock her. Um die Hammergriffe herzustellen, brauchst du zuerst �ste. Diese findest du manchmal beim F�llen von Apfelb�umen. Hast du erstmal f�nf �ste gefunden, kehr zum Windturm zur�ck und fertige mit dem Schnitzmesser in der Hand bei der Werkbank f�nf Hammergriffe."
Description[ENGLISH][5] = "Produce five hammer handles for Daniel Brock. To produce the hammer handles you need five boughs first of all; you can get them by chopping down an apple tree. Once you have enough boughs return to the Wind Tower and produce five hammer handles by using the carving tools in your hand, whilst standing in front of the workbench."
Description[GERMAN][6] = "Du hast alle Aufgaben von Daniel Brock erf�llt."
Description[ENGLISH][6] = "You have fulfilled all the tasks for Daniel Brock."


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(904, 827, 0), position(792, 819, 0)} -- Apple tree
QuestTarget[2] = {position(904, 827, 0)} 
QuestTarget[3] = {position(904, 827, 0), position(902, 825, 0)} -- Work bench
QuestTarget[4] = {position(904, 827, 0)} 
QuestTarget[5] = {position(904, 827, 0), position(902, 825, 0)} -- Work bench


-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 6


function QuestTitle(user)
    return base.common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end

function QuestDescription(user, status)
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""

    return base.common.GetNLS(user, german, english)
end

function QuestTargets(user, status)
    return QuestTarget[status]
end

function QuestFinalStatus()
    return FINAL_QUEST_STATUS
end
