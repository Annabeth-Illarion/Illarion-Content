--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>. 
]]
--------------------------------------------------------------------------------
-- NPC Name: Nargon Hammerfist                                           None --
-- NPC Job:  Miner                                                            --
--                                                                            --
-- NPC Race: dwarf                      NPC Position:  42, 55, 100            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Authors:  Rincewind                                                        --
--           Estralis Seborian                                                --
--                                                       easyNPC Parser v1.23 --
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
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] This NPC is the tutor Nargon Hammerfist. Keywords: Hello, Help, Skip tutorial."));
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
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] You have decided to skip the tutorial. Please choose a realm to be the home for your character by stepping through the corresponding portal on one of the three islands to the south."));
talkEntry:addConsequence(npc.base.consequence.warp.warp(36, 94, 100));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("�berspring");
talkEntry:addTrigger("abbrech");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Du hast entschieden, das Tutorial zu �berspringen. Bitte w�hle ein Reich als Heimat deines Charakters aus, indem du durch das entsprechende Portal auf einer der drei Inseln im S�den trittst."));
talkEntry:addConsequence(npc.base.consequence.warp.warp(36, 94, 100));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "<", 2));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", "=", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] In order to mine, stand in front of a rock and use (double click) the pick-axe which must be held in your hands. Note that not every rock will yield coal."));
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 2));
talkEntry:addResponse("Arr, the name be Nargon, Nargon Hammerfist. Ye want coin? Harr. Only through hard labour can ye become wealthy. Never fear, Nargon will get ye started. Here, have this pick-axe. Head into the mine behind me and gather five lumps of coal. It will not be in vain!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "<", 2));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", "=", 0, nil));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Um zu sch�rfen, stell dich vor einen Stein und benutze (Doppelklick) die in der Hand gehaltene Spitzhacke. Beachte aber, dass nicht in jedem Stein Kohle zu finden ist."));
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 2));
talkEntry:addResponse("Arr, mein Name ist Nargon, Nargon Hammerfist. Wilste 'ne M�nze? Harr. Nur mit harter Arbeit kannste Reich werden. Keine Sorge, Nargon wird dir helfen. Hier haste 'ne Spitzhacke. Geh in die Mine hinter mir und sammel f�nf Brocken Kohle. Es wird nicht umsonst sein!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "<", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] In order to mine, stand in front of a rock and use (double click) the pick-axe, which must be held in your hands. Note that not every rock yields coal."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 2));
talkEntry:addResponse("Arr, the name is Nargon, Nargon Hammerfist. Ye want coin? Harr. Only through hard labour can ye become wealthy. Never fear, Nargon will get ye started. Remember the pick-axe that wicked elfess gave you? Head into the mine behind me and gather five lumps of coal. It won't be in vain!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "<", 2));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Um zu sch�rfen, stell dich vor einen Stein und benutze (Doppelklick) die in der Hand gehaltene Spitzhacke. Beachte aber, dass nicht in jedem Stein Kohle zu finden ist."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 2));
talkEntry:addResponse("Arr, mein Name ist Nargon, Nargon Hammerfist. Wilste 'ne M�nze? Harr. Nur mit harter Arbeit kannste Reich werden. Keine Sorge, Nargon wird dir helfen. Kannste dich noch an die Spitzhacke erinnern, die dir die verruchte Elfe gegeben hat? Geh in die Mine hinter mir und sammel f�nf Brocken Kohle. Es wird nicht umsonst sein!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] You are awarded a ruby."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(21, 5, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 3));
talkEntry:addResponse("Oi! Ye did it, thanks for the coal! As an honest dwarven trader, I'll give you this ruby in exchange. Harr! Told ye the work wouldn't be in vain! My kinsman Nimbur, down at the brick house, can teach ye another lesson about dwarven crafting.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", ">", 4, nil));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Du erh�ltst einen Rubin."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(21, 5, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(312, "=", 3));
talkEntry:addResponse("Ui! Du hast es geschafft, danke f�r die Kohle! Als 'nen anst�ndiger Zwergenh�ndler, will ich dir diesen Rubin als Ausgleich geben. Harr! Hab' ja gesagt, dass es nicht umsonst sein wird! Mein Zwergenbruder Nimbur, da unten beim Steinhaus, kann dir noch was in Sachen Zwergenhandwerk beibringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", "=", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 599, nil));
talkEntry:addResponse("What!? Ye lost your pick-axe? How do ye expect to become rich if ye keep losing yer belongings? Take this replacement; now off to the mines with ye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2763, "all", "=", 0, nil));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.item.item(2763, 1, 599, nil));
talkEntry:addResponse("Was? Du hast deine Spitzhacke verloren? Wie denkste denn reich zu werden, wenn du deine Sachen verlierst? Nimm die als Ersatz und ab mir dir in die Mine!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] In order to mine, stand in front of a rock and use (double click) the pick-axe, which must be held in your hands. Note that not every rock yields coal."));
talkEntry:addResponse("Well, well, well. Hard work is hard work. Harr. Please bring me at least five lumps of coal. If ye cannot find coal in one corner of the mine, try the other!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", "<", 5, nil));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Um zu sch�rfen, stell dich vor einen Stein und benutze (Doppelklick) die in der Hand gehaltene Spitzhacke. Beachte aber, dass nicht in jedem Stein Kohle zu finden ist."));
talkEntry:addResponse("Nun, nun. Harte Arbeit ist harte Arbeit. Harr. Bring mir bitte mindestens f�nf Brocken Kohle. Wenn du keine Kohle in der einen Ecke der Mine finden kannst, versuch es in 'ner Anderen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Arr, now ye know how to mine for gems and gold. What else is there to learn!? Ye might become rich, aye. My kinsmate Nimbur, down at the brick house, can teach ye another lesson about dwarven crafting.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(312, "=", 3));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Arr, nun wei�te wie du Gold und Edelsteinen finden kannst. Was willst du denn noch lernen?! Vielleicht wirste reich, aye. Mein Zwergenbruder Nimbur, da unten beim Steinhaus, kann dir noch was in Sachen Zwergenhandwerk beibringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me streicht sich durch seinen langen Bart: 'Arr, ich zeige dir wie du Rohstoffe sch�rfst.'", "#me scratches his beard: 'Arr...! I will show you how to gather resources.'");
mainNPC:addLanguage(0);
mainNPC:addLanguage(2);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Das ist dein Tutor Nargon Hammerfist der Bergarbeiter.", "This is your tutorial guide, Nargon Hammerfist the miner.");
mainNPC:setUseMessage("Finger weg!", "Do not touch me!");
mainNPC:setConfusedMessage("Bitte wechsle die Sprache deines Charakters zur Gemeinsprache mit dem Befehl '!l common'.", "Please switch the language of your character to the common tongue with the command '!l common'.");
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

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, texttype, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END