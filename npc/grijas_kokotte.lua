--------------------------------------------------------------------------------
-- NPC Name: Grijas Kokotte                                           Galmair --
-- NPC Job:  stuff for skill                                                  --
--                                                                            --
-- NPC Race: dwarf                      NPC Position:  334, 260, 0            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Author:   Baylamon                                                         --
--                                                    Illarion easyNPC Editor --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (1, 334, 260, 0, 6, 'Grijas Kokotte', 'npc.grijas_kokotte', 0, 2, 6, 100, 113, 3, 205, 180, 137);
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
require("npc.base.talk")
module("npc.grijas_kokotte", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addResponse("[Game Help] This NPC is the cook Grijas Kokotte. Keywords: quest, spoon, food, bear, adventure, tell something, Sevenhill.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addResponse("[Spielhilfe] Dieser NPC ist der Koch Grijas Kokotte. Schl�sselw�rter: Quest, Aufgaben, Essen, L�ffel, Feuer, B�r, Erz�hl was, Siebenberg.");
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
talkEntry:addResponse("I'm Grijas and who are you?");
talkEntry:addResponse("I'm called Grijas, Grijas Kokotte, and what's your name?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Grijas und wer bist du?");
talkEntry:addResponse("Man nennt mich Grijas, Grijas Kokotte und wie nennt man dich?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.cookingAndBaking, ">", 79));
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] Feed a salmon!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 13));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("I see. You are a good cook and interested in our town. Could you please feed the Bear of Galmair a salmon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.cookingAndBaking, ">", 79));
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�r Quest] F�tter einen Lachs!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 13));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Ich sehe einen guten Koch, der auch mal was anderes tun will. Du kannst ja den B�ren mit einem Lachs f�ttern, wenn du willst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.cookingAndBaking, "<", 80));
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("cook");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.item.item(51, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 1));
talkEntry:addResponse("I can help ya if ya wanna become a cook, but first bring me ten shovels of grain, along with ten fresh apples. Also don't forget to bring clear water, here is an empty bucket for you to fill.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.cookingAndBaking, "<", 80));
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Koch");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.item.item(51, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 1));
talkEntry:addResponse("Ich kann dir helfen, falls du Koch werden willst. Bring mir aber erstma zehn Schaufeln Getreide sowie zehn frische �pfel und nen Eimer klares Wasser nich zu vergessen. Hier haste noch 'n Eimer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(52, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(52, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(51, 1, 399, nil));
talkEntry:addResponse("#me empties the bucket to his side. 'Arr, do you call this clear water? I wouldn't wash my hands in it. Clear water, I said!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(52, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(52, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(51, 1, 399, nil));
talkEntry:addResponse("#me kippt das Wasser auf den Boden. 'Das nennst du sauberes Wasser? Da wasch ich ja nicht mal meine H�nde drin!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(259, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(15, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(52, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest continues!]"));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(259, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(15, 5, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(52, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(51, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 2));
talkEntry:addResponse("Arr, well done! But next time, you bring clear water. That's enough to clean dirty spoons! Five of these apples you can feed to the bear.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(259, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(15, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(52, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest geht weiter!]"));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(259, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(15, 5, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(52, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(51, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 2));
talkEntry:addResponse("Arr, gut gemacht! Aber das n�chste Mal ist es wirklich trinkbares Wasser. Hiermit kann man ja grad mal schmutzige L�ffel abwaschen. Und bring die f�nf �pfel dem B�ren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(259, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, don't you try to trick me, I'm cook and I'm able to count. I want ten shovels of grain, along with ten fresh apples and clear water!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(259, "all", "<", 10, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, ich bin Koch und ich kann z�hlen. Ich wollte zehn Schaufeln Getreide sowie zehn frische �pfel und nen Eimer klares Wasser!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(15, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, don't you try to trick me, I'm cook and I'm able to count. I want ten shovels of grain, along with ten fresh apples and clear water!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(15, "all", "<", 10, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, Ich bin Koch und ich kann z�hlen. Ich wollte zehn Schaufeln Getreide sowie zehn frische �pfel und nen Eimer klares Wasser!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(52, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, don't you try to trick me, I'm cook and I'm able to count. I want ten shovels of grain, along with ten fresh apples and clear water!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(52, "all", "<", 1, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, Ich bin Koch und ich kann z�hlen. Ich wollte zehn Schaufeln Getreide sowie zehn frische �pfel und nen Eimer klares Wasser!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 4));
talkEntry:addResponse("Aye, I have a task for ya if you are interested. I need fifteen onions, a new cooking spoon, a wooden shovel for the mill and five fresh steaks!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 4));
talkEntry:addResponse("Aye, hab wat f�r dich zu tun, wenn du willst. 15 Zwiebeln, einen neuen Kochl�ffel, eine h�lzerne Schaufel f�r die M�hle und f�nf Steaks mit wenig Fett brauch ich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(537, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.item.item(2940, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.item.item(227, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.item.item(312, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest continues!]"));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(537, 15, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2940, 4, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(227, 1, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(312, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 5));
talkEntry:addResponse("Looks good, it's everything that I wanted ya to bring. Looks as though you could become a real good cook. The last steak is for the Bear of Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(537, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.item.item(2940, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.item.item(227, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.item.item(312, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest geht weiter!]"));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(537, 15, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2940, 4, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(227, 1, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(312, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 5));
talkEntry:addResponse("Sieht gut aus, alles da, wat ich von dir verlangt hab. Scheint, als k�nnt aus dir nen richtig guter Koch werden. Das letzte Steak ist f�r den B�ren von Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(537, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr! You're supposed to bring me fifteen onions, a new cooking spoon, a wooden shovel for the mill and five fresh steaks. Not that hard to memorise, is it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(537, "all", "<", 15, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Du sollst mir 15 Zwiebeln, einen neuen Kochl�ffel, eine h�lzerne Schaufel f�r die M�hle und f�nf Steaks bringen. Is das so schwer zu merken, eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(2940, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr! You're supposed to bring me fifteen onions, a new cooking spoon, a wooden shovel for the mill and five fresh steaks. Not that hard to memorise, is it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(2940, "all", "<", 5, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Du sollst mir 15 Zwiebeln, einen neuen Kochl�ffel, eine h�lzerne Schaufel f�r die M�hle und f�nf Steaks bringen. Is das so schwer zu merken, eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(227, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr! You're supposed to bring me fifteen onions, a new cooking spoon, a wooden shovel for the mill and five fresh steaks. Not that hard to memorise, is it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(227, "all", "<", 1, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Du sollst mir 15 Zwiebeln, einen neuen Kochl�ffel, eine h�lzerne Schaufel f�r die M�hle und f�nf Steaks bringen. Is das so schwer zu merken, eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(312, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr! You're supposed to bring me fifteen onions, a new cooking spoon, a wooden shovel for the mill and five fresh steaks. Not that hard to memorise, is it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(312, "all", "<", 1, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Du sollst mir 15 Zwiebeln, einen neuen Kochl�ffel, eine h�lzerne Schaufel f�r die M�hle und f�nf Steaks bringen. Is das so schwer zu merken, eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 7));
talkEntry:addResponse("Aye, I have a task for ya if you are interested. Bring me ten tomatoes, ten sacks of flour, five fresh sausages and four well-baked bread loaves.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 7));
talkEntry:addResponse("Aye, hab wat f�r dich zu tun, wenn du willst. Bring mir zehn Tomaten, zehn S�ckchen Mehl, f�nf frische W�rstchen und vier gut gebackene Brote.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(49, "all", ">", 3, nil));
talkEntry:addCondition(npc.base.condition.item.item(200, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(2, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(3051, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest continues!]"));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(49, 3, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(200, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(3051, 4, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 8));
talkEntry:addResponse("Finally, you're back, I was starting to worry about ya. Thanks for your help! But this bread and these sausages don't seem real fresh. However, the bear will eat it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(49, "all", ">", 3, nil));
talkEntry:addCondition(npc.base.condition.item.item(200, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(2, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(3051, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest geht weiter!]"));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(49, 3, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(200, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(3051, 4, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 8));
talkEntry:addResponse("Endlich biste wieder zur�ck, ich hatte mir schon Sorgen gemacht. Danke f�r deine Hilfe! Allerdings sind diese Wurst und ein Brot alles andere als frisch. Doch der B�r wird es sicher fressen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(49, "all", "<", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, there are still some things missing. You are supposed to bring me ten tomatoes, ten sacks of flour, five fresh sausages and four well-baked bread loaves, aye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(49, "all", "<", 4, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse(" Arr, da fehlt aber noch was. Ick wollte zehn Tomaten, zehn S�ckchen Mehl, f�nf frische W�rstchen und vier gut gebackene Brote, aye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(200, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, there are still some things missing. You are supposed to bring me ten tomatoes, ten sacks of flour, five fresh sausages and four well-baked bread loaves, aye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(200, "all", "<", 10, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse(" Arr, da fehlt aber noch was. Ick wollte zehn Tomaten, zehn S�ckchen Mehl, f�nf frische W�rstchen und vier gut gebackene Brote, aye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, there are still some things missing. You are supposed to bring me ten tomatoes, ten sacks of flour, five fresh sausages and four well-baked bread loaves, aye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2, "all", "<", 10, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse(" Arr, da fehlt aber noch was. Ick wollte zehn Tomaten, zehn S�ckchen Mehl, f�nf frische W�rstchen und vier gut gebackene Brote, aye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(3051, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Arr, there are still some things missing. You are supposed to bring me ten tomatoes, ten sacks of flour, five fresh sausages and four well-baked bread loaves, aye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(3051, "all", "<", 5, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse(" Arr, da fehlt aber noch was. Ick wollte zehn Tomaten, zehn S�ckchen Mehl, f�nf frische W�rstchen und vier gut gebackene Brote, aye!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 10));
talkEntry:addResponse("Arr, you are looking for some work? Aye, I can help you with that! I need fifteen bread rolls, ten bowls of onion soup, ten fish dishes and two apple pies.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 9));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 10));
talkEntry:addResponse("Arr, du willst ne Aufgabe? Aye, damit kann ich helfen! Ick brauche 15 Br�tchen, zehn Zwiebelsuppen, zehn Fischgerichte und zwei Apfelkuchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(191, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.item.item(2923, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(2459, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(353, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest continues!]"));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(191, 15, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2923, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2459, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(353, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 11));
talkEntry:addResponse("Well done, thank you very much! And one pie you should feed the bear.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(191, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.item.item(2923, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(2459, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(353, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest geht weiter!]"));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(191, 15, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2923, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2459, 10, nil));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(353, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 11));
talkEntry:addResponse("Sehr gut gemacht, ich wusste, man kann sich auf dich verlassen. Und einen Kuchen lassen wir f�r den B�ren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(191, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("You were supposed to bring me fifteen bread rolls, ten bowls of onion soup, ten fish dishes and two apple pies.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(191, "all", "<", 15, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Die Sachen die du mir bringen solltest waren 15 Br�tchen, zehn Zwiebelsuppen, zehn Fischgerichte und zwei Apfelkuchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(2923, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("You were supposed to bring me fifteen bread rolls, ten bowls of onion soup, ten fish dishes and two apple pies.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(2923, "all", "<", 10, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Die Sachen die du mir bringen solltest waren 15 Br�tchen, zehn Zwiebelsuppen, zehn Fischgerichte und zwei Apfelkuchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(2459, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("You were supposed to bring me fifteen bread rolls, ten bowls of onion soup, ten fish dishes and two apple pies.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(2459, "all", "<", 10, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Die Sachen die du mir bringen solltest waren 15 Br�tchen, zehn Zwiebelsuppen, zehn Fischgerichte und zwei Apfelkuchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(353, "all", "<", 2, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("You were supposed to bring me fifteen bread rolls, ten bowls of onion soup, ten fish dishes and two apple pies.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(353, "all", "<", 2, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Die Sachen die du mir bringen solltest waren 15 Br�tchen, zehn Zwiebelsuppen, zehn Fischgerichte und zwei Apfelkuchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(673, ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addResponse("Nah, not yet. The bear becomes too fat otherwise.");
talkEntry:addResponse("Let's wait some hours. On the morrow you can feed him again.");
talkEntry:addResponse("You fed the bear just a short while ago. Please wait a little bit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, "=", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(673, ">", 0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addResponse("Nay, Lieber noch nicht. Der B�r wird sonst zu fett!");
talkEntry:addResponse("Wart bis morgen. Dann kannste ihm wieder zu fressen bringen.");
talkEntry:addResponse("Du hast ihm doch grad was gebracht. Wart noch etwas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(673, ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] You are too late!"));
talkEntry:addResponse("Nah, somebody else fed the bear in the meantime. He becomes too fat otherwise");
talkEntry:addResponse("Let's wait some hours. On the morrow you can feed him again.");
talkEntry:addResponse("You are too late. Somebody else fed the bear just a short while ago. Please wait a little bit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(673, ">", 0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�r Quest] Du bist zu sp�t!"));
talkEntry:addResponse("Nay, jemand Anderes ist dir zuvorgekommen. Der B�r wird sonst zu fett!");
talkEntry:addResponse("Wart bis morgen. Dann kannste ihm zu fressen bringen.");
talkEntry:addResponse("Jemand hat ihm doch grad was gebracht. Wart noch etwas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(12.5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] Feed a salmon!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 13));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("It's fish day. A salmon you can feed him today.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(12.5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest] F�tter einen Lachs!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 13));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Wir haben Fischtag heute. Bring dem B�ren einen Lachs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(14.3));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] Feed a cookie!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 14));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("I can't say the bear is very hungry today, but you can give him a cookie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(14.3));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest] F�tter einen Keks!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 14));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Ich glaub nicht, dass der B�r viel Hunger hat. Aber einen Keks wird er schon nehmen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(16.7));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] Feed honey!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 15));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Our bear likes sweet things the most. I'm shure he'd love to get a honeycomb.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(16.7));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest] F�tter Honig!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 15));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Am liebsten mag unser B�r S��es. �ber eine triefende s��e Honigwabe wird er sich sicher freuen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] Feed pig meat!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 16));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("You know he eats nearly everything. Let's try some pig meat. Even if it smells a little bit, he'd like it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest] F�tter Schweinefleisch!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 16));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Du wei�t ja, dass er fast alles frisst. Versuch mal Schweinefleisch. Das kann sogar schon etwas strenger riechen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(25.0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] Feed a carrot!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 17));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("You will see our bear is happy even about simple food, and a carrot is quite good for his teeth.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(25.0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest] F�tter eine M�hre!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 17));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Auch unser B�r freut sich �ber einfache Dinge. Au�erdem ist es gut f�r seine Z�hne, wenn er mal eine Mohrr�be bekommt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(33.3));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] Bring a bucket of water!"));
talkEntry:addConsequence(npc.base.consequence.item.item(51, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 18));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("A dwarf needs to drink and a bear as well. Please fill that bucket with water and take it to him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(33.3));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest] Bring frisches Wasser!"));
talkEntry:addConsequence(npc.base.consequence.item.item(51, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 18));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Immer nur Essen. Auch der B�r von Galmair will mal saufen. Bring ihm diesen Eimer voll frischem Wasser.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(50.0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] Feed a cherry cake!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 19));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Feeding the Bear of Galmair could be expensive. I know he wants cherry cake today");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(50.0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest] F�tter einen Kirschkuchen!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 19));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Anspruchsvoll ist unser guter B�r von Galmair heute. Ich bin mir sicher, er will Kirschkuchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] He doesn't eat today!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 20));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("I am sorry but we shouldn't feed the bear today. The Bear of Galmair is like real dwarf and from time to time he needs a day without food, but he'd be glad if you visit him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 11));
talkEntry:addCondition(npc.base.condition.quest.quest(673, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest] Heute ist Fastentag!"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(671, "=", 20));
talkEntry:addConsequence(npc.base.consequence.quest.quest(673, "=", 18));
talkEntry:addResponse("Heute bekommt der B�r nichts. So ein B�r ist genau wie ein richtiger Zwerg. Er fastet hin und wieder. Aber �ber einen Besuch freut er sich trotzdem.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("today");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Bear Quest] You can feed the bear now."));
talkEntry:addResponse("What are you waiting for? Go and feed the bear! *points to the west*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(671, ">", 0));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("heute");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[B�ren Quest] Du kannst nun den B�ren f�ttern."));
talkEntry:addResponse("Auf was wartest du noch? Geh und f�ttere den B�ren! *zeigt in den Westen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("bear");
talkEntry:addResponse("The bear's strength and prosperity mirrors our town. We all feed them both, on our own and together. You can find him at the Well of Dreams. *points to the west*");
talkEntry:addResponse("The Bear of Galmair is strong like our town. He prospers due to the work of our own hands, just like our town. I can tell you what he'd like today. You can find him at the Well of Dreams. *points to the west*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("B�r");
talkEntry:addResponse("Die Kraft des B�ren und sein Gedeihen sind ein Spiegel unserer Stadt. Deshalb f�ttern wir ihn alle gemeinsam. Man findet ihn bei der Quelle der Tr�ume. *zeigt in den Westen*");
talkEntry:addResponse("Der B�r von Galmair ist so stark wie unsere Stadt. Er gedeiht durch die Arbeit unserer eigenen H�nde. Ich kann dir immer sagen, was er heute frisst. Man findet ihn bei der Quelle der Tr�ume. *zeigt in den Westen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("feed");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Arr? I won't let you feed our bear, you are not from Galmair!");
talkEntry:addResponse("Do you want to feed the bear? Become a citizen first.");
talkEntry:addResponse("Sign up to the town roll call first and come back then.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addResponse("Arr? Ich lass dich unsern B�ren nicht f�ttern, du kommst nicht aus Galmair!");
talkEntry:addResponse("Wat willste? Dat is der B�r von Galmair. Werd erst ma B�rger!");
talkEntry:addResponse("Trag dich erst in de B�rgerliste ein und komm wieder her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("bear");
talkEntry:addResponse("The bear's strength and prosperity mirrors our town. You can visit him, but you are not permitted to feed him. You can find him at the Well of Dreams. *points to the west*");
talkEntry:addResponse("The Bear of Galmair is strong like our town. He prosperr because every citizen of Galmair taker part to serve him. You can find him at the Well of Dreams. *points to the west*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("B�r");
talkEntry:addResponse("Die Kraft des B�ren und sein Gedeihen sind ein Spiegel unserer Stadt. Du kannst ihn besuchen, aber f�ttern is nicht. Du findest ihn bei der Quelle der Tr�ume. *zeigt in den Westen*");
talkEntry:addResponse("Der B�r von Galmair ist so stark wie unsere Stadt. Er gedeiht, weil alle B�rger der Stadt mitmachen. Du findest ihn bei der Quelle der Tr�ume. *zeigt in den Westen*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("You ask what my profession is? I'm a cook, the best even.");
talkEntry:addResponse("I'm a cook and you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Du fragst nach meinem Beruf? Ich bin Koch, einer der Besten sogar.");
talkEntry:addResponse("Von Beruf bin ich Koch und du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("You ask what my profession is? I'm a cook, the best even.");
talkEntry:addResponse("I'm a cook and you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Du fragst nach meinem Beruf? Ich bin Koch, einer der Besten sogar.");
talkEntry:addResponse("Von Beruf bin ich Koch und du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Gobaith! Aye. My cousin fourth removed lived there, down in Silverbrand, for a while. I say Galmair is the better choice to gain wealth for your clan, though.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Gobaith! Aye. Mein Cousin vierten Grades lebte ne Weile unten in Silberbrand. Aber ich sag, Galmair iss die bessere Wahl, wenn du Wohlstand anh�ufn wills'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Aye. It's a pleasure.");
talkEntry:addResponse("So, so? Well, then. How may I help you?");
talkEntry:addResponse("By Irmorom! So you would like to become a cook, or what?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Aye. Freut mich deine Bekanntschaft zu machn.");
talkEntry:addResponse("Soso? Na, dann - wie kann ich dir helfn?");
talkEntry:addResponse("Bei Irmorom, is mir ne Freude.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dwarf");
talkEntry:addResponse("Dwarves don't drink shandy, they drink it pure! Halflings mix wine with fruit juices and call it a spritzer. Ha'ak! A real dwarf would rather shave his beard. Arr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Silverbrand");
talkEntry:addResponse("Silverbrand? There's not much I know about it, but my cousin lived there a while.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("cook");
talkEntry:addResponse("A cook needs a spoon and a lot of food of course. You can buy everything at the market, but if you want fresh vegetables ask the farmers.");
talkEntry:addResponse("You can cook wherever a pot hangs over a fine fire. Bring some ham and a spoon and we can try to cook your first dish together.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("spoon");
talkEntry:addResponse("You can stir a pot with it, a merchant can surely sell ya one if you lose yours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("l�ffel");
talkEntry:addResponse("Damit kannst du die Suppe umr�hren, ein H�ndler kann dir sicher einen verkaufen, wenn du deinen verlierst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Koch");
talkEntry:addResponse("N' Koch braucht nen Kochl�ffel. Und alle m�glichen Nahrungsmittel nat�rlich. Das kannste alles am Markt kaufn. Doch frag lieber die Bauern drau�en vor dem Tor f�r frische Ware.");
talkEntry:addResponse("Du musst zu einem Kessel �ber einem Feuer gehn, wenn du kochen willst. Bring einfach etwas Schweinefleisch und nen L�ffel und wir k�nnen zusammen dein erstes Gericht kochen.");
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
talkEntry:addResponse("Ein Zwerg trinkt die Mischung pur! - Bei den Halblingen mischen sie Wein mit Fr�chtesaft. Das nennen sie Schorle oder Spritzer. Ha'ak! Aber ein echter Zwerg trinkt nicht's Gestrecktes!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("baking");
talkEntry:addTrigger("baker");
talkEntry:addResponse("Arr, fresh bread is always a fine thing! If you want to be baking just take some water and flour along with a peel, and look for an oven.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("B�cker");
talkEntry:addTrigger("backen");
talkEntry:addResponse("Arr, frisches Brot is schon was Feines! Wenn du backen willst, nimm etwas Mehl, Wasser und einen Brotschieber und geh zum Ofen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mill");
talkEntry:addTrigger("flour");
talkEntry:addResponse("The mill you can find on the right hand once you enter the building with the large hall of Don Guilianni, also known as Galmair's Crest. Don't forget to take a little wooden shovel with you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("M�hle");
talkEntry:addTrigger("Mehl");
talkEntry:addResponse("Die M�hle findest du gleich rechts, nachdem du in das Geb�ude gekommen bist, in der sich auch Don Guiliannis gro�e Halle befindet und das Galmairs Krone hei�t. Aber vergiss nicht eine h�lzerne Schaufel mitzunehmen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("oven");
talkEntry:addResponse("There are two ovens next to Lara, one for bread and another for fish and pork. She exchanges your coins as well. You find her on the right side once you enter Galmair's Crest behind the little garden, which is also the place where you can find the Don.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ofen");
talkEntry:addResponse("Einen Back- und einen R�ucherofen kannst du finden, wenn du durch den Garten der Galmair Krone gehst, dem Geb�ude wo du den Don findest. Gleich rechts ist Lara unsere Geldwechslerin und da findest du auch, was du suchst.");
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
talkEntry:addResponse("Well, nothing much to say. He's the leader of Galmair and that says everything.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Nun, es gibt nicht viel zu sagen. Er ist der Anf�hrer von Galmair und das sagt alles.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Fine town, really fine town you know... but only if ya have enough silver coins in your pocket, you know what I mean?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Tolle Stadt, wirklich tolle Stadt, wei�t du. Aber nur wenn du genug Silberm�nzen in der Tasche hast. Wei�t du, was ich meine?");
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
talkEntry:addResponse("Kenn die nicht pers�nlich, aber ich w�rde mich nicht weigern, wenn sie wirklich so gut aussieht, wie man sagt. Man sagt auch, dass sie eine taffe Herrscherin is.");
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
talkEntry:addResponse("Kenn die nicht pers�nlich, aber ich w�rde mich nicht weigern, wenn sie wirklich so gut aussieht, wie man sagt. Man sagt auch, dass sie eine taffe Herrscherin is.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Well, a little hot there but the Queen is supposed to be good looking, wouldn't mind if she came here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Nun, ein bisschen warm dort, aber die K�nigin soll gut aussehen. W�rde nichts dagegen haben, wenn sie mal herkommt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Forgive me... I don't know about the human towns, but maybe you are interested to hear about the homeland of my clan, Sevenhill?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Vergib mir... Ich wei� viel zu wenig �ber die St�dte der Menschen. Aber vielleicht willste �ber meine Heimat sprechen, Siebenberg.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Forgive me... I don't know about the human towns, but maybe you are interested to hear about the homeland of my clan, Sevenhill?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Vergib mir... Ich wei� viel zu wenig �ber die St�dte der Menschen. Aber vielleicht willste �ber meine Heimat sprechen, Siebenberg.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Forgive me... I don't know about the human towns, but maybe you are interested to hear about the homeland of my clan, Sevenhill?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Vergib mir... Ich wei� viel zu wenig �ber die St�dte der Menschen. Aber vielleicht willste �ber meine Heimat sprechen, Siebenberg.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sevenhill");
talkEntry:addResponse("'Tunnel pigs' can also be found in Sevenhill. This is not an insulting term for lazy miners, but rather refers to a very large, fat, and nearly naked type of rodent. This animal can converted into different delicacies.");
talkEntry:addResponse("Sevenhill, also known as Siebenberg, is one of the greatest dwarven mines and the halls and wealth there are legendary. The town is located in deep caverns under a range of seven mountains, but only dwarves know the exact location.");
talkEntry:addResponse(" Humans are not permitted in Sevenhill and only a few trusted lizardmen and elves have ever been welcomed into the city. Heavily armed dwarven squads guard every entrance.");
talkEntry:addResponse("Many of the city exits emerge into different mountain valleys where crops and livestock are farmed. The infamous 'dwarven cheese' is also produced here; an incredibly strong smelling kind of cheese, highly thought of by dwarves, but completely unpalatable to humans, halflings and elves.");
talkEntry:addResponse("Sevenhill is home to seven dwarven clans. It is said that Irmorom blesses those dwarves who make a pilgrimage to all of the four sanctuaries, located under Sevenhill. Many famous dwarves, are said to have been there on pilgrimages.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("siebenberg");
talkEntry:addResponse("'Tunnelschwein', das ist kein Schimpfname f�r faule Minenarbeiter, sondern 'n Nagetier. Erinnert an enorm gro�e, fast nackte, fette Ratten. Dieses Tier kann zu wirklichen Delikatessen verarbeitet werden.");
talkEntry:addResponse("Siebenberg ist die Heimat von sieben Zwergenklans. Es wird gesagt, dass ein Zwerg, der zu allen vier Heiligt�mern Siebenbergs pilgert und dort zu Irmorom betet, von diesem gesegnet wird.");
talkEntry:addResponse("Siebenberg ist eine der gr��ten bekannten Zwergenminen, ihre Hallen und deren Reichtum sind legend�r. Die Stadt befindet sich in den tiefen H�hlen unter den Siebenh�gelbergen, die genaue Lage ist nur Zwergen bekannt.");
talkEntry:addResponse("Menschen finden keinen Einlass nach Siebenberg und nur wenige Echsenmenschen oder Elfen - von denen bekannt ist, dass sie nicht versuchen w�rden, gl�nzende Dinge aus kostbaren Verzierungen herauszubrechen.");
talkEntry:addResponse("Es werden Ziegen gehalten, deren Milch haupts�chlich zum bekannten Zwergenk�se verarbeitet wird! Eine besonders �bel riechende K�sesorte, die von uns Zwergen sehr gesch�tzt wird, aber die anderen V�lker scheinen ihn nicht besonders zu sch�tzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("I follow Irmorom, the father of the dwarven kind and hallow of the crafters... and Br�gon, whose flames help me to cook fine dishes.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Irmorom.  Ich huldige dem Vater der Zwerge und Gott der Handwerker. Sowie Br�gon, dessen Flammen mir helfen, die feinsten Gerichte zuzubereiten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("The flame of Br�gon brings dragons their fire, warms the living, and makes food delicious.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Die Flamme Br�gons haucht nicht nur Drachen ihr Feuer ein, sondern w�rmt die V�lker und macht gut schmeckendes Essen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Smithing is the craft of the dwarves, but a hungry smith will never make the finest weapons. Therefore, Irmoron holds his hands over us cooks as well.");
talkEntry:addResponse("Irmorom, the godly crafter, told the dwarven folk how to smith and cook. After hundreds of years they figured out how to make the most delicious food. Some receipes have gone from dwarven hand to hand over hundreds of years.");
talkEntry:addResponse("Irmorom himself was the first smith and cook. He liked the hardwoking dwarves most, so he gave them the ability to smith and eat well.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Das Schmieden ist das Handwerk des Zwergenvolkes, aber ein hungriger Schmied wird niemals beste Arbeit leisten. Deshalb h�lt Irmorom auch seine H�nde �ber uns K�che.");
talkEntry:addResponse("Irmorom, der g�ttliche Handwerker, lehrte einst den Zwergen das schmieden und kochen, und in hundert Jahre langer Geschichte sollten wir lernen, wirklich schmackhafte Speisen zu bereiten. Es gibt Rezepte, die gehen seit Hunderten von Jahren von Zwergenhand zu Zwergenhand.");
talkEntry:addResponse("Irmorom war der erste Schmied und Koch, und da ihm die flei�igen Zwerge das liebste Volk war, vermachte er dieses Handwerk den Zwergen und lehrte sie richtig zu tafeln.");
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
talkEntry:addResponse("Do you know, Baxton Herbmail, my cousin? He affirms that he beat up a hungry wolf with only his cooking spoon. Ga strak ja'ada! Such a fibbed tale.");
talkEntry:addResponse("They say Yeseult Bockbrew makes the best beer, but I prefer the one Eygir Goldmalt brews.");
talkEntry:addResponse("Rustbeard Grimhild's cousin is a good friend of mine, but he can't bear even half a mug of beer. When drunk he sings bawdy songs and throws kitchen knives targeting young women's plaits.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Kennt ihr Baxton Kr�uterhemd, meinen Cousin? Er behauptet er w�rde einen hungrigen Wolf nur mit einem Kochl�ffel bewaffnet besiegen. Ga strak ja'ada! So'ne erlogene Geschichte.");
talkEntry:addResponse("Es hei�t, Yseult Bockbr�u ist das beste Bier, aber mir schmeckt das von Eygir Goldmalz gebraute viel besser. ");
talkEntry:addResponse("Rostbart Grimhilds-Vetter ist ein guter Bekannter von mir. Aber der vertr�gt kein Bier nicht. Hat der einen halben Humpen drin, f�ngt er an unfl�tig zu singen und mit K�chenmessern nach den Z�pfen von jungn' Fraun zu werfn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Grijas");
talkEntry:addTrigger("Kokotte");
talkEntry:addResponse("What's up?");
talkEntry:addResponse("Aye?");
talkEntry:addResponse("#me nods once and raises an eyebrow.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grijas");
talkEntry:addTrigger("Kokotte");
talkEntry:addResponse("Aye?");
talkEntry:addResponse("Wat gibt's?");
talkEntry:addResponse("#me nickt dir zu und zieht eine Braue hoch.");
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
talkEntry:addResponse("Aye, dann mach dich auf den Weg und sammle, was ich von dir wollte!");
talkEntry:addResponse("Na, wenn du meinst.");
talkEntry:addResponse("Is gut, viel Vergn�gen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("What did ya say? I hope I didn't hear ya correctly!");
talkEntry:addResponse("You say no... no to me, who do ya think your speaking to?");
talkEntry:addResponse("With that attitude, ya won't become a good cook.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Wat sachste, ich hoffe, ich habe mich verh�rt?!");
talkEntry:addResponse("Du sagst Nein...nein zu mir, wat denkst du, mit wem du sprichst!");
talkEntry:addResponse("Dann nich, so wird nie was aus dir!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Eh..what did you just say about my soup?");
talkEntry:addResponse("What are you jabbering about?");
talkEntry:addResponse("Nah, I don't wanna buy that!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Eh..wat hast du grad �ber meine Suppe gesagt?");
talkEntry:addResponse("Wat quasselst du da?");
talkEntry:addResponse("Nay, ich will dat nich kaufen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me streicht sich �ber seinen langen Bart.", "#me untangles his long beard.");
talkingNPC:addCycleText("#me blickt misstrauisch in die Suppe und kratzt sich anschlie�end am Kopf.", "#me looks into the soup suspiciously then scratches his head.");
talkingNPC:addCycleText("#me nimmt eine Flasche ohne Etikett aus seiner Tasche und sch�ttet einige Tropfen in die Suppe.", "#me pulls an unsigned bottle from his bag and pours a few drops into the soup.");
talkingNPC:addCycleText("#me wischt sich mit dem Handr�cken �ber die Stirn.", "#me wipes his hand over his forehead.");
talkingNPC:addCycleText("#me brummt leise etwas in seinen Bart.", "#me grumbles something into his beard.");
talkingNPC:addCycleText("#me streicht mit zusammengekniffenen Augen �ber sein Hemd aus Pferdehaar, etwas Staub l�st sich daraus und schwebt zu Boden.", "#me pats his shirt made of horse-hair. Some dust gets released and sinks to the ground.");
talkingNPC:addCycleText("#me grinst breit, ein goldener Zahn blitzt hervor.", "#me gives a broad grin, a golden tooth is shown for a second.");
talkingNPC:addCycleText("#me pfeift die Melodie eines alten Bergwerkliedes.", "#me whistles the tune of an old miner's song.");
talkingNPC:addCycleText("#me kratzt sich an der knubbeligen Nase.", "#me scratches his knobby nose.");
talkingNPC:addCycleText("#me blickt mit zusammengekniffenen Augen in den Himmel.", "#me glances to the sky with narrowed eyes.");
talkingNPC:addCycleText("#me r�hrt langsam in der Suppe.", "#me stirs the soup slowly.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(2);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein in B�renfell gekleideter Zwerg, r�hrt kenntnisreich in einer scharf riechenden Sauce.", "A dwarf, dressed in bear fur stirs a spicy smelling soup.");
mainNPC:setUseMessage("Fass mich nicht an! Die So�e wird sonst sauer.", "Don't touch me! The soup will get ruined.");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 812);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 227);
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