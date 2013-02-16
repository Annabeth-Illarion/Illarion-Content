-- INSERT INTO quests SET qst_script = 'quest.charwis_irongate_702_galmair' WHERE qst_id = 702;

require("base.common")
module("quest.charwis_irongate_702_galmair", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Nachrichten Überbringen"
Title[ENGLISH] = "Message Delivery"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Charwis Irongate bat dich eine Nachricht an Nik Nilo zu �berbringen, einem H�ndler in Galmair der seine Waren auf dem Marktplatz in Galmair verkauft."
Description[ENGLISH][1] = "Charwis Irongate asked you to bring a message Nik Nilo, a merchant in Galmair who sells his good on the Galmair marketplace."
Description[GERMAN][2] = "Du solltest zu Charwis Irongate gehen und dir deine Belohnung f�r deinen Dienst abzuholen."
Description[ENGLISH][2] = "You should talk to Charwis Irongate again to collect the reward for your service."
Description[GERMAN][3] = "Rede erneut mit Charwis Irongate, er hat sicher noch eine Aufgabe f�r dich."
Description[ENGLISH][3] = "Talk to Charwis Irongate again, he probably has another task for you to do."
Description[GERMAN][4] = "Morri, ein H�ndler auf dem Marktplatz von Galmair, hat N�gel bei Charwis Irongate bestellt. Frag ihn ob er die Bestellung noch haben m�chte."
Description[ENGLISH][4] = "Morri, a merchant on the Galmair marketplace, ordered pins from Charwis Irongate. Ask him if he still wants his order."
Description[GERMAN][5] = "Du solltest zu Charwis Irongate gehen und dir deine Belohnung f�r deinen Dienst abzuholen."
Description[ENGLISH][5] = "You should talk to Charwis Irongate again to collect the reward for your service."
Description[GERMAN][6] = "Rede erneut mit Charwis Irongate, er hat sicher noch eine Aufgabe f�r dich."
Description[ENGLISH][6] = "Talk to Charwis Irongate again, he probably has another task for you to do."
Description[GERMAN][7] = "Gretel Goldhair hat vielleicht die Hammersammlung von Charwis Irongate entsorgt. Frag sie danach."
Description[ENGLISH][7] = "Gretel Goldhair might have trown away the colleection of hammers of Charwis Irongate. Ask her about it."
Description[GERMAN][8] = "Du solltest zu Charwis Irongate gehen und dir deine Belohnung f�r deinen Dienst abzuholen."
Description[ENGLISH][8] = "You should talk to Charwis Irongate again to collect the reward for your service."
Description[GERMAN][9] = "Rede erneut mit Charwis Irongate, er hat sicher noch eine Aufgabe f�r dich."
Description[ENGLISH][9] = "Talk to Charwis Irongate again, he probably has another task for you to do."
Description[GERMAN][10] = "Charwis Irongate bat dich, den gro�en Goldnugget zu nehmen und ihn Pheritaleth aus Cadomyr zu zeigen um seine Ehre zu verteildigen."
Description[ENGLISH][10] = "Charwis Irongate asked you to show the big gold nugget to Pheritaleth of Cadomyr to restore his honor."
Description[GERMAN][11] = "Du solltest zu Charwis Irongate gehen und dir deine Belohnung f�r deinen Dienst abzuholen."
Description[ENGLISH][11] = "You should talk to Charwis Irongate again to collect the reward for your service."
Description[GERMAN][12] = "Rede erneut mit Charwis Irongate, er hat sicher noch eine Aufgabe f�r dich."
Description[ENGLISH][12] = "Talk to Charwis Irongate again, he probably has another task for you to do."
Description[GERMAN][13] = "Bringe Elvaine Morgan, der F�hrer von Runewick, den Stab der Luft zur�ck den Charwis Irongate gefunden hat."
Description[ENGLISH][13] = "Bring back the wand of air, which Charwis Irongate found, back to Elvaine Morgan, the leader of Runewick."
Description[GERMAN][14] = "Du solltest zu Charwis Irongate gehen und dir deine Belohnung f�r deinen Dienst abzuholen."
Description[ENGLISH][14] = "You should talk to Charwis Irongate again to collect the reward for your service."
Description[GERMAN][15] = "Du hast alle Aufgaben von Charwis Irongate erf�llt."
Description[ENGLISH][15] = "You have fulfilled all tasks of Charwis Irongate."

-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(366, 275, 0)} -- Nik Nilo
QuestTarget[2] = {position(360, 281, 0)}
QuestTarget[3] = {position(360, 281, 0)}
QuestTarget[4] = {position(353, 266, 0)} -- Morri
QuestTarget[5] = {position(360, 281, 0)}
QuestTarget[6] = {position(360, 281, 0)}
QuestTarget[7] = {position(341, 218, 0)} -- Gretel Goldhair
QuestTarget[8] = {position(360, 281, 0)}
QuestTarget[9] = {position(360, 281, 0)}
QuestTarget[10] = {position(111, 599, 0)} -- Pheritaleth
QuestTarget[11] = {position(360, 281, 0)}
QuestTarget[12] = {position(360, 281, 0)}
QuestTarget[13] = {position(898, 775, 2)} -- Elvaine Morgan
QuestTarget[14] = {position(360, 281, 0)}
QuestTarget[15] = {position(360, 281, 0)}

-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 15


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
