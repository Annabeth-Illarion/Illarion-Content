--------------------------------------------------------------------------------
-- NPC Name: Elvaine Morgan                                          Runewick --
-- NPC Job:  Archmage                                                         --
--                                                                            --
-- NPC Race: elf                        NPC Position:  898, 775, 2            --
-- NPC Sex:  male                       NPC Direction: east                   --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                                            --
-- Last parsing: August 18, 2012                          easyNPC Parser v1.2 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (3, 898, 775, 2, 2, 'Elvaine Morgan', 'npc.elvaine_morgan', 0, 2, 0, 168, 165, 187, 250, 239, 237);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.consequence.treasure")
require("npc.base.talk")
module("npc.elvaine_morgan", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Archmage Elvaine Morgan the ruler of Runewick. Keywords: Runewick, quest, gods, tower, magic."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Erzmagier Elvaine Morgan, der Herrscher �ber Runewick. Schl�sselw�rter: Runewick, Quest, G�tter, T�rme, Magie."));
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
talkEntry:addResponse("Elara may be with you. Do you have a  request?");
talkEntry:addResponse("Be greeted. What concern leads you to me?");
talkEntry:addResponse("Good day. Why this desire to speak to me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addResponse("Elara sei mit Euch. Habt ihr ein Anliegen das Ihr vortragen wollt?");
talkEntry:addResponse("Seid gegr��t. Welches Anliegen f�hrt Euch zu mir?");
talkEntry:addResponse("Guten Tag. Wozu, wollt Ihr mit mir sprechen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Elara may be with you. Do you have a  request?");
talkEntry:addResponse("Be greeted. What concern leads you to me?");
talkEntry:addResponse("Good day. Why this desire to speak to me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Elara sei mit Euch. Habt ihr ein Anliegen das Ihr vortragen wollt?");
talkEntry:addResponse("Seid gegr��t. Welches Anliegen f�hrt Euch zu mir?");
talkEntry:addResponse("Guten Tag. Wozu, wollt Ihr mit mir sprechen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farewell. I hope you found this conversation satisfying.");
talkEntry:addResponse("Elara shall guard your way. May it be directed by wisdom and perspicuity");
talkEntry:addResponse("See you soon! For sure the gods have woven our destinies together. Although it is just a thin thread.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Gehabt Euch wohl. Ich hoffe, Ihr befandet diese Unterhaltung f�r zufrieden stellend.");
talkEntry:addResponse("Elara geleite Euch auf Euren Weg. M�ge er von Weisheit erleuchtet sein.");
talkEntry:addResponse("Bis bald, denn gewiss haben die G�tter unsere Schicksale miteinander verwoben. - Auch wenn es nur ein geringer und kleiner Faden ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Farewell. I hope you found this conversation satisfying.");
talkEntry:addResponse("Elara shall guard your way. May it be directed by wisdom and perspicuity");
talkEntry:addResponse("See you soon! For sure the gods have woven our destinies together. Although it is just a thin thread.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Gehabt Euch wohl. Ich hoffe, Ihr befandet diese Unterhaltung f�r zufrieden stellend.");
talkEntry:addResponse("Elara geleite Euch auf Euren Weg. M�ge er von Weisheit erleuchtet sein.");
talkEntry:addResponse("Bis bald, denn gewiss haben die G�tter unsere Schicksale miteinander verwoben. - Auch wenn es nur ein geringer und kleiner Faden ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("All in all, your question is noble but not very important.");
talkEntry:addResponse("I'm pleased to see you care about my welfare. Although I like to affirm, that there are only few problems a man of my abilities isn't able to handle.");
talkEntry:addResponse("#me opens his hands in a welcoming gesture. 'Runewick is my child and I worry about it, like every parents worry about their children.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Im Gro�en und Ganzen gesehen, ist Eure Frage sehr h�flich aber nicht besonders wichtig.");
talkEntry:addResponse("Ich freue mich zu sehen, das ihr Euch um mein Wohlergehen sorgt. Dennoch m�chte ich Euch versichern, es gibt nur wenige Probleme die ein Mann meiner F�higkeiten nicht zu �berwinden vermag.");
talkEntry:addResponse("#me breitet in einer dramatischen Geste die Arme aus. 'Runewick ist mein Kind und es bereitet mir Sorge, so wie alle Kinder ihren Eltern Sorgen bereiten.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("The tales of old speak my name, 'Elvaine Morgan', founder and lord of this town.");
talkEntry:addResponse("Morgan... Elvaine Morgan. Archmage of the four towers - Runewick's. What do you desire to speak about?");
talkEntry:addResponse("I'm archmage Morgan. - I hope your request is worth my time?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Mein Name ist so alt wie die Sagen aus vergangenen Zeiten und in manchen wird er wohl auch genannt werden. 'Elvaine Morgan', Gr�nder und Herr dieser Stadt.");
talkEntry:addResponse("Morgan... Elvaine Morgen. Erzmagier der vier T�rme von Runewick. Wor�ber wollt Ihr mit mir sprechen?");
talkEntry:addResponse("Ich bin Erzmagier Morgan. - Ich hoffe Euer Anliegen ist es tats�chlich Wert beredet zu werden?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("message");
talkEntry:addTrigger("news");
talkEntry:addTrigger("letter");
talkEntry:addTrigger("scroll");
talkEntry:addTrigger("parchment");
talkEntry:addTrigger("despatch");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest status] Delayed Mail V: You deliver the message from Hector Valerion to Archmage Elvaine Morgan."));
talkEntry:addResponse("#me opens the seal of the despatch and reads it: 'Interesting, Rosaline always surprises me. I guess I will decline, though.'");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("nachricht");
talkEntry:addTrigger("brief");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Schriftrolle");
talkEntry:addTrigger("Pergament");
talkEntry:addTrigger("depesche");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Queststatus] Sp�te Post V: Du �berbringst Erzmagier Elvaine Morgan die Nachricht von Hector Valerion."));
talkEntry:addResponse("#me �ffnet das Siegel der Depesche und lie�t sie: 'Interessant, Rosaline �berrascht mich ein ums andere mal. Ich muss aber wohl ablehnen.'");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hector");
talkEntry:addTrigger("Valerion");
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest status] Delayed Mail V: You deliver the message from Hector Valerion to Archmage Elvaine Morgan."));
talkEntry:addResponse("#me opens the seal of the despatch and reads it: 'Interesting, Rosaline always surprises me. I guess I will decline, though.'");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hector");
talkEntry:addTrigger("Valerion");
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Queststatus] Sp�te Post V: Du �berbringst Erzmagier Elvaine Morgan die Nachricht von Hector Valerion."));
talkEntry:addResponse("#me �ffnet das Siegel der Depesche und lie�t sie: 'Interessant, Rosaline �berrascht mich ein ums andere mal. Ich muss aber wohl ablehnen.'");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Regretfully, at the moment I don't feel like committing any tasks to you.");
talkEntry:addResponse("For sure there are many things to be done, altough I won't assign any to you right now.");
talkEntry:addResponse("Understand that there are many tasks to perform, but without any doubt you will fail at each single one of them. I have to take handle them in person.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich bedaure, zur Zeit m�chte ich keine meiner Aufgaben Euch anvertrauen.");
talkEntry:addResponse("Gewiss muss viel erledigt werden, aber an Euch werde ich im Moment nichts delegieren.");
talkEntry:addResponse("Selbstverst�ndlich habe ich eine Reihe an Aufgaben zu vergeben, aber zweifellos w�rdet Ihr an jeder einzellnen scheitern. Also muss ich mich pers�nlich damit befassen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Regretfully, at the moment I don't feel like committing any tasks to you.");
talkEntry:addResponse("For sure there are many things to be done, altough I won't assign any to you right now.");
talkEntry:addResponse("Understand that there are many tasks to perform, but without any doubt you will fail at each single one of them. I have to take handle them in person.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Ich bedaure, zur Zeit m�chte ich keine meiner Aufgaben Euch anvertrauen.");
talkEntry:addResponse("Gewiss muss viel erledigt werden, aber an Euch werde ich im Moment nichts delegieren.");
talkEntry:addResponse("Selbstverst�ndlich habe ich eine Reihe an Aufgaben zu vergeben, aber zweifellos w�rdet Ihr an jeder einzellnen scheitern. Also muss ich mich pers�nlich damit befassen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(10.0));
talkEntry:addResponse("#me nods and hands you an item silently.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(10.0));
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(11.0));
talkEntry:addResponse("#me nods and hands you an item silently.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(11.0));
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(13.0));
talkEntry:addResponse("#me nods and hands you an item silently.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(13.0));
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(14.0));
talkEntry:addResponse("#me nods and hands you an item silently.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(14.0));
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(17.0));
talkEntry:addResponse("#me nods and hands you an item silently.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(17.0));
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addResponse("#me nods and hands you an item silently.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(25.0));
talkEntry:addResponse("#me nods and hands you an item silently.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(25.0));
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(34.0));
talkEntry:addResponse("#me nods and hands you an item silently.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(34.0));
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(51.0));
talkEntry:addResponse("#me nods and hands you an item silently.");
talkEntry:addConsequence(npc.base.consequence.item.item(45, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(51.0));
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.");
talkEntry:addConsequence(npc.base.consequence.item.item(45, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(100.0));
talkEntry:addResponse("#me nods and hands you an item silently.");
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak al Kharud");
talkEntry:addCondition(npc.base.condition.quest.quest(622, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(623, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(100.0));
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.");
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(623, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am the archmage. My person bears the responsibility for the four towers of Runewick and their properties");
talkEntry:addResponse("It's my duty to advise Runewick with my most prudent advice. - Now and again with concrete deeds.");
talkEntry:addResponse("I'm the archmage, therefore I'm very busy. I advise you to ask a novice for details of my position.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin der Erzmagier. Also obliegt mir die Verantwortung �ber die T�rme Runewicks und deren Wirken. Nicht mehr, aber auch nicht weniger.");
talkEntry:addResponse("Es ist meine selbst auferlegte Pflicht, Runwick mit meinem bestem Rat und der einen oder anderen Tat zur Seite zu stehen.");
talkEntry:addResponse("Ich bin der Erzmagier hier, demnach sehr sehr besch�ftigt. Am Besten lasst ihr Euch das von einem Novizen erkl�ren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am the archmage. My person bears the responsibility for the four towers of Runewick and their properties");
talkEntry:addResponse("It's my duty to advise Runewick with my most prudent advice. - Now and again with concrete deeds.");
talkEntry:addResponse("I'm the archmage, therefore I'm very busy. I advise you to ask a novice for details of my position.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin der Erzmagier. Also obliegt mir die Verantwortung �ber die T�rme Runewicks und deren Wirken. Nicht mehr, aber auch nicht weniger.");
talkEntry:addResponse("Es ist meine selbst auferlegte Pflicht, Runwick mit meinem bestem Rat und der einen oder anderen Tat zur Seite zu stehen.");
talkEntry:addResponse("Ich bin der Erzmagier hier, demnach sehr sehr besch�ftigt. Am Besten lasst ihr Euch das von einem Novizen erkl�ren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Indeed, I am aware of Gobaith. But don't let us waste time and words beside the point.");
talkEntry:addResponse("I know about Gobaith. An archipelago far away from the mainland. I'm sure you understand that it couldn't be interesting for me by any metric.");
talkEntry:addResponse("They told me, there are people who lived on Gobaith once. You should seek those, if you're that interested in this topic.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("In der Tat ist mir Gobaith nicht unbekannt. Aber lasst uns keine Worte dar�ber verlieren, denn sie sind wohl kaum von Wert.");
talkEntry:addResponse("Nat�rlich wei� ich von Gobaith. Eine kleinere Inselgruppe, weit entfert vom Festland. Aber sicher versteht ihr, dass es kaum von Interesse f�r mich ist.");
talkEntry:addResponse("Ich lie� mir sagen es gibt Leute hier, die einst auf Gobaith lebten. Ihr solltet sie suchen und befragen, wenn ihr so bem�ht seid mehr zu erfahren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("#me gives a stiff nod. 'Be welcome. How may I help you?'");
talkEntry:addResponse("Excellent. I already willing to introduce yourself.");
talkEntry:addResponse("#me smirks. 'I understand, I'm aware of this fact, after all I'm the archmage here.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("#me nickt etwas steif. 'Sehr erfreut. Wie kann ich Euch helfen?'");
talkEntry:addResponse("Ausgezeichnet. Ich dachte mir bereits das ihr Euch vorstellen wolltet.");
talkEntry:addResponse("#me schmunzelt. 'Das wei� ich nat�rlich, schlie�lich bin ich hier der Erzmagier.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("holy");
talkEntry:addTrigger("ancestors");
talkEntry:addTrigger("path");
talkEntry:addTrigger("seeker");
talkEntry:addResponse("The traditional belief of the elven folk. - 'The Path of the Seeker'");
talkEntry:addResponse("Motivated by years of meditation and a lifespan which exceeds the life of menkind several times, most elven folk view circumstances and happenings from a diffrent point of view.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tower");
talkEntry:addTrigger("four");
talkEntry:addResponse("The four towers of Runewick. The tower of earth. The tower of water. The tower of fire and the tower of air. Together they form a mighty arcane structure which towers impressively over these lands");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mage");
talkEntry:addTrigger("magic");
talkEntry:addTrigger("wizard");
talkEntry:addTrigger("theurgy");
talkEntry:addResponse("The air is full of magic and many scholars pretend to feel it in the top of their fingers. *he winks*");
talkEntry:addResponse("Magic and Wizardry. Since the beginning those are the tools of Runewick's growth. There is a reason why the archmage is the leader of the four towers.");
talkEntry:addResponse("Magic is omnipresent in the towers of Runewick. Do not touch anything, otherwise you will end up as a toad.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lor Angur");
talkEntry:addResponse("Yes, you asked arround allredy I assume? Some time ago I moved here and laid down the first stone of the four towers.");
talkEntry:addResponse("Indeed, long time ago I spend my time in Lor Angur. But this is the past and there are few reasons to invest my time thinking of it.");
talkEntry:addResponse("You are well aware, once I lived in Lor Angur. But actually I will not bother to talk about it at the moment.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("This is Runewick. each of the four towers represents an elemet. Earth. Water. Fire. Air. Here wisdom is the most precious good.");
talkEntry:addResponse("Runewick isn't just a town, you must understand. Runewick's name symbols wisdom and the power of mind.");
talkEntry:addResponse("I thank Elara every day for the powerful mind she awards the citizens of the four towers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Dies ist Runewick. Jeder der vier T�rme steht f�r ein Element. Erde. Wasser. Feuer. Luft. Hier ist die Weisheit der Leute Gut.");
talkEntry:addResponse("Runewick ist nicht nur eine Stadt, m�sst Ihr wissen. Runewick's Name steht f�r Weisheit und die Kraft des Geistes.");
talkEntry:addResponse("Ich danke Elara jeden Tag f�r die starke geistige Kraft die sie den B�rgern der vier T�rme verleiht. Denn die Weisheit selbst ist unser h�chstes Gut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lor Angur");
talkEntry:addResponse("Ja, ihr habt Euch wohl bereits umgeh�rt, nicht wahr? Ich zog einst aus Lor Angur hier her und legte den Grundstein der vier T�rme.");
talkEntry:addResponse("In der Tat, vor langer Zeit lebte ich in Lor Angur. Aber diese Zeit ist fern und es gibt wenig Gr�nde meine Zeit damit zu vertun, dar�ber zu sinnieren.");
talkEntry:addResponse("Einst lebte ich in Lor Angur, ihr seid gut unterichtet. Aber es liegt mir fern mich mit Euch dar�ber zu unterhalten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Magie");
talkEntry:addTrigger("zauber");
talkEntry:addResponse("Nun, Runewick ist durchwirkt von Magie und viele Gelehrte meinen sie k�nnten das Prickeln in den Fingerspitzen f�hlen. *zwinkert*");
talkEntry:addResponse("Magie und Zauberei, darauf hat sich Runewick seit je her besonnen. Nun schlie�lich leitet nicht umsonst ein Erzmagier das Geschick der vier T�rme.");
talkEntry:addResponse("Magie ist hier in den T�rmen Runewicks allgegenw�rtig. Fasst nicht die falschen Dinge an, oder es mag sein, dass Ihr Euch eines Tages in einen Frosch verwandelt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("turm");
talkEntry:addTrigger("t�rme");
talkEntry:addTrigger("vier");
talkEntry:addResponse("Die vier T�rme Runewicks. Der Turm der Erde. Der Turm des Wassers. Der Turm des Feuers und der Turm der L�fte. Gemeinsam bilden sie eine m�chtige arkane Struktur und sind au�erdem auch noch sehr h�bsch anzusehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("heilig");
talkEntry:addTrigger("Urahnen");
talkEntry:addTrigger("suchenden");
talkEntry:addTrigger("pfad");
talkEntry:addResponse("Der traditionelle Glaube der Elfengemeinschaft. - Der Pfad der Suchenden.");
talkEntry:addResponse("Durch meditationsbedingter geistiger Klarheit und einem Leben das �ber viele Lebensspannen der Menschen hinaus geht sehen wir Elfen die Dinge und Geschehnisse oft aus einer anderen Sichtwei�e.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I won't pretend not to dislike Valerio, although this does not concern you.");
talkEntry:addResponse("Well... I think you would know these things alredy, if you were meant to. You won't be receiving any information concering the leader of Galmair.");
talkEntry:addResponse("You will understand that my opimion on Don Guilianni is to be kept between me and him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Es macht keinen Sinn vorzugeben ich h�tte keine Differenzen mit Valerio, aber n�heres geht Euch jetzt wirklich nicht's an.");
talkEntry:addResponse("Nun... ich denke, wenn ihr von diesen Dingen wissen solltet w�sstet Ihr es bereits. Also bin ich nicht bereit Ausk�nfte hier�ber zu verteilen.");
talkEntry:addResponse("Sicherlich seid Ihr Euch im klaren dar�ber, dass meine Meinung �ber Don Guilianni eine Sache ist, die ausschlie�lich mich und Don Guilianni selbst betrifft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The metal and the coal in the mines of Galmair have fed the egoism of the citizens for years. When the mines become empty they will see that wisdom is the only worthwhile good.");
talkEntry:addResponse("Galmair attempts to collect wealth and abundance since its founding. Rationality and prudence are unknown. Dissoluteness and Greedy decisions will put the town to an end once and for all.");
talkEntry:addResponse("I don't take the citizens of Galmair for blind fools. But their aims and plans are always dominated by greed, are unpredictable.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Das Metall und die Kohlen in den B�den Galmairs n�hren die Habgier seiner B�rger. Doch wenn die Minen ersch�pft sind wird man erkennen m�ssen, dass Weisheit das einzige erstrebenswerte Gut ist.");
talkEntry:addResponse("Galmair trachtet seit j�h her nach Wohlstand und Reichtum. Vernunft und Gem��igtheit sind ihnen fremd. Z�gellosigkeit und gierige Entscheidungen werden diese Stadt einmal zu Grunde richten.");
talkEntry:addResponse("Ich halte die B�rger Galmairs keinesweges f�r besinnunglo�e Leichtgeistige. Doch ihre Ziele und Pl�ne die stehts von Gier dominiert werden, sind nur wenig undurchschaubar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Queen Rosaline, well she is... a sphinx without mystery. I'm always surprised how little this bloodline learned from the mistakes of the past.");
talkEntry:addResponse("The short lifespan of mankind may limit their world. On the other hand they suprise me again and again with thier impressive deeds.");
talkEntry:addResponse("Well I remember Rosalines grandfather. A noteable human in several aspects - like his son. Now we have to observe the destiny of his daughter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("K�nigin Rosaline, nun sie ist... eine Sphinx ohne Geheimnisse. Dabei ist es erstaunlich wie wenig diese Blutslinie aus den Fehlern ihrer Vorfahren gelernt hat.");
talkEntry:addResponse("Die kurzlebigkeit der Menschen mag ihre Welt beschr�nken. Allerdings finde ich es doch immer wieder erstaunlich wozu sie denoch f�hig sind.");
talkEntry:addResponse("Nun, ich errinere mich noch gut an Rosalines Gro�vater. Ein bemerkenswerter Mensch in mancherlei Hinsicht. So wie sein Sohn. Und nun, soll sich zeigen ob dessen Tochter ein �hnliches Schicksal erwartet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Queen Rosaline, well she is... a sphinx without mystery. I'm always surprised how little this bloodline learned from the mistakes of the past.");
talkEntry:addResponse("The short lifespan of mankind may limit their world. On the other hand they suprise me again and again with thier impressive deeds.");
talkEntry:addResponse("Well I remember Rosalines grandfather. A noteable human in several aspects - like his son. Now we have to observe the destiny of his daughter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("K�nigin Rosaline, nun sie ist... eine Sphinx ohne Geheimnisse. Dabei ist es erstaunlich wie wenig diese Blutslinie aus den Fehlern ihrer Vorfahren gelernt hat.");
talkEntry:addResponse("Die kurzlebigkeit der Menschen mag ihre Welt beschr�nken. Allerdings finde ich es doch immer wieder erstaunlich wozu sie denoch f�hig sind.");
talkEntry:addResponse("Nun, ich errinere mich noch gut an Rosalines Gro�vater. Ein bemerkenswerter Mensch in mancherlei Hinsicht. So wie sein Sohn. Und nun, soll sich zeigen ob dessen Tochter ein �hnliches Schicksal erwartet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("If an enemy knows about somones honorable code, may this be a dangerous barrier for those who perceive honor as godly good.");
talkEntry:addResponse("Cadomyrs code of honor slows it down and makes their army predictable. A smart man will always be able to figure out the town's plan. Change occurs slowly, or not at all.");
talkEntry:addResponse("Cadomyr may possess strong men. But the line between courage and foolery is too thin. Cadomyr's nobility is divided by Rosaline Edwards muliebrity - making the town even weaker.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Wenn ein Feind um jemandens ehrenhaften Kodex wei�, mag sich das f�r den dem die Ehre ein g�ttliches Gut ist, eventuell als gef�hrliches Hindernis erweisen.");
talkEntry:addResponse("Cadomyrs Kodex der Ehre, macht es langsam und tr�ge - vorhersehbar. Stets, k�nnte ein kluger Mann die Pl�ne der Stadt ersinnen. Ver�nderung ereignen sich nur langsam, wenn sie nicht so und so versickern.");
talkEntry:addResponse("Cadomyr mag standhafte Streiter haben. Doch viel zu nah liegt der Unterschied zwischen Tapferkeit und Torheit. Der Adel Cadomyrs spaltet sich an der Weiblichkeit von Rosaline Edwards und Uneinigkeit schw�cht die Stadt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Albars principals stand against mine since I can remember, as well when I was mage of Lor Angur.");
talkEntry:addResponse("All things I belive in, all my opinion seems to unheard of in Albar. Do you not agree?");
talkEntry:addResponse("The nobility in Albar governs against his own folk. Well the current King seems to be less strict, but humans are fickle and not even I am able to predict his future path.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Albar stand seit jeher gegen mich und meine �berzeugungen. Schon damals, als ich noch ein Magier Lor Angurs war.");
talkEntry:addResponse("Alles woran ich Glaube und all meine �berzeugungen scheinen in Albar mit F��en getreten zu werden. Denkt Ihr nicht?");
talkEntry:addResponse("Albar regiert gegen sein eigenes Volk. Nun der jetzige Hochk�nig scheint weniger strikt zu sein, aber Menschen sind Wankelm�tig und nichteinmal ich vermag zu sagen wie er sich entscheiden mag.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("A heterogeneous folk like Gynk differs in many views. It's difficult to make a precise statement. Espeacially for this reason, it's my opinion that an organised government would be at a disadvantage.");
talkEntry:addResponse("At first glance Gynk seems chaotic. Observed it appears complex. When precisely studied - a self designed and unlimited system.");
talkEntry:addResponse("The foolish and simple instinct-driven mind which is dominating Gynk is disgusting from my point of view.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("�ber ein heterogenes Volk jenem aus Gynks ist es schwer eine pregnante Aussage zu machen. Doch gerade aus diesem Grund bin ich der Meinung das in Gynk eine organisiertere Regierung nicht von Nachteil w�hre.");
talkEntry:addResponse("Auf Ersten Blick mag einem Gynk als chaotisches Unsystem erscheinen. N�her betrachtet - komplex. Ausf�hrlich studiert - als ein sich slebst frei entwickelndes und unreguliertes System.");
talkEntry:addResponse("Die Unvernunft und Triebhaftigkeit welche in Gynk �berwiegend vorherrscht, ist mir zu wider. Unaustehlich ist mir der Gedanke, dort zu leben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I like to call Salkamar the enlighted Realm of mankind. It is not surprising that Runewick is related to this country.");
talkEntry:addResponse("The beliefs of Salkamarian Empire represent those which I have held for hundrets of years.");
talkEntry:addResponse("Should you ever visit Salkamar, I advise you to visit the library. It's a well known famous building and holds precious books and parchments.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Beinahe will ich so weit gehen und Salkamar als das erleuchtete Reich der Menschen zu bezeichnen. Es d�rfte Euch nicht �berraschen das Runewick einige Beziehungen zu jenen Landen pflegt.");
talkEntry:addResponse("Der Lichtblick unter den Reichen der Menschen. Die Werte Salkamars spiegeln zu vielen Teilen jene wieder die ich mir seit vielen Jarhunderten zu eigen gemacht habe.");
talkEntry:addResponse("Habt ihr die M�glichkeit eines Tages in die Stadt Salkamar selbst zu reisen, besucht die hie�ige Bibliothek. Sie ist weltbekannt und beherbergt ungez�hlte Schr�nke mit wertvollen B�chern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Blood God");
talkEntry:addResponse("The enitre world order of the Blood Good is determined by violence and pain. He is mighty, powerful, war-loving");
talkEntry:addResponse("He is the 'Blood God' of several blood-thirsty orcish war tribes, who takes living sacrifices. His altars are often drenched in blood. His followers are few, evil beings.");
talkEntry:addResponse("The Blood God shows some hidden wisdom and sometimes rough humor. If you like to call this behaviour humour at all... ");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Blutgott");
talkEntry:addResponse("Die Weltordnung des Blutgottes ist gepr�gt von Gewalt und Schmerz. Er ist gewaltt�tig, m�chtig, blutr�stig und kriegsliebend.");
talkEntry:addResponse("Er ist der 'Blutgott' vieler wilder, blutr�nstiger Orkkriegsst�mme, die ihm zu Ehren Sterbliche opfern. Diese Altare sind blutgetr�nkte Zeugnisse seines Charakters und seine Anh�nger sind abgrundtief b�se Kreaturen.");
talkEntry:addResponse("Der Blutgott verf�gt �ber ungeahntes, verborgenes Wissen und hat eine eigene, sehr rauhe Art von Humor. Wenn Ihr geneigt seid das Humor zu nennen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("The gods of the four towers are easy to guess. Elara gifts us Wisdom and others get blessed at Sirani's altars. And naturally, many halfings prefer Oldra.");
talkEntry:addResponse("The younger deities are worshiped, but generally not as deities. Elves often dub the younger Gods 'holy ancestors'.");
talkEntry:addResponse("Overall, the center of the 'Path of the Seeker' seems to be comprised of tolerance, personal development of the individual, an all-encompassing balance, meditation, and principal spirituality.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Die G�tter der vier T�rme lassen sich schnell benennen. Elara schenkt uns stets Weisheit und so mancher findet Erleuchtung bei Siranis Altaren. Aber nat�rlich geben viele Halblinge Oldra den Vorzug.");
talkEntry:addResponse("Vielleicht werdet Ihr bemerken das die �lteren unter uns Elfen die jungen G�tter nicht als solche bezeichnen. Viel eher sind sie unsereins Heilige Urahnen.");
talkEntry:addResponse("Der Pfad der Suchenden ist ein Weg der Meditation, Spiritualit�t, geistiger Klarheit und Geduld.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Adron, the housegod of almost every tavern and inn. Young people especially get inspired by his style.");
talkEntry:addResponse("Many young folk get into Adron's way of living as well as some bards. But most of them change their beliefs when they become older.");
talkEntry:addResponse("So - ask yourself, is the truth found in wine?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Adron, fast schon die Hausgottheit aller Tavernen und Gastst�tten. Vor allem junge Leute lassen sich von seiner Art begeistern.");
talkEntry:addResponse("Viele junge Leute begeistern sich f�r Adron und auch einige Barden. Aber viele �ndern ihre Meinung und ihren Glauben als Erwachsene.");
talkEntry:addResponse("Nun fragt euch selbst, liegt im Wein die Warheit?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("They say Br�gon was the first god, who left Illarion. But from time to time he still visits it and walks unknown in the guise of a mortal.");
talkEntry:addResponse("Br�gon is the god of fire. Some dwarves and orcs dedicate their lives to honor him. So they try to become as prudent and strong like the god himself.");
talkEntry:addResponse("when Br�gon left Illarion he gave Malach�n the power over his former worshippers. But this happened long ago, and nowadays you may meet followers of Br�gon again.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Man sagt Br�gon sei der erste der G�tter gewesen die Illarion verlassen haben. Aber von zeit zu Zeit soll er dennoch unerkannt unter den Sterblichen wandeln.");
talkEntry:addResponse("Br�gon ist der Gott des Feuers. Manche Zwerge und Orks richten ihr Leben ihm zur Ehre. Dabei versuchen sie ihrem Gott in St�rke und Weisheit nach zu eifern.");
talkEntry:addResponse("Als Br�gon Illarion verlies �bergab er Malach�n die Macht �ber seine Anh�nger. Aber das ist mehr als drei Lebensspannen her und nun m�get ihr sodar es Euch bestimmt ist, wieder auf Anh�nger Br�gons begegnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addTrigger("Cheerga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Once her name was written 'Cheerga' but the time moves and Illarion changes. She is the Goddess of spirits and the realm of the afterlife.");
talkEntry:addResponse("There are not many followers of Cherga. Cherga is the one who collects the dead ones, and brings them to the realms they belong to.");
talkEntry:addResponse("Some people pray to Cherga to give eternal rest to the restless, others to use the undead for a purpose.");
talkEntry:addResponse("Many necromancers are followers of Cheerga, but many fortune tellers too. Cherga does not care what the mortals do with the knowledge, and most of this knowledge has a high price.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addTrigger("Cheerga");
talkEntry:addResponse("Einst schrieb man ihren Namen 'Cheerga', doch die Zeit vergeht und Illarion wandelt sich. Sie ist die G�ttin der Nachwelten und Toten.");
talkEntry:addResponse("Cherga hat nicht viele Anh�nger. Sie ist jene, welche die Toten begleitet und in ihre vorbestimmten Reiche f�hrt. Manche beten zu ihr, um den ruhelosen Geistern den ewigen Frieden zu bringen.");
talkEntry:addResponse("Viele Nekromanten sind Chergas Anh�nger und auch einige Wahrsager. Cherga selbst k�mmert es nicht, was die Sterblichen mit dem von ihr verliehenen Wissen anfangen, doch ihr Beistand hat einen hohen Preis...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Elara is the Goddess of wisdom and knowledge. Many scholars inside of the four towers pray to her to learn and achieve knowledge.");
talkEntry:addResponse("The three big questions: The reason for greed, the reason for violence, and the reason for suffering. Most followers who claim to have come close to a suitable answer, have become very peaceful, righteous, pensive persons.");
talkEntry:addResponse("We - the worshippers of Elara believe in the power of wisdom, believe that everything follows a great plan, the Goddess helps us with ideas and grants a better understanding.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Elara ist die G�ttin des Wissens und der Weisheit. Viele der Scholare innerhalb der vier T�rme beten zu ihr um zu lernen und um Wissen zu erlangen.");
talkEntry:addResponse("Die drei gro�en Fragen: Den Grund f�r die Gier, den Grund f�r Gewalt und den Grund f�r das Leiden. Es hei�t Gelehrte die der Antwort nahe kommen sind sehr friedvolle, rechtsschaffende und nachdenkliche Personen.");
talkEntry:addResponse("Wir Anh�nger Elaras glauben an die Macht der Weisheit. Alles folgt einem gro�en Plan und die G�ttin hilft uns all dies zu verstehen und zu lernen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Eldan has never been active amongst mortals. Very few people pray to him. But since he was never heard or seen in public, no one knows how to identify him");
talkEntry:addResponse("Eldan, one of the five 'older' gods. Not much is known about their origin, and they seldom let others know something about their past. Most have left Illairon but sometimes, they return and take action.");
talkEntry:addResponse("People who follow him are often hermits, or people who love drinks and long philosophical talks");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Eldan ist der Gott des Geistes. Seine Anh�nger sind meist Einsiedler oder Leute, die nicht nein zu einem Schluck Wein und einem langen, philosophischen Gespr�ch sagen.");
talkEntry:addResponse("Eldan einer der f�nf '�lteren' G�tter. Nur wenig ist �ber deren Ursprung in Erfahrung zu bringen. Sie selbst erz�hlen nur wenig und die mei�ten haben Illarion verlassen. Niemand mag sagen an welchen Tagen sie dennoch hier wandern.");
talkEntry:addResponse("Eldan hat sich nie pers�nlich um die Sterblichen gek�mmert und nur wenige beten zu ihm. Alle behaupten, ihn schon einmal pers�nlich getroffenen zu haben, doch in Wirklichkeit haben sie sich einer Illusion hingegeben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Findari's believers were always few, since she did never care much about temples and being worshipped.");
talkEntry:addResponse("It is said that she still chooses some rare followers by herself, who then become visionaries or wandering prophets, or even great bards and artists.");
talkEntry:addResponse("Findari, one of the five 'older' gods. Not much is known about their origin, and they seldom let others know something about their past. Most have left Illairon but sometimes, they return and take action.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Findaris Anh�nger waren immer wenige, da sie nicht viel Wert auf Tempel oder die Anbetung legt.");
talkEntry:addResponse("Ich lie� mir sagen manche Wahrsager und wandernde Prophetendie es zu Bekanntschaft brachten wurden von Findari ausgew�hlt.");
talkEntry:addResponse("Findari eine der f�nf '�lteren' G�ttheiten. Nur wenig ist �ber deren Ursprung in Erfahrung zu bringen. Sie selbst erz�hlen nur wenig und die mei�ten haben Illarion verlassen. Niemand mag sagen an welchen Tagen sie dennoch hier wandern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Irmorom...God of trade and craftsmanship. Talkative, good natured and sociable like the man of this craft.");
talkEntry:addResponse("Not only dwarves pray to Irmorom, also businessmen and crafters. They try to gather wealth, in life as well as in afterlife.");
talkEntry:addResponse("For sure you will find a temple of Irmorom, hollowed out of the mountain behind the gates of Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Irmorom ist der Gott des Handwerks und des Handels. Sehr gespr�chig und gesellig, so wie die Mannen dieser Z�nfte.");
talkEntry:addResponse("Nicht nur Zwerge beten zu ihm. H�ndler, Handwerker im selben Ma�e. Doch strebt man stehts nach materiellen Wohlstand. - Im Leben wie dannach.");
talkEntry:addResponse("Mit Sicherheit werdet ihr hinter Galmairs Toren, eingeschlagen in den Berg einen Tempel Irmoroms finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Malach�n the God of battle and hunting. So the people try to pray to him for a successful hunt.");
talkEntry:addResponse("Malach�n the patron of Warriors and mercenaries. Often they hear Malach�n howling in form of a big Black wolf, before a heavy battle starts. ");
talkEntry:addResponse("Many follow the honorable Malach�n. Soldiers and Knights pray to him. Paladins and clergyman join crusaders against demonic minions of the Bloodlord, in his name...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Malach�n ist der Gott der Jagd. Und das Volk bittet ihn stets um Erfolg bei der Jagd.");
talkEntry:addResponse("Der Schutzpatron der Krieger und S�ldner. Oftmals h�rt man einen von ihnen Malach�n als den Schwarzen Wolf rufen, bevor ein schwerer Kampf ausbricht.");
talkEntry:addResponse("Viele folgen dem ehrenwerten Malach�n, Soldaten und Ritter beten zu ihm. Paladine und Kriegskleriker ziehen in seinen Namen aus um die d�monische Brut des Ungesagten zu bek�mpfen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The enitre world order of the Blood Good is determined by violence and pain. He is mighty, powerful, war-loving");
talkEntry:addResponse("He is the 'Blood God' of several blood-thirsty orcish war tribes, who takes living sacrifices. His altars are often drenched in blood. His followers are few, evil beings.");
talkEntry:addResponse("The Blood God shows some hidden wisdom and sometimes rough humor. If you like to call this behaviour humour at all... ");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Die Weltordnung des Blutgottes ist gepr�gt von Gewalt und Schmerz. Er ist gewaltt�tig, m�chtig, blutr�stig und kriegsliebend.");
talkEntry:addResponse("Er ist der 'Blutgott' vieler wilder, blutr�nstiger Orkkriegsst�mme, die ihm zu Ehren Sterbliche opfern. Diese Altare sind blutgetr�nkte Zeugnisse seines Charakters und seine Anh�nger sind abgrundtief b�se Kreaturen.");
talkEntry:addResponse("Der Blutgott verf�gt �ber ungeahntes, verborgenes Wissen und hat eine eigene, sehr rauhe Art von Humor. Wenn Ihr geneigt seid das Humor zu nennen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Narg�n... - likes to play mean tricks on some people. He posses black humour. By his hand everything becomes possible, with a good or bad outcome.");
talkEntry:addResponse("Intrigues, mean or funny tricks are Narg�n's elements. Sometimes just helps people, sometimes destroys them, often makes a big show of it.");
talkEntry:addResponse("Many gamblers pray to Narg�n, and some mad people claim to be chaos priests. But most of these people seem quite insane to me...");
talkEntry:addResponse("The believes of Narg�n's followers are totally varying, for example the mad prophet who wrote the 'Very Sacred Book of MOO' and the 'Unbelievable Stuff of BOO' did believe that when people die, they will end up in places with 'funny mushrooms'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Intrigen, gemeine oder vermeintlich lustige Tricks sind Narg�ns Metier. Manchmal ist er hilfsbereit, manchmal zerst�rerisch, stets aber verursacht sein Verhalten gro�es Aufsehen.");
talkEntry:addResponse("Verr�ckte Propheten und Einsiedler, oder brabbelnde Idioten... dies sind diejenigen die Narg�n folgen. Gl�ckspieler... Verr�ckte - und so weiter.");
talkEntry:addResponse("Die Glaubensansichten von Narg�ns Anh�ngern sind v�llig uneinheitlich und verworren. Aber anders w�re es dem Gott des Chaos wohl nicht recht zu machen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("For the growing of grain and food, birth of children. - Many halflings pray to Oldra the Goddess of life and fertility.");
talkEntry:addResponse("Oldra dislikes greedy and selfish persons, rather she prefers a good meal and gardens and domestic animals. Understandably, many halflings pray to her.");
talkEntry:addResponse("Oldra the mother figure under the gods. Her advise is wise and helpful. She protects all kind of living beings.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("F�r eine gute Ernte oder f�r den Segen eines Neugeborenen. - Viele Halblinge beten zu Oldra, der G�ttin der Fruchtbarkeit und des Lebens.");
talkEntry:addResponse("Oldra verabscheut gierige und selbsts�chtige Leute. Viel mehr sch�tzt sie gutes Essen, liebt G�rten und Haustiere. Da wundert es nicht das viele Halblinge zu ihr beten.");
talkEntry:addResponse("Oldra - eine eher m�tterliche Gottheit. Und sehr weise. Alle Arten des Lebens liegen ihr am Herzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ronagan the patron of all those who live in the shadow of life. Thieves, beggars, prostitutes... tramps.");
talkEntry:addResponse("I know merchants who pray and donate money to Ronagan to avoid being robbed.");
talkEntry:addResponse("Altough Ronagan plays jokes on those representing the authorities, he dislikes betrayal between accomplices as much as any kind of authority or law abiding system.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ronagan ist der Schutzpatron all jener die im Schatten der menschlichen Gesellschaften leben. Diebe, Bettler, Dirnen... Landstreicher.");
talkEntry:addResponse("Ich kenne H�ndler die beten und opfern Ronagan Geld, um zu verhindern das sie ausgeraubt werden.");
talkEntry:addResponse("Auch wenn Ronagan so manche Obrikeit zum Narren h�lt, verabscheut er doch Vertrauensbruch oder Verrat im selben Ma�e wie staatliche Autorit�ten und Gesetze.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oh, several young women pray to Sirani. Asking for love or to pay attention to loved ones.");
talkEntry:addResponse("Most Sirani priests are good healers. Her followers believe in peace and harmony, and most of them don't like weapons or violence. ");
talkEntry:addResponse("In the Sirani temples, poor people are healed and given food, and a place to sleep, and work if they can. Some of those become Sirani priests as well - after all is done.");
talkEntry:addResponse("Sirani dislikes rough or very selfish people. The word 'bitch' - can make her furious when someone uses it near her, or when insulted.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Oh, viele junge Frauen beten zu Sirani. Der Liebe wegen. - Und wegen anderer junger M�nner, versteht sich.");
talkEntry:addResponse("Die meisten Priester Siranis sind gute Heiler und glauben wie alle Ihre Anh�nger an ein Leben in Friede und Harmonie. In den Tempeln der G�ttin findet man stets Obdach.");
talkEntry:addResponse("Sirani mag rauschende Feste, Liebe, Spa� und das Leben selbst. Sie hasst die Missachtung von Frauen und kann sehr aufbrausend und w�tend werden, wenn ihnen nicht die n�tige Wertsch�tzung zuteil wird.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Tanora is the only still active Elder God in Illarion. Her religion dominates the lizard society. Many of her temples lie under water, and most are located at the centre of the lizardmen's under water towns.");
talkEntry:addResponse("Some legends say that when the Elder Gods left, Tanora gave her believers to Zelphia; but both Tanora and Zelphia are the same person. She herself had been assuring this to several mortal beings.");
talkEntry:addResponse("Most Zelphia believers are Lizards, sailors, or even elves. Many healers pray to her too. Her followers believe that she is a very powerful righteous goddess.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Tanora mag die unber�hrte Sch�nheit der Natur, deshalb ist sie auch die einzige der �ltern G�tter, welche nicht selten auf Illarion umherwandert.");
talkEntry:addResponse("Die Gesellschaft der Echsenmenschen wird sehr stark von den glauben an Tenora gepr�gt. Allerdings nennen sie Tanora, Zelphia.");
talkEntry:addResponse("Echsenmenschen, Fischer, Heiler, Seeleute. Das sind die Anh�nger Tanoras, der G�ttin des Wassers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ushara believers are very few, most are female old druids or old elves who met Ushara personally. Since the departure of the Elder Gods, she has put Oldra in charge, who is now being worshipped in new temples.");
talkEntry:addResponse("Ushara, one of the five 'older' gods. Not much is known about their origin, and they seldom let others know something about their past. Most have left Illarion but sometimes, they return and take action.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Als Ushara Illarion verlie�, ernannte sie Oldra zu ihrer Verteterin und so wird sie nun an Ihrer statt in neuen Tempeln verehrt.");
talkEntry:addResponse("Ushara, die Mutter - die Erde, auf der die vier T�rme Runewicks erbaut wurde. Wie mir selbst ist ihr die Verg�nglichkeit der Dinge besonders bewusst.");
talkEntry:addResponse("Ushara hat besonders wenige Anh�nger, die meisten sind weibliche alte Druiden oder Elfen. Und einige wenige von ihnen scheinen Ushara pers�nlich begegnet zu sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Friendship and Loyalty are the most precious traits of Zhambra the 'Brother God.' Never he would tolerate 'dirty' behaviour, rather he rewards loyality and honorable persons.");
talkEntry:addResponse("The followers of Zhambra are righteous and loyal ones who believe in honor and law. There should be a Temple located in Cadomyr.");
talkEntry:addResponse("Zhambra is worshipped by nobles and knights, paladins, and many soldiers in Cadomyr. During battle friendship is a percious soucre of Power.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Zhambra der Brudergott. Freundschaft und Treue sind ihm das h�chste Gut. Die Ehre eines Mannes ist ihm teuer, niemals w�rde er hinterlistige Tricks gut hei�en.");
talkEntry:addResponse("Der Gott der Freundschaft und Treue - Zhambra. Mit sicherheit findet ihr einen seiner Tempel in Cadomyr.");
talkEntry:addResponse("Zhambras Anh�nger sind eher, nun - geradlinig. Ritter, H�flinge und Krieger. In der Schlacht ist die Freundschaft der Mitstreiter eine ungleich wertvolle Kraftquelle.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Forgive me, I don't trade with you.");
talkEntry:addResponse("The business of an archmage is, well - business which only concerns the archmage himself.");
talkEntry:addResponse("The market is located next to the entrance portals to the town. It should be impossible to miss it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Bitte verzeiht, aber ich handle nicht mit Euch.");
talkEntry:addResponse("Eines Erzmagiers Gesch�fte sind, nun ja - Gesch�fte die nur f�r den Erzmagier von Revelanz sind.");
talkEntry:addResponse("Der Marktplatz befindet sich gleich vor den Portalen zur Stadt. Es sollte unm�glich sein daran vorbei zu laufen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("The signs I observed are clear, soon they will be omens everywhere else.");
talkEntry:addResponse("Only a fool ignores implausible possibilities and stays with only obvious facts.");
talkEntry:addResponse("Sometimes I think... - If people could put rainbows in zoos, they'd do it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Die Zeichen, die ich bemerkte sind eindeutig und schon bald werden sie auch weithin zu sehen sein.");
talkEntry:addResponse("Nur der Narr ignoriert die unwahrscheinlichsten M�glichkeiten und versteift sich auf das was offensichtlich ist.");
talkEntry:addResponse("An manchen Tagen denke ich... - K�nnten die Leute Regenb�gen in Zoos stecken, sie w�rden's glatt tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("A word?");
talkEntry:addResponse("You desire to speak?");
talkEntry:addResponse("Please make it short.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Auf ein Wort?");
talkEntry:addResponse("Welches Anliegen f�hrt Euch zu mir?");
talkEntry:addResponse("Bitte fasst Euch kurz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("A word?");
talkEntry:addResponse("You desire to speak?");
talkEntry:addResponse("Please make it short.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Auf ein Wort?");
talkEntry:addResponse("Welches Anliegen f�hrt Euch zu mir?");
talkEntry:addResponse("Bitte fasst Euch kurz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("#me gives you a gentle, serious nod.");
talkEntry:addResponse("Are we done?");
talkEntry:addResponse("Elara's Wisdom may enlight you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("#me nickt sanft aber bestimmt.");
talkEntry:addResponse("War das alles?");
talkEntry:addResponse("Elaras Weisheit m�ge Euch erleuchten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("#me smiles a little bit and remains silent.");
talkEntry:addResponse("Things someone think they want, often are not the things he or she needs.");
talkEntry:addResponse("Why not?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("#me l�chelt ein wenig und schweigt.");
talkEntry:addResponse("Jene Dinge von denen einer glauben mag, er wolle sie, sind oft nicht die die einer braucht.");
talkEntry:addResponse("Warum nicht?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addResponse("Why? What is your reasoning?.");
talkEntry:addResponse("I see.");
talkEntry:addResponse("If you prefer to say it this way...");
talkEntry:addResponse("Virtue needs some cheaper thrills");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addResponse("Weshalb? Was ist der Grund daf�r?");
talkEntry:addResponse("Ich verstehe.");
talkEntry:addResponse("Wenn Ihr das auf diese Art ausdr�cken wollt...");
talkEntry:addResponse("Tugend bedarf einiger billigerer Vergn�gen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#mes leuchtend graue Augen mustern achtsam die Umgebung.", "#me's gloomy grey eyes glance across the surrounding area carefully.");
talkingNPC:addCycleText("#me atmet langsam und leise aus, f�r einen Moment scheint er einem Gedanken nachzuh�ngen.", "#me breathes out slowly and quietly, for a moment he seems to reflect upon a theory, concerning a difficult topic.");
talkingNPC:addCycleText("#me streicht mit den Fingern �ber die Seiten seines Buches.", "#me moves his fingers over the pages of his book.");
talkingNPC:addCycleText("#mes Augen �berfliegen einige Zeilen des Textes innerhalb seines Buches.", "#me eyes some sentences written down in his book.");
talkingNPC:addCycleText("#me f�hrt mit der Fingerspitze an eine bestimmte Stelle der Buchseiten und schl�gt diese auf.", "#me places his fingertip on a certain place at the side of a closed book and opens it.");
talkingNPC:addCycleText("#me nickt sachte. Dann wirft er einen Blick zur Seite.", "#me nods and glances for a moment at his side.");
talkingNPC:addCycleText("#me greift sich kruz an den Kopf und seine Stirn legt sich in sanften Falten.", "#me grabs the back of his head and for a second his forehead shows kindly wrinkles.");
talkingNPC:addCycleText("#me reibt sich mit dem Zeigefigner an der Nase. Im n�chsten Moment schnippst er mit den Fingern und ruft 'Ich habs!'.", "#me rubs his nose with his finger. In the next moment he clicks his fingers and call's out 'Got it!'.");
talkingNPC:addCycleText("#mes graue Augen scheinen f�r einen Moment hell auf zu leuchten.", "#me's grey eyes seems to be more gloomy than usual for a couple of seconds.");
talkingNPC:addCycleText("#mes l�chelt gutm�tig und f�r einen Augenblick ist ein merkw�rdiges Glitzern in seinen Pupillen zu sehen.", "#me smiles well-tempered, for a moment a shiny sparkle appers in his eyes.");
talkingNPC:addCycleText("#me dreht seinen Kopf ein wenig und f�r kurze Zeit scheinen seine Gedanken in der Ferne zu verweilen.", "#me turns his head, for a short ammount of time his thoughts seem far away.");
talkingNPC:addCycleText("#me murmelt leise. 'Das Problem mit der Zukunft ist, dass sie zur Gegenwart wird...'", "#me mumbles quietly. 'The problem with the future is that it keeps turning into the present.'");
mainNPC:addLanguage(0);
mainNPC:addLanguage(3);
mainNPC:addLanguage(10);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein galanter Elf, mit langem geflochtenen Haar und leuchtenden grauen Augen. Ihn umgibt eine Aura von Klarheit und Einsicht die jedem in seiner N�he mit zu rei�en scheint.  Sein Gesicht wirkt gelassen und gewandt erscheinen seine Bewegungen.", "A gallant elf, long plaited Hair and gloomy grey eyes. A aura of insight and perspicuity surrounds him, affecting all people close to him. His face seems calm and his moves graceful.");
mainNPC:setUseMessage("Macht Euch doch keine M�he, ihr verletzt Euch noch selbst.", "Do not try, you might get hurt");
mainNPC:setConfusedMessage("#me schaut dich ausdruckslos an. 'Wie bitte?'", "#me looks at you motionless. 'Excuse me?'");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 807);
mainNPC:setEquipment(11, 558);
mainNPC:setEquipment(5, 209);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 823);
mainNPC:setEquipment(10, 53);
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