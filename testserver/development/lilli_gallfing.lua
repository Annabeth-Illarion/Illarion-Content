--------------------------------------------------------------------------------
-- NPC Name: Lilli Gallfing                                           Cadomyr --
-- NPC Job:  Tailor                                                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  135, 576, 0            --
-- NPC Sex:  female                     NPC Direction: west                   --
--                                                                            --
-- Author:   Zot                                                              --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 135, 576, 0, 6, 'Lilli Gallfing', 'npc.lilli_gallfing', 1, 2, 0, 139, 105, 20, 238, 216, 174);
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
module("development.lilli_gallfing", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Lilli Gallfing the tailor. Keywords: quest, cloth, sheeps"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Lilli Gallfing die Schneiderin. Schl�sselw�rter: Quest, Stoff, Schafe"));
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
talkEntry:addResponse("Hello, can I help you?");
talkEntry:addResponse("Nice to meet you, I'm Lilli Gallfing.");
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
talkEntry:addResponse("Hallo, kann ich Euch helfen?");
talkEntry:addResponse("Freut mich, Euch zu treffen. Ich bin Lilli Gallfing.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Hello, can I help you?");
talkEntry:addResponse("Nice to meet you, I'm Lilli Gallfing.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Hallo, kann ich Euch helfen?");
talkEntry:addResponse("Freut mich, Euch zu treffen. Ich bin Lilli Gallfing");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("I wish you a nice day.");
talkEntry:addResponse("I hope we meet again, goodbye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addResponse("Ich w�nsche Euch noch einen sch�nen Tag.");
talkEntry:addResponse("Ich hoffe wir sehen uns wieder, auf bald!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("I wish you a nice day.");
talkEntry:addResponse("I hope we meet again, goodbye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Ich w�nsche Euch noch einen sch�nen Tag.");
talkEntry:addResponse("Ich hoffe wir sehen uns wieder, auf bald!");
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
talkEntry:addResponse("I'm Lilli Gallfing, who are you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Lilli Gallfing, wer bist du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I'm a tailor. Do you want to know more about it? Then just ask me for a task!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin Schneiderin. Wollt ihr mehr dar�ber wissen? Dann fragt mich einfach nach einer Aufgabe!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I'm a tailor. Do you want to know more about it? Then just ask me for a task!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin Schneiderin. Wollt ihr mehr dar�ber wissen? Dann fragt mich einfach nach einer Aufgabe!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("cloth");
talkEntry:addResponse("If you place grey cloth on the ground and let it dry on the sun it will turn into white cloth. That works with some dye as well!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("stoff");
talkEntry:addResponse("Wenn Ihr grauen Stoff auf den Boden legt und es in der Sonne trocknen l�sst, dann wird es zu wei�em Stoff. Das funktioniert �brigens auch mit einigen Farben!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("tailor");
talkEntry:addResponse("For tailoring you need many different things, the most important ones are scissors and a needle though!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("schneid");
talkEntry:addResponse("Zum Schneidern braucht Ihr verschiedene Dinge, das wichtigste ist aber wohl eine Schere und eine Nadel!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("sheep");
talkEntry:addResponse("If you leave the town and follow the street to the west you will find some sheeps.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("schaf");
talkEntry:addResponse("Schafe findet Ihr im Westen, wenn Ihr die Stadt verl�sst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(6, 1, 477, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 1));
talkEntry:addResponse("Oh, you want to learn something about tailoring? Well, let's start with something simple. Could you collect 110 bales of wool for me? You can find sheeps if you leave the city and follow the street to the west. You can have my old scissors to collect the wool.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(6, 1, 477, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 1));
talkEntry:addResponse("Oh, Ihr wollt etwas �ber das Schneidern lernen? Nun gut, fangen wir mit etwas einfachem an. Bringt mir doch bitte 110 Wollkn�ule. Schafe solltet Ihr finden wenn Ihr die Stadt verl�sst und nach Westen geht. Hier bitte noch eine Schere um die Schafe zu scheren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(6, 1, 477, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 1));
talkEntry:addResponse("Oh, you want to learn something about tailoring? Well, let's start with something simple. Could you collect 110 bales of wool for me? You can find sheeps if you leave the city and follow the street to the west. You can have my old scissors to collect the wool.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(6, 1, 477, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 1));
talkEntry:addResponse("Oh, Ihr wollt etwas �ber das Schneidern lernen? Nun gut, fangen wir mit etwas einfachem an. Bringt mir doch bitte 110 Wollkn�ule. Schafe solltet Ihr finden wenn Ihr die Stadt verl�sst und nach Westen geht. Hier bitte noch eine Schere um die Schafe zu scheren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(170, "all", ">", 109, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(170, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 2));
talkEntry:addResponse("Well done, thank you. Do you want another task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(170, "all", ">", 109, nil));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(170, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 2));
talkEntry:addResponse("Gut gemacht, danke. Wollt Ihr eine weitere Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(170, "all", ">", 109, nil));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(170, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 2));
talkEntry:addResponse("Well done, thank you. Do you want another task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(170, "all", ">", 109, nil));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(170, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 2));
talkEntry:addResponse("Gut gemacht, danke. Wollt Ihr eine weitere Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(170, "all", "<", 110, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("That aren't 110 wool bales yet, please come again once you've finished this task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(170, "all", "<", 110, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Das sind noch keine 110 Wollkn�ule die ich haben wollte. Kommt wieder wenn Ihr die Aufgabe erledigt habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(170, "all", "<", 110, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("That aren't 110 wool bales yet, please come again once you've finished this task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(170, "all", "<", 110, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Das sind noch keine 110 Wollkn�ule die ich haben wollte. Kommt wieder wenn Ihr die Aufgabe erledigt habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 3));
talkEntry:addResponse("You want another task? Alright, please go to the loom behind me and make 10 grey cloth. Furthermore go to the spinning wheel over there and produce 25 thread from the wool.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 3));
talkEntry:addResponse("Ihr wollt noch eine Aufgabe? Von mir aus gerne. Bitte geht zum Webstuhl hinter mir und macht aus den 50 �brigen Kn�ulen grauen Stoff und aus den anderen 50 Kn�ulen beim Spinnrad da vorne Garn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 3));
talkEntry:addResponse("You want another task? Alright, please go to the loom behind me and make 10 grey cloth. Furthermore go to the spinning wheel over there and produce 25 thread from the wool.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 3));
talkEntry:addResponse("Ihr wollt noch eine Aufgabe? Von mir aus gerne. Bitte geht zum Webstuhl hinter mir und macht aus den 50 �brigen Kn�ulen grauen Stoff und aus den anderen 50 Kn�ulen beim Spinnrad da vorne Garn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(176, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(50, "all", ">", 24, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 4));
talkEntry:addResponse("Well done. Do you want another task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(176, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(50, "all", ">", 24, nil));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 4));
talkEntry:addResponse("Gut gemacht. Wollt Ihr eine weitere Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(176, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(50, "all", ">", 24, nil));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 4));
talkEntry:addResponse("Well done. Do you want another task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(176, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.item.item(50, "all", ">", 24, nil));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 4));
talkEntry:addResponse("Gut gemacht. Wollt Ihr eine weitere Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(176, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Could you produce of the remaining 100 bales of wool 25 thread and 10 grey cloth for me please?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(176, "all", "<", 10, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Stellt doch bitte aus den �brigen 100 Wollkn�ulen 25 Garnrollen und 10 grauen Stoff her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(50, "all", "<", 25, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Could you produce of the remaining 100 bales of wool 25 thread and 10 grey cloth for me please?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(50, "all", "<", 25, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Stellt doch bitte aus den �brigen 100 Wollkn�ulen 25 Garnrollen und 10 grauen Stoff her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(47, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 5));
talkEntry:addResponse("You want another task? Well alright, could you produce a grey dress for me please? Here take this needle from me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 4));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(47, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 5));
talkEntry:addResponse("Ihr wollt noch eine weitere Aufgabe? Nun gut, meinetwegen. Geht zum Schneidertisch da vorne und stellt mir ein graues Gewand her bitte. Hier habt Ihr eine Nadel.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 4));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(47, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 5));
talkEntry:addResponse("You want another task? Well alright, could you produce a grey dress for me please? Here take this needle from me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 4));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(47, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 5));
talkEntry:addResponse("Ihr wollt noch eine weitere Aufgabe? Nun gut, meinetwegen. Geht zum Schneidertisch da vorne und stellt mir ein graues Gewand her bitte. Hier habt Ihr eine Nadel.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(802, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(802, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 6));
talkEntry:addResponse("Well done, thank you very much. If you have more time I can give you another task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(802, "all", ">", 0, nil));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(802, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 6));
talkEntry:addResponse("Gut gemacht, vielen Dank. Wenn Ihr noch etwas Zeit er�brigen k�nnt, h�tte ich eine weitere Aufgabe f�r Euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(802, "all", ">", 0, nil));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(802, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 6));
talkEntry:addResponse("Well done, thank you very much. If you have more time I can give you another task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(802, "all", ">", 0, nil));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(802, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 6));
talkEntry:addResponse("Gut gemacht, vielen Dank. Wenn Ihr noch etwas Zeit er�brigen k�nnt, h�tte ich eine weitere Aufgabe f�r Euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(802, "all", "=", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("You didn't solve the task yet. Come again once you've the grey dress I'm looking for.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(802, "all", "=", 0, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Ihr habt die Aufgabe noch nicht erf�llt wie ich sehe. Bitte bringt mir ein graues Gewand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(58, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(51, 5, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(302, 15, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 7));
talkEntry:addResponse("Let's produce some dye now, you will need dye for tailoring as well. Please go outside and make a little fire and produce five buckets with red dye. You need a morter, 5 buckets and 15 cherries to make the dye. I'll give you this things, but only this time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 6));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(58, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(51, 5, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(302, 15, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 7));
talkEntry:addResponse("Lasst uns nun etwas Farbe herstellen, das geh�rt auch zum Schneidern dazu. Bitte geht hinaus, macht ein kleines Feuer und stellt f�nf Eimer mit roter Farbe her. Daf�r braucht Ihr einen M�rser, 5 Eimer und 15 Kirschen. Dies kriegt Ihr heute ausnahmsweise alles von mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 6));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(58, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(51, 5, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(302, 15, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 7));
talkEntry:addResponse("Let's produce some dye now, you will need dye for tailoring as well. Please go outside and make a little fire and produce five buckets with red dye. You need a morter, 5 buckets and 15 cherries to make the dye. I'll give you this things, but only this time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 6));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(58, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(51, 5, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(302, 15, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 7));
talkEntry:addResponse("Lasst uns nun etwas Farbe herstellen, das geh�rt auch zum Schneidern dazu. Bitte geht hinaus, macht ein kleines Feuer und stellt f�nf Eimer mit roter Farbe her. Daf�r braucht Ihr einen M�rser, 5 Eimer und 15 Kirschen. Dies kriegt Ihr heute ausnahmsweise alles von mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2681, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 8));
talkEntry:addResponse("Well done, thank you very much. I have one last task for you if you are interested.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2681, "all", ">", 4, nil));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 8));
talkEntry:addResponse("Gut gemacht, vielen Dank. Ich habe eine letzte Aufgabe f�r Euch, wenn Ihr Interesse habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2681, "all", ">", 4, nil));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 8));
talkEntry:addResponse("Well done, thank you very much. I have one last task for you if you are interested.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2681, "all", ">", 4, nil));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 8));
talkEntry:addResponse("Gut gemacht, vielen Dank. Ich habe eine letzte Aufgabe f�r Euch, wenn Ihr Interesse habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2681, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("You didn't solve the task yet. Come again once you've all five buckets with red dye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2681, "all", "<", 5, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Ihr habt die Aufgabe noch nicht erf�llt wie ich sehe. Bitte bringt mir die f�nf Eimer mit roter Farbe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(2781, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(178, 5, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 9));
talkEntry:addResponse("Alright, one last task. Please bring me five red cloth. You need a dyeing rod, white cloth and of course the buckets with dye. You can get white cloth if you place grey cloth on the ground and let it dry in the sun. I'll give you my old dyeing rod and some white cloth. Please bring me five red cloth back.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 8));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(2781, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(178, 5, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 9));
talkEntry:addResponse("Nun gut eine letzte Aufgabe f�r Euch. Ihr sollt mir f�nf rote Stoffe f�rben. Dazu braucht einen F�rbestab, wei�en Stoff und nat�rlich die Eimer mit Farbe. Wenn Ihr grauen Stoff lang genug in der Sonne liegen l�sst, wird er wei�. Hier ich gebe euch meinen alten F�rbestab au�erdem noch etwas wei�en Stoff. Geht zum schwarzen Fass da vorne und stellt mir die f�nf Rollen roten Stoff her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 8));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(2781, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(178, 5, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 9));
talkEntry:addResponse("Alright, one last task. Please bring me five red cloth. You need a dyeing rod, white cloth and of course the buckets with dye. You can get white cloth if you place grey cloth on the ground and let it dry in the sun. I'll give you my old dyeing rod and some white cloth. Please bring me five red cloth back.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 8));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(2781, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(178, 5, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 9));
talkEntry:addResponse("Nun gut eine letzte Aufgabe f�r Euch. Ihr sollt mir f�nf rote Stoffe f�rben. Dazu braucht einen F�rbestab, wei�en Stoff und nat�rlich die Eimer mit Farbe. Wenn Ihr grauen Stoff lang genug in der Sonne liegen l�sst, wird er wei�. Hier ich gebe euch meinen alten F�rbestab au�erdem noch etwas wei�en Stoff. Geht zum schwarzen Fass da vorne und stellt mir die f�nf Rollen roten Stoff her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(174, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 10));
talkEntry:addResponse("Well done, thank you very much. You helped me a lot, I hope I was able to teach you the basics of tailoring.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(174, "all", ">", 4, nil));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 10));
talkEntry:addResponse("Gut gemacht, vielen Dank. Ihr wart mir eine wirklich gro�e Hilfe, ich hoffe ich konnte Euch auch etwas beibringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(174, "all", ">", 4, nil));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 10));
talkEntry:addResponse("Well done, thank you very much. You helped me a lot, I hope I was able to teach you the basics of tailoring.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(174, "all", ">", 4, nil));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(705, "=", 10));
talkEntry:addResponse("Gut gemacht, vielen Dank. Ihr wart mir eine wirklich gro�e Hilfe, ich hoffe ich konnte Euch auch etwas beibringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(174, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addResponse("You didn't solve the task yet. Come again once you have the five red cloth for me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(705, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(174, "all", "<", 5, nil));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Ihr habt die Aufgabe noch nicht erf�llt wie ich sehe. Kommt doch bitte wieder, wenn Ihr die f�nf Rollen roten Stoff zusammen habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("I don't have anything to do for you anymore. Thank you for the help though!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ich habe nichts weiter f�r Euch zu tun. Aber danke nochmals f�r Eure Hilfe!");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me schaut sich gelangweilt um.", "#me looks around bored.");
talkingNPC:addCycleText("Wenn ihr Hilfe beim schneidern braucht dann fragt nur mich!", "If you need any help in tailoring, just ask me!");
talkingNPC:addCycleText("#me g�hnt verhalten.", "#me yawns restrained.");
talkingNPC:addCycleText("#me pfeift eine Melodie.", "#me whistles a melody.");
talkingNPC:addCycleText("#me liest einen Brief.", "#me reads a letter.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("", "");
mainNPC:setUseMessage("Fass mich nicht an!", "Hands off!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 850);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 839);
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