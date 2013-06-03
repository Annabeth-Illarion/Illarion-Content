--------------------------------------------------------------------------------
-- NPC Name: Joey Licavoli                                            Galmair --
-- NPC Job:  Helper                                                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  425, 247, 0            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Author:   Zot                                                              --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 425, 247, 0, 6, 'Joey Licavoli', 'npc.joey_licavoli', 0, 2, 1, 202, 202, 202, 233, 202, 173);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("npc.joey_licavoli", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Joey Licavoli the helper. Keywords: quest, craft, workshop, Iradona Goldschein, food, fighting, Galmair"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Joey Licavoli der Helfer. Schl�sselw�rter: Quest, Handwerke, Werkstatt, Iradona Goldschein, Essen, K�mpfen, Galmair"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 1));
talkEntry:addResponse("Welcome to Galmair. Please find Hannah Shepard, I'm sure she has a task for you. You won't miss her, she sits at the camp fire near the fields behind me. Once the task is finished, you can come back to me I'm sure I'll have more tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 1));
talkEntry:addResponse("Willkommen in Galmair. Sucht doch bitte Hannah Shepard. Sie hat bestimmt eine Aufgabe f�r Euch. Ihr k�nnt sie nicht �bersehen, sie sitzt an der Kochstelle bei den Feldern hinter mir. Nachdem Ihr die Aufgabe erf�llt habt, kommt zur�ck wenn Ihr weitere Aufgaben von mir wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good Evening");
talkEntry:addResponse("Be greeted.");
talkEntry:addResponse("Nice to meet you, I'm Joey Licavoli");
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
talkEntry:addResponse("Freut mich, Euch zu treffen. Ich bin Joey Licavoli.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Be greeted.");
talkEntry:addResponse("Nice to meet you, I'm Joey Licavoli");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Seid gegr��t.");
talkEntry:addResponse("Freut mich, Euch zu treffen. Ich bin Joey Licavoli.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Thank you so, so much for talking to me. If you need help finding something to do, just come back.");
talkEntry:addResponse("Please have a good day. If you need help finding something to do, just come back.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addResponse("Vielen Dank, dass Ihr mit mir gesprochen habt. Wenn Ihr Hilfe braucht, etwas zu tun zu finden, kommt einfach zur�ck.");
talkEntry:addResponse("Ich w�nsche Euch einen sch�nen Tag. Wenn Ihr Hilfe braucht, etwas zu tun zu finden, kommt einfach zur�ck.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Thank you so, so much for talking to me. If you need help finding something to do, just come back.");
talkEntry:addResponse("Please have a good day. If you need help finding something to do, just come back.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Vielen Dank, dass Ihr mit mir gesprochen habt. Wenn Ihr Hilfe braucht, etwas zu tun zu finden, kommt einfach zur�ck.");
talkEntry:addResponse("Ich w�nsche Euch einen sch�nen Tag. Wenn Ihr Hilfe braucht, etwas zu tun zu finden, kommt einfach zur�ck.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I feel fine, thank you for asking.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Mir geht es gut, danke f�r die Nachfrage.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I'm Joey Licavoli. I'm here to help.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Joey Licavoli. Ich bin hier zum Helfen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("My mission is to help, so if you need something to do, just ask.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Meine Berufung ist zu helfen. Also wenn Ihr etwas zu tun sucht, fragt einfach.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("My mission is to help, so if you need something to do, just ask.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Meine Berufung ist zu helfen. Also wenn Ihr etwas zu tun sucht, fragt einfach.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Iradona");
talkEntry:addTrigger("Goldschein");
talkEntry:addResponse("She is right over there, just go over and talk to her. She knows a lot about Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Iradona");
talkEntry:addTrigger("Goldschein");
talkEntry:addResponse("Sie ist gleich dort dr�ben, geht einfach zu ihr r�ber und sprecht sie an. Sie wei� eine Menge �ber Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("food");
talkEntry:addTrigger("eat");
talkEntry:addResponse("You can find food all around you. There are fruits on the trees and bushes, or you can ask other people for something to eat.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("essen");
talkEntry:addTrigger("nahrung");
talkEntry:addResponse("Ihr k�nnt �berall etwas zu essen finden. Fr�chte wachsen an B�umen und B�schen oder Ihr fragt andere Leute nach etwas zu essen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("fighting");
talkEntry:addTrigger("monster");
talkEntry:addResponse("There are a few wild animals in the wilderness so be careful. If you want to train, ask around for a sparring partner.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("k�mpfen");
talkEntry:addTrigger("monster");
talkEntry:addResponse("Es gibt einige wilde Tiere in der Wildnis, also seid vorsichtig. Wenn Ihr trainieren wollt, fragt herum nach einem Trainingspartner.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("work");
talkEntry:addResponse("You can find the workshop really easily. Go through the main gate and follow the street until you see a building with a yellow-brown looking roof. That's the workshop.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("Werk");
talkEntry:addResponse("Die Werkstatt k�nnt Ihr ganz leicht finden. Geht durch das Haupttor und folgt der Stra�e bis Ihr ein Geb�ude mit einem gelb-braunen Dach findet. Das ist die Werkstatt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("craft");
talkEntry:addResponse("You want to know more about the crafts of Galmair? Well then go and visit Thorgrem Silverbeard, Seleseth, Tony Spirotelli or Hannah Shepard, they can tell you more about the crafts than me. You can find all of them except Hannah Shepard in the workshop. Hannah is by the fields behind me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("hand");
talkEntry:addResponse("Ihr wollt mehr �ber die Handwerke in Galmair wissen? Dann besucht Thorgrem Silverbeard, Seleseth, Tony Spirotelli oder Hannah Shepard, sie k�nnen Euch sicher mehr dar�ber erz�hlen als ich. Ihr k�nnt alle bis auf Hannah Shepard in der Werkstatt finden. Hannah ist bei den Feldern gleich hinter mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Please find Hannah Shepard, I'm sure she has a task for you. You won't miss her, she sits at the camp fire near the fields behind me. Once the task is finished, you can come back to me I'm sure I'll have more tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Sucht doch bitte Hannah Shepard. Sie hat bestimmt eine Aufgabe f�r Euch. Ihr k�nnt sie nicht �bersehen, sie sitzt an der Kochstelle bei den Feldern hinter mir. Nachdem Ihr die Aufgabe erf�llt habt, kommt zur�ck wenn Ihr weitere Aufgaben von mir wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Please find Hannah Shepard, I'm sure she has a task for you. You won't miss her, she sits at the camp fire near the fields behind me. Once the task is finished, you can come back to me I'm sure I'll have more tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Sucht doch bitte Hannah Shepard. Sie hat bestimmt eine Aufgabe f�r Euch. Ihr k�nnt sie nicht �bersehen, sie sitzt an der Kochstelle bei den Feldern hinter mir. Nachdem Ihr die Aufgabe erf�llt habt, kommt zur�ck wenn Ihr weitere Aufgaben von mir wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 3));
talkEntry:addResponse("You're back. Good. Now you can search Thorgrem Silverbeard at the workshop in Galmair. The workshop is west of here, just before the palace, it's the building with the brownish roof. Come back again if you want more tasks from me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 3));
talkEntry:addResponse("Ihr seid zur�ck. Sch�n. Nun k�nnt Ihr Thorgrem Silverbeard in der Werkstatt von Galmair suchen. Um zur Werkstatt zu gelangen geht nach Westen. Kurz vor dem Palast ist auf der linken Seite ein Haus mit einem br�unlichen Dach, das ist die Werkstatt. Kommt danch wieder zur�ck wenn Ihr eine weitere Aufgabe von mir wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 3));
talkEntry:addResponse("You're back. Good. Now you can search Thorgrem Silverbeard at the workshop in Galmair. The workshop is west of here, just before the palace, it's the building with the brownish roof. Come back again if you want more tasks from me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 3));
talkEntry:addResponse("Ihr seid zur�ck. Sch�n. Nun k�nnt Ihr Thorgrem Silverbeard in der Werkstatt von Galmair suchen. Um zur Werkstatt zu gelangen geht nach Westen. Kurz vor dem Palast ist auf der linken Seite ein Haus mit einem br�unlichen Dach, das ist die Werkstatt. Kommt danch wieder zur�ck wenn Ihr eine weitere Aufgabe von mir wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("You're back. Good. Now you can search Thorgrem Silverbeard at the workshop in Galmair. The workshop is west of here, just before the palace, it's the building with the brownish roof. Come back again if you want more tasks from me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ihr seid zur�ck. Sch�n. Nun k�nnt Ihr Thorgrem Silverbeard in der Werkstatt von Galmair suchen. Um zur Werkstatt zu gelangen geht nach Westen, kurz vor dem Palast ist auf der linken Seite ein Haus mit einem br�unlichen Dach, das ist die Werkstatt. Kommt danch wieder zur�ck wenn Ihr eine weitere Aufgabe von mir wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("You're back. Good. Now you can search Thorgrem Silverbeard at the workshop in Galmair. The workshop is west of here, just before the palace, it's the building with the brownish roof. Come back again if you want more tasks from me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ihr seid zur�ck. Sch�n. Nun k�nnt Ihr Thorgrem Silverbeard in der Werkstatt von Galmair suchen. Um zur Werkstatt zu gelangen geht nach Westen. Kurz vor dem Palast ist auf der linken Seite ein Haus mit einem br�unlichen Dach, das ist die Werkstatt. Kommt danch wieder zur�ck wenn Ihr eine weitere Aufgabe von mir wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 5));
talkEntry:addResponse("A friend of mine, Miggs, always needs some help. You can find him if you enter the city. Once you are in the city go to the palace in the west, after you enter the palace follow the way north until you reach the library, and in the library you can find Miggs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 5));
talkEntry:addResponse("Ein Freund von mir, Miggs, kann auch immer etwas Hilfe ben�tigen. Ihr k�nnt Ihn finden wenn Ihr in die Stadt hinein geht, dort geht Ihr dann zum Palast, tretet ein und folgt dem Weg n�rdlich bis zur Bibliothek, dort befindet sich Miggs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 5));
talkEntry:addResponse("A friend of mine, Miggs, always needs some help. You can find him if you enter the city. Once you are in the city go to the palace in the west, after you enter the palace follow the way north until you reach the library, and in the library you can find Miggs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 5));
talkEntry:addResponse("Ein Freund von mir, Miggs, kann auch immer etwas Hilfe ben�tigen. Ihr k�nnt Ihn finden wenn Ihr in die Stadt hinein geht, dort geht Ihr dann zum Palast, tretet ein und folgt dem Weg n�rdlich bis zur Bibliothek, dort befindet sich Miggs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("A friend of mine, Miggs, always needs some help. You can find him if you enter the city. Once you are in the city go to the palace in the west, after you enter the palace follow the way north until you reach the library, and in the library you can find Miggs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ein Freund von mir, Miggs, kann auch immer etwas Hilfe ben�tigen. Ihr k�nnt Ihn finden wenn Ihr in die Stadt hinein geht, dort geht Ihr dann zum Palast, tretet ein und folgt dem Weg n�rdlich bis zur Bibliothek, dort befindet sich Miggs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("A friend of mine, Miggs, always needs some help. You can find him if you enter the city. Once you are in the city go to the palace in the west, after you enter the palace follow the way north until you reach the library, and in the library you can find Miggs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ein Freund von mir, Miggs, kann auch immer etwas Hilfe ben�tigen. Ihr k�nnt Ihn finden wenn Ihr in die Stadt hinein geht, dort geht Ihr dann zum Palast, tretet ein und folgt dem Weg n�rdlich bis zur Bibliothek, dort befindet sich Miggs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 7));
talkEntry:addResponse("Charwis Irongate is sure to have a task for you. You can find him at the market place which is south west from here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 7));
talkEntry:addResponse("Charwis Irongate hat bestimmte eine kleine Aufgabe f�r Euch. Ihr k�nnt ihn beim Marktplatz im S�dwesten der Stadt finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 7));
talkEntry:addResponse("Charwis Irongate is sure to have a task for you. You can find him at the market place which is south west from here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 7));
talkEntry:addResponse("Charwis Irongate hat bestimmte eine kleine Aufgabe f�r Euch. Ihr k�nnt ihn beim Marktplatz im S�dwesten der Stadt finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Charwis Irongate is sure to have a task for you. You can find him at the market place which is south west from here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 7));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Charwis Irongate hat bestimmte eine kleine Aufgabe f�r Euch. Ihr k�nnt ihn beim Marktplatz im S�dwesten der Stadt finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 7));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Charwis Irongate is sure to have a task for you. You can find him at the market place which is south west from here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 7));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Charwis Irongate hat bestimmte eine kleine Aufgabe f�r Euch. Ihr k�nnt ihn beim Marktplatz im S�dwesten der Stadt finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 9));
talkEntry:addResponse("Ah... there you are again. Please go to Bruno Blackhole, he told me he has a task for you. You can find him in the Malachite Mine, which you can find if you enter the city and follow the street to the south. Once you are at the bridge follow the street to the south east.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 8));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 9));
talkEntry:addResponse("Ah..da seid Ihr ja wieder. Geht doch bitte zu Bruno Blackhole. Er hat eine Aufgabe f�r euch sagte er mir. Ihr k�nnt ihn in der Malachitmine finden, die Mine findet Ihr, wenn Ihr die Stadt betretet und der Stra�e nach S�den folgt. Anschlie�end �berquert Ihr die Br�cke und folgt der Stra�e nach S�dosten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 8));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 9));
talkEntry:addResponse("Ah... there you are again. Please go to Bruno Blackhole, he told me he has a task for you. You can find him in the Malachite Mine, which you can find if you enter the city and follow the street to the south. Once you are at the bridge follow the street to the south east.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 8));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 9));
talkEntry:addResponse("Ah..da seid Ihr ja wieder. Geht doch bitte zu Bruno Blackhole. Er hat eine Aufgabe f�r euch sagte er mir. Ihr k�nnt ihn in der Malachitmine finden, die Mine findet Ihr, wenn Ihr die Stadt betretet und der Stra�e nach S�den folgt. Anschlie�end �berquert Ihr die Br�cke und folgt der Stra�e nach S�dosten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ah... there you are again. Please go to Bruno Blackhole, he told me he has a task for you. You can find him in the Malachite Mine, which you can find if you enter the city and follow the street to the south. Once you are at the bridge follow the street to the south east.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 9));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ah..da seid Ihr ja wieder. Geht doch bitte zu Bruno Blackhole. Er hat eine Aufgabe f�r euch sagte er mir. Ihr k�nnt ihn in der Malachitmine finden, die Mine findet Ihr, wenn Ihr die Stadt betretet und der Stra�e nach S�dosten folgt. Anschlie�end �berquert Ihr die Br�cke und folgt der Stra�e nach S�dosten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 9));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Ah... there you are again. Please go to Bruno Blackhole, he told me he has a task for you. You can find him in the Malachite Mine, which you can find if you enter the city and follow the street to the south. Once you are at the bridge follow the street to the south east.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 9));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ah..da seid Ihr ja wieder. Geht doch bitte zu Bruno Blackhole. Er hat eine Aufgabe f�r euch sagte er mir. Ihr k�nnt ihn in der Malachitmine finden, die Mine findet Ihr, wenn Ihr die Stadt betretet und der Stra�e nach S�dosten folgt. Anschlie�end �berquert Ihr die Br�cke und folgt der Stra�e nach S�dosten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 11));
talkEntry:addResponse("Gretel Goldhair, the treasurer, has a task for you. Please find her in the throne room in the palace and ask her for a task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 10));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 11));
talkEntry:addResponse("Gretel Goldhair, die Schatzmeisterin, hat eine kleine Aufgabe f�r Euch. Geht doch bitte in den Thronsaal des Palastes und fragt sie nach einer Aufgabe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 10));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 11));
talkEntry:addResponse("Gretel Goldhair, the treasurer, has a task for you. Please find her in the throne room in the palace and ask her for a task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 10));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 11));
talkEntry:addResponse("Gretel Goldhair, die Schatzmeisterin, hat eine kleine Aufgabe f�r Euch. Geht doch bitte in den Thronsaal des Palastes und fragt sie nach einer Aufgabe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Gretel Goldhair, the treasurer, has a task for you. Please find her in the throne room in the palace and ask her for a task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 11));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Gretel Goldhair, die Schatzmeisterin, hat eine kleine Aufgabe f�r Euch. Geht doch bitte in den Thronsaal des Palastes und fragt sie nach einer Aufgabe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 11));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Gretel Goldhair, the treasurer, has a task for you. Please find her in the throne room in the palace and ask her for a task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 11));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Gretel Goldhair, die Schatzmeisterin, hat eine kleine Aufgabe f�r Euch. Geht doch bitte in den Thronsaal des Palastes und fragt sie nach einer Aufgabe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 13));
talkEntry:addResponse("Groktan Flintsplit has a task for you, please visit him in the house of the debt collector. That is the building with the red roof, shortly before the palace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 12));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 13));
talkEntry:addResponse("Groktan Flintsplit hat eine Aufgabe f�r Euch. Besucht ihn doch bitte im Haus des Schuldeneintreibers. Es ist das Geb�ude mit dem roten Ziegeldachach kurz vor dem Palast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 12));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 13));
talkEntry:addResponse("Groktan Flintsplit has a task for you, please visit him in the house of the debt collector. That is the building with the red roof, shortly before the palace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 12));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 13));
talkEntry:addResponse("Groktan Flintsplit hat eine Aufgabe f�r Euch. Besucht ihn doch bitte im Haus des Schuldeneintreibers. Es ist das Geb�ude mit dem roten Ziegeldachach kurz vor dem Palast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Groktan Flintsplit has a task for you, please visit him in the house of the debt collector. That is the building with the red roof, shortly before the palace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Groktan Flintsplit hat eine Aufgabe f�r Euch. Besucht ihn doch bitte im Haus des Schuldeneintreibers. Es ist das Geb�ude mit dem roten Ziegeldachach kurz vor dem Palast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Groktan Flintsplit has a task for you, please visit him in the house of the debt collector. That is the building with the red roof, shortly before the palace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Groktan Flintsplit hat eine Aufgabe f�r Euch. Besucht ihn doch bitte im Haus des Schuldeneintreibers. Es ist das Geb�ude mit dem roten Ziegeldachach kurz vor dem Palast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 14));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I'm sure you can find your way around here without my help now. Just ask the people you meet if they have tasks for you and you will be fine.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 14));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich bin sicher, Ihr kommt nun auch ohne meine Hilfe zurecht. Fragt einfach die Leute die Ihr trefft, ob sie Aufgaben f�r Euch haben und Ihr werdet zurechtkommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 14));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I'm sure you can find your way around here without my help now. Just ask the people you meet if they have tasks for you and you will be fine.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 14));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich bin sicher, Ihr kommt nun auch ohne meine Hilfe zurecht. Fragt einfach die Leute die Ihr trefft, ob sie Aufgaben f�r Euch haben und Ihr werdet zurechtkommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "<", 14));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".*");
talkEntry:addResponse("I could use some help, just ask me for a task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(712, "<", 14));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ich k�nnte etwas Hilfe gebrauchen, fragt mich ruhig nach einer Aufgabe. Ich habe sicher etwas f�r Euch zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("You are not a citizen of Galmair. I don't have anything for you to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ihr scheint kein B�rger Galmairs zu sein. Ich habe nichts f�r Euch zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Willkommen in Galmair!", "Welcome to Galmair!");
talkingNPC:addCycleText("Wenn Ihr Hilfe ben�tigt, sprecht mich einfach an.", "If you need help, just speak to me.");
talkingNPC:addCycleText("Wenn Ihr neu hier seid, bin ich Euer Mann.", "If you're new to this realm, I'm your man.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("", "");
mainNPC:setUseMessage("Fass mich nicht an!", "Hands off!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 182);
mainNPC:setEquipment(11, 2384);
mainNPC:setEquipment(5, 2701);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 460);
mainNPC:setEquipment(10, 679);
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