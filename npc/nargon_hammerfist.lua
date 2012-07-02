--------------------------------------------------------------------------------
-- NPC Name: Nargon Hammerfist                                           None --
-- NPC Job:  Miner                                                            --
--                                                                            --
-- NPC Race: dwarf                      NPC Position:  42, 55, 100            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Authors:  Rincewind                                                        --
--           Estralis Seborian                                                --
--                                                                            --
-- Last parsing: July 02, 2012                           easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (1, 42, 55, 100, 6, 'Nargon Hammerfist', 'npc.nargon_hammerfist', 0, 1, 2, 100, 53, 0, 248, 198, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.consequence.warp")
require("npc.base.talk")
module("npc.nargon_hammerfist", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("reset");
talkEntry:addResponse("Noobia reset!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(309, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(310, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(311, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(313, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(314, "=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] This NPC is the Tutor Nargon Hammerfist. Keywords: Hello, help, skip tutorial."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Dieser NPC ist der Tutor Nargon Hammerfist. Schl�sselw�rter: Hallo, Hilfe, Tutorial �berspringen."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("skip");
talkEntry:addTrigger("cancel");
talkEntry:addTrigger("abort");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] You decided to skip the tutorial. Please chose a faction now by stepping through a portal on one of the islands."));
talkEntry:addConsequence(npc.base.consequence.warp.warp(35, 95, 100));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("�berspring");
talkEntry:addTrigger("abbrech");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] �BERSETZEN."));
talkEntry:addConsequence(npc.base.consequence.warp.warp(35, 95, 100));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "<", 2));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] In order to mine, stand in front of a rock and use (double click) the pick-axe which you have to hold in your hands. Note that not every rock yields coal."));
talkEntry:addResponse("Arr, the name is Nargon, Nargon Hammerfist. Only by hard labour you can become wealthy and I can show you hard labour! Here, have this pick-axe. Head for the mine and gather five lumps of coal for me. It won't be in vain!");
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "<", 2));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] �BERSETZEN."));
talkEntry:addResponse("�BERSETZEN.");
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "<", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] In order to mine, stand in front of a rock and use (double click) the pick-axe which you have to hold in your hands. Note that not every rock yields coal."));
talkEntry:addResponse("Arr, the name is Nargon, Nargon Hammerfist. Only by hard labour you can become wealthy and I can show you hard labour! Remember the pick-axe the wicked elfess gave you? Head for the mine and gather five lumps of coal for me. It won't be in vain!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "<", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] �BERSETZEN."));
talkEntry:addResponse("�BERSETZEN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", ">", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] You are awarded a ruby."));
talkEntry:addResponse("Oi! You did it, thanks for the coal. As a fair dwarven tradesman, I give you this ruby in exchange. My kinsmate Nimbur down at the brick house can teach you another lesson about dwarven craft.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(21, 5));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", ">", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Du erh�ltst einen Rubin."));
talkEntry:addResponse("�BERSETZEN.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(21, 5));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("What! You lost your pick-axe? How do you want to become rich if you keep losing your belongings? Have this replacement; now off to the mines!");
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 599, 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", "=", 0));
talkEntry:addResponse("�BERSETZEN.");
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 599, 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", "<", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] In order to mine, stand in front of a rock and use (double click) the pick-axe which you have to hold in your hands. Note that not every rock yields coal."));
talkEntry:addResponse("Well, well, well. Hard labour means that you have to work hard. Please bring me at least five lumps of coal. If you cannot find coal in one corner of the mine, try the other!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", "<", 5));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] �BERSETZEN."));
talkEntry:addResponse("�BERSETZEN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Arr, now you can mine for gems and gold. What else is there to learn!? You might become rich, aye. My kinsmate Nimbur down at the brick house can teach you another lesson about dwarven craft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 3));
talkEntry:addResponse("�BERSETZEN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me streicht sich durch seinen langen Bart: 'Arr, ich zeige dir wie du Rohstoffe sch�rfst.'", "#me scratches his beard: 'Arr...! I will show you how to gather resources.'");
mainNPC:addLanguage(0);
mainNPC:addLanguage(2);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("This is your tutorial guide Nargon Hammerfist the miner.", "Das ist dein Tutor Nargon Hammerfist der Bergarbeiter.");
mainNPC:setUseMessage("Finger weg!", "Do not touch me!");
mainNPC:setConfusedMessage("Bitte wechsle die Sprache deines Charakters zur Gemeinsprache, indem du DAS UND DAS TUST.", "Please switch the language of your character to the common tongue by DOING THIS AND THAT.");
mainNPC:setEquipment(1, 7);
mainNPC:setEquipment(3, 2390);
mainNPC:setEquipment(11, 2419);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 2763);
mainNPC:setEquipment(4, 529);
mainNPC:setEquipment(9, 2113);
mainNPC:setEquipment(10, 697);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(texttype, message, speaker) mainNPC:receiveText(speaker, message); end;
function nextCycle() mainNPC:nextCycle(); end;
function lookAtNpc(char, mode) mainNPC:lookAt(char, mode); end;
function useNPC(char, counter, param) mainNPC:use(char); end;
initNpc();
initNpc = nil;
-- END