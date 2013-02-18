--------------------------------------------------------------------------------
-- NPC Name: Elesil Daelwon                                          Runewick --
-- NPC Job:  Informant                                                        --
--                                                                            --
-- NPC Race: elf                        NPC Position:  790, 819, 0            --
-- NPC Sex:  female                     NPC Direction: west                   --
--                                                                            --
-- Author:   envi                                                             --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (3, 790, 819, 0, 6, 'Elesil Daelwon', 'npc.elesil_daelwon', 1, 7, 0, 25, 25, 112, 230, 230, 250);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.attribute")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("development.elesil_daelwon", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Elesil Daelwon the informant. Keywords: Question, information, Runewick, building, mission, town."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Elesil Daelwon die Auskunftgeberin. Schl�sselw�rter: Auskunft, Information, Runewick, Geb�ude, Auftrag, Stadt."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(604, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest 'Find Elesil'] You can talk with Elesil now. Ask for 'help' if you do not know what to say! You can also go back to Hummi to collect your reward and come back later."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(604, "=", 2));
talkEntry:addResponse("How can I help you? Do you want any information? Or would you like to have a task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(604, "=", 1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest 'Finde Elesil'] Da kannst nun mit Elesil sprechen. Frage nach 'Hilfe' wenn du nicht wei�t nach was du fragen sollst! Du kannst auch zur�ck zu Hummi gehen um deine Belohnung abzuholen und sp�ter nochmals vorbei kommen."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(604, "=", 2));
talkEntry:addResponse("Wie kann ich euch helfen? W�nscht ihr eine Information? Oder w�nscht ihr eine Aufgabe?");
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
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Hint] Have you already asked her for 'information' or her 'quest'?"));
talkEntry:addResponse("Hail Elara. *Closes her eyes*");
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
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Hinweis] Hast du sie bereits nach 'Information' oder 'Quest' befragt?"));
talkEntry:addResponse("Heil Elara. *Schlie�t ihre Augen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Hint] Have you already asked her for 'information' or her 'quest'?"));
talkEntry:addResponse("Hail Elara. *Closes her eyes*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Hinweis] Hast du sie bereits nach 'Information' oder 'Quest' befragt?"));
talkEntry:addResponse("Heil Elara. *Schlie�t ihre Augen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Au revoir. *Closes her eyes*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Au revoir. *Schlie�t ihre Augen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Au revoir. *Closes her eyes*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Au revoir. *Schlie�t ihre Augen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Fine, fine. *Closes her eyes*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Fein, fein. *Schlie�t ihre Augen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Elesil Daelwon. *Closes her eyes*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Elesil Daelwon. *Schlie�t ihre Augen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("If necessary, I'm an informant. If asked I will tell you about Runewick... the buildings, locations, events, people, history or gods. If you require even more, I have at least one task pending.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Wenn notwendig diene ich als Auskunftsgeberin. In diesem Fall w�rde ich euch �ber Runewick informieren, seine Geb�ude, Orte, Ereignisse, Leute, Geschichte oder G�tter. Und wenn erw�nscht, w�ren auch mindestens eine Aufgabe zu l�sen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("If necessary, I'm an informant. If asked I will inform you about Runewick... the buildings, locations, events, people, history or gods. If you require even more, I have at least one task pending.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Wenn notwendig diene ich als Auskunftsgeberin. In diesem Fall w�rde ich euch �ber Runewick informieren, seine Geb�ude, Orte, Ereignisse, Leute, Geschichte oder G�tter. Und wenn erw�nscht, w�ren auch mindestens eine Aufgabe zu l�sen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("telep");
talkEntry:addResponse("This teleporter here can lead you to Cadomyr, Galmair or the Hemp Necktie Inn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("telep");
talkEntry:addResponse("Dieser Teleporter hier vermag euch nach Cadomyr, Galmair oder zum Gasthof zur Hanfschlinge zu bringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("inform");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] building, location, event, people, history, god, ruler, law."));
talkEntry:addResponse("I have information about the buildings, locations, events, people, history, our ruler, laws and gods of Runewick for you if you want to know them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("inform");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Geb�ude, Orte, Ereignisse, Leute, Geschichte, G�tter, Herrscher, Gesetz."));
talkEntry:addResponse("Ich habe Informationen �ber Geb�ude, Orte, Ereignisse, Leute, Geschichte, unseren Herrscher, Gesetze und die G�tter von Runewick f�r euch wenn ihr w�nscht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("question");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] building, location, event, people, history, god, ruler, law."));
talkEntry:addResponse("I have information about the buildings, locations, events, people, history, our ruler, laws and gods of Runewick for you if you want to know them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frage");
talkEntry:addTrigger("Auskunft");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Geb�ude, Orte, Ereignisse, Leute, Geschichte, G�tter, Herrscher, Gesetz."));
talkEntry:addResponse("Ich habe Informationen �ber Geb�ude, Orte, Ereignisse, Leute, Geschichte, unseren Herrscher, Gesetze und die G�tter von Runewick f�r euch wenn ihr w�nscht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("building");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Market, temple, teleporter, census office, donkey stable, library, Garden of Eldan, Slums, Tomb, towers, Tower of Air, Tower of Fire, Tower of Water, Tower of Earth"));
talkEntry:addResponse("Which building do you mean? Market, temple, teleporter, census office, donkey stable, library, Garden of Eldan, Slums, Tomb, or our towers: Tower of Air, Tower of Fire, Tower of Water or Tower of Earth?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Geb�ude");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Markt, Tempel, Teleporter, Zensusb�ro, Eselstall, Bibliothek, Garten des Eldan, Slums, Gruft, T�rme, Turm der Luft, Turm des Feuers, Turm des Wassers, Turm der Erde"));
talkEntry:addResponse("Welches Geb�ude meint ihr? Markt, Tempel, Teleporter, Zensusb�ro, Eselstall, Bibliothek, Garten des Eldan, Slums, Gruft, oder unsere T�rme, sprich Turm der Luft, Turm des Feuers, Turm des Wassers, Turm der Erde?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("location");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Hinterland, Numila Irunnleh"));
talkEntry:addResponse("Locations? Which locations of the hinterland do you mean? I recommend also talking to a geographer about them. I suggest Numila Irunnleh, who can be found in the Library of Earth.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ort");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Hinterland, Numila Irunnleh"));
talkEntry:addResponse("Orte? Welche Orte des Hinterland meint ihr? Ich empfehle auch mit einen Geograph dar�ber zu sprechen. Ich kann euch eine in der Bibliothek der Erde empfehlen. Sie wird Numila Irunnleh genannt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(620, "<", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Numila");
talkEntry:addTrigger("Irunnleh");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest 'Find Numila' started] Try to find Numila Irunnleh and get your reward."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(620, "=", 1));
talkEntry:addResponse("She is a geographer and can be found in the Library of Earth. She will tell you information about locations outside of Runewick like Yewdale, Bear cave, Snakehead Bay, Illarion, Shadowland and other places you might like to know.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(620, "<", 1));
talkEntry:addTrigger("Numila");
talkEntry:addTrigger("Irunnleh");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest 'Finde Numila' gestartet] Finde Numila Irunnleh und erhalte deine Belohnung."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(620, "=", 1));
talkEntry:addResponse("Sie ist eine Geographin und kann in der Bibliothek der Erde gefunden werden. Sie wird euch �ber Orte wie Eibental, B�renh�hle, Schlangekopfbucht, Illarion, Schattenland und andere Orte informieren �ber die ihr gerne mehr wissen m�chtet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Numila");
talkEntry:addTrigger("Irunnleh");
talkEntry:addResponse("She is a geographer and can be found in the Library of Earth. She will tell you information about locations outside of Runewick like Yewdale, Bear cave, Snakehead Bay, Illarion, Shadowland and other places you might like to know.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Numila");
talkEntry:addTrigger("Irunnleh");
talkEntry:addResponse("Sie ist eine Geographin und kann in der Bibliothek der Erde gefunden werden. Sie wird euch �ber Orte wie Eibental, B�renh�hle, Schlangekopfbucht, Illarion, Schattenland und andere Orte informieren �ber die ihr gerne mehr wissen m�chtet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("people");
talkEntry:addResponse("People? Whom else do you desire to talk with other than our Archmage? I do not think anyone else has more wisdom, therefore do not waste your time with other people and more importantly, do not bother me with questions about them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Leute");
talkEntry:addResponse("Leute? Mit wem au�er dem Erzmagier m�chtet ihr ansonsten sprechen? Ich kenne niemanden der gr��ere Weisheit als er besitzt. Daher verschwendet nicht eure Zeit und �rgert mich nicht mit Fragen �ber andere Leute.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("history");
talkEntry:addResponse("I do not think that you have time to listen to all my knowledge about our history. Therefore, I recommend the history book in our libraries.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Geschichte");
talkEntry:addResponse("Ich denke nicht, dass ihr die Zeit habt all meinem Wissen �ber unsere Geschichte euer Geh�r zu schenken. Daher empfehle ich unser Geschichtsbuch in unseren Bibliotheken.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("event");
talkEntry:addResponse("I do not think that you have time to listen to all my knowledge about events in this place. Therefore, I recommend the history book in our libraries.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ereignis");
talkEntry:addTrigger("Geschehnis");
talkEntry:addResponse("Ich denke nicht, dass ihr die Zeit habt all meinem Wissen �ber s�mtliche stattgefunden Ereignisse euer Geh�r zu schenken. Daher empfehle ich unser Geschichtsbuch in unseren Bibliotheken.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("law");
talkEntry:addResponse("If you can read, I suggest you read the law-book in our libraries. If you cannot read, I suggest to move to either Galmair or Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gesetz");
talkEntry:addResponse("Wenn ihr des Lesen m�chtig seid, dann empfehle ich unser Gesetzesbuch in unseren Bibliotheken. Wenn ihr es nicht seid, dann empfehle ich nach Galmair oder Cadomyr umzuziehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ruler");
talkEntry:addResponse("Our highest advisor is Archmage Elvaine Morgan. He founded this place of wisdom and might be found either in his chamber - the Chamber of the Archmage - or in the Hall of Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Herrscher");
talkEntry:addResponse("Unser h�chster Ratgeber ist Erzmagier Elvaine Morgan. Er hat diesen Ort der Weisheit erschaffen und entweder in seiner Kammer - der Erzmagier Kammer - oder in den Hallen der Elara gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("market");
talkEntry:addResponse("Through the portal after the Lurnord Bridge and you are there *points behind her*.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Markt");
talkEntry:addResponse("Durch das Portal nach der Lurnord Br�cke und ihr seid dort *zeigt hinter sich*.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("temple");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Garden of Eldan, Shrine of Elara, Shrine of Findari, Shrine of Bragon"));
talkEntry:addResponse("Let me think... You can find four here, the Garden of Eldan, Shrine of Elara, Shrine of Findari and Shrine of Br�gon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tempel");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Garten des Eldan, Schrein der Elara, Schrein der Findari, Schrein des Bragon"));
talkEntry:addResponse("Lasst mich nachdenken... Ihr findet hier vier: Garten des Eldan, Schrein der Elara, Schrein der Findari und Schrein des Br�gon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Census");
talkEntry:addResponse("The census office can be found in the Tower of Fire, next to the Library of Fire. You will find Reret Odohir there. He will help you further.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zensusb�ro");
talkEntry:addResponse("Das Zensusb�ro kann im Turm des Feuers neben der Bibliothek des Feuers gefunden werden werden. Man findet dort Reret Odohir. Er wird einem weiterhelfen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Donkey stable");
talkEntry:addTrigger("stable");
talkEntry:addResponse("Right after the Lurnord Bridge. *points behind her*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eselstall");
talkEntry:addTrigger("Stall");
talkEntry:addResponse("Gleich nach der Lurnord Br�cke *zeigt hinter sich*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Garden Eldan");
talkEntry:addTrigger("Eldan Garden");
talkEntry:addResponse("Garden of Eldan is a place which inspires us with wisdom. You can find it if you walk through the portal into the town, on the other side of the Lurnord Bridge, and then take the other red one. There you will also find a shrine of Eldan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Garten Eldan");
talkEntry:addTrigger("Eldan Garten");
talkEntry:addResponse("Der Garten des Eldan ist ein Ort der uns mit Weisheit inspiriert. Ihr findet ihn wenn ihr in die Stadt durch das Portal an der anderen Seite der Lurnord Br�cke reist und dann durch das n�chste, rote, Portal tretet. Dort findet ihr auch einen Schrein f�r Eldan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Slum");
talkEntry:addResponse("The slums are under the market. A Ladder will lead you there. I assume I do not have to explain who lives there? Those who lack knowledge or have spent too much time praising Adron.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Slum");
talkEntry:addResponse("Die Slums k�nnen unter dem Markt gefunden werden. Eine Leiter wird euch dort hinf�hren. Ich nehme an, ich muss euch nicht erkl�ren wer dort lebt. Jene, denen es an Weisheit mangelt und jene, die zu viel Zeit mit dem Huldigungen f�r Adron verbringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tomb");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Room of Light, Room of Darkness, Room of  Twilight"));
talkEntry:addResponse("To reach the tomb you have to pass the market first and then the slums. The tomb is divided in three rooms: Room of Light, Room of Darkness, Room of Twilight.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gruft");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Raum des Lichts, Raum der Finsternis, Raum des Zwielichts"));
talkEntry:addResponse("Um die Gruft zu erreichen m�sst erst zum Markt und dann zu den Slums. Die Gruft ist unterteilt in drei R�ume: Raum des Lichts, Raum der Finsternis, und Raum des Zwielichts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Room Twilight");
talkEntry:addResponse("The Room of Twilight is the place for those who were neither at the top or on the bottom of the god given hierarchy. Gregor, a human whom you should find on your way to the tomb, will tell you more.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Raum Zwielicht");
talkEntry:addResponse("Der Raum des Zwielichts ist der Ort f�r jene welche weder an der Spitze noch am unteren Ende der Hierarchie gelebt haben. Gregor, ein Mensch dem ihr auf euren Weg zur Gruft begegnen werdet, wird euch mehr dar�ber erz�hlen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Room Light");
talkEntry:addResponse("The Room of Light is reserved for those who reached the top of the god given hierarchy. Eldan as well as Elara had a reason to set it this way. Our Archmage knows that and therefore rules according to this divine law.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Raum Lichts");
talkEntry:addResponse("Der Raum des Lichts ist f�r jene an der Spitze der gottgewollten Hierarchie bestimmt. Eldan wie auch Elara hatten ihre Gr�nde daf�r. Unser Erzmagier ist sich dem durchaus bewusst und regiert deswegen auch entsprechend.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Room Darkness");
talkEntry:addResponse("The Room of Darkness is the place for the corpses of those who lived at the bottom of the god given hierarchy. Gregor, a human whom you should find on your way to the tomb, will tell you more.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Raum Finsternis");
talkEntry:addResponse("Der Raum der Finsternis ist jener Ort an denen die Leichen jener aufgehoben werden, welche zuvor an der Sohle der Gesellschaft gelebt haben. Gregor, ein Mensch dem ihr auf euren Weg zur Gruft begegnen werdet, wird euch mehr dar�ber erz�hlen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tower Air");
talkEntry:addTrigger("Air Tower");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Tree kitchen, Library of Air, House of Gods, Shrine of Elara, Shrine of Findari"));
talkEntry:addResponse("This is the first southern tower and is mainly made for priests. You can find the following rooms: Tree kitchen, Library of Air, House of Gods, Shrine of Findari, and Shrine of Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Turm Luft");
talkEntry:addTrigger("Luft turm");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Baumk�che, Bibliothek der Luft, Haus der G�tter, Schrein der Elara, Schrein der Findari"));
talkEntry:addResponse("Dieser Turm ist der erste s�dliche Turm und ist haupts�chlich f�r Priester gebaut worden. Ihr findet folgende R�ume dort: Baumk�che, Bibliothek der Luft, Haus der G�tter, Schrein der Findari, und Schrein der Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tree kitchen");
talkEntry:addResponse("The Tree kitchen is based in the basement of the Tower of Air. You can find cooks there or the possibility for cooking or carpentering yourself.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Baumk�che");
talkEntry:addResponse("Die Baumk�che ist im Keller des Turms der Luft zu finden. Man findet dort K�che beziehungsweise die M�glichkeit zu kochen oder zu schreinern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Library Air");
talkEntry:addTrigger("Air Library");
talkEntry:addResponse("The Library of Air can be found on the second floor of the Tower of Air. Do I have to explain what you can do there? I hope not.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bibliothek Luft");
talkEntry:addTrigger("Luft Bibliothek");
talkEntry:addResponse("Die Bibliothek der Luft kann im ersten Stock des Turms der Luft gefunden werden. Muss ich erkl�ren, was man dort tun kann? Ich hoffe nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("House God");
talkEntry:addTrigger("God House");
talkEntry:addResponse("The House of Gods is based on the fourth floor of the Tower of Air. There you can find items which represent the different gods and information about them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Haus G�tter");
talkEntry:addTrigger("G�tter Haus");
talkEntry:addResponse("Das Haus der G�tter ist lokalisiert im dritten Stock des Turms der Luft. Dort findet ihr Gegenst�nde welche die unterschiedlichen G�tter repr�sentieren sowie Informationen �ber sie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Shrine Elara");
talkEntry:addTrigger("Elara Shrine");
talkEntry:addResponse("The Shrine of Elara can be found on the third floor of the Tower of Air. There you can praise Elara and hope for more wisdom.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schrein Elara");
talkEntry:addTrigger("Elara Schrein");
talkEntry:addResponse("Der Schrein der Elara kann im zweiten Stock des Turms der Luft gefunden werden. Dort k�nnt ihr Elara anbeten und auf mehr Weisheit hoffen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Shrine Findari");
talkEntry:addTrigger("Findari Shrine");
talkEntry:addResponse("The Shrine of Findari can be found on the sixth floor, or rather at the top, of the Tower of Air.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schrein Findari");
talkEntry:addTrigger("Findari Shrine");
talkEntry:addResponse("Der Schrein der Findari kann im f�nften Stock beziehungsweise auf der Spitze des Turms der Luft gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tower Fire");
talkEntry:addTrigger("Fire Tower");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Workshop, Library of Fire, Archmage Chamber, Hall of Elara, Bragon's Stronghold, Shrine of Bragon"));
talkEntry:addResponse("This is the first northern tower and is mainly made for mages. You can find the following rooms: Workshop, Library of Fire, Chamber of the Archmage, Hall of Elara, Bragon's Stronghold and Shrine of Bragon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Turm Feuer");
talkEntry:addTrigger("Feuer Turm");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Werkstatt, Bibliothek des Feuers, Erzmagier Kammer, Halle der Elara, Bragons Bollwerk, Schrein des Bragon"));
talkEntry:addResponse("Dieser Turm ist der erste n�rdliche Turm und ist haupts�chlich f�r Magier gebaut worden. Ihr findet folgende R�ume dort: Werkstatt, Bibliothek des Feuers, Kammer des Erzmagier, Halle der Elara, Bragons Bollwerk und Schrein des Bragon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Workshop");
talkEntry:addResponse("The workshop in the basement of the Tower of Fire offers possibilities for tailors, cooks, glassblowers, and so on. Furthermore, due to Adron's Swill currently being closed, our tavern is also located there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Werkstatt");
talkEntry:addResponse("Die Werkstatt im Erdgeschoss des Turms des Feuers erm�glicht Schneidern, K�chen, Glasbl�sern und so weiter eine M�glichkeit ihrer T�tigkeit nachzugehen. Zus�tzlich ist auch unsere Taverne dort zu finden, da Adrons Ges�ff momentan geschlossen ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Library Fire");
talkEntry:addTrigger("Fire Library");
talkEntry:addResponse("The Library of Fire can be found on the second floor of the Tower of Fire. Do I have to explain what you can do there? I hope not.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bibliothek Feuer");
talkEntry:addTrigger("Feuer Bibliothek");
talkEntry:addResponse("Die Bibliothek des Feuer kann im ersten Stock des Turms des Feuers gefunden werden. Muss ich erkl�ren, was man dort tun kann? Ich hoffe nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Archmage Chamber");
talkEntry:addTrigger("Chamber Archmage");
talkEntry:addResponse("The Chamber of the Archmage can be found on the third floor of the Tower of Fire. It is the private room of our Archmage Elvaine Morgan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier Kammer");
talkEntry:addTrigger("Kammer Erzmagier");
talkEntry:addResponse("Die Kammer des Erzmagier kann im zweiten Stock des Turms des Feuers gefunden werden. Es ist der private Raum unserers Erzmagier Elvaine Morgan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hall Elara");
talkEntry:addTrigger("Elara Hall");
talkEntry:addResponse("The Hall of Elara can be found on the third floor of the Tower of Fire. It serves as an audience chamber or conference room to listen to and meet our Archmage Elvaine Morgan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Halle Elara");
talkEntry:addTrigger("Elara Halle");
talkEntry:addResponse("Die Halle der Elara kann im zweiten Stock des Turms des Feuers gefunden werden. Sie dient als ein Audienzsaal oder Konferenzraum zum h�ren und treffen unseres Erzmagier Elvaine Morgan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon's Stronghold");
talkEntry:addTrigger("Bragons Stronghold");
talkEntry:addResponse("Bragon's Stronghold is on the fourth floor of the Tower of Fire and offers a possibility to improve your combat skills.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragons Bollwerk");
talkEntry:addTrigger("Bragon Bollwerk");
talkEntry:addResponse("Bragon's Bollwerk ist im dritten Stock des Turms des Feuers und erm�glicht jeder Person seine Kampff�higkeiten zu verbessern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Shrine Bragon");
talkEntry:addTrigger("Bragon Shrine");
talkEntry:addResponse("The Shrine of Bragon can be found on the sixth floor, or rather at the top, of the Tower of Fire.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schrein Bragon");
talkEntry:addTrigger("Bragon Schrein");
talkEntry:addResponse("Der Schrein des Bragon kann im f�nften Stock beziehungsweise auf der Spitze des Turms des Feuers gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tower Water");
talkEntry:addTrigger("Water Tower");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Library of Water, Adron's Swill, Hubbub Chamber"));
talkEntry:addResponse("This is the second southern tower and is mainly for bards. You can find the following rooms: Library of Water, Adron's Swill and Hubbub Chamber. Unfortunately, this tower is closed due to an incident you can read about in our history book.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Turm Wasser");
talkEntry:addTrigger("Wasser Turm");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Bibliothek des Wassers, Adrons Ges�ff, L�rmkammer"));
talkEntry:addResponse("Dieser Turm ist der zweite s�dliche Turm und ist haupts�chlich f�r Barden gebaut worden. Ihr findet folgende R�ume dort: Bibliothek des Wassers, Adrons Ges�ff und L�rmkammer. Ungl�cklicherweise ist dieser Turm gesperrt, wie ihr unserem Geschichtsbuch entnehmen k�nnt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Library Water");
talkEntry:addTrigger("Water Library");
talkEntry:addResponse("The Library of Water can be found on the second floor of the Tower of Water, but it is closed along with the rest of the Tower of Water, as you can read in our history book.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bibliothek Wasser");
talkEntry:addTrigger("Wasser Bibliothek");
talkEntry:addResponse("Die Bibliothek des Wassers kann im ersten Stock des Turms des Wassers gefunden werden. Sie ist aber gesperrt wie der ganze Turm des Wassers, wie ihr unserem Geschichtsbuch entnehmen k�nnt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron's Swill");
talkEntry:addTrigger("Adrons Swill");
talkEntry:addResponse("Adron's Swill can be found on the first floor of the Tower of Water and serves as our tavern, but it is closed as along with the rest of the Tower of Water, as you can read in our history book.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adrons Ges�ff");
talkEntry:addTrigger("Adron Ges�ff");
talkEntry:addResponse("Adrons Ges�ff kann im Erdgeschoss des Turms des Wasser gefunden werden und dient als unsere Taverne. Sie ist aber gesperrt wie der ganze Turm des Wasser, wie ihr unserem Geschichtsbuch entnehmen k�nnt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hubbub Chamber");
talkEntry:addTrigger("Chamber Hubbub");
talkEntry:addResponse("The Hubbub Chamber is on the third floor of the Tower of Water and serves as practice room for our bards, but it is closed as along with the rest of the Tower of Water, as you can read in our history book.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("L�rmkammer");
talkEntry:addTrigger("Kammer L�rm");
talkEntry:addResponse("Die L�rmkammer ist im zweiten Stock des Turms des Wassers und dient als �bungsraum f�r unsere Barden. Sie ist aber gesperrt wie der ganze Turm des Wassers, wie ihr unserem Geschichtsbuch entnehmen k�nnt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tower Earth");
talkEntry:addTrigger("Earth Tower");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Library of Earth, Kettle Chamber, Root Chamber, Test Chamber"));
talkEntry:addResponse("This is the second northern tower and is mainly for druids. You can find the following rooms: Library of Earth, Kettle Chamber, Root Chamber, and Test Chamber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Turm Erd");
talkEntry:addTrigger("Erd Turm");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Bibliothek der Erde, Kesselkammer, Wurzelkammer, Versuchskammer"));
talkEntry:addResponse("Dieser Turm ist der zweite n�rdliche Turm und ist haupts�chlich f�r Druiden gebaut worden. Ihr findet folgende R�ume dort: Bibliothek der Erde, Kesselkammer, Wurzelkammer, und Versuchskammer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Library Earth");
talkEntry:addTrigger("Earth Library");
talkEntry:addResponse("The Library of Earth can be found on the second floor of the Tower of Earth. Do I have to explain what you can do there? I hope not.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bibliothek Erd");
talkEntry:addTrigger("Erd Bibliothek");
talkEntry:addResponse("Die Bibliothek der Erde kann im ersten Stock des Turms der Erde gefunden werden. Muss ich erkl�ren, was man dort tun kann? Ich hoffe nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kettle Chamber");
talkEntry:addTrigger("Chamber Kettle");
talkEntry:addResponse("The Kettle Chamber on the fourth floor of the Tower of Earth serves as a conference and study room for druids and alchemists.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kesselkammer");
talkEntry:addTrigger("Kammer Kessel");
talkEntry:addResponse("Die Kesselkammer im dritten Stock im Turm der Erde dient als Konferenz- und Lehrraum f�r die Druiden und Alchemisten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Root Chamber");
talkEntry:addTrigger("Chamber Root");
talkEntry:addResponse("In the Root Chamber on the third floor of the Tower of Earth, druids and alchemists can share their knowledge with their students.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wurzelkammer");
talkEntry:addTrigger("Kammer Wurzel");
talkEntry:addResponse("In der Wurzelkammer im zweiten Stock des Turms der Erde k�nnen Druiden und Alchemisten ihr Wissen mit ihren Studenten teilen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Test Chamber");
talkEntry:addTrigger("Chamber Test");
talkEntry:addResponse("In the Test Chamber on the fist floor of the Tower of Earth, alchemists can work and try their potions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Testkammer");
talkEntry:addTrigger("Kammer Test");
talkEntry:addResponse("In der Versuchskammer im Grundgeschoss des Turms der Erde k�nnen Alchemisten an ihren Tr�nken arbeiten und testen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Versuchskammer");
talkEntry:addTrigger("Kammer Versuch");
talkEntry:addResponse("In der Versuchskammer im Grundgeschoss des Turms der Erde k�nnen Alchemisten an ihren Tr�nken arbeiten und testen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tower");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Tower of Air, Tower of Fire, Tower of Earth, Tower of Water"));
talkEntry:addResponse("There are four towers: Tower of Air, Tower of Fire, Tower of Earth and Tower of Water. You can leave and enter them all at the top as well as the bottom, after you have entered the town through the portal over there. *points over her shoulders*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Turm");
talkEntry:addTrigger("T�rme");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Turm der Luft, Turm des Feuers, Turm der Erde, Turm des Wassers"));
talkEntry:addResponse("Es gibt vier T�rme: Turm der Luft, Turm des Feuers, Turm der Erde und Turm des Wassers. Ihr k�nnt jeden Turm �bers Dach oder durchs Erdgeschoss betreten oder verlassen, nachdem ihr �ber das Portal dort dr�ben die Stadt betreten habt. *zeigt nach hinten*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Library");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Library of Air, Library of Fire, Library of Earth, Library of Water"));
talkEntry:addResponse("Actually, we have four of them, one in each of our four towers: Library of Air, Library of Fire, Library of Earth and Library of Water. Each of them is based in the second floor of their tower. About which one would you like to know more?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bibliothek");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Bibliothek der Luft, Bibliothek des Feuers, Bibliothek der Erde, Bibliothek des Wassers"));
talkEntry:addResponse("Eigentlich haben wir hier vier St�ck. Jeweils eine in unseren vier T�rmen: Bibliothek der Luft, Bibliothek des Feuers, Bibliothek der Erde und Bibliothek des Wassers. Jede von ihnen ist im ersten Stock ihres Turm zu finden. Zu welcher wollt ihr mehr wissen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hinterland");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Keywords] Fire of Triumph, Holy Oak, Woodcutter Camp, Twin Eyes Islands, Oldra's Column, Mermaid, Lurnord bridge"));
talkEntry:addResponse("The Hinterland of Runewick contains following locations: Fire of Triumph, Holy Oak, Woodcutter's Camp, Twin Eyes Islands, Oldra's Column, Lurnord bridge and Mermaid");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hinterland");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Schl�sselw�rter] Feuer des Triumphes, Heilige Eiche, Holzf�ller Lager, Zwillingsaugeninseln, Oldras S�ule, Meerjungfrau, Lurnord Br�cke"));
talkEntry:addResponse("Das Hinterland von Runewick enth�lt folgende Orte: Feuer des Triumphes, Heilige Eiche, Holzf�ller Lager, Zwillingsaugeninseln, Oldras S�ule, Lurnord Br�cke und Meerjungfrau");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fire Triumph");
talkEntry:addTrigger("Triumph Fire");
talkEntry:addResponse("It can be found o the north after the Lurnord Bridge and the Holy Oak. This place reminds us of our involvement and victory in a campaign between Cadomyr and Galmair. Unfortunately, some actions went wrong.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Feuer Triumph");
talkEntry:addTrigger("Triumph Feuer");
talkEntry:addResponse("Dieser Ort kann n�rdlich nach der Lurnord Br�cke und der Heiligen Eiche gefunden werden und erinnert an unsere Einflussnahme und unseren Sieg in einer Auseinandersetzung zwischen Cadomyr und Galmair. Leider ging einiges schief.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Holy Oak");
talkEntry:addResponse("This is a holy and very old tree found to the north after the Lurnord Bridge. You will find more information there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Heilige Eiche");
talkEntry:addResponse("Das ist ein heiliger und sehr alter Baum n�rdlich nach der Lurnord Br�cke. Dort werdet ihr weitere Informationen finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Woodcutter's Camp");
talkEntry:addTrigger("Woodcutters Camp");
talkEntry:addResponse("This place can be found to the south after the Lurnord Bridge and is a camp for lumberjacks.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Holzf�ller Lager");
talkEntry:addResponse("Dieser Ort kann s�dlich nach der Lurnord Br�cke gefunden werden und ist ein Lager f�r Holzf�ller.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Twin Eyes");
talkEntry:addResponse("This place is far south of here *points first to the bridge and then to the south*. Two islands, which... uhh... I forget, but you will find what you want to know there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zwillingsaugen");
talkEntry:addResponse("Dieser Ort ist ganz im S�den *zeigt erst zur Br�cke und dann in den S�den*. Zwei Inseln, welche...uhh... ich hab es vergessen, aber ihr werdet herausfinden was ihr zu wissen w�nscht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra's Column");
talkEntry:addTrigger("Oldras Column");
talkEntry:addResponse("This place can be found to the south of here *points first to the bridge and then to the south*. Some information about Oldra and what she likes awaits you. Look for the column and trees over there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldras S�ule");
talkEntry:addResponse("Dieser Ort kann im S�den von hier aus gefunden werden *zeigt erst zur Br�cke und dann in den S�den*. Einige Informationen �ber Oldra und Dinge die sie mag warten dort auf euch. Haltet Ausschau nach der S�ule und den B�umen dort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mermaid");
talkEntry:addResponse("Just follow the west coast to the south after the Lurnord Bridge and you will find this place with a statue of a beautiful woman. This place is also used by fishers who are waiting to get in touch with the mermaid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Meerjungfrau");
talkEntry:addResponse("Folget der Westk�ste in den S�den nach der Lurnord Br�cke und ihr werdet diesen Ort mit einer Statue einer sch�nen Frau finden. Dieser Ort ist auch von vielen Fischern verwendet, die auf die Meerjungfrau warten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lurnord bridge");
talkEntry:addResponse("This is the bridge between Runewick and Yewdale here *points at the bridge*. It was destroyed years ago after a war with Galmair and rebuilt by a friend of mine who left afterwards. Lunord was his name.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lurnord Br�cke");
talkEntry:addResponse("Das ist die Br�cke zwischen Runewick und hier dem Eibental *zeigt zur Br�cke*. Sie war einige Jahre zuvor zerst�rt durch einen Krieg mit Galmair und wurde von einen Freund von mir wiederaufgebaut, welch nun gegangen ist. Sein Name war Lunord.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(620, "<", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest 'Find Numila' started] Try to find Numila Irunnleh and get your reward."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(620, "=", 1));
talkEntry:addResponse("I do not have a task for you yet. Probably in two or three months. If you like you can try to find Numila Irunnleh, but if you desire a real task you would be better asking other people in Runewick. *points over her shoulder* Otherwise, you are very welcome to come back in two or three months when I will definitely have some tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(620, "<", 1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest 'Finde Numila' gestartet] Finde Numila Irunnleh und erhalte deine Belohnung."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(620, "=", 1));
talkEntry:addResponse("Ich habe momentan nichts f�r euch zu tun. Wahrscheinlich in zwei oder drei Monaten. Falls ihr m�chtet k�nnt ihr versuchen Numila Irunnleh zu finden. Aber wenn ihr einen richtigen Auftrag erw�nscht dann solltet ihr besser die Leute in Runewick fragen. *zeigt �ber ihre Schulter* In jeden Fall seid ihr herzlich willkommen in zwei oder drei Monaten zur�ck zu kommen. Da sollte ich dann einige Aufgaben f�r euch haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(620, "<", 1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest 'Find Numila' started] Try to find Numila Irunnleh and get your reward."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(620, "=", 1));
talkEntry:addResponse("I do not have a task for you yet. Probably in one or two months.  If you like you can try to find Numila Irunnleh, but if you desire a real task you would be better asking other people in Runewick. *points over her shoulder* Otherwise, you are very welcome to come back in two or three months when I will have definitely some tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(620, "<", 1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest 'Finde Numila' gestartet] Finde Numila Irunnleh und erhalte deine Belohnung."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(620, "=", 1));
talkEntry:addResponse("Ich habe momentan nichts f�r euch zu tun. Wahrscheinlich in zwei oder drei Monaten. Falls ihr m�chtet k�nnt ihr versuchen Numila Irunnleh zu finden. Aber wenn ihr einen richtigen Auftrag erw�nscht dann solltet ihr besser die Leute in Runewick fragen. *zeigt �ber ihre Schulter* In jeden Fall seid ihr herzlich willkommen in zwei oder drei Monaten zur�ck zu kommen. Da sollte ich dann einige Aufgaben f�r euch haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("As I said, you should ask other people in Runewick. *points over her shoulder* Or you come back in two or three months when I will have definitely some tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Wie ich sagte, ihr solltet besser die Leute in Runewick fragen. *zeigt �ber ihre Schulter* Oder ihr kommt in zwei oder drei Monaten zur�ck. Da sollte ich dann einige Aufgaben f�r euch haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("As I said, you should ask other people in Runewick. *points over her shoulder* Or you come back in two or three months when I will have definitely some tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Wie ich sagte, ihr solltet besser die Leute in Runewick fragen. *zeigt �ber ihre Schulter* Oder ihr kommt in zwei oder drei Monaten zur�ck. Da sollte ich dann einige Aufgaben f�r euch haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("town");
talkEntry:addResponse("There are three towns: Our town Runewick, ruled by our great leader Elvaine Morgan. Then the two foolish towns of Galmair and Cadomyr, ruled by Don Valerio Guilianni and Queen Rosaline Edwards.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("stadt");
talkEntry:addResponse("Es gibt drei St�dte: Unsere Stadt Runewick, gef�hrt von unserem Herrscher Elvaine Morgan. Dann diese zwei n�rrischen St�dte Galmair und Cadomyr, gef�hrt von Don Valerio Guilianni und K�nigin Rosaline Edwards.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Our leader can be found in the Hall of Elara, in the Fire Tower, if you want to talk with him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Unser Herrscher kann in der Halle der Elara im Turm des Feuers gefunden werden, wenn ihr ihn zu sprechen w�nscht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Our leader can be found in the Hall of Elara, in the Fire Tower, if you want to talk with him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Unser Herrscher kann in der Halle der Elara im Turm des Feuers gefunden werden, wenn ihr ihn zu sprechen w�nscht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("That is here and if you want to know more about it ask me for further information.");
talkEntry:addResponse("Here at Runewick, we are interested in alchemists, candle makers, carpenters, lumberjacks, cooks, bakers, farmers, herb gatherers, or tailors, tanners and dyers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Das ist hier und wenn du mehr dar�ber wissen m�chtest, dann frag mich nach weiterer Information.");
talkEntry:addResponse("Hier in Runewick suchen wir immer nach Alchemisten, Kerzenmacher, Schreiner, Holzf�ller, Koch, B�cker, Bauer, Kr�utersammler, Schneider, Gerber oder F�rber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("I do not want to talk about him, but you will find him in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Ich will nicht �ber ihn sprechen, aber er kann in Galmair gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("There are not many reasons to travel there. Exceptions are if you look for blacksmiths, brick makers, masons, miners, and brewers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Es gibt nicht viele Gr�nde dorthin zu reisen. Es sei den ihr sucht nach einen Schmied, Ziegelmacher, Steinmetz, Sch�rfer oder Brauer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("I do not want to talk about her, but you will find her in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Ich will nicht �ber ihn sprechen, aber er kann in Galmair gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("I do not want to talk about her, but you will find her in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ich will nicht �ber ihn sprechen, aber er kann in Galmair gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("There are not many reasons to travel there. Exceptions are if you look for fishermen, glass blowers, diggers, finesmiths, and gem grinders.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Es gibt nicht viele Gr�nde dorthin zu reisen. Es sei den ihr sucht nach einen Fischer, Glasbl�sser, Gr�ber, Goldschmied oder Edelsteinschleifer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("You better try your luck at our marketplace here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ihr versucht besser euer Gl�ck auf unserem Marktplatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("If necessary I will inform you about Runewick, the buildings, places, events, people, history or gods. If you require even more, I have at least one task pending.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Falls notwendig w�rde ich euch �ber Runewick informieren, seine Geb�ude, Orte, Ereignisse, Leute, Geschichte oder G�tter. Und wenn erw�nscht, w�ren auch mindestens eine Aufgabe zu l�sen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Primarly, we pray to three Gods in Runewick. They are Adron, Oldra and Elara of course, my favorite God.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Bevorzugt betten wir drei G�tter in Runewick an. Die w�ren Adron, Oldra und nat�rlich Elara, meine bevorzugte Gottheit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Adron's followers are mostly tavern keepers or wine growers, some bards too. They believe that when they die, there will be an orgy that lasts forever, and the really bad or evil ones will be condemned to be servants until they are enlightened.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Seine Anh�nger sind meistens Gastwirte oder Weinbauern. Auch einigen Barden. Sie glauben, wenn sie sterben, wird es eine Orgie zu ihren Ehren geben, die niemals enden wird. Solche, die in S�nde gelebt haben, werden verurteilt, als Diener zu leben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("One of the Elder Gods, he is also known as God of Fire. There is a shrine at the top of the Tower of Fire.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Einer der alten G�tter. Er ist auch als Gott des Feuers bekannt. Es gibt einen Schrein auf der Spitze des Turms des Feuers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Goddess of Spirits and the Underworld. She likes Balance and justice. She does not care much about the living.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Die G�ttin der Geister und der Unterwelt. Sie steht ein f�r ausgeglichene Gerechtigkeit. Sie gibt nicht viel auf das Leben an sich, der Tod ist Ihr Reich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Her followers believe in the power of wisdom. Some of these people are praying to be told great secrets, or even the secret of life. As legend tells, one holy man has been told it after long prayers and discussions with the Goddess.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Ihre Anh�nger glauben an die Macht der Weisheit. Einige dieser Anh�nger beten, um geheimes und altes Wissen zu erlangen oder um den Sinn des Lebens zu erfahren. Eine Legende erz�hlt von einem Mann, der so lange betete, bis sich ihm dies offenbarte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("One of the Elder Gods, he is also known as God of Spirit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Einer der alten G�tter. Er ist auch bekannt als Gott des Geists.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Findari");
talkEntry:addResponse("One of the Elder Gods, she is also known as Goddess of Air. There is a shrine at the top of the Tower of Air.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Eine der alten G�tter. Sie ist auch als G�ttin der Luft bekannt. Es gibt einen Schrein auf der Spitze des Turms der Luft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("One of the unimportant, Younger Gods. You can find followers in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Einer der unwichtigen, j�ngeren G�tter. Man kann Anh�nger in Galmair finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("One of the unimportant, Younger Gods. You can find followers in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Einer der unwichtigen, j�ngeren G�tter. Man kann Anh�nger in Cadomyr finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "-", 6666));
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "+", 1));
talkEntry:addResponse("#me narrows her eyes and takes a blade which she swings immediately without a single word against her opposition.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "-", 6666));
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "+", 1));
talkEntry:addResponse("#me verengt ihre Augen, zieht ein Schwert und schl�gt sogleich ohne ein einzelnes Wort damit herum.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("One of the unimportant, Younger Gods. You can find followers in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Einer der unwichtigen, j�ngeren G�tter. Man kann Anh�nger in Galmair finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Most of her priests are female, who serve the Goddess into old age. They think that when they die, they will be brought to a big garden gate. If they have been good, they can enjoy the wonders of the never ending garden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Die meisten Ihrer Priester sind weiblich und dienen der Gottheit bis ins hohe Alter. Sie glauben wenn sie sterben, werden sie zu einem prachtvollen Gartentor gebracht, und wenn sie gut waren d�rfen sie an diesem wunderbaren Ort leben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("One of the unimportant, Younger Gods. You can find followers in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Einer der unwichtigen, j�ngeren G�tter. Man kann Anh�nger in Galmair finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("One of the unimportant, Younger Gods. You can find followers in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Eine der unwichtigen, j�ngeren G�tter. Man kann Anh�nger in Cadomyr finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("One of the Elder Gods, she is also known as Goddess of Water.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Eine der alten G�tter. Sie ist auch als G�ttin des Wassers bekannt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("One of the Elder Gods, she is also known as Goddess of Earth");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Eine der alten G�tter. Sie ist auch als G�ttin der Erde bekannt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("One of the unimportant, Younger Gods. You can find followers in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Eine der unwichtigen, j�ngeren G�tter. Man kann Anh�nger in Cadomyr finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Hmm...ask someone else if you want know about it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Hmm...fragt jemand anderen bez�glich dieses Ort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Hmm...you want some information? But what about?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Hmm...und ihr w�nscht nach Information? Aber welche?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elesil");
talkEntry:addTrigger("Daelwon");
talkEntry:addResponse("Yes, that is my name. What do you want information about?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elesil");
talkEntry:addTrigger("Daelwon");
talkEntry:addResponse("Ja, das ist mein Name. �ber was wollt ihr Information?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("A bit more concrete, please!");
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
talkEntry:addResponse("A bit more concrete, please!");
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
talkEntry:addResponse("Huh, what shall I give you information about? Do you mind just asking for help as a first step?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Huh, �ber was w�nscht ihr Information? Vielleicht begn�gt ihr euch erst mal nach Hilfe zu fragen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Willkommen in Runewick!", "Welcome to Runewick!");
talkingNPC:addCycleText("Ich bin die Auskunftsgeberin von Runewick. Fragt mich nach Informationen wenn ihr welche wissen wollt.", "I am the informant of Runewick. Ask me for information if you want some.");
talkingNPC:addCycleText("Wer etwas �ber die Orten hier wissen will, soll mich nur nach diesen Orten fragen.", "If you want to know something about the locations here, just ask me for these locations.");
talkingNPC:addCycleText("Wer etwas �ber die Geb�ude hier wissen will, soll mich nur nach diesen Geb�uden fragen.", "If you want to know something about the buildings here, just ask me about these buildings.");
talkingNPC:addCycleText("Wer etwas �ber die Geschichte von Runewick wissen will, soll mich nur nach der Geschichte fragen.", "If you want to know something about the history of Runewick, just ask me for the history.");
talkingNPC:addCycleText("Wer etwas �ber die Leute hier wissen will, soll mich nur nach diesen Leuten fragen.", "If you want to know something about the people here, just ask me for these people.");
talkingNPC:addCycleText("Wer etwas �ber die G�tter hier wissen will, soll mich nur nach diesen Gottheiten fragen.", "If you want to know something about the gods here, just ask me for these gods.");
talkingNPC:addCycleText("Wer etwas �ber die Ereignisse hier wissen will, soll mich nur nach diesen Ereignissen fragen.", "If you want to know something about the events here, just ask me for these events.");
talkingNPC:addCycleText("#me g�hnt.", "#me yawns.");
talkingNPC:addCycleText("#me blickt herum mit ihren geschlossenen Augen.", "#me seems to look around, but with closed eyes.");
talkingNPC:addCycleText("#me untersucht ihr Kleid.", "#me examines her dress.");
talkingNPC:addCycleText("#me k�mmt ihr Haar.", "#me combs her hair.");
talkingNPC:addCycleText("#me isst einen Apfel.", "#me eats an apple.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(3);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Elesil Daelwon die Auskunftgeberin.", "This NPC is Elesil Daelwon the informant.");
mainNPC:setUseMessage("Ihr seid gut damit beraten mich nicht anzufassen.", "I recommend you do not touch me.");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 835);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 2295);
mainNPC:setEquipment(9, 822);
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