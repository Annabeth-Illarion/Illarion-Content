--------------------------------------------------------------------------------
-- NPC Name: Lotta Medborgar                                          Galmair --
-- NPC Job:  hunter                                                           --
--                                                                            --
-- NPC Race: dwarf                      NPC Position:  393, 326, -5           --
-- NPC Sex:  female                     NPC Direction: south                  --
--                                                                            --
-- Author:   envi                                                             --
--                                                       easyNPC Parser v1.23 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (1, 393, 326, -5, 4, 'Lotta Medborgar', 'npc.lotta_medborgar', 1, 9, 0, 255, 215, 0, 238, 203, 173);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.state")
require("npc.base.condition.town")
require("npc.base.consequence.attribute")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.consequence.state")
require("npc.base.talk")
module("npc.lotta_medborgar", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Lotta Medborgar the hunter. Keywords: Question, information, Galmair, places."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Lotta Medborgar die J�gerin. Schl�sselw�rter: Auskunft, Information, Galmair, Orte."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(630, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest End] You received 10 silvercoins and 5 rankpoints."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(630, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Good day. Finally you found me! Iradona has already informed me about your visit. There you have some silvercoins for that you found me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(630, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest Ende] Du hast 10 Silberst�cke und 5 Rangpunkte erhalten."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(630, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Tach. Endlich hast du mich gefunden. Iradona hat mich bereits informiert �ber deinen Besuch. Hier hast du deine wohlverdienten M�nzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(630, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest End] You received 10 silvercoins."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(630, "=", 2));
talkEntry:addResponse("Good day. Finally you found me! Iradona has already informed me about your visit. There you have some silvercoins for that you found me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(630, "=", 1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest Ende] Du hast 10 Silberst�cke erhalten."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(630, "=", 2));
talkEntry:addResponse("Tach. Endlich hast du mich gefunden. Iradona hat mich bereits informiert �ber deinen Besuch. Hier hast du deine wohlverdienten M�nzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addTrigger("Good night");
talkEntry:addResponse("Good day, my dear. Can I help you with some information?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Guten Morgen");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Gute Nacht");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addTrigger("Mohltied");
talkEntry:addResponse("Tach, die Herrschaft, darf ich behilflich sein mit einer Auskunft?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Good day, my dear. Can I help you with some information?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Tach, die Herrschaft, darf ich behilflich sein mit einer Auskunft?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("See ya soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Und servus, bis bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("See ya soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Und servus, bis bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("My head hurts, because of these thousand of questions of the people of Galmair here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Mein Kopf schmerzt von der vielen Fragerei der Leute von Galmair hier.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Lotta Medborgar the hunter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Lotta Medborgar die J�gerin");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("inform");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"));
talkEntry:addResponse("I can give you information about places near of Galmair. Just ask me!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("inform");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Ich kann dir Informationen zu den Orten in der N�he von Galmair geben. Frag einfach!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("question");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"));
talkEntry:addResponse("I can give you information about places near of Galmair. Just ask me!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frage");
talkEntry:addTrigger("Auskunft");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Ich kann dir Informationen zu den Orten in der N�he von Galmair geben. Frag einfach!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("place");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"));
talkEntry:addResponse("Places? Which places do you mean? These could be in the northeast, northwest, southwest or southeast of Illarion?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Orte");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Orte? Welche Orte meinst du? Diese k�nnten sein im Nordosten, Nordwesten, S�dwesten oder S�dosten von Illarion?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Iradona");
talkEntry:addTrigger("Goldschein");
talkEntry:addResponse("You can find her outside of the town close to the teleporter. She has a lot of information and some tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Iradona");
talkEntry:addTrigger("Goldschein");
talkEntry:addResponse("Du findest sie drau�en vor der Stadt, nahe am Teleporter. Sie hat eine Menge Informationen und Auftr�ge f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Nothing to do for you yet but soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich habe nichts f�r dich zu tun momentan aber bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Nothing to do for you yet but soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich habe nichts f�r dich zu tun momentan aber bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Illarion");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Northeast, northwest, southwest, southeast"));
talkEntry:addResponse("This land is called Illarion and I divide it into northeast, northwest, southwest and southeast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Illarion");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Dieses Land wird Illarion genannt und ich unterteile sie in in Nordost, Nordwest, S�dwest und S�dost.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("northeast");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, Insurmountable Limes, Evilrock, Three Fingertips, Wulfgorda."));
talkEntry:addResponse("I know following places: Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, The Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, The Insurmountable Limes, Evilrock, Three Fingertips. But for more detailed information ask Wulfgorda at the Hemp Necktie Inn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nordost");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Elstree Wald, Elstree Ebene, Ostland, Schulterplatte Insel, Todes Sumpf, Spinnen Maul, Gasthof zur Hanfschlinge, Grenzstrom, Gl�hender Fluss, Ebenen der Stille, N�rdliche W�lder, Un�berwindbarer Limes, B�ser Fels, Dreifingerspitzen, Wulfgorda."));
talkEntry:addResponse("Dort gibt es: Elstree Wald, Elstree Ebene, Ostland, Schulterplatte Insel, Todes Sumpf, Spinnen Maul, Gasthof zur Hanfschlinge, Grenzstrom, Gl�hender Fluss, Ebenen der Stille, N�rdliche W�lder, Un�berwindbarer Limes, B�ser Fels, Dreifingerspitzen. Aber f�r ausf�hrlichere Informationen frage Wulfgorda beim Gasthof zur Hanfschlinge.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("northwest");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Lake Syrita, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau, Malachite creek, Malachite Island, Golden Rumil, Fort Schnellbeil, Fortress Hammerfall"));
talkEntry:addResponse("I know following places: Lake Syrita, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau, Malachite creek, Malachite Island, Galmair Plateau, Golden Rumil, Fort Schnellbeil, Fortress Hammerfall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nordwest");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] See Syrita, Narguns Ebene, Der Sumpf, Tempel der F�nf, Einsame Berge, Galmair Hochebene, Malachit Bach, Malachit Insel, Goldener Rumil, Fort Schnellbeil, Festung Hammerfall"));
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: See Syrita, Narguns Ebene, Der Sumpf, Tempel der F�nf, Einsame Berge, Galmair Hochebene, Malachit Bach, Malachit Insel, Galmair Plateau, Goldener Rumil, Fort Schnellbeil, Festung Hammerfall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("southwest");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Katanbi Desert, Katanbi Delta, Western Katanbi Desert, Ruzuss."));
talkEntry:addResponse("I know following places: Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Katanbi Desert, Katanbi Delta, Western Katanbi Desert. But for more detailed information ask Ruzuss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("S�dwest");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Schattenland, Wichtkanal, Wachwald, Gro�er Ozean, Grenzberge, Katanbi W�ste, Katanbi Delta, Westliche Katanbi W�ste, Ruzuss."));
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schattenland, Wichtkanal, Wachwald, Gro�er Ozean, Grenzberge, Katanbi W�ste, Katanbi Delta, Westliche Katanbi W�ste. Aber f�r ausf�hrlichere Informationen frage Ruzuss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("southeast");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps, Yewdale, Numila Irunnleh."));
talkEntry:addResponse("I know following places: Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps, Yewdale. But for more detailed information ask Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("S�dost");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Schlangenkopfbucht, Einsame Inseln, Todes Gestank, Drachenh�hle, Frische S�mpfe, Eibental, Numila Irunnleh."));
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schlangenkopfbucht, Einsame Inseln, Todes Gestank, Drachenh�hle, Frische S�mpfe, Eibental. Aber f�r ausf�hrlichere Informationen frage Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Forest");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Wald");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Plain");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Ebene");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eastland");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ostland");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Pauldron");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schulterplatte");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dead Marsh");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Todes Sumpf");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spider's Mouth");
talkEntry:addTrigger("spiders mouth");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spinnen Maul");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hemp Necktie Inn");
talkEntry:addResponse("The Hemp Necktie Inn is a neutral tavern in the Spider's Mouth and many adventurers are resting there. Among others Wulfgorda. You can use the teleporter to get there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gasthof Hanfschlinge");
talkEntry:addResponse("Der Gasthof zur Hanfschlinge ist eine neutrale Taverne im Spinnen Mund und viele Abenteuerer rasten dort. Unteranderem Wulfgorda. Du kannst den Teleporter verwenden um dort hinzukommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(650, "<", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Wulfgorda");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Try to find Wulfgorda and bring her the sibanac leafs to get your reward."));
talkEntry:addConsequence(npc.base.consequence.item.item(155, 10, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(650, "=", 1));
talkEntry:addResponse("Wulfgorda is a hunter who knows almost each place in the northeast. You can find her infront of the Hemp Necktie Inn. Furthermore, you should bring her these leafs here. *hands some sibanac leafs*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(650, "<", 1));
talkEntry:addTrigger("Wulfgorda");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde Wulfgorda und bringe ihr die Sibanacbl�tter um deine Belohnung zur erhalten."));
talkEntry:addConsequence(npc.base.consequence.item.item(155, 10, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(650, "=", 1));
talkEntry:addResponse("Wulfgorda ist eine J�gerin, welche beinahe jeden Platz im Nordosten kennt. Du findest sie vor dem Gasthaus zur Hanfschlinge. Des weiteren kannst du ihr auch gleich diese Bl�tter hier bringen. *�berreicht Sibanac Bl�tter*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Wulfgorda");
talkEntry:addResponse("Wulfgorda is a hunter who knows almost each place in the northeast. You can find her infront of the Hemp Necktie Inn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wulfgorda");
talkEntry:addResponse("Wulfgorda ist eine J�gerin, welche beinahe jeden Platz im Nordosten kennt. Du findest sie vor dem Gasthaus zur Hanfschlinge.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bounding Stream");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grenzstrom");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Glowing River");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gl�hender Fluss");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Plains Silence");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ebenen Stille");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Northern Woods");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("N�rdliche W�lder");
talkEntry:addTrigger("N�rdlichen W�lder");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("The Insurmountable Limes");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Un�berwindbarer Limes");
talkEntry:addTrigger("Un�berwindbare Limes");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Evilrock");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("B�se Fels");
talkEntry:addTrigger("B�ser Fels");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Three Fingertips");
talkEntry:addResponse("Well, as I said, it is in the northeast and you better ask someone who lives there. For example Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dreifingerspitzen");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Snakehead Bay");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schlangenkopfbucht");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lonely Islands");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Einsame Inseln");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Death's Stench");
talkEntry:addTrigger("Deaths stench");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Todes Gestank");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dragon's Lair");
talkEntry:addTrigger("dragons lair");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Drachenh�hle");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dewy Swamps");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frische S�mpfe");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yewdale");
talkEntry:addResponse("Well, as I said, it is in the southeast and you better ask someone who lives there. For example Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eibental");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Numila");
talkEntry:addTrigger("Irunnleh");
talkEntry:addResponse("You can find her in Runewick and she knows several places in the southeast, thus around Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Numila");
talkEntry:addTrigger("Irunnleh");
talkEntry:addResponse("Die findet man in Runewick und die kennt s�mtliche Orte im S�dosten, sprich um Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lake Syrita");
talkEntry:addResponse("Lake Syrita is north from here where you can find the harbour of Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("See Syrita");
talkEntry:addResponse("See Syrita ist im Norden von hier, wo du den Hafen von Galmair finden kannst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("harbour");
talkEntry:addTrigger("harbor");
talkEntry:addResponse("The harbour is west of the Swamp and north of Nargun's Plain.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hafen");
talkEntry:addResponse("Der Hafen ist westlich vom Sumpf und n�rdlich von der Narguns Ebene.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun's Plain");
talkEntry:addTrigger("narguns plain");
talkEntry:addResponse("This is the area east after the Copperbridge over the Malachite Creek between Galmair and Spider's Mouth.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Narguns Ebene");
talkEntry:addResponse("Das ist das Gebiet �stlich der Kupferbr�cke �ber den Malachit Bach zwischen Galmair und dem Spinnen Mund.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Swamp");
talkEntry:addResponse("This is the area north from here after the Blackbridge over the Bounding Stream, where you can also find the harbour of Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sumpf");
talkEntry:addResponse("Das ist das Gebiet n�rdlich der Schwarzbr�cke �ber den Grenzstrom, wo du auch den Hafen von Galmair finden kannst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Temple five");
talkEntry:addResponse("The Temple of the Five is east of the Swamp.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tempel F�nf");
talkEntry:addResponse("Der Tempel der F�nf ist �stlich vom Sumpf");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lonely Mountain");
talkEntry:addResponse("These are the mountains around us.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Einsame Berge");
talkEntry:addResponse("Das sind die Berge um uns.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair Plateau");
talkEntry:addResponse("The Galmair Plateau is south from Galmair and west from the Malachite Mine. You will find the bandits from Fort Schnellbeil there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair Hochebene");
talkEntry:addResponse("Die Galmair Hochebene ist s�dlich von Galmair und westlich der Malachit Mine. Du findest dort die Banditen vom Fort Schnellbeil.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachite creek");
talkEntry:addResponse("The Malachite creek is the water between Galmair and Nargun's Plain. The Copperbridge will help you to cross it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachit Bach");
talkEntry:addResponse("Der Malachit Bach ist das Gew�sser zwischen Galmair und der Narguns Ebene. Die Kupferbr�cke wird dir helfen es zu �berqueren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachite Island");
talkEntry:addResponse("This island is in the south in the middle of the Malachite creek.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachit Insel");
talkEntry:addResponse("Diese Insel is s�dlich von hier in der Mitte des Malachit Bach.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Golden Rumil");
talkEntry:addResponse("The Golden Rumil found a bad end once. The bandits of Fort Schnellbeil threw the good old Rumil into liquid gold. You can find him on the way to Fort Schnellbeil.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Goldener Rumil");
talkEntry:addResponse("Der Goldene Rumil fand einst ein b�ses Ende. Die Banditen vom Fort Schnellbeil warfen den guten alten Rumil in fl�ssiges Gold. Du kannst ihn an deinem Weg zum Fort Schnellbeil finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Fort Schnellbeil");
talkEntry:addResponse("The home of bandits at the Galmair Plateau, led by Uri Schnellbeil. They interrupt our business at the Malachite mine now and then.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fort Schnellbeil");
talkEntry:addResponse("Das Heim von Banditen auf der Glamair Hochebene, gef�hrt von Uri Schnellbeil. Sie behindern unsere Gesch�fte in der Malachit Mine von Zeit zu Zeit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fortress Hammerfall");
talkEntry:addResponse("This fortress has been built by the betrayer Dwyn Axtblatt. You can find it at the north end of the Katanbi Desert.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Festung Hammerfall");
talkEntry:addResponse("Diese Festung wurde erbaut von dem Ver�ter Dwyn Axtblatt. Du kannst sie im Norden der Katanbi W�ste finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Shadowland");
talkEntry:addResponse("Well, as I said, it is in the southwest and you better ask someone who lives there. For example Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schattenland");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wight Canal");
talkEntry:addResponse("Well, as I said, it is in the southwest and you better ask someone who lives there. For example Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wichtkanal");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sentry Forest");
talkEntry:addResponse("Well, as I said, it is in the southwest and you better ask someone who lives there. For example Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wachwald");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Great Ocean");
talkEntry:addResponse("Well, as I said, it is in the southwest and you better ask someone who lives there. For example Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gro�er Ozean");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Border Mountains");
talkEntry:addResponse("Well, as I said, it is in the southwest and you better ask someone who lives there. For example Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grenzberge");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Western Katanbi Desert");
talkEntry:addResponse("Well, as I said, it is in the southwest and you better ask someone who lives there. For example Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Westliche Katanbi W�ste");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi Desert");
talkEntry:addResponse("Well, as I said, it is in the southwest and you better ask someone who lives there. For example Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi W�ste");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Katanbi Delta");
talkEntry:addResponse("Well, as I said, it is in the southwest and you better ask someone who lives there. For example Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi Delta");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzusss in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ruzusss");
talkEntry:addResponse("You can find him in Cadomyr and he knows several places in the southwest, thus around Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ruzusss");
talkEntry:addResponse("Den findet man in Cadomyr und der kennt s�mtliche Orte im S�dwesten, sprich um Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Chapel Five");
talkEntry:addResponse("The Chapel of the Five is on the southern end of the Border Mountains and at the eastern border of Katanbi Desert. Ask Ruzuss in Cadomyr if you cannot find it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kapelle F�nf");
talkEntry:addResponse("Die Kapelle der F�nf ist am s�dlichen Ende der Grenzberge und an der �stlichen Grenze der Katanbi W�ste. Frage Ruzuss in Cadomyr falls du sie nicht finden kannst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Chapel");
talkEntry:addResponse("The Chapel of the Five is on the southern end of the Border Mountains and at the eastern border of Katanbi Desert. Ask Ruzuss in Cadomyr if you cannot find it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kapelle");
talkEntry:addResponse("Die Kapelle der F�nf ist am s�dlichen Ende der Grenzberge und an der �stlichen Grenze der Katanbi W�ste. Frage Ruzuss in Cadomyr falls du sie nicht finden kannst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Nothing to do for you yet but soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich habe nichts f�r dich zu tun momentan aber bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Nothing to do for you yet but soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich habe nichts f�r dich zu tun momentan aber bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("The archmage owns two stones of power. These are an Emerald and a Ruby. They protect Runewick against being beaten by our forces.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Der Erzmagier besitzt zwei Steine der Macht. Einen Smaragd und einen Rubin. Die besch�tzen Runewick vor der �bernahme durch unsere Streitkr�fte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("The archmage owns two stones of power. These are an Emerald and a Ruby. They protect Runewick against being beaten by our forces.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Der Erzmagier besitzt zwei Steine der Macht. Einen Smaragd und einen Rubin. Die besch�tzen Runewick vor der �bernahme durch unsere Streitkr�fte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("That's is the southeast. Follow the road through Nargun's Plain to the Hemp Necktie Inn at the Spider's Mouth and then further southeast. Look for signposts. But be careful. Dangerous way, use better the teleporter outside the town.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Das liegt im S�dosten. Einfach der Stra�e entlang durch die Narguns Ebene zum Gasthof zur Hanfschlinge im Spinnenmaul und dann weiter s�d�stlich. Schau nach Wegschildern. Ist aber ein gef�hrlicher Weg. Verwende besser den Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("The Don owns two stones of power. These are a Sapphire and a Obsidian. They protect us against Runewick and Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Der Don besitzt zwei Steine der Macht. Einen Saphir und einen Obsidian. Die besch�tzen uns vor Runewick und Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("That is here and if you want to know more about it ask Iradona Goldschein at the teleporter outside for further information.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Das ist hier und wenn du mehr dar�ber wissen m�chtest, dann frag Iradona Goldschein beim Teleporter drau�en nach weiterer Information.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("The Queen owns two stones of power. These are a Topaz and an Amethyst. They protect Cadomyr against being beaten by our forces.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Der K�nigin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Die besch�tzen Cadomyr vor der �bernahme durch unsere Streitkr�fte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("The Queen owns two stones of power. These are a Topaz and an Amethyst. They protect Cadomyr against being beaten by our forces.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Der K�nigin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Die besch�tzen Cadomyr vor der �bernahme durch unsere Streitkr�fte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("That's is the southwest. Follow the road trough Nargun's Plain to the Hemp Necktie Inn at the Spider's Mouth and then further southwest. Look for signposts. But be careful. Dangerous way, use better Or use the teleporter outside the town.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Das liegt im S�dwesten. Einfach der Stra�e entlang durch die Narguns Ebene zum Gasthof zur Hanfschlinge im Spinnenmaul und dann weiter s�dwestlich. Schau nach Wegschildern. Ist aber ein gef�hrlicher Weg. Verwende besser den Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Primarly, we pray to three gods in Galmair. They are Irmorom, Nargun and Ronagan of course, my favorite god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Bevorzugt betten wir drei G�tter in Galmair an. Die w�ren Irmorom, Nargun und nat�rlich Ronagan, meine bevorzugte Gottheit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Adron");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elara");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Findari");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("You can find a Temple of him at the west side of Galmair. Just go through Galmair to the Well of Dreams and shortly before Villa Goldvein you will find it in the North. You will find a signpost there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Du kannst den Tempel von ihm auf der Westseite von Galmair finden. Gehe einfach durch Galmair zur Quelle der Tr�ume und kurz vor der Villa Goldader findest du ihn im Norden. Du wirst es am Wegschild sehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "-", 9999));
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "+", 1));
talkEntry:addResponse("#me shoots with her bow and says: 'I warned you, but you did not listen. Face the consequences now!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "-", 9999));
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "+", 1));
talkEntry:addResponse("#me schie�t mit ihren Bogen und spricht: 'Wer nicht h�ren will muss f�hlen! *schie�t mit ihrem Bogen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addResponse("One more word about him and you will have to visit the cross! *bends her bow*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addResponse("Ein weiteres Wort �ber ihn und du wirst das Kreuz aufsuchen m�ssen! *spannt ihren Bogen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("You can find a Temple of him down here at the Scoria Mine. You have to walk through the Flicker Swale and the very end you will find a room with a ladder, climb up and there you are. You will find also signposts to your orientation. And be careful!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Du kannst den Tempel von ihm hier unten in der Schlackengrube finden. Du gehst einfach durch die Schimmersenke zu einem Raum am bitteren Ende, die Leiter dort hoch und schon bist du da. Wegschilder sollten zu sehen sein. Und vorsichtig sein!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("You can find a Temple of him down here at the Scoria Mine. Usually, just follow the signpost there, but unfortunately the corridor is flooded.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Du kannst den Tempel von ihm hier unten in der Schlackengrube finden. Im Prinzip einfach dem Wegschild dort nach. Nur leider ist der Gang gerade geflutet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("If you like to know more about this god ask somone else. For example Iradona Goldschein outside at the teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Wenn du mehr �ber diese Gottheit zu wissen m�chtest, dann fragt jemand anderen. Zum Beispiel Iradona Goldschein drau�en beim Teleporter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("My name sounds better! I hope your questions sound better!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Mein Name klingt besser! Ich hoffe deine Fragen klingen besser!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Lotta");
talkEntry:addTrigger("Medborgar");
talkEntry:addResponse("Yes, that is my name. �ber welche Orte places do you want information?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lotta");
talkEntry:addTrigger("Medborgar");
talkEntry:addResponse("Ja, das ist mein Name. �ber was wollt ihr Information?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("As I see, you can say one word, but what about a whole sentence?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Wie ich merke, kannst du schon ein Wort sagen. Aber wie sieht es mit einem ganzen Satz aus?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("As I see, you can say one word, but what about a whole sentence?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Wie ich merke, kannst du schon ein Wort sagen. Aber wie sieht es mit einem ganzen Satz aus?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Huh, about what places shall I give you information? Do you mind just to ask for help as a first step?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Huh, �ber welche Orte w�nscht ihr Information? Vielleicht begn�gt ihr euch erstmal nach Hilfe zu fragen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Wer etwas �ber die Orte hier in der Umgebung wissen will, soll mich nur nach diesen Orten fragen.", "If someone wants to know something about the places around here, just ask me for these places.");
talkingNPC:addCycleText("#me kratzt sich im Gesicht.", "#me paddles her face.");
talkingNPC:addCycleText("#me blickt herum mit ihren weit ge�ffneten Augen.", "#me looks around with wide opened eyes.");
talkingNPC:addCycleText("#me untersucht ihre R�stung.", "#me examines her armour.");
talkingNPC:addCycleText("#me streichelt ihren Bauch.", "#me pets her belly.");
talkingNPC:addCycleText("#me isst eine Wurst.", "#me eats a sausage.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(2);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Lotta Medborgar die J�gerin.", "This NPC is Lotta Medborgar the hunter.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 2302);
mainNPC:setEquipment(3, 364);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 2727);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 826);
mainNPC:setEquipment(10, 369);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, texttype, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END