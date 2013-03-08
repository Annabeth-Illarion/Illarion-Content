--------------------------------------------------------------------------------
-- NPC Name: Daniel Brock                                            Runewick --
-- NPC Job:  Carpenter                                                        --
--                                                                            --
-- NPC Race: human                      NPC Position:  904, 827, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Zot                                                              --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 904, 827, 0, 4, 'Daniel Brock', 'npc.daniel_brock', 0, 3, 3, 199, 199, 199, 238, 216, 174);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("development.daniel_brock", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Daniel Brock the carpenter. Keywords: quest"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Daniel Brock der Schreiner. Schl�sselw�rter: Quest"));
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
talkEntry:addResponse("Hello, what do you need?");
talkEntry:addResponse("Good day, what do you need?");
talkEntry:addResponse("I'm Daniel Brock, what can I do for you?");
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
talkEntry:addResponse("Hallo, was brauchst du?");
talkEntry:addResponse("Guten Tag, was willst du?");
talkEntry:addResponse("Ich bin Daniel Brock, was kann ich f�r dich tun?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Hello, what do you need?");
talkEntry:addResponse("Good day, what do you need?");
talkEntry:addResponse("I'm Daniel Brock, what can I do for you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Hallo, was brauchst du?");
talkEntry:addResponse("Guten Tag, was willst du?");
talkEntry:addResponse("Ich bin Daniel Brock, was kann ich f�r dich tun?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("#me chuckles, 'I'll be seeing you again I hope.'");
talkEntry:addResponse("Aye... another time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addResponse("#me lacht: 'Wir werden uns wiedersehen, da bin ich mir sicher.");
talkEntry:addResponse("Ja, bis zum n�chsten mal.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("#me chuckles, 'I'll be seeing you again I hope.'");
talkEntry:addResponse("Aye... another time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("#me lacht: 'Wir werden uns wiedersehen, da bin ich mir sicher.");
talkEntry:addResponse("Ja, bis zum n�chsten mal.");
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
talkEntry:addResponse("Mir geht es gut, danke der Nachfrage.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I'm Daniel Brock, who are you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Daniel Brock, wer bist du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I'm carpenter, if you want to know more about it, ask me for a task. I'm sure I have something for you to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin Schreiner, falls du mehr dar�ber erfahren m�chtest, frag mich nach einer Aufgabe. Ich hab sicher etwas f�r dich zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I'm carpenter, if you want to know more about it, ask me for a task. I'm sure I have something for you to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin Schreiner, falls du mehr dar�ber erfahren m�chtest, frag mich nach einer Aufgabe. Ich hab sicher etwas f�r dich zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(9, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(74, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 1));
talkEntry:addResponse("A task..ah yes, yes, of course. Take this old hatchet of mine and collect twenty pieces of deciduous wood from the apple trees outside the city. Then return to the workshop and saw the peices of deciduous wood into boards at the workbench with the saw I'll give you, and show them to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(9, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(74, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 1));
talkEntry:addResponse("Eine Aufgabe..ah ja, ja, sicher. Nimm dieses alte Beil von mir und sammel 20 Laubholzscheite bei einem der Apfelb�ume au�erhalb der Stadt. Dann kommst du hierher zur�ck und s�gst die Scheite bei der Werkbank mit dieser S�ge die ich dir gebe zu Brettern und zeigst sie mir dann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(9, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(74, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 1));
talkEntry:addResponse("A task..ah yes, yes, of course. Take this old hatchet of mine and collect twenty pieces of deciduous wood from the apple trees outside the city. Then return to the workshop and saw the peices of deciduous wood into boards at the workbench with the saw I'll give you, and show them to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(9, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(74, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 1));
talkEntry:addResponse("Eine Aufgabe..ah ja, ja, sicher. Nimm dieses alte Beil von mir und sammel 20 Laubholzscheite bei einem der Apfelb�ume au�erhalb der Stadt. Dann kommst du hierher zur�ck und s�gst die Scheite bei der Werkbank mit dieser S�ge die ich dir gebe zu Brettern und zeigst sie mir dann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2716, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 2));
talkEntry:addResponse("Well done, the boards look great. Do you want another task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2716, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 2));
talkEntry:addResponse("Gut gemacht, die Bretter sehen gut aus. Willst du eine weitere Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2716, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 2));
talkEntry:addResponse("Well done, the boards look great. Do you want another task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2716, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 2));
talkEntry:addResponse("Gut gemacht, die Bretter sehen gut aus. Willst du eine weitere Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2716, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addResponse("I wanted 20 deciduous wood boards, come back once you have fulfilled this task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2716, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Ich wollte 20 Laubholzbretter haben, komm wieder wenn du die Aufgabe erf�llt hast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(2715, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 3));
talkEntry:addResponse("Let's make some wooden cups from the deciduous boards now. You will need a plane for that, which I'll give you. Then you go to the workbench next to me and produce five wooden cups, which you can show me once you are done.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(2715, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 3));
talkEntry:addResponse("Nun stellen wir aus den Laubholzbrettern Holzbecher her. Daf�r brauchst du einen Hobel den ich dir gebe, dann setzt du dich auf den Stuhl da gleich neben mich bei der Werkbank und machst f�nf Holzbecher, diese zeigst du mir wenn du fertig bist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(2715, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 3));
talkEntry:addResponse("Let's make some wooden cups from the deciduous boards now. You will need a plane for that, which I'll give you. Then you go to the workbench next to me and produce five wooden cups, which you can show me once you are done.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(2715, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 3));
talkEntry:addResponse("Nun stellen wir aus den Laubholzbrettern Holzbecher her. Daf�r brauchst du einen Hobel den ich dir gebe, dann setzt du dich auf den Stuhl da gleich neben mich bei der Werkbank und machst f�nf Holzbecher, diese zeigst du mir wenn du fertig bist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2185, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2185, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 4));
talkEntry:addResponse("Well done, the cups look pretty good. Do you want another task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2185, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2185, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 4));
talkEntry:addResponse("Gut gemacht, die Becher sehen gut aus. Wollt Ihr eine weitere Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2185, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2185, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 4));
talkEntry:addResponse("Well done, the cups look pretty good. Do you want another task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2185, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2185, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 4));
talkEntry:addResponse("Gut gemacht, die Becher sehen gut aus. Wollt Ihr eine weitere Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2185, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addResponse("I wanted five wooden cups, come back once you have fulfilled this task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(2185, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Ich wollte f�nf Holzbecher, komm wieder wenn du die Aufgabe erf�llt hast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(2752, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 5));
talkEntry:addResponse("Alright, now go out and collect five boughs. Once you have five boughs, come back here and produce five hammer handles for me using these carving tools I'll give you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(2752, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 5));
talkEntry:addResponse("Gut, nun geh hinaus und sammel bei den Apfelb�umen f�nf �ste. Sobald du sie zusammen hast, komm hierher zur�ck und stell aus den �sten f�nf Hammergriffe hier, dazu brauchst du ein Schnitzmesser, dass ich dir gebe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(2752, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 5));
talkEntry:addResponse("Alright, now go out and collect five boughs. Once you have five boughs, come back here and produce five hammer handles for me using these carving tools I'll give you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(2752, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 5));
talkEntry:addResponse("Gut, nun geh hinaus und sammel bei den Apfelb�umen f�nf �ste. Sobald du sie zusammen hast, komm hierher zur�ck und stell aus den �sten f�nf Hammergriffe hier, dazu brauchst du ein Schnitzmesser, dass ich dir gebe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2541, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2541, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 6));
talkEntry:addResponse("Well done, the hammer handles look perfect. It will take a while for you to become a master in carpentry, but I hope I have taught you some of the basics at least.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2541, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2541, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 6));
talkEntry:addResponse("Gut gemacht, die Hammergriffe sehen sehr gut aus. Bis du ein Meister in dem Fach wirst dauert es sicher noch etwas, aber ich hoffe du beherscht nun zumindest die Grundlagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2541, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2541, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 6));
talkEntry:addResponse("Well done, the hammer handles look perfect. It will take a while for you to become a master in carpentry, but I hope I have taught you some of the basics at least.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2541, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2541, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(713, "=", 6));
talkEntry:addResponse("Gut gemacht, die Hammergriffe sehen sehr gut aus. Bis du ein Meister in dem Fach wirst dauert es sicher noch etwas, aber ich hoffe du beherscht nun zumindest die Grundlagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2541, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addResponse("I wanted five hammer handles, come back once you have fulfilled this task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2541, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Ich wollte f�nf Hammergriffe, komm wieder wenn du die Aufgabe erf�llt hast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".*");
talkEntry:addResponse("I don't have anything more for you to do. Thank you for the help though!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ich habe nichts weiter f�r dich zu tun. Aber danke nochmals f�r deine Hilfe!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "<", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".*");
talkEntry:addResponse("I could need some help, just ask me for a task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(713, "<", 6));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ich k�nnte etwas Hilfe gebrauchen, frag mich ruhig nach einer Aufgabe. Ich habe sicher etwas f�r dich zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("You are not a citizen of Runewick. I don't have anything for you to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Du scheinst kein B�rger Runewick zu sein. Ich habe nichts f�r dich zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me schaut sich gelangweilt um.", "#me looks around bored.");
talkingNPC:addCycleText("#me kratzt sich am Kopf.", "#me scratches his head.");
talkingNPC:addCycleText("Wenn du Hilfe beim Schreinern braucht dann frag nur mich!", "If you need any help in carpentry, just ask me!");
talkingNPC:addCycleText("#me g�hnt verhalten.", "#me yawns restrained.");
talkingNPC:addCycleText("#me schaut sich kurz um und kratzt sich anschlie�end an seinem Hintern.", "#me looks around briefly and scratches his bum.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("", "");
mainNPC:setUseMessage("Fass mich nicht an!", "Hands off!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 831);
mainNPC:setEquipment(3, 814);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 827);
mainNPC:setEquipment(10, 53);
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