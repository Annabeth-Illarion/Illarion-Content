--------------------------------------------------------------------------------
-- NPC Name: Prandlin                                                    None --
-- NPC Job:  none                                                             --
--                                                                            --
-- NPC Race: halfling                   NPC Position:  789, 790, 0            --
-- NPC Sex:  male                       NPC Direction: northeast              --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                                            --
-- Last parsing: July 25, 2011                           easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (2, 789, 790, 0, 1, 'Prandlin', 'npc.prandlin', 0, 2, 5, 123, 62, 9, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("npc.prandlin", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("'Dort! Prandlins Gehstock... er sieht aus als w�re er fr�her ein Holzbein gewesen! Das muss das Holzbein von Holzbein-Jack sein! Aber wie kann ich es nehmen ohne, dass der alte Halbling aufwacht?'"));
talkEntry:addResponse("#me umklammert seinen Gehstock und zieht die Wolldecke hoch, ohne zu erwachen. Es ist ein kurzer sch�n verzierter Stab wie ihn Magier verwenden.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("'xxx'"));
talkEntry:addResponse("xxx");
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("'Wenn es mir gelingt, einen verzierten Magierstab zu besorgen k�nnte ich versuchen diesen mit dem Stab des Alten auszutauschen, ohne das er aufwacht.'"));
talkEntry:addResponse("#me brabbelt zufrieden l�chelnd und sabbert schmatzend auf seine Wolldecke. ");
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("'xxx'"));
talkEntry:addResponse("xxx");
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("#me (.+) stab");
talkEntry:addTrigger("#me (.+) bein");
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(208, "all", "=>", 1, 1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Gro�artig! es hat geklappt. Nun besitze ich den Gehstock von Prandlin, der eigentlich Jack's Holzbein ist. Ich sollte es schnell zu ihm bringen."));
talkEntry:addResponse("#me bemerkt nicht wie der verzierte Stab gegen seinen Gehstock ausgetauscht wird und schl�ft selig weiter.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(208, 1));
talkEntry:addConsequence(npc.base.consequence.item.item(208, 1, 933, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("#me (.+) staff");
talkEntry:addTrigger("#me (.+) leg");
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(208, "all", "=>", 1, 1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("xxx"));
talkEntry:addResponse("#me xxx");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(208, 1));
talkEntry:addConsequence(npc.base.consequence.item.item(208, 1, 933, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("'Wenn es mir gelingt, einen verzierten Magierstab zu besorgen k�nnte ich versuchen diesen mit dem Stab des Alten auszutauschen, ohne das er aufwacht.'"));
talkEntry:addResponse("#me brabbelt zufrieden l�chelnd und sabbert schmatzend auf seine Wolldecke.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("'xxx'"));
talkEntry:addResponse("xxx");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hilfe");
talkEntry:addResponse("#me ist ein alter runzeliger Halbling der im Sessel eingeschlafen ist. Dabei kuschelt er sich, so gut wie m�glich an einen verzierten Magierstab.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("helfen");
talkEntry:addResponse("#me ist ein alter, runzeliger Halbling der im Sessel eingeschlafen ist. Dabei kuschelt er sich, so gut wie m�glich an einen verzierten Magierstab.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("help");
talkEntry:addResponse("XX");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("#me murmelt im Schlaf: 'Eh-n. Gnh.'");
talkEntry:addResponse("#me murmelt im Schlaf: 'Piraten werd... geh�ngt.'");
talkEntry:addResponse("#me murmelt im Schlaf: 'Piraten werd... geh�ngt.'");
talkEntry:addResponse("#me murmelt im Schlaf: 'Wie sie mein-n...'");
talkEntry:addResponse("#me murmelt im Schlaf: 'Jetzt hab ich nur noch Einen �brig...'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("?");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("#me murmelt im Schlaf: 'Hm-hhm? Ich nehm Kuchn...'");
talkEntry:addResponse("#me murmelt im Schlaf: 'Lasst den alten Prandlin in frieden...'");
talkEntry:addResponse("#me murmelt im Schlaf: 'Ja-ja.. ich k�mmere mich darum. Gleich morgen...'");
talkEntry:addResponse("#me murmelt im Schlaf: 'Uh, schon Mittag...?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("!");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("#me murmelt im Schlaf: 'Diese Piraten... verflucht sein...'");
talkEntry:addResponse("#me murmelt im Schlaf: 'Elara... vertraun wir dem Wissen...'");
talkEntry:addResponse("#me murmelt im Schlaf: 'Galmair soll sich blo� nicht f�r voll nehmn...'");
talkEntry:addResponse("#me murmelt im Schlaf: '..und dann wird Cadomyr verhandeln m�ssen..'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("xxx");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("?");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("xxx");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("!");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("xxx");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me brabbelt leise in Schlaf.", "#me xxx");
talkingNPC:addCycleText("#me dreht sich im Schlaf herum.", "#me xxx");
talkingNPC:addCycleText("#me zieht die Wolldecke um seine Beine, etwas h�her.", "#me xxx");
talkingNPC:addCycleText("#me schmatzt ein wenig.", "#me xxx");
talkingNPC:addCycleText("#me schnarcht laut und melodi�s.", "#me xxx");
talkingNPC:addCycleText("#me gibt einen grunzenden Laut von sich.", "#me xxx");
talkingNPC:addCycleText("#me sabbert in seine Wolldecke.", "#me xxx");
talkingNPC:addCycleText("#me kuschelt sich an den verzierten Magierstab, in seinen H�nden.", "#me xxx ornate mage's staff");
talkingNPC:addCycleText("#me atmet beinahe unmerklich, kaum eine Bewegung ist auszumachen.", "#me xxx");
talkingNPC:addCycleText("#me sitzt regungslos vor dem knisternden Kamin, der wohlige W�rme im Raum verbreitet.", "#me xxx");
talkingNPC:addCycleText("#me schl�ft seelig ruhig im besten Sessel des Raumes. Da wundert es nicht, dass er ein Gl�ckliches Gesicht macht.", "#me xxx");
talkingNPC:addCycleText("#me kratzt sich im Schlaf die haarige krumme Nase.", "#me xxx");
talkingNPC:addCycleText("#me beginnt leise und gackernd zu lachen, trotzdem scheint er weiter zu schlafen.", "#me xxx");
talkingNPC:addCycleText("#me murmelt im Schlaf: 'Ich muss den Erzmagier sprech...'", "#me xxx");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein steinalter Halbling, der friedlich in seine Decke gekuschelt vor sich hin schlummert.", "ENGLISH1");
mainNPC:setUseMessage("#me dreht sich auf die andere Seite und schl�ft weiter.", "ENGLISH1");
mainNPC:setConfusedMessage("#me schnarcht laut.", "#me snorts loudly.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 811);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 460);
mainNPC:setEquipment(10, 53);
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