--------------------------------------------------------------------------------
-- NPC Name: Jakob Lindorn                                            Cadomyr --
-- NPC Job:  Helper                                                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  124, 649, 0            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Author:   Zot                                                              --
--                                                       easyNPC Parser v1.23 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 124, 649, 0, 6, 'Jakob Lindorn', 'npc.jakob_lindorn', 0, 1, 0, 139, 105, 20, 238, 216, 174);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.consequence.talkstate")
require("npc.base.talk")
module("development.jakob_lindorn", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Jakob Lindorn the helper. Keywords: quest"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Jakob Lindorn der Helfer. Schl�sselw�rter: Quest"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 1));
talkEntry:addResponse("Welcome to Cadomyr. Could you give my friend Beror Oakaxe this letter for me please? You won't miss him if you enter the city, he is a dwarf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 0));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 1));
talkEntry:addResponse("Willkommen in Cadomyr. K�nnt ihr meinem Freund Beror Oakaxe bitte diesen Brief hier f�r mich �bergeben? Ihr k�nnt ihn nicht �bersehen, wenn ihr in die Stadt hinein geht, er ist ein Zwerg.");
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
talkEntry:addResponse("Hello, I can tell you who in Cadomyr has tasks for you to do.");
talkEntry:addResponse("Nice to meet you, I'm Jakob Lindorn, I can tell you who in Cadomyr has tasks for you to do.");
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
talkEntry:addResponse("Hallo, ich kann Euch sagen, wer in Cadomyr Aufgaben f�r Euch hat.");
talkEntry:addResponse("Freut mich, Euch zu treffen. Ich bin Jakob Lindorn. Ich kann Euch sagen, wer in Cadomyr Aufgaben f�r Euch hat.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Hello, I can tell you who in Cadomyr has tasks for you to do.");
talkEntry:addResponse("Nice to meet you, I'm Jakob Lindorn, I can tell you who in Cadomyr has tasks for you to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Hallo, ich kann Euch sagen, wer in Cadomyr Aufgaben f�r Euch hat.");
talkEntry:addResponse("Freut mich, Euch zu treffen. Ich bin Jakob Lindorn. Ich kann Euch sagen, wer in Cadomyr Aufgaben f�r Euch hat.");
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
talkEntry:addResponse("I'm Jakob Lindorn. I'm here to help.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Jakob Lindorn. Ich bin hier zum Helfen.");
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
talkEntry:addTrigger("market");
talkEntry:addResponse("Just follow the street to your right and go through the gate, you won't miss the marketplace. Ask Frizza over there if you want to know more about the places around Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("markt");
talkEntry:addResponse("Folgt einfach der Stra�e zur eurer Rechten und geht durch das Tor, ihr werdet den Marktplatz kaum �bersehen k�nnen. Fragt Frizza dort dr�ben, wenn Ihr mehr �ber die Orte um Cadomyr herum wissen wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Frizza");
talkEntry:addResponse("She is right over there, just go over and talk to her. She knows a lot about Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frizza");
talkEntry:addResponse("Sie ist gleich dort dr�ben, geht einfach zu ihr r�ber und sprecht sie an. Sie wei� eine Menge �ber Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("food");
talkEntry:addTrigger("eat");
talkEntry:addResponse("You can find food all around you. There are fruits on the trees and bushes or you ask other people for something to eat.");
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
talkEntry:addResponse("There are a few wild animals in the wilderness so be careful. If you want to train ask around for a sparring partner.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("k�mpfen");
talkEntry:addTrigger("monster");
talkEntry:addResponse("Es gibt einige wilde Tiere in der Wildness, also seid vorsichtig. Wenn Ihr trainieren wollt, fragt herum nach einem Trainingspartner.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("This is Cadomyr, my home. We are a realm of honorable and kind people, I'm sure you will enjoy it here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Dies is Cadomyr, mein Zuhause. Wir sind ein Reich von ehrenvollen und aufrichtigen Leuten, ich bin mir sicher, dass Ihr es hier m�gen werdet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(111, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkEntry:addResponse("Welcome to Cadomyr. Could you give my friBeror Oakaxe, this letter for me please? You won't miss him if you enter the city, he is a dwarf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(111, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Willkommen in Cadomyr. K�nnt ihr meinem Freund Beror Oakaxe bitte diesen Brief hier f�r mich �bergeben? Ihr k�nnt ihn nicht �bersehen, wenn ihr in die Stadt hinein geht, er ist ein Zwerg.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(111, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkEntry:addResponse("Welcome to Cadomyr. Could you give my friBeror Oakaxe, this letter for me please? You won't miss him if you enter the city, he is a dwarf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(111, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Willkommen in Cadomyr. K�nnt ihr meinem Freund Beror Oakaxe bitte diesen Brief hier f�r mich �bergeben? Ihr k�nnt ihn nicht �bersehen, wenn ihr in die Stadt hinein geht, er ist ein Zwerg.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(111, ">", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 2));
talkEntry:addResponse("So I suppose you have already delivered the letter to my friend Beror Oakaxe? I heard Grakamesh could need your help. You can find him right there at Sir Reginald's Tomb.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(111, ">", 1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 2));
talkEntry:addResponse("Ich nehme an, Ihr habt meinem Freundin Beror Oakaxe bereits den Brief �berbracht? Ich habe geh�rt, dass Grakamesh eure Hilfe gebrauchen k�nnte. Ihr k�nnt ihn gleich da vorne bei Sir Reginalds Gruft finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(111, ">", 1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 2));
talkEntry:addResponse("So I suppose you have already delivered the letter to my friend Beror Oakaxe? I heard Grakamesh could need your help. You can find him right there at Sir Reginald's Tomb.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(111, ">", 1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 2));
talkEntry:addResponse("Ich nehme an, Ihr habt meinem Freund Beror Oakaxe bereits den Brief �berbracht? Ich habe geh�rt, dass Grakamesh eure Hilfe gebrauchen k�nnte. Ihr k�nnt ihn gleich da vorne bei Sir Reginalds Gruft finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("So I suppose you have already delivered the letter to my friend Beror Oakaxe? I heard Grakamesh could need your help. You can find him right there at Sir Reginald's Tomb.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich nehme an, Ihr habt meinem Freund Beror Oakaxe bereits den Brief �berbracht? Ich habe geh�rt, dass Grakamesh eure Hilfe gebrauchen k�nnte. Ihr k�nnt ihn gleich da vorne bei Sir Reginalds Gruft finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("So I suppose you have already delivered the letter to my friend Beror Oakaxe? I heard Grakamesh could need your help. You can find him right there at Sir Reginald's Tomb.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich nehme an, Ihr habt meinem Freund Beror Oakaxe bereits den Brief �berbracht? Ich habe geh�rt, dass Grakamesh eure Hilfe gebrauchen k�nnte. Ihr k�nnt ihn gleich da vorne bei Sir Reginalds Gruft finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 3));
talkEntry:addResponse("A friend of mine, Mirarie Bragolin, always needs some help. You can find her if you follow the street into the city, she is at the inner gate which leads to the marketplace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 3));
talkEntry:addResponse("Eine Freundin Mirarie Bragolin kann auch immer etwas Hilfe ben�tigen. Ihr k�nnt sie finden wenn Ihr in die Stadt hinein geht, sie steht beim Tor Richtung Marktplatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 3));
talkEntry:addResponse("A friend of mine, Mirarie Bragolin, always needs some help. You can find her if you follow the street into the city, she is at the inner gate which leads to the marketplace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 3));
talkEntry:addResponse("Eine Freundin Mirarie Bragolin kann auch immer etwas Hilfe ben�tigen. Ihr k�nnt sie finden wenn Ihr in die Stadt hinein geht, sie steht beim Tor Richtung Marktplatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(317, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("A friend of mine, Mirarie Bragolin, always needs some help. You can find her if you follow the street into the city, she is at the inner gate which leads to the marketplace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(317, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Eine Freundin Mirarie Bragolin kann auch immer etwas Hilfe ben�tigen. Ihr k�nnt sie finden wenn Ihr in die Stadt hinein geht, sie steht beim Tor Richtung Marktplatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(317, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("A friend of mine, Mirarie Bragolin, always needs some help. You can find her if you follow the street into the city, she is at the inner gate which leads to the marketplace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(317, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Eine Freundin Mirarie Bragolin kann auch immer etwas Hilfe ben�tigen. Ihr k�nnt sie finden wenn Ihr in die Stadt hinein geht, sie steht beim Tor Richtung Marktplatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(317, ">", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("Hassan, the royal fan-waver, is sure to have a little task for you. You can find him in the 'Unicorn Lion' tavern, if he isn't at the palace. The tavern is north of the marketplace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(317, ">", 1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("Hassan, der k�nigliche F�chelwedler hat bestimmte eine kleine Aufgabe f�r Euch. Ihr k�nnt ihn in der Taverne 'Einh�rniger L�we' finden, wenn er grad nicht im Palast ist. Die Taverne befindet sich n�rdlich vom Marktplatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(317, ">", 1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("Hassan, the royal fan-waver, is sure to have a little task for you. You can find him in the 'Unicorn Lion' tavern, if he isn't at the palace. The tavern is north of the marketplace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(317, ">", 1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("Hassan, der k�nigliche F�chelwedler hat bestimmte eine kleine Aufgabe f�r Euch. Ihr k�nnt ihn in der Taverne 'Einh�rniger L�we' finden, wenn er grad nicht im Palast ist. Die Taverne befindet sich n�rdlich vom Marktplatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(75, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Hassan, the royal fan-waver, is sure to have a little task for you. You can find him in the 'Unicorn Lion' tavern, if he isn't at the palace. The tavern is north of the marketplace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(75, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Hassan, der k�nigliche F�chelwedler hat bestimmte eine kleine Aufgabe f�r Euch. Ihr k�nnt ihn in der Taverne 'Einh�rniger L�we' finden, wenn er grad nicht im Palast ist. Die Taverne befindet sich n�rdlich vom Marktplatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(75, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Hassan, the royal fan-waver, is sure to have a little task for you. You can find him in the 'Unicorn Lion' tavern, if he isn't at the palace. The tavern is north of the marketplace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(75, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Hassan, der k�nigliche F�chelwedler hat bestimmte eine kleine Aufgabe f�r Euch. Ihr k�nnt ihn in der Taverne 'Einh�rniger L�we' finden, wenn er grad nicht im Palast ist. Die Taverne befindet sich n�rdlich vom Marktplatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(75, ">", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 5));
talkEntry:addResponse("Ah..there you are again. Linda Rabon, an excellent cook, asked me to send you to her. She told me that she has probably a little task for you. You've probably met her in the tavern already.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(75, ">", 1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 5));
talkEntry:addResponse("Ah..da seid Ihr ja wieder. Linda Rabon, eine sehr gute K�chin, hat mich gebeten Euch zu ihr zu senden. Sie sagte sie h�tte vielleicht eine kleine Aufgabe f�r Euch. Ihr habt sie sicher bereits in der Taverne gesehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(75, ">", 1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 5));
talkEntry:addResponse("Ah..there you are again. Linda Rabon, an excellent cook, asked me to send you to her. She told me that she has probably a little task for you. You've probably met in the tavern already.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 4));
talkEntry:addCondition(npc.base.condition.quest.quest(75, ">", 1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 5));
talkEntry:addResponse("Ah..da seid Ihr ja wieder. Linda Rabon, eine sehr gute K�chin, hat mich gebeten Euch zu ihr zu senden. Sie sagte sie h�tte eine Aufgabe f�r Euch. Ihr habt sie sicher bereits in der Taverne gesehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 5));
talkEntry:addCondition(npc.base.condition.quest.quest(126, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ah..there you are again. Linda Rabon, an excellent cook, asked me to send you to her. She told me that she has probably a little task for you. You've probbaly met her in the tavern already.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 5));
talkEntry:addCondition(npc.base.condition.quest.quest(126, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ah..da seid Ihr ja wieder. Linda Rabon, eine sehr gute K�chin, hat mich gebeten Euch zu ihr zu senden. Sie sagte sie h�tte eine Aufgabe f�r Euch. Ihr habt sie sicher bereits in der Taverne gesehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 5));
talkEntry:addCondition(npc.base.condition.quest.quest(126, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Ah..there you are again. Linda Rabon, an excellent cook, asked me to send you to her. She told me that she has probably a little task for you. You've probably met her in the tavern already.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 5));
talkEntry:addCondition(npc.base.condition.quest.quest(126, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ah..da seid Ihr ja wieder. Linda Rabon, eine sehr gute K�chin, hat mich gebeten Euch zu ihr zu senden. Sie sagte sie h�tte eine Aufgabe f�r Euch. Ihr habt sie sicher bereits in der Taverne gesehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 5));
talkEntry:addCondition(npc.base.condition.quest.quest(126, ">", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 6));
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkEntry:addResponse("Zerarisa, a good frilives at the Cape Farewell. Could you look for her, I haven't see her around here for quite a while. You can find the Cape if you follow the street to the west, the signposts should lead you in the right direction.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 5));
talkEntry:addCondition(npc.base.condition.quest.quest(126, ">", 1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 6));
talkEntry:addResponse("Zerarisa, eine gute Freundin lebt beim Kap des Abschiedes. K�nntet Ihr bitte nach ihr sehen, ich hab sie schon l�nger nicht mehr hier gesehen. Das Kap findet Ihr, wenn Ihr der Stra�e nach Westen folgt, die Wegweiser sollten Euch direkt zum Kap f�hren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 5));
talkEntry:addCondition(npc.base.condition.quest.quest(126, ">", 1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 6));
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkEntry:addResponse("Zerarisa, a good frilives at the Cape Farewell. Could you look for her, I haven't see her around here for quite a while. You can find the Cape if you follow the street to the west, the signposts should lead you in the right direction.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 5));
talkEntry:addCondition(npc.base.condition.quest.quest(126, ">", 1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 6));
talkEntry:addResponse("Zerarisa, eine gute Freundin lebt beim Kap des Abschiedes. K�nntet Ihr bitte nach ihr sehen, ich hab sie schon l�nger nicht mehr hier gesehen. Das Kap findet Ihr, wenn Ihr der Stra�e nach Westen folgt, die Wegweiser sollten Euch direkt zum Kap f�hren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkEntry:addResponse("Zerarisa, a good frilives at the Cape Farewell. Could you look for her, I haven't see her around here for quite a while. You can find the Cape if you follow the street to the west, the signposts should lead you in the right direction.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Zerarisa, eine gute Freundin lebt beim Kap des Abschiedes. K�nntet Ihr bitte nach ihr sehen, ich hab sie schon l�nger nicht mehr hier gesehen. Das Kap findet Ihr, wenn Ihr der Stra�e nach Westen folgt, die Wegweiser sollten Euch direkt zum Kap f�hren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkEntry:addResponse("Zerarisa, a good frilives at the Cape Farewell. Could you look for her, I haven't see her around here for quite a while. You can find the Cape if you follow the street to the west, the signposts should lead you in the right direction.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Zerarisa, eine gute Freundin lebt beim Kap des Abschiedes. K�nntet Ihr bitte nach ihr sehen, ich hab sie schon l�nger nicht mehr hier gesehen. Das Kap findet Ihr, wenn Ihr der Stra�e nach Westen folgt, die Wegweiser sollten Euch direkt zum Kap f�hren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(71, ">", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 7));
talkEntry:addResponse("Reret Odohir, our notary, told me that she is looking for you. Please go to her, you can find her in the building northwest of the tavern. It's the house with the colourful pillar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(71, ">", 1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 7));
talkEntry:addResponse("Reret Odohir unser Notar sagte mir, dass sie Euch sehen will. Bitte geht doch zu ihr, Ihr k�nnt sie in dem Haus nordwestlich von der Taverne finden. Es ist das Haus mit der bunten S�ule davor.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(71, ">", 1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 7));
talkEntry:addResponse("Reret Odohir, our notary, told me that she is looking for you. Please go to her, you can find her in the building northwest of the tavern. It's the house with the colourful pillar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(71, ">", 1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 7));
talkEntry:addResponse("Reret Odohir unser Notar sagte mir, dass sie Euch sehen will. Bitte geht doch zu ihr, Ihr k�nnt sie in dem Haus nordwestlich von der Taverne finden. Es ist das Haus mit der bunten S�ule davor.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Reret Odohir, our notary, told me that she is looking for you. Please go to her, you can find her in the building northwest of the tavern. It's the house with the colourful pillar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Reret Odohir unser Notar sagte mir, dass sie Euch sehen will. Bitte geht doch zu ihr, Ihr k�nnt sie in dem Haus nordwestlich von der Taverne finden. Es ist das Haus mit der bunten S�ule davor.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Reret Odohir, our notary, told me that she is looking for you. Please go to her, you can find her in the building northwest of the tavern. It's the house with the colourful pillar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Reret Odohir unser Notar sagte mir, dass sie Euch sehen will. Bitte geht doch zu ihr, Ihr k�nnt sie in dem Haus nordwestlich von der Taverne finden. Es ist das Haus mit der bunten S�ule davor.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(150, ">", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 8));
talkEntry:addResponse("Reret Odohir, our notary, told me that she is looking for you. Please go to her, you can find her in the building northwest of the tavern. It's the house with the colourful pillar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(150, ">", 1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 8));
talkEntry:addResponse("Reret Odohir unser Notar sagte mir, dass sie Euch sehen will. Bitte geht doch zu ihr, Ihr k�nnt sie in dem Haus nordwestlich von der Taverne finden. Es ist das Haus mit der bunten S�ule davor.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(150, ">", 1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 8));
talkEntry:addResponse("Reret Odohir, our notary, told me that she is looking for you. Please go to her, you can find her in the building northwest of the tavern. It's the house with the colourful pillar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(150, ">", 1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 8));
talkEntry:addResponse("Reret Odohir unser Notar sagte mir, dass sie Euch sehen will. Bitte geht doch zu ihr, Ihr k�nnt sie in dem Haus nordwestlich von der Taverne finden. Es ist das Haus mit der bunten S�ule davor.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I'm sure you can find your way around here without my help now. If you need help in smithing or tailoring, just go and look for Berri Firegold or Lilli Gallfing, you can find both in the workshop.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 8));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich bin sicher, Ihr kommt nun auch ohne meine Hilfe zurecht. Wenn Ihr etwas Hilfe beim Schmieden oder Schneidern braucht, sucht nach Berri Firegold oder Lilli Gallfing die beiden m�ssten in der Werkstatt zu finden sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 8));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I'm sure you can find your way around here without my help now. If you need help in smithing or tailoring, just go and look for Berri Firegold or Lilli Gallfing, you can find both in the workshop.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 8));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich bin sicher, Ihr kommt nun auch ohne meine Hilfe zurecht. Wenn Ihr etwas Hilfe beim Schmieden oder Schneidern braucht, sucht nach Berri Firegold oder Lilli Gallfing die beiden m�ssten in der Werkstatt zu finden sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("I cannot help you with that. Why not ask Frizza over there? I'm sure she has the answer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ich kann Euch damit nicht helfen. Wieso fragt Ihr nicht Frizza dort dr�ben, ich bin mir sicher sie hat eine Antwort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Willkommen in Cadomyr!", "Welcome to Cadomyr!");
talkingNPC:addCycleText("Wenn ihr Hilfe ben�tigt, sprecht mich einfach an.", "If you need help, just speak to me.");
talkingNPC:addCycleText("Ich kann Euch sagen, wer in diesem Reich eure Hilfe ben�tigt.", "I can tell you who in this realm needs your help.");
talkingNPC:addCycleText("Wenn Ihr neu hier seid, bin ich Euer Mann.", "If you're new to this realm, I'm your man.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("", "");
mainNPC:setUseMessage("Fass mich nicht an!", "Hands off!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 362);
mainNPC:setEquipment(11, 2384);
mainNPC:setEquipment(5, 207);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 826);
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