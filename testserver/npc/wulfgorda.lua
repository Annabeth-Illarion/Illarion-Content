--------------------------------------------------------------------------------
-- NPC Name: Wulfgorda                                                   Free --
-- NPC Job:  hunter                                                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  685, 315, 0            --
-- NPC Sex:  female                     NPC Direction: west                   --
--                                                                            --
-- Author:   envi                                                             --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 685, 315, 0, 6, 'Wulfgorda', 'npc.wulfgorda', 1, 9, 0, 218, 165, 32, 38, 3, 73);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
module("npc.wulfgorda", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Wulfgorda the hunter. Keywords: Question, information, Places."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Wulfgorda die J�gerin. Schl�sselw�rter: Auskunft, Information, Orte."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(650, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest End  'Find Wulfgorda'] You received 10 silvercoins."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(155, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(650, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("#me tips her helmet. 'Finally you found me! I have already been informed about your visit. There you have some silvercoins for that you found me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(650, "=", 1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest Ende 'Find Wulfgorda'] Du hast 10 Silberst�cke erhalten."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(155, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(650, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Tach. Endlich hast du mich gefunden. Ich wurde bereits informiert �ber deinen Besuch. Hier hast du deine wohlverdienten M�nzen.");
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
talkEntry:addResponse("#me tips her helmet.");
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
talkEntry:addResponse("#me tippt auf ihren Helm.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("#me tips her helmet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("#me tippt auf ihren Helm.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("#me tips her helmet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("#me tippt auf ihren Helm.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("#me tips her helmet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("#me tippt auf ihren Helm.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I have nothing to complain.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Ich kann mich nicht beschweren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Wulfgorda the hunter and I have some information about the places here in the northeast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Wulfgorda die J�gerin und ich habe einige Informationen �ber die Orte hier im Nordosten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("inform");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"));
talkEntry:addResponse("I have information about places here in the northeast for you if you want to know them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("inform");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Ich habe Informationen zu den Orten hier im Nordosten f�r dich wenn du w�nscht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("question");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"));
talkEntry:addResponse("I have information about places here in the northeast for you if you want to know them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frage");
talkEntry:addTrigger("Auskunft");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Ich habe Informationen zu den Orten hier im Nordosten f�r dich wenn du w�nscht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("place");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"));
talkEntry:addResponse("Places? Which places to you mean? These could be in the northeast, northwest, southwest or southeast of Illarion?");
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
talkEntry:addTrigger("Illarion");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Northeast, northwest, southwest, southeast"));
talkEntry:addResponse("This land is called Illarion and I devide it in northeast, northwest, southwest and southeast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Illarion");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Nordosten, Nordwesten, S�dwesten, S�dosten"));
talkEntry:addResponse("Dieses Land wird Illarion genannt und ich unterteile es in in Nordost, Nordwest, S�dwest und S�dost.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("northeast");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, Insurmountable Limes, Evilrock, Three Fingertips."));
talkEntry:addResponse("I know following places: Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, The Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, The Insurmountable Limes, Evilrock, Three Fingertips.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nordost");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Elstree Wald, Elstree Ebene, Ostland, Schulterplatte Insel, Todes Sumpf, Spinnen Maul, Gasthof zur Hanfschlinge, Grenzstrom, Gl�hender Fluss, Ebenen der Stille, N�rdliche W�lder, Un�berwindbarer Limes, B�ser Fels, Dreifingerspitzen."));
talkEntry:addResponse("Dort gibt es: Elstree Wald, Elstree Ebene, Ostland, Schulterplatte Insel, Todes Sumpf, Spinnen Maul, Gasthof zur Hanfschlinge, Grenzstrom, Gl�hender Fluss, Ebenen der Stille, N�rdliche W�lder, Un�berwindbarer Limes, B�ser Fels, Dreifingerspitzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("northwest");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Lake Syrita, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau, Lotta Medborgar."));
talkEntry:addResponse("I know following places: Lake Syrita, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau. But for more detailed information ask Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nordwest");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] See Syrita, Narguns Ebene, Der Sumpf, Tempel der F�nf, Einsame Berge, Galmair Hochebene, Lotta Medborgar."));
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: See Syrita, Narguns Ebene, Der Sumpf, Tempel der F�nf, Einsame Berge, Galmair Hochebene. Aber f�r ausf�hrlichere Informationen frage Lotta Medborgar in Galmair.");
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
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps Yewdale, Numila Irunnleh."));
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
talkEntry:addResponse("The Elstree Forest is huge and wonderful forest sourth of the Dead Marsh. You find there also Elstree Lake, Fairy's Dance, the Sunken Tower of Mar'ku, Mount Liferoot, and in the south the Den of Thieves.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Wald");
talkEntry:addResponse("Der Elstree Wald ist ein rie�iger und wunderbarer Wald s�dlich vom Todes Sumpf. Dort findest du auch den Elstree See, den Feen Tanz, den Versunken Turm von Mar'ku, Berg Lebenswurzel, und im S�den die Diebesh�hle.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Plain");
talkEntry:addResponse("It is between Igruk's cave and the Elstree Forest. You find the Jarl's Longhouse and the Glolden Hole there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree Ebene");
talkEntry:addResponse("Die ist zwischen Igruk's H�hle und dem Elstree Wald. Du findest dort auch des Jarls Langhaus and das Goldene Loch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eastland");
talkEntry:addResponse("You find it east from the Elstree Forest and there you can find the Eastport, Twin Mountains, Paddock Farm, the Wonderland with the Wishing Fountain and the Naganorium.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ostland");
talkEntry:addResponse("Du findest es �stlich vom Elstree Wald und dort wiederum kannst du den Osthafen, die Zwillingsberge, den Paddock Hof, das Wunderland mit dem Wunschbrunnen und das Naganorium finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Pauldron");
talkEntry:addResponse("The Pauldron Isle is east from Eastland. You find Tanora Ruins, Epphurd's Houses, the Graveyard, Skewer Drift and the former Pauldron Settlement there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schulterplatte");
talkEntry:addResponse("Die Schulterplatte Insel ist �stlich vom Ostland. Du findest die Tanora Ruinen, Epphurds H�user, den Friedhof, den Spie�stollen und die ehemalige Schulterplattesiedlung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dead Marsh");
talkEntry:addResponse("The Dead Marsh is just south from here over the right arm of the Gloving River. You find the Altar of Hatred, Witch's Cottage, and Bramus Rest there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Todes Sumpf");
talkEntry:addResponse("Der Todes Sumpf ist gleich s�dlich von hier auf der anderen Seite des rechten Arms des Gl�henden Fluss. Du findest dort den Altar der Geha�ten, die Hexen H�te und Bramus Ruhe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spider's Mouth");
talkEntry:addTrigger("Spiders Mouth");
talkEntry:addResponse("This island here is the so called Spider's Mouth. It is very famous for the Hemp Necktie Inn or also known as the neutral tavern. On the eastside you can find a temple of Adron, on the westside the Tears of Lost Love.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spinnen Mund");
talkEntry:addResponse("Diese Insel hier wird das Spinnen Maul genannt. Sie ist ber�mt f�r ihr Gasthof zur Hanfschlinge oder auch bekannt als die neutral Taverne. Am �stlichen Ende findest du einen Tempel f�r Adron, am westlichen Ende die Tr�nen der Verlorenen Liebe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hemp Necktie Inn");
talkEntry:addResponse("The Hemp Necktie Inn *points backwards* is a neutral tavern where travelers take a rest, meet to drink from Bogarte or to spread news and rumors.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gasthof Hanfschlinge");
talkEntry:addResponse("Der Gasthof zur Hanfschlinge *zeigt nach hinten* ist eine neutrale Taverne wo Reisende sich ausrasten, sich auf ein Bier von Borgarte treffen oder um Neuigkeiten oder Ger�chte auszutauschen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bounding Stream");
talkEntry:addResponse("The Bounding Stream is the river that seperates the northeast from the rest of Illarion and where the Glowing River finds it end.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grenzstrom");
talkEntry:addResponse("Der Grenzstrom ist jeder Fluss, der den Nordosten vom Rest von Illarion trennt und wo der Gl�hende Fluss sein Ende findet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Glowing River");
talkEntry:addResponse("The Glowing River comes from the Border Mountains. You find the Glowing Forest and Gate, Death Swath, Fisherman's Hut, Glittering Cave, Elven Ruins, Cherass' Citadel, Gate and Outpost, and Imman's Last Breath on both sides of the river.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gl�hend Fluss");
talkEntry:addResponse("Der Gl�hende Fluss kommt aus den Grenzbergen. Du findest die Gl�henden W�lder und Tor, die Todes Schneise, Fischermann H�tte, Funkelh�hle, Elfenruinen, Cherass Zitadelle, Tor und Au�enposten sowie Immans Letzter Athemzug an beiden Seiten des Flusses.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Plains Silence");
talkEntry:addResponse("The Plains of Silence are north from here and south of the Northern Woods. In the southeast you can find the Sunken Temple and the Carnivore's House there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ebenen Stille");
talkEntry:addResponse("Die Ebene der Stille sind n�rdlich von hier und s�dlich der N�rdlichen W�ldern. Im S�dosten kannst du den Versunkenen Tempel und das Fleischfresser Haus finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Northern Wood");
talkEntry:addResponse("The Northern Woods are north from here as the name suggests and in the middle you can find Raban's Grove.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("N�rdliche W�lder");
talkEntry:addTrigger("N�rdlichen W�lder");
talkEntry:addResponse("Die N�rdlichen W�lder sind wie der Name vermuten l�sst n�rdlich von hier und in der Mitte kann Rabans Hain gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Insurmountable Limes");
talkEntry:addResponse("The Insurmountable Limes is huge wall north from the Northern Woods. Noone has ever crossed them. It is said that you fall down into the nowhere at the other end.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Un�berwindbarer Limes");
talkEntry:addTrigger("Un�berwindbare Limes");
talkEntry:addResponse("Der Un�berwindbare Limes ist eine rie�ige Mauer n�rdlich von den N�rdlichen W�ldern. Niemand hat sie je �berwunden. Es wird gesagt, dass man ins Nirgendwo f�llt wenn man sie �berwindet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Evilrock");
talkEntry:addResponse("The Evilrock is a island north of the Pauldron Isle.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("B�se Fels");
talkEntry:addTrigger("B�ser Fels");
talkEntry:addResponse("Der B�se Fels ist eine Insel n�rdlich der Schulterplatten Insel.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Three Fingertips");
talkEntry:addResponse("The Three Fingertips are little islands in the Snakehead Bay west of the Death's Stenche. You will find the Unconstructed Lighthouse there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dreifingerspitzen");
talkEntry:addResponse("Die Dreifingerspitzen sind kleine Inseln in der Schlangenkopfbucht westlich des Todes Gestank. Du findest den Unvollendeten Leuchtturm dort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Snakehead Coast");
talkEntry:addResponse("It is at the north of the Snakehead Bay and you will find Wilder Island, Demonspring, Cherga's Mouth, Mount Snakehead and the Shrine of Zelphia there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schlangenkopfk�ste");
talkEntry:addResponse("Sie ist im Norden der Schlangenkopfbucht und du findest die Wilder Inseln, D�monenquelle, Chergas Maul, den Schlangenkopfberg und Zelphias Schrein dort.");
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
talkEntry:addTrigger("deaths stench");
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
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("See Syrita");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun's Plain");
talkEntry:addTrigger("narguns plain");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Narguns Ebene");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Swamp");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sumpf");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Temple five");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tempel F�nf");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lonely Mountains");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Einsame Berge");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair Plateau");
talkEntry:addResponse("Well, as I said, it is in the northwest and you better ask someone who lives there. For example Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair Hochebene");
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Lotta");
talkEntry:addTrigger("Medborgar");
talkEntry:addResponse("You can find her in Galmair and she knows several places in the northwest, thus around Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lotta");
talkEntry:addTrigger("Medborgar");
talkEntry:addResponse("Die findet man in Galmair und die kennt s�mtliche Orte im Nordwesten, sprich um Galmair.");
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
talkEntry:addCondition(npc.base.condition.quest.quest(652, "<", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest 'Find Borgate Northoff' started] Find Borgate Northoff and bring him back his mug."));
talkEntry:addConsequence(npc.base.consequence.item.item(1908, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(652, "=", 1));
talkEntry:addResponse("Have you already met Borgate Northoff, the barkeeper of the Hemp Necktie Inn? If not, you can do this while you bring back this mug for me. *smiles and hands over a mug.*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(652, "<", 1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest 'Finde Borgate Northoff' gestartet] Finde Borgate Northoff und bringe ihm seinen Krug zur�ck."));
talkEntry:addConsequence(npc.base.consequence.item.item(1908, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(652, "=", 1));
talkEntry:addResponse("Hast du bereits Borgate Northoff den Gastwirt des Gasthof Hanfschlinge kennengelernt? Falls nicht, dann dann kannst du das gleich dabei erledigen wenn du mir diesen Krug zur�ckbringst. *l�chelt und �berreicht einen Bierkrug*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(652, "<", 1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest 'Find Borgate Northoff' started] Find Borgate Northoff and bring him back his mug."));
talkEntry:addConsequence(npc.base.consequence.item.item(1908, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(652, "=", 1));
talkEntry:addResponse("Have you already met Borgate Northoff, the barkeeper of the Hemp Necktie Inn? If not, you can do this while you bring back this mug for me. *smiles and hands over a mug.*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(652, "<", 1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest 'Finde Borgate Northoff' gestartet] Finde Borgate Northoff und bringe ihm seinen Krug zur�ck."));
talkEntry:addConsequence(npc.base.consequence.item.item(1908, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(652, "=", 1));
talkEntry:addResponse("Hast du bereits Borgate Northoff den Gastwirt des Gasthof Hanfschlinge kennengelernt? Falls nicht, dann dann kannst du das gleich dabei erledigen wenn du mir diesen Krug zur�ckbringst. *l�chelt und �berreicht einen Bierkrug*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Nothing to do for you yet but soon I have plenty of tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich habe nichts f�r dich zu tun momentan aber bald habe ich einige Aufgaben f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Nothing to do for you yet but soon I have plenty of tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich habe nichts f�r dich zu tun momentan aber bald habe ich einige Aufgaben f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("The archmage owns two stones of power. These are an Emerald and a Ruby. They protect Runewick against Galmair and Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Der Erzmagier besitzt zwei Steine der Macht. Einen Smaragd und einen Rubin. Die besch�tzen Runewick vor Galmair und Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("The archmage owns two stones of power. These are an Emerald and a Ruby. They protect Runewick against Galmair and Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Der Erzmagier besitzt zwei Steine der Macht. Einen Smaragd und einen Rubin. Die besch�tzen Runewick vor Galmair und Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick is in the southeast. If you are stupid enough and like to walk there, look for signposts at least. Smart people are using the teleporter anyway.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick ist im S�dosten zu finden. Wenn du dumm genug bist, wirst du dort hin zu Fu� gehen. Aber orientierte dich wenigstens nach dne Wegschildern. Schlaue Leute werden ohnehin den Teleportet ben�tzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("The Don owns two stones of power. These are a Sapphire and a Obsidian. They protect Galmair against Runewick and Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Der Don besitzt zwei Steine der Macht. Einen Saphir und einen Obsidian. Die besch�tzen Galmair vor Runewick und Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair is in the northwest. If you are stupid enough and like to walk there, look for signposts at least. Smart people are using the teleporter anyway.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair ist im Nordwesten zu finden. Wenn du dumm genug bist, wirst du dort hin zu Fu� gehen. Aber orientierte dich wenigstens nach dne Wegschildern. Schlaue Leute werden ohnehin den Teleportet ben�tzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("The Queen owns two stones of power. These are a Topaz and an Amethyst. They protect Cadomyr against Galmair and Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Der K�nigin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Die besch�tzen Cadomyr vor Galmair und Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("The Queen owns two stones of power. These are a Topaz and an Amethyst. They protect Cadomyr against Galmair and Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Der K�nigin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Die besch�tzen Cadomyr vor Galmair und Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr is in the southwest. If you are stupid enough and like to walk there, look for signposts at least. Smart people are using the teleporter anyway.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr ist im S�dwesten zu finden. Wenn du dumm genug bist, wirst du dort hin zu Fu� gehen. Aber orientierte dich wenigstens nach dne Wegschildern. Schlaue Leute werden ohnehin den Teleportet ben�tzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("If you want to know something about gods, than look for priests or ask in one of the towns.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Wenn du etwas �ber die G�tter wissen m�chtest, dann suche einen Priester oder frage jemanden in den St�dten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Hmm... you want some information? But about what?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Hmm... und ihr w�nscht nach Information? Aber welche?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Wulfgorda");
talkEntry:addResponse("Yes, that is my name. About which places do you want information?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wulfgorda");
talkEntry:addResponse("Ja, das ist mein Name. �ber welche Orte wollt ihr Information?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("A bit more precise, please!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Etwas konkreter wenn ich bitten darf!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("A bit more precise, please!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Etwas konkreter wenn ich bitten darf!");
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
talkingNPC:addCycleText("#me untersucht ihren Bogen.", "#me examines her bow.");
talkingNPC:addCycleText("#me isst einen Apfel.", "#me eats an apple.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Wulfgorda die J�gerin.", "This NPC is Wulfgorda the hunter.");
mainNPC:setUseMessage("Du greifst mich besser nicht an.", "You better do not touch me.");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 324);
mainNPC:setEquipment(3, 362);
mainNPC:setEquipment(11, 196);
mainNPC:setEquipment(5, 2708);
mainNPC:setEquipment(6, 322);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 2113);
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