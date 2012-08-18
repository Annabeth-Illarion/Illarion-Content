--------------------------------------------------------------------------------
-- NPC Name: Flori                                                       None --
-- NPC Job:  Beast of burden                                                  --
--                                                                            --
-- NPC Race: halfling                   NPC Position:  883, 632, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Authors:  Nanuk                                                            --
--           Estralis Seborian                                                --
--                                                                            --
-- Last parsing: August 18, 2012                          easyNPC Parser v1.2 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (2, 883, 632, 0, 4, 'Flori', 'npc.flori', 0, 0, 0, 255, 255, 255, 255, 255, 255);
---]]

require("npc.base.basic")
require("npc.base.talk")
module("npc.flori", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
talkingNPC:addCycleText("Iiihhhh-aahhhh!", "Iiihhhh-aahhhh!");
talkingNPC:addCycleText("#me stampft st�rrisch auf.", "#me stubbornly stamps one foot.");
talkingNPC:addCycleText("#me zerrt am Halfter.", "#me tears at the headcollar.");
talkingNPC:addCycleText("#me versucht den Halbling zu bei�en.", "#me tries to bite the halfling.");
talkingNPC:addCycleText("#me sch�ttelt seinen Kopf.", "#me tosses his head.");
talkingNPC:addCycleText("#me tritt mit den Hinterl�ufen aus.", "#me kicks with his hind legs.");
talkingNPC:addCycleText("#me b�umt sich auf.", "#me rears up.");
talkingNPC:addCycleText("#me l�sst ein paar Esels�pfel fallen.", "#me drops some mule droppings.");
talkingNPC:addCycleText("#me schl�gt mit dem Schwanz nach ein paar Fliegen.", "#me wags his tail to get rid of some flies.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dies ist Flori, der st�rrische Esel. Aus technischen Gr�nden wird der NPC als Kuh angezeigt.", "This is Flori, the stubborn mule. Due to technical reasons, this NPC is shown as cow.");
mainNPC:setUseMessage("Iiihhhh-aahhhh!", "Iiihhhh-aahhhh!");
mainNPC:setConfusedMessage("Iiihhhh-aahhhh?", "Iiihhhh-aahhhh?");
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END