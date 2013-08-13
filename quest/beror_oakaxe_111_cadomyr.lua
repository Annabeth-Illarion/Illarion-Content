-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (111, 'quest.beror_oakaxe_111_cadomyr');

require("base.common")
module("quest.beror_oakaxe_111_cadomyr", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Eine Frage der Ehre"
Title[ENGLISH] = "A Question of Honour"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Lese die Sitten, die auf dem Monument von Sir Reginald Edwards vor dem Palast von Cadomyr stehen. Benutze hierfür die Statue. Kehre dann zu Beror zurück."
Description[ENGLISH][1] = "Read the customs on Sir Reginald's statue in front of the palace of Cadomyr. Use the statue therefor. Then return to Beror."
Description[GERMAN][2] = "Kehre zu Beror zurück."
Description[ENGLISH][2] = "Return to Beror."
Description[GERMAN][3] = "Gehe zu Beror Oakaxe, der sich im Quartiermeisters Laden von Cadomyr aufhält. Er hat bestimmt noch eine Aufgabe für dich."
Description[ENGLISH][3] = "Go back to Beror Oakaxe in the Quartermaster Store of Cadomyr, he certainly have another task for you."
Description[GERMAN][4] = "Gehe zum Notarbüro, dem Palast und dem Tor. Kehre dann zu Beror zurück."
Description[ENGLISH][4] = "Go to the notary's office, the palace and the gate. Then return to Beror."
Description[GERMAN][5] = "Kehre zu Beror zurück."
Description[ENGLISH][5] = "Return to Beror."
Description[GERMAN][6] = "Gehe zu Beror Oakaxe, der sich im Quartiermeisters Laden von Cadomyr aufhält. Er hat bestimmt noch eine Aufgabe für dich."
Description[ENGLISH][6] = "Go back to Beror Oakaxe in the Quartermaster Store of Cadomyr, he certainly have another task for you"
Description[GERMAN][7] = "Besorge zwanzig Ziegelsteine und bringe sie Beror. Du kannst sie bei einem Händler kaufen oder mit einer Ziegelform am Glasschmelzofen herstellen."
Description[ENGLISH][7] = "Produce twenty bricks and bring them to Beror. You can buy them from a merchant or produce them by using a glass melting oven when you have a brick mould in your hand."
Description[GERMAN][8] = "Gehe zu Beror Oakaxe, der sich im Quartiermeisters Laden von Cadomyr aufhält. Er hat bestimmt noch eine Aufgabe für dich."
Description[ENGLISH][8] = "Go back to Beror Oakaxe in the Quartermaster Store of Cadomyr, he certainly have another task for you."
Description[GERMAN][9] = "Gehe zum Grundstein der Aufrichtigkeit, dem Blutkreis, der nördlichen Brücke über den Kantabifluss und zur Ostgrenze. Kehre dann zu Beror zurück."
Description[ENGLISH][9] = "Go to Candour Foundation, the Circle of Blood, the northern bridge over the Kantabi River and the eastern border. Then return to Beror."
Description[GERMAN][10] = "Kehre zu Beror zurück."
Description[ENGLISH][10] = "Return to Beror."
Description[GERMAN][11] = "Geh zu Beror Oakaxe, der sich im Quartiermeisters Laden von Cadomyr aufhält. Er hat bestimmt noch eine Aufgabe für dich."
Description[ENGLISH][11] = "Go back to Beror Oakaxe in the Quartermaster Store of Cadomyr, he certainly have another task for you."
Description[GERMAN][12] = "Gehe zu dem Gasthof zur Hanfschlinge, dam Versteck des Dons in Galmair und in die Kammer des Erzmagiers in Runewick. Kehre dann zu Beror zurück."
Description[ENGLISH][12] = "Go to the Hemp Necktie Inn, the Don's hideout in Galmair and the Archmage's chamber in Runewick. Then return to Beror."
Description[GERMAN][13] = "Kehre zu Beror zurück."
Description[ENGLISH][13] = "Return to Beror."
Description[GERMAN][14] = "Geh zu Beror Oakaxe, der sich im Quartiermeisters Laden von Cadomyr aufhält. Er hat bestimmt noch eine Aufgabe für dich."
Description[ENGLISH][14] = "Go back to Beror Oakaxe in the Quartermaster Store of Cadomyr, he certainly have another task for you."
Description[GERMAN][15] = "Besorge zwanzig Naldorholzbretter und bringe sie Beror. Du kannst sie bei einem Händler kaufen oder säge Naldorholz mit der Säge in der Hand bei der Werkbank zu Brettern. Werkbänke findest du in Runewick oder Galmair."
Description[ENGLISH][15] = "Produce twenty naldor wood boards and bring them to Beror. You can buy them from a merchant or saw naldor wood into boards by using a workbench as you stand in front of it, with the saw in your hand. You can find workbenches in Runewick or Galmair."
Description[GERMAN][16] = "Geh zu Beror Oakaxe, der sich im Quartiermeisters Laden von Cadomyr aufhält. Er hat bestimmt noch eine Aufgabe für dich."
Description[ENGLISH][16] = "Go back to Beror Oakaxe in the Quartermaster Store of Cadomyr, he certainly have another task for you."
Description[GERMAN][17] = "Besorge ein Eisvogelamulett, einen Erzmagierring und eine Vase und bringe sie Beror. Du kannst sie bei einem Händler kaufen oder sie als Glasbläser oder Goldschmied herstellen. Dazu nimmst du den Feinschmiedhammer in die Hand und benutzt ihn, während du vor einem Amboss stehst und das Glasblasrohr, während du vor einem Glasschmelzofen stehst"
Description[ENGLISH][17] = "Produce a charm of the icebird, a ring of the archmage and a vase and bring them to Beror. You can buy them from a merchant or produce them as glass blower or a goldsmith. Therefor using the finesmithing hammer in your hand, while standing in front of an anvil or using the glass blow pipe in your hand, while standing in front of an glass melting oven."
Description[GERMAN][18] = "Du hast alle Aufgaben von Beror Oakaxe erfüllt."
Description[ENGLISH][18] = "You have fulfilled all the tasks for Beror Oakaxe."


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(135, 620, 0), position(125, 566, 0)} -- statue
QuestTarget[2] = {position(135, 620, 0)} 
QuestTarget[3] = {position(135, 620, 0)} 
QuestTarget[4] = {position(135, 620, 0), position(107, 556, 0), position(122, 544, 0), position(114, 635, 0)} -- notary's office, the palace and the gate
QuestTarget[5] = {position(135, 620, 0)} 
QuestTarget[6] = {position(135, 620, 0)} 
QuestTarget[7] = {position(135, 620, 0), position(123, 614, 0), position(143, 586, 0)} -- Händler,Schmelzofen
QuestTarget[8] = {position(135, 620, 0)} 
QuestTarget[9] = {position(135, 620, 0), position(136, 696, 0), position(261, 678, 0), position(236, 439, 0), position(471, 795, 0)} --Candour Foundation, the Circle of Blood, the northern bridge and the eastern border
QuestTarget[10] = {position(135, 620, 0)} 
QuestTarget[11] = {position(135, 620, 0)} 
QuestTarget[12] = {position(135, 620, 0), position(698, 314, 0), position(347, 229, 0), position(903, 769, 2)} -- Hanfschlinge,Galmair,Runewick
QuestTarget[13] = {position(135, 620, 0)} 
QuestTarget[14] = {position(135, 620, 0)} 
QuestTarget[15] = {position(135, 620, 0), position(896, 816, 1), position(902, 825, 0), position(367, 277, 0), position(382, 269, 0)} --händler,werkbank
QuestTarget[16] = {position(135, 620, 0)} 
QuestTarget[17] = {position(135, 620, 0), position(125, 603, 0), position(143, 586, 0), position(138, 589, 0)} --händler,Schmelzofen,amboss
QuestTarget[18] = {position(135, 620, 0)} 


-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 18


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