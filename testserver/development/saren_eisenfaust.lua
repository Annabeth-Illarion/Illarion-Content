--------------------------------------------------------------------------------
-- NPC Name: Saren Eisenfaust                                         Galmair --
-- NPC Job:  stuff for skill                                                  --
--                                                                            --
-- NPC Race: dwarf                      NPC Position:  333, 258, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Authors:  Someone                                                          --
--           & Rincewind                                                      --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (1, 333, 258, 0, 4, 'Saren Eisenfaust', 'npc.saren_eisenfaust', 0, 3, 4, 255, 113, 3, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.skill")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.consequence.skill")
require("npc.base.talk")
module("development.saren_eisenfaust", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addResponse("[Game Help] This NPC is the smith Saren Eisenfaust. Keywords: pickaxe, adventure, tell something, Sevenhill.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addResponse("[Spielhilfe] Dieser NPC ist der Schmied Saren Eisenfaust. Schl�sselw�rter: Aufgaben, Spitzhacke, Erz�hl was, Siebenberg.");
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
talkEntry:addResponse("Good day, what do ya want?");
talkEntry:addResponse("Irmorom with ya, do ya need anything?");
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
talkEntry:addResponse("Tach auch, wat gibts?");
talkEntry:addResponse("Irmorom zum Gru�e, brauchst du wat?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("What do ya want, eh? We say greetings around here.");
talkEntry:addResponse("Aye, whatever.");
talkEntry:addResponse("You won't go far with that greeting around here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Wat willste, eh? Dat hei�t Tach!");
talkEntry:addResponse("Aye, wat auch immer.");
talkEntry:addResponse("Damit kommste hier nich weit, es hei�t Tach!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Aye, take care.");
talkEntry:addResponse("Irmorom with ya!");
talkEntry:addResponse("Until next time!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Aye, machs gut.");
talkEntry:addResponse("Irmorom mit dir!");
talkEntry:addResponse("Man sieht sich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Aye, take care.");
talkEntry:addResponse("Irmorom with ya!");
talkEntry:addResponse("Until next time!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Aye, machs gut.");
talkEntry:addResponse("Irmorom mit dir!");
talkEntry:addResponse("Man sieht sich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Can't say anything's bothering me and ya?");
talkEntry:addResponse("So-so, but I'm fine right now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Ich kann nich klagen und du?");
talkEntry:addResponse("Ganz gut und selbst?");
talkEntry:addResponse("Mal so, mal so, aber gerade geht es mir ganz gut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I'm Saren and who are you?");
talkEntry:addResponse("I'm called Saren, Saren Eisenfaust and what's your name?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin der Saren und wer bist du?");
talkEntry:addResponse("Man nennt mich Saren, Saren Eisenfaust und wie nennt man dich?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 80));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 1));
talkEntry:addResponse("I can help ya if ya wanna become a smith, but first bring me 10 lumps of coal as well as 10 chunks of iron ore, and don't forget to bring a hammer. Here is a pickaxe for you to get the ore.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 80));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 1));
talkEntry:addResponse("Ich kann dir helfen falls du Schmied werden willst, hol mir aber erstma 10 Brocken Kohle sowie 10 Klumpen Eisenerz und nen Hammer nich zu vergessen. Hier noch die Spitzhacke zum abbauen des Erzes.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 80));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 0));
talkEntry:addTrigger("smith");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 1));
talkEntry:addResponse("I can help ya if ya wanna become a smith, but first bring me 10 lumps of coal as well as 10 chunks of iron ore, and don't forget to bring a hammer. Here is a pickaxe for you to get the ore.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 80));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 0));
talkEntry:addTrigger("Schmied");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 1));
talkEntry:addResponse("Ich kann dir helfen, falls du Schmied werden willst, daf�r solltest du mir aber erstma 10 Brocken Kohle sowie 10 Klumpen Eisenerz bringen. Und hier eine Hacke um das Erz abzubauen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(22, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(23, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest erf�llt!] Dein Ansehen bei Don Valerio Guilianni steigt."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.smithing, "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(21, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(22, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(23, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 2));
talkEntry:addResponse("Arr, gut gemacht. Jetzt schau mir gut zu, damit du auch wat lernst!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(22, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(23, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest finished!] You advance in Don Valerio Guilianni's favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(21, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(22, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(23, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Arr, good job. Now watch me, so that you actually learn something!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(22, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(23, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest erf�llt!] Du hast das Gef�hl als h�ttest du was dazu gelernt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(21, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(22, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(23, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Arr, gut gemacht. Jetzt schau mir gut zu, damit du auch wat lernst!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(22, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(23, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest finished!] You feel like you really learned something."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.smithing, "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(21, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(22, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(23, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 2));
talkEntry:addResponse("Arr, good job. Now watch me, so that you actually learn something!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, wenn du dir mit mir einen Spa� erlauben willst, werd ich dir nich helfen. Ich wollte 10 Brocken Kohle, 10 Klumpen Eisenerz und einen Hammer!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, if you try to trick me, I won't help you. I want 10 lumps of coal, 10 chunks of iron ore and a hammer!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(22, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, wenn du dir mit mir einen Spa� erlauben willst, werd ich dir nich helfen. Ich wollte 10 Brocken Kohle, 10 Klumpen Eisenerz und einen Hammer!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(22, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, if you try to trick me, I won't help you. I want 10 lumps of coal, 10 chunks of iron ore and a hammer!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(23, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, wenn du dir mit mir einen Spa� erlauben willst, werd ich dir nich helfen. Ich wollte 10 Brocken Kohle, 10 Klumpen Eisenerz und einen Hammer!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(23, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, if you try to trick me, I won't help you. I want 10 lumps of coal, 10 chunks of iron ore and a hammer!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 20));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 40));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 3));
talkEntry:addResponse("Aye, I have a task for ya if you are interested. I need 15 copper ore, new crucible-pincers, a fine smith hammer and 5 iron ingots!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 20));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 40));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 3));
talkEntry:addResponse("Aye, hab wat f�r dich zu tun wenn du willst. 15 Kupfererz, eine neue Tiegelzange, einen Feinschmiedehammer und 5 Eisenbarren brauch ich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 20));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 40));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 3));
talkEntry:addResponse("Aye, I have a task for ya if you are interested. I need 15 copper ore, new crucible-pincers, a fine smith hammer and 5 iron ingots!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 20));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 40));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 3));
talkEntry:addResponse("Aye, hab wat f�r dich zu tun wenn du willst. 15 Kupfererz, eine neue Tiegelzange, einen Feinschmiedehammer und 5 Eisenbarren brauch ich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Leave me alone, I don't have anything to do for you right now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Lass mich mal in Ruhe, ick hab gerade nichts f�r dich zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Leave me alone, I don't have anything to do for you right now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Lass mich mal in Ruhe, ick hab gerade nichts f�r dich zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2536, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.item.item(2535, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.item.item(2751, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.item.item(122, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest erf�llt!] Du hast das Gef�hl als h�ttest du was dazu gelernt."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.smithing, "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2536, 15, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2535, 5, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2751, 1, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(122, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 4));
talkEntry:addResponse("Sieht gut aus, alles da wat ich von dir verlangt hab, scheint als k�nnt aus dir nen richtiger Schmied werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2536, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.item.item(2535, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.item.item(2751, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.item.item(122, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest finished!] You have feel like you really learned something."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.smithing, "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2536, 15, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2535, 5, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2751, 1, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(122, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 4));
talkEntry:addResponse("Looks good and it's even everything that I wanted ya to bring. Looks as if you could become a real smith.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2536, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.item.item(2535, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.item.item(2751, "all", "=", 0, nil));
talkEntry:addCondition(npc.base.condition.item.item(122, "all", "=", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Du sollst mir 15 Kupfererz, eine neue Tiegelzange, einen Feinschmiedehammer und 5 Eisenbarren bringen, is das so schwer zu merken,eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2536, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.item.item(2535, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.item.item(2751, "all", "=", 0, nil));
talkEntry:addCondition(npc.base.condition.item.item(122, "all", "=", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr! You're supposed to bring me 15 copper ore, crucible-pincers, a fine smith hammer and 5 iron ingots. Not that hard to memorize, is it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 40));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 60));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 5));
talkEntry:addResponse("Aye, I have a task for ya if you are interested. Bring me 10 iron ingots, 10 copper ingots, 5 steel greaves and 4 pickaxes, then I'll show ya what a smith can do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 40));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 60));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 5));
talkEntry:addResponse("Aye, hab wat f�r dich zu tun wenn du willst. Bring mir zehn Eisenbarren, zehn Kupferbarren, f�nf Stahlbeinschienen und vier Spitzhacken, dann siehst du selbst was ein Schmied so alles kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 40));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 60));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 5));
talkEntry:addResponse("Aye, I have a task for ya if you are interested. Bring me 10 iron ingots, 10 copper ingots, 5 steel greaves and 4 pickaxes, then I'll show ya what a smith can do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 40));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 60));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 5));
talkEntry:addResponse("Aye, hab wat f�r dich zu tun wenn du willst. Bring mir zehn Eisenbarren, zehn Goldbarren, f�nf Kupferbarren und vier gro�e Schwertgriffe, dann siehst du selbst was ein Schmied so alles kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 40));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Be gone, I have no time for ya right now! Practice some more, then I'll show you how to smith some nice weapons.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 40));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Verschwinde, ich hab grad keine Zeit f�r dich! �be mehr, dann zeig ick dir vielleicht auch wie man ne nette Waffe schmiedet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 40));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Be gone, I have no time for ya right now! Practice some more, then I'll show you how to smith some nice weapons.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 40));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 4));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Verschwinde, ich hab grad keine Zeit f�r dich! �be mehr, dann zeig ick dir vielleicht auch wie man ne nette Waffe schmiedet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("It's 10 iron ingots, 10 copper ingots, 5 steel greaves and 4 pickaxes I wanted from you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Es waren zehn Eisenbarren, zehn Kupferbarren, f�nf Stahlbeinschienen und vier Spitzhacken die ich haben wollt, aye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 5));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("It's 10 iron ingots, 10 copper ingots, 5 steel greaves and 4 pickaxes I wanted from you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 5));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Es waren zehn Eisenbarren, zehn Kupferbarren, f�nf Stahlbeinschienen und vier Spitzhacken die ich haben wollt, aye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", ">", 3, nil));
talkEntry:addCondition(npc.base.condition.item.item(2535, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(2550, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(2172, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest erf�llt!] Du hast das Gef�hl als h�ttest du was dazu gelernt."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.smithing, "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2763, 4, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2535, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2550, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2172, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 6));
talkEntry:addResponse("Endlich biste wieder zur�ck, ich hatte mir schon Sorgen gemacht. Nun pass aber auf wie ich die Erze kombiniere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", ">", 3, nil));
talkEntry:addCondition(npc.base.condition.item.item(2535, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(2550, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(2172, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest finished!] You feel like you really learned something."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.smithing, "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2763, 4, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2535, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2550, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2172, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 6));
talkEntry:addResponse("Finally, you're back, I started to worry about ya. Now watch how I combine these materials.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", "<", 4, nil));
talkEntry:addCondition(npc.base.condition.item.item(2535, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.item.item(2550, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.item.item(2172, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Wenn du nix lernen willst, dann mach das du verschwindest! Wenn du nichtmal die kleinsten Auftr�ge erf�llen willst, wie willste da nen guter Schmied werden?!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", "<", 4, nil));
talkEntry:addCondition(npc.base.condition.item.item(2535, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.item.item(2550, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.item.item(2172, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("If ya don't wanna learn anything, just go. Ya can't even complete the simplest task! How do ya think you'll become a good smith then?!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 60));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 80));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 7));
talkEntry:addResponse("Arr, you are looking for some work? Aye, I can help you with that! I need 15 copper ingots, 10 war hammer, 10 rapier and 2 steel plate.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 60));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 80));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 7));
talkEntry:addResponse("Arr, du willst ne Aufgabe? Aye, damit kann ich helfen! Ick brauche 15 Kupferbarren, 10 Kriegsh�mmer, 10 Degen und 2 Stahlharnische.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 60));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 80));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 7));
talkEntry:addResponse("Arr, you are looking for some work? Aye, I can help you with that! I need 15 copper ingots, 10 war hammer, 10 rapier and 2 steel plate.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, ">", 60));
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 80));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 7));
talkEntry:addResponse("Arr, du willst ne Aufgabe? Aye, damit kann ick helfen! Ick brauche 15 Kupferbarren, 10 Kriegsh�mmer, 10 Degen und 2 Stahlharnische.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 60));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Come back later, I've no time for ya at the moment.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 60));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Komm sp�ter wieder, ich hab im Moment keine Zeit f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 60));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Come back later, I've no time for ya at the moment.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.smithing, "=<", 60));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 6));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Komm sp�ter wieder, ich hab im Moment keine Zeit f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("You were supposed to bring me 15 copper ingots, 10 war hammer, 10 rapier and 2 steel plate.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die Sachen die du mir bringen solltest waren 15 Kupferbarren, 10 Kriegsh�mmer, 10 Degen und 2 Stahlharnische.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 7));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("You were supposed to bring me 15 copper ingots, 10 war hammer, 10 rapier and 2 steel plate.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 7));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Die Sachen die du mir bringen solltest waren 15 Kupferbarren, 10 Kriegsh�mmer, 10 Degen und 2 Stahlharnische.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2550, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.item.item(2675, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(226, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(2364, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest erf�llt!] Du hast das Gef�hl als h�ttest du was dazu gelernt."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.smithing, "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2550, 15, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2675, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(226, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2364, 2, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 8));
talkEntry:addResponse("Sehr gut gemacht, ich wusste man kann sich auf dich verlassen. Nun sperr die Augen weit auf und beobachte wie ich dat Schwert schmiede!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2550, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.item.item(2675, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(226, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(2364, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest finished!] You feel like you really learned something."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.smithing, "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2550, 15, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2675, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(226, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2364, 2, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(81, "=", 8));
talkEntry:addResponse("Good job. Now that I know I can count on you, watch closely here and see how this sword is made.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2550, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.item.item(2675, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.item.item(226, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.item.item(2364, "all", "<", 2, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Nay, ick red mit dir kein Wort mehr bist du mir nicht das bringst, was ich von dir haben wollte!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2550, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.item.item(2675, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.item.item(226, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.item.item(2364, "all", "<", 2, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Nah, I won't talk to ya until ya bring me the things I asked you for.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Nah, you learned enough from me. You have to figure out everything else for yourself . That's what a good smith is all about.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Nay, ich glaub du hast genug von mir gelernt. Alles weitere musst du jetzt selber herausfinden, das macht einen guten Schmied aus!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 8));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Nah, you learned enough from me. You have to figure out everything else for yourself. That's what a good smith is all about.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(81, "=", 8));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Nay, ich glaub du hast genug von mir gelernt. Alles weitere musst du jetzt selber herausfinden, das macht einen guten Schmied aus!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("You ask what my profession is? I'm a smith, the best even.");
talkEntry:addResponse("I'm a smith and you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Du fragst nach meinem Beruf? Ich bin Schmied, einer der besten sogar.");
talkEntry:addResponse("Von Beruf bin ich Schmied und du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("You ask what my profession is? I'm a smith, the best even.");
talkEntry:addResponse("I'm a smith and you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Du fragst nach meinem Beruf? Ich bin Schmied, einer der besten sogar.");
talkEntry:addResponse("Von Beruf bin ich Schmied und du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Gobaith! Aye. My cousin fourth grade lived there down in Silverbrand, a while. But I say, Galmair is the bether choice to gain wealth for your clan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Gobaith! Aye. Mein Cousin vierten Grades lebte ne Weile unten in Silverbrand. Aber ich sag, Galmair iss die bessere Wahl, wenn du Wohlstand anh�ufn wills'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Aye. It's a pleasure.");
talkEntry:addResponse("Tehie? Well then. How may I help you?");
talkEntry:addResponse("By Irmorom! And you like to become a smith, or what?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Aye. Freut mich 'n Bekanntschaft zu machn.");
talkEntry:addResponse("Soso? Na, dann - wie kann ich dir helfn?");
talkEntry:addResponse("Bei Irmorom, iss mir ne Freude.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dwarf");
talkEntry:addResponse("Dwarf's don't drink shandy. Neither shandygaff! Halflings mix beer with fruit juice. Ha'ak! A real dwarf would rather shave his beard. Arr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Silverbrand");
talkEntry:addResponse("Silverbrand? There's not much I know about. But my cousin lived ther' a while.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("smith");
talkEntry:addResponse("A smithh needs a hammer. And ore, selfunderstood. You can buy everything at the market. With coal, ore is melt to ingots. Ingots are smithable. Got it?");
talkEntry:addResponse("Search an anvil to smith. The forge melts Ore.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("pickaxe");
talkEntry:addResponse("You can mine for ore with it, a merchant can surely sell ya one if you lose yours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spitzhacke");
talkEntry:addResponse("Damit kannst du das Erz abbauen, ein H�ndler kann dir sicher eine verkaufen wenn du deine verlierst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schmied");
talkEntry:addResponse("N' Schmied braucht nen Hammer. Und Erz nat�rrlich. Das kannste alles am Markt kaufn. Erz schmelzt du mit Kohle zu Barren. Und die schmiedet man.");
talkEntry:addResponse("Du musst zu einem Amboss gehn, wenn du schmieden willst. An der Esse kannst du Erz schmelzn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Silberbrand");
talkEntry:addResponse("Silberbrand? Wei� ich nich viel von. Aber mein Cousin hat dort ne Weile gelebt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zwerg");
talkEntry:addResponse("Ein Zwerg trinkt die Mischung pur! - Bei den Halblingen mischen sie Wein mit Fr�chte-saft. Da� nennen sie Schorle oder Spritzer. Ha'ak! Aber ein echter Zwerg trinkt nicht's Gestrecktes!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Don't know him, who's that supposed to be?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Kenn ich nicht, wer soll denn das sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Don't know him, who's that supposed to be?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Kenn ich nicht, wer soll denn das sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick is the city full of them mage-folk right? Don't like them much.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick ist die Stadt mit diesem Magierpack, stimmts? Mag die nicht besonders.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Well, nothing much to say. He's the leader of Galmair and does a really good job.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Nun, gibt nicht viel zu sagen. Er ist der Anf�hrer von Galmair und macht seine Arbeit sehr gut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Fine town, really fine town you know. But only if ya have enough silver coins in your pocket you know what I mean?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Tolle Stadt, wirklich tolle Stadt wei�t du. Aber nur wenn du genug Silberm�nzen in der Tasche hast, wei�t du was ich meine?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Don't know her personally but wouldn't mind if she really is as good looking as they say. Hear she's a harsh leader though.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Kenn die nicht pers�nlich aber w�rde mich nicht weigern wenn sie wirklich so gut aussieht wie man sagt. Man sagt auch das sie eine taffe Herrscherin is.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Don't know her personally but wouldn't mind if she really is as good looking as they say. Hear she's a harsh leader though.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Kenn die nicht pers�nlich aber w�rde mich nicht weigern wenn sie wirklich so gut aussieht wie man sagt. Man sagt auch das sie eine taffe Herrscherin is.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Well, a little hot there but the queen is supposed to be good looking, wouldn't mind if she came here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Nun, ein bisschen warm dort, aber die K�nigin soll gutaussehen. W�rde nichts dagegen haben, wenn sie mal herkommt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Forgive me... I don't know about the human town's. But maybe you are interested to hear about the homeland of my clan, sevenhill!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Vergebt mir... Ich wei� viel zu wenig �ber die St�dte der Menschen. Aber villeicht interssiert ihr Euch daf�r �ber meine Heimat zu sprechen, Siebenberg.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Forgive me... I don't know about the human town's. But maybe you are interested to hear about the homeland of my clan, sevenhill!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Vergebt mir... Ich wei� viel zu wenig �ber die St�dte der Menschen. Aber villeicht interssiert ihr Euch daf�r �ber meine Heimat zu sprechen, Siebenberg.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Forgive me... I don't know about the human town's. But maybe you are interested to hear about the homeland of my clan, sevenhill!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Vergebt mir... Ich wei� viel zu wenig �ber die St�dte der Menschen. Aber villeicht interssiert ihr Euch daf�r �ber meine Heimat zu sprechen, Siebenberg.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sevenhill");
talkEntry:addResponse("'Tunnel pigs' can also be found in Sevenhill. This is not an insulting term for lazy miners, but is rather a very large, fat, and nearly naked type of rodent. This animal is well known at most dwarven settlements and is considered a delicacy.");
talkEntry:addResponse("Sevenhill, also known as Siebenberg, is one of the greatest dwarven mines and it's halls and wealth are legendary. The town is located in deep caverns under a range of seven mountains, but only dwarves know the exact location.");
talkEntry:addResponse(" Humans are not permitted in Sevenhill and only a few trusted lizardmen and elves have ever been welcomed into the city. Heavily armed dwarven squads guard every entrance.");
talkEntry:addResponse("Many of the city's exits end in many mountain valleys where crops and livestock are farmed. The infamous 'dwarven cheese' is also produced here; an incredibly strong smelling kind of cheese, highly thought of by dwarves, but completely unpalatable to humans, halflings and elves.");
talkEntry:addResponse("Sevenhill is home to seven dwarven clans. It is said that Irmorom blesses those dwarves who make a pilgramage to all of the four sanctuaries, located under Sevenhill. Many of the famous dwarves, are said to have been there as pilgrims.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("siebenberg");
talkEntry:addResponse("'Tunnelschwein',  da� ist kein Schimpfnamen f�r faule Minenarbeiter, sondern ?n Nagetier. Erinnert an enorm gro�e, fast nackte, fette Ratten. Dieses Tier ist in eigentlich unter allen Zwergen bekannt und oft delikat zubereitet.");
talkEntry:addResponse("Siebenberg ist die Heimat von sieben Zwergenklans. Es wird gesagt, dass ein Zwerg, der zu allen vier Heiligt�mern Siebenbergs pilgert und dort zu Irmorom betet, von diesem gesegnet wird.");
talkEntry:addResponse("Siebenberg ist eine der gr��ten bekannten Zwergenminen, ihre Hallen und deren Reichtum sind legend�r. Die Stadt befindet sich in den tiefen H�hlen unter den Siebenh�gelbergen, die genaue Lage ist nur Zwergen bekannt.");
talkEntry:addResponse("Menschen finden keinen Einlass nach Siebenberg und nur wenige Echsenmenschen oder Elfen ? von denen bekannt ist, dass sie nicht versuchen w�rden, gl�nzende Dinge aus kostbaren Verzierungen herauszubrechen.");
talkEntry:addResponse("Es werden  Ziegen gehalten, deren Milch haupts�chlich zum  bekannten Zwergenk�se verarbeitet wird! Eine besonders �belriechende K�sesorte, die von uns Zwergen sehr gesch�tzt wird, aber die anderen V�lker scheinen ihn nicht besonders zu sch�tzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("I follow Irmorom, the father of the dwarven kind and hallow of the crafters. And Br�gon, whose falmes melt the ores.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Irmorom.  Ich huldige dem Vater der Zwerge und Heiligem der Handwerker. Sowie Br�gon, dessen Flammen die Metalle zum schmelzen bringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("The falme of Br�gon brings dragons their fiere and warms the living. And it bends Steel, by heat it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Die Flamme Br�gons haucht nicht nur Drachen ihr Feuer ein, sondern w�rmt die V�lker und macht Stahl biegsam.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Smithing is the craft of the dwarves. Irmorom teached us long time ago, that Br�gons flame makes iron bendable and plastic.");
talkEntry:addResponse("Irmorom the godly crafter, told the dwarven folk how to smith and after hundrets of years, they figured out how to put runes and gems into mighty weapons and armors.");
talkEntry:addResponse("Irmorom himself was the first smith. He liked the hardwoking dwarves most, so he gave them the ability to smith.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Das Schmieden ist das Handwerk des Zwergenvolkes, Irmorom hat uns lange vor allen anderen gelehrt, dass Br�gons Flammen h�rtes Eisen biegsam und formbar machen.");
talkEntry:addResponse("Irmorom der g�ttliche Handwerker, lehrte einst den Zwergen das schmieden, und in hundert Jahr langer Geschichte sollten wir lernen Edelsteine und Runen in m�chtigen Waffen und R�stungen einzufassen.");
talkEntry:addResponse("Irmorom war der erste Schmied und da ihm die fliessigen Zwerge das liebste Volk waren vermachte er dieses Handwerk den Zwergen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Do I look like a merchant? I don't think so!");
talkEntry:addResponse("Nah, I don't buy anything and I won't ever sell something to you!");
talkEntry:addResponse("Maybe some other time, not today.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Sehe ich aus wie ein H�ndler, ich denke nicht!");
talkEntry:addResponse("Nay, ich kauf nix und verkaufen tu ich erst recht nix an dich!");
talkEntry:addResponse("Ein ander mal vielleicht, heute nich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Do you know, Gremle Oxenlimb, my sister's husband? He affirms that he beat up a golem with his bare hands. Is 'Ga strak ja'ada! Such a fibbed tale.");
talkEntry:addResponse("They say Eygir Goldmalt brews the best beer, but I prefer Yeseult Bockbrew's.");
talkEntry:addResponse("Rustbeard Grimhilds-Cousin is a good friend of mine. But he can't bear even a half mug of beer. When drunken he sings bawdy songs and throws hatchets trageting young womens plaits.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Kennt ihr Gremle Ochsenschenkel, meinen Schwager? Er behauptet er w�rde einem Golem im Faustkampf besiegen. Ga strak ja'ada! So'ne erlogene Geschichte.");
talkEntry:addResponse("Es hei�t Eygir Goldmalz braut das beste Bier, aber mir schmeckt das von Yseult Bockbr�u viel besser. ");
talkEntry:addResponse("Rostbart Grimhilds-Vetter ist ein guter Bekannter von mir. Aber der vertr�gt kein Bier nicht. Hat der einen halben Humpen drin, f�ngt er an unfl�tig zu singen und mit Beilen nach den Z�pfen von jungn' Fraun zu werfn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Saren");
talkEntry:addTrigger("Eisenfaust");
talkEntry:addResponse("What's up?");
talkEntry:addResponse("Aye?");
talkEntry:addResponse("#me nods once and rises an eyebrow.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Saren");
talkEntry:addTrigger("Eisenfaust");
talkEntry:addResponse("Aye?");
talkEntry:addResponse("Wat gibt's?");
talkEntry:addResponse("#me nickt dir zun und zieht eine Braue hoch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Aye, then go and collect those things I asked you for.");
talkEntry:addResponse("If ya say so.");
talkEntry:addResponse("Alright, have fun!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Aye, dann mach dich auf dem Weg und sammel was ich von dir wollte!");
talkEntry:addResponse("Na wenn du meinst");
talkEntry:addResponse("Is gut, viel Vergn�gen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("What did ya say? I hope I didn't hear ya correctly!");
talkEntry:addResponse("You say no... no to me, who do ya think your speaking to?");
talkEntry:addResponse("With that attitude, ya won't become a good smith.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Wat sachste, ich hoffe ich habe mich verh�rt?!");
talkEntry:addResponse("Du sagst Nein...nein zu mir, wat denkst du mit wem du sprichst!");
talkEntry:addResponse("Dann nich, so wird nie was aus dir!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Eh..what did you just say about my mother?");
talkEntry:addResponse("What are you jabbering about?");
talkEntry:addResponse("Nah, I don't wanna buy that!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Eh..wat hast du grad �ber meine Mutter gesagt?");
talkEntry:addResponse("Wat quasselst du da?");
talkEntry:addResponse("Nay, ich will dat nich kaufen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me streicht sich �ber seinen langen Bart.", "#me untangles his long beard.");
talkingNPC:addCycleText("#me blickt sich mistrauisch um und kratzt sich anschlie�end breit grinsend am Hintern.", "#me looks around suspiciously then scratches his buttocks and grins broadly.");
talkingNPC:addCycleText("#me nimmt eine Bierflasche aus seiner Tasche und trinkt einen Schluck", "#me pulls a bottle of beer from his bag and takes a swig.");
talkingNPC:addCycleText("#me wischt sich mit dem Handr�cken �ber die Stirn.", "#me wipes with his hand over his forehead.");
talkingNPC:addCycleText("#me brummt leise etwas in seinen Bart.", "#me grumbles something into his beard.");
talkingNPC:addCycleText("#me streicht mit zusammengeniffenen Augen �ber sein Hemd aus Pferdehaar, etwas Staub l�st sich daraus und schwebt zu Boden.", "#me pats his shirt made of horse-hair. Some dust gets released and sinks to the ground.");
talkingNPC:addCycleText("#me grinst breit, ein goldener Zahn blitzt hervor.", "#me shows a broad grin, a golden tooth is shown for a second.");
talkingNPC:addCycleText("#me pfeift die Melodie eines alten Bergwerkliedes.", "#me whistles the tune of an old miner's song.");
talkingNPC:addCycleText("#me kartzt sich an der knubbeligen Nase.", "#me scratches his knobby nose.");
talkingNPC:addCycleText("#me blickt mit zusammengeniffenen Augen in den Himmel.", "#me glances to the sky with narrowed eyes.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(2);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein in F�llen gekleideter Zwerg, stolz tr�gt er seinen pr�chtigen Bart zur Schau.", "A proud looking dwarf, dressed in fur. His beard is enormous.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 810);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 23);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 2113);
mainNPC:setEquipment(10, 697);
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