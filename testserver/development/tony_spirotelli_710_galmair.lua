-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (710, 'quest.tony_spirotelli_710_galmair');

require("base.common")
module("development.tony_spirotelli_710_galmair", package.seeall)

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
Description[GERMAN][1] = "Sammel zehn Laubholzbretter und zeig diese Tony Spirotelli in der Werkstatt von Galmair. Sammel erstmal mit dem Beil an einem Apfelbaum zehn Laubholzscheite. Dazu nimmst du das Beil in die Hand und benutzt es, w�hrend du vor einem Apfelbaum stehst. Hast du das erstmal gemacht, geh zur�ck zur Werkstatt und s�ge die Scheite mit der S�ge in der Hand bei der Werkbank neben Tony zu Brettern."
Description[ENGLISH][1] = "Collect ten deciduous wood boards for Tony Spirotelli in the workshop of Galmair. You should start by collecting ten deciduous wood using the hatchet in your hand whilst standing in front of an apple tree. Once you have the deciduous wood you can saw it into boards in the workshop by using the workbench as you stand in front of it, with the saw in your hand."
Description[GERMAN][2] = "Geh zu Tony Spirotelli in der Werkstatt von Galmair. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][2] = "Go back to Tony Spirotelli in the workshop of Galmair, he is sure to have another task for you."
Description[GERMAN][3] = "Stell zehn Holzbecher f�r Tony Spirotelli in der Werkstatt von Galmair her. Um die Holzbecher herzustellen, brauchst du Laubholzbretter. Hast du diese, nimmst du den Hobel in die Hand und benutzt ihn, w�hrend du vor einer Werkbank stehst."
Description[ENGLISH][3] = "Produce ten wooden cups for Tony Spirotelli in the workshop of Galmair. To produce the wooden cups you need deciduous wood boards. Once you have them take the plane in your hand and use it while standing in front of the workbench."
Description[GERMAN][4] = "Geh zu Tony Spirotelli in der Werkstatt von Galmair. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][4] = "Go back to Tony Spirotelli in the workshop of Galmair, he is sure to have another task for you."
Description[GERMAN][5] = "Stell f�nf Hammergriffe f�r Tony Spirotelli her. Um die Hammergriffe herzustellen, brauchst du zuerst �ste. Diese findest du manchmal beim F�llen von Apfelb�umen. Hast du erstmal f�nf �ste gefunden, kehr zur Werkstatt zur�ck und fertige mit dem Schnitzmesser in der Hand bei der Werkbank f�nf Hammergriffe."
Description[ENGLISH][5] = "Produce five hammer handles for Tony Spirotelli. To produce the hammer handles you need five boughs first of all, you can get them while chopping down an apple tree. Once you have the boughs return to the workshop and produce five hammer handles using the carving tools in your hand whilst at the workbench."
Description[GERMAN][6] = "Du hast alle Aufgaben von Tony Spirotelli erf�llt."
Description[ENGLISH][6] = "You have fulfilled all the tasks for Tony Spirotelli."


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(383, 269, 0), position(436, 250, 0)} -- Apple tree
QuestTarget[2] = {position(383, 269, 0)} 
QuestTarget[3] = {position(383, 269, 0), position(381, 269, 0)} -- Work bench
QuestTarget[4] = {position(383, 269, 0)} 
QuestTarget[5] = {position(383, 269, 0), position(381, 269, 0)} -- Work bench


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
