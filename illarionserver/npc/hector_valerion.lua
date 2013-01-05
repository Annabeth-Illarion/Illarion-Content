--------------------------------------------------------------------------------
-- NPC Name: Hector Valerion                                          Cadomyr --
-- NPC Job:  Ambassador                                                       --
--                                                                            --
-- NPC Race: human                      NPC Position:  139, 553, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                       easyNPC Parser v1.21 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 139, 553, 0, 4, 'Hector Valerion', 'npc.hector_valerion', 0, 1, 1, 200, 130, 40, 139, 90, 43);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
module("npc.hector_valerion", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Hector Valerion the royal ambassador. Keywords: Ambassador, quest, despatch, seal, orders."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Hector Valerion der k�nigliche Botschafter. Schl�sselw�rter: Botschafter, Quest, Depesche, Siegel, Befehle."));
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
talkEntry:addResponse("Be greeted. You interrupt me, so it has to be important.");
talkEntry:addResponse("#me closes a book and grumbles: 'What is it again?'");
talkEntry:addResponse("Speak or be quiet. The latter is preferred.");
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
talkEntry:addResponse("Seid mir gegr��t. Ihr unterbrecht mich beim Lesen, also muss es wichtig sein.");
talkEntry:addResponse("#me legt ein Buch beiseite und grummelt: 'Was ist denn jetzt schon wieder?'");
talkEntry:addResponse("Sprecht oder schweigt, letzteres w�re mir lieber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Be greeted. You interrupt me, so it has to be important.");
talkEntry:addResponse("#me closes a book and grumbles: 'What is it again?'");
talkEntry:addResponse("Speak or be quiet. The latter is preferred.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Seid mir gegr��t. Ihr unterbrecht mich beim Lesen, also muss es wichtig sein.");
talkEntry:addResponse("#me legt ein Buch beiseite und grummelt: 'Was ist denn jetzt schon wieder?'");
talkEntry:addResponse("Sprecht oder schweigt, letzteres w�re mir lieber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Can I continue reading now? Undisturbed? Thank you!");
talkEntry:addResponse("Go and don't come back too early.");
talkEntry:addResponse("There is the door.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Kann ich jetzt weiterlesen? Ungest�rt? Danke!");
talkEntry:addResponse("Auf wiedersehen und beehrt mich wieder. Aber nicht allzu bald.");
talkEntry:addResponse("Da ist die T�r.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Can I continue reading now? Undisturbed? Thank you!");
talkEntry:addResponse("Go and don't come back too early.");
talkEntry:addResponse("There is the door.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Kann ich jetzt weiterlesen? Ungest�rt? Danke!");
talkEntry:addResponse("Auf wiedersehen und beehrt mich wieder. Aber nicht allzu bald.");
talkEntry:addResponse("Da ist die T�r.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Just work! But what do I say, you look like somebody with lost of esteem. How about you fulfill a royal mission?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Immer diese Arbeit! Aber was sage ich, ihr seht aus, als wenn ihr voller Tatendrang w�ret. Werdet ihr auf eine k�nigliche Mission gehen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("My name is Hector, Hector Valerion. I am the royal ambassador and you are...?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Mein Name ist Hector, Hector Valerion. Ich bin der k�nigliche Botschafter und ihr seid...?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Delayed Mail I"));
talkEntry:addResponse("I see you are a loyal minion of her queen and want to help one of her officials. I have to write down the queen's latest order. Could you bring me five quills?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sp�te Post I"));
talkEntry:addResponse("Wunderbar, ihr wollt als treuer Diener einem Beamten der K�nigin helfen. Holt mir bitte f�nf Federkiele, ich muss noch die neuesten Befehle der K�nigin in Worte fassen.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("message");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Delayed Mail I"));
talkEntry:addResponse("I see you are a loyal minion of her queen and want to help one of her officials. I have to write down the queen's latest order. Could you bring me five quills?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sp�te Post I"));
talkEntry:addResponse("Wunderbar, ihr wollt als treuer Diener einem Beamten der K�nigin helfen. Holt mir bitte f�nf Federkiele, ich muss noch die neuesten Befehle der K�nigin in Worte fassen.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(463, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("How am I supposed to write down the latest orders of her majesty without quills? Bring me at least five if you are loyal.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(463, "all", "<", 5, nil));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Wie soll ich ohne Federkiele die neuesten Befehle der K�nigin niederschreiben? Bring mit wenigstens f�nf, wenn ihr loyal seid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(463, "all", "<", 5, nil));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("message");
talkEntry:addResponse("How am I supposed to write down the latest orders of her majesty without quills? Bring me at least five if you are loyal.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(463, "all", "<", 5, nil));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Wie soll ich ohne Federkiele die neuesten Befehle der K�nigin niederschreiben? Bring mit wenigstens f�nf, wenn ihr loyal seid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(463, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 20 silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addResponse("Very good! With those quills, I can write down today's orders. If you wait a brief moment, you could go on a mission to issue the orders.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 2000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(463, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(463, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 20 silver coins."));
talkEntry:addResponse("Very good! With those quills, I can write down today's orders. If you wait a brief moment, you could go on a mission to issue the orders.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 2000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(463, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(463, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addResponse("Sehr gut! Mit diesen Federkielen kann ich die Tagesbefehle niederschreiben. Wenn ihr kurz wartet, k�nnt ihr auf die Mission gehen, die Befehle auszuteilen.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 2000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(463, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(463, "all", ">", 4, nil));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."));
talkEntry:addResponse("Sehr gut! Mit diesen Federkielen kann ich die Tagesbefehle niederschreiben. Wenn ihr kurz wartet, k�nnt ihr auf die Mission gehen, die Befehle auszuteilen.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 2000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(463, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Delayed Mail II: You received a message for Robertus."));
talkEntry:addResponse("The queen has important orders for her royal builder, Robertus is his name. It is about his latest project. Rush to Robertus at once!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sp�te Post II: Du hast eine Nachricht f�r Robertus erhalten."));
talkEntry:addResponse("Die K�nigin hat wichtige Befehle f�r Robertus, der k�niglichen Baumeister. Es geht um sein derzeitiges Bauprojekt. Lauft sofort zu Robertus!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 2));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Delayed Mail II: You received a message for Robertus."));
talkEntry:addResponse("The queen has important orders for her royal builder, Robertus is his name. It is about his latest project. Rush to Robertus at once!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sp�te Post II: Du hast eine Nachricht f�r Robertus erhalten."));
talkEntry:addResponse("Die K�nigin hat wichtige Befehle f�r Robertus, der k�niglichen Baumeister. Es geht um sein derzeitiges Bauprojekt. Lauft sofort zu Robertus!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Maybe you did not understand: Important orders means: 'Deliver them now!'. Run to Robertus at once!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Vielleicht habt ihr nicht recht verstanden: Wichtige Befehle bedeutet: '�berbring sie sofort!'. Lauft also sofort zu Robertus.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addResponse("Maybe you did not understand: Important orders means: 'Deliver them now!'. Run to Robertus at once!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Vielleicht habt ihr nicht recht verstanden: Wichtige Befehle bedeutet: '�berbring sie sofort!'. Lauft also sofort zu Robertus.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded five silver coins and a large metal shield. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addResponse("Very good, now Robertus has the sketch the queen drew. As messenger of the queen, you deserve this shield with her crest.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.item.item(20, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 5));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded five silver coins and a large metal shield."));
talkEntry:addResponse("Very good, now Robertus has the sketch the queen drew. As messenger of the queen, you deserve this shield with her crest.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.item.item(20, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und einen gro�en Metallschild. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addResponse("Sehr gut, nun hat Robertus die Skizze der K�nigin. Als Bote der K�nigin verdient ihr diesen Schild mit ihrem Wappen.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.item.item(20, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 5));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 4));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und einen gro�en Metallschild."));
talkEntry:addResponse("Sehr gut, nun hat Robertus die Skizze der K�nigin. Als Bote der K�nigin verdient ihr diesen Schild mit ihrem Wappen.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.item.item(20, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Delayed Mail III: You received a message for Arenius Batavius."));
talkEntry:addResponse("Ah, I almost forgot. Arenius Batavius, a self proclaimed hero, asked for information from the library. Please, bring him this scroll.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 5));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sp�te Post III: Du hast eine Nachricht f�r Arenius Batavius erhalten."));
talkEntry:addResponse("Ah, ich hab da noch was. Arenius Batavius, ein selbsternannter Held, fragte nach Informationen aus der Bibliothek. �berbringt ihm bitte diese Schriftrolle.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 5));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Delayed Mail III: You received a message for Arenius Batavius."));
talkEntry:addResponse("Ah, I almost forgot. Arenius Batavius, a self proclaimed hero, asked for information from the library. Please, bring him this scroll.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 5));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sp�te Post III: Du hast eine Nachricht f�r Arenius Batavius erhalten."));
talkEntry:addResponse("Ah, ich hab da noch was. Arenius Batavius, ein selbsternannter Held, fragte nach Informationen aus der Bibliothek. �berbringt ihm bitte diese Schriftrolle.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Don't hurry too much, that hurts your heart. But I think Arenius Batavius eagerly awaits the information you have.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 6));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Hetzt euch nicht zu sehr, das ist nicht gut f�r das Herz. Aber ich glaube, Arenius Batavius wartet sehns�chtig auf die Informationen, die ihr habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 6));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addResponse("Don't hurry too much, that hurts your heart. But I think Arenius Batavius eagerly awaits the information you have.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 6));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Hetzt euch nicht zu sehr, das ist nicht gut f�r das Herz. Aber ich glaube, Arenius Batavius wartet sehns�chtig auf die Informationen, die ihr habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a merinium plated dagger. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addResponse("Thank you for delivering the information to Arenius Batavius. Whoever those Salavesh are - after rereading the books about them, I guess you might need a good dagger for self defense.");
talkEntry:addConsequence(npc.base.consequence.item.item(444, 1, 699, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 8));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a merinium plated dagger."));
talkEntry:addResponse("Thank you for delivering the information to Arenius Batavius. Whoever those Salavesh are - after rereading the books about them, I guess you might need a good dagger for self defense.");
talkEntry:addConsequence(npc.base.consequence.item.item(444, 1, 699, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 7));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen meriniumbeschichteten Dolch. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addResponse("Ich danke f�r das �berbringen der Informationen an Arenius Batavius. Wer auch immer diese Salavesh sind; nach einem erneutem Studium denke ich, dass ihr einen guten Dolch zur Selbstverteidigung braucht.");
talkEntry:addConsequence(npc.base.consequence.item.item(444, 1, 699, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 8));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 7));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen meriniumbeschichteten Dolch."));
talkEntry:addResponse("Ich danke f�r das �berbringen der Informationen an Arenius Batavius. Wer auch immer diese Salavesh sind; nach einem erneutem Studium denke ich, dass ihr einen guten Dolch zur Selbstverteidigung braucht.");
talkEntry:addConsequence(npc.base.consequence.item.item(444, 1, 699, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Delayed Mail IV: You received a message for Daerbur Wimbert."));
talkEntry:addResponse("So, the queen once again needs your help as messenger. Venture to Daerbur Wimbert, the queen has an order for sparkling gems from the dark hole mine.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 8));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sp�te Post IV: Du hast eine Nachricht f�r Daerbur Wimbert erhalten."));
talkEntry:addResponse("Nun, die K�nigin braucht ein weiteres mal eure Botendienste. Geht zu Daerbur Wimbert, die K�nigin hat eine Order �ber funkelnde Edelsteine aus der Dunkellochmine.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 8));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Delayed Mail IV: You received a message for Daerbur Wimbert."));
talkEntry:addResponse("So, the queen once again needs your help as messenger. Venture to Daerbur Wimbert, the queen has an order for sparkling gems from the dark hole mine.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 8));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sp�te Post IV: Du hast eine Nachricht f�r Daerbur Wimbert erhalten."));
talkEntry:addResponse("Nun, die K�nigin braucht ein weiteres mal eure Botendienste. Geht zu Daerbur Wimbert, die K�nigin hat eine Order �ber funkelnde Edelsteine aus der Dunkellochmine.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The queen does not appreciate to wait. And she'll get word soon that you are responsible if her gems won't come from dark hole mine in time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 9));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die K�nigin wartet nicht gerne. Bald wird sie erfahren, dass ihr daf�r verantwortlich seid, dass ihre Edelsteine aus der Dunkellochmine nicht ankommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 9));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addResponse("The queen does not appreciate to wait. And she'll get word soon that you are responsible if her gems won't come from dark hole mine in time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 9));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Die K�nigin wartet nicht gerne. Bald wird sie erfahren, dass ihr daf�r verantwortlich seid, dass ihre Edelsteine aus der Dunkellochmine nicht ankommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 40 silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addResponse("Great! Now the treasury of Cadomyr will have more trumpery. Here is your reward.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 4000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 11));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 40 silver coins."));
talkEntry:addResponse("Great! Now the treasury of Cadomyr will have more trumpery. Here is your reward.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 4000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 11));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 10));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 40 Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addResponse("Gro�artig! Nun wird noch mehr Kitsch die Schatzkammer Cadomyrs �berfluten. Hier, eure Belohnung.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 4000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 11));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 10));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 40 Silberst�cke."));
talkEntry:addResponse("Gro�artig! Nun wird noch mehr Kitsch die Schatzkammer Cadomyrs �berfluten. Hier, eure Belohnung.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 4000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 11));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Delayed Mail V: You received a message for Archmage Elvaine Morgan."));
talkEntry:addResponse("Are you ready for a secret diplomatic mission? Deliver this royal despatch to Archmage Morgan of Runewick. Do not even think about breaking its seal!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 11));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sp�te Post V: Du hast eine Nachricht f�r Erzmagier Elvaine Morgan erhalten."));
talkEntry:addResponse("Seid ihr bereit f�r eine geheime diplomatische Mission? Bringt diese k�nigliche Depesche zu Erzmagier Morgan von Runewick. Und denkt nichtmal dran, das Siegel zu brechen!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 11));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Delayed Mail V: You received a message for Archmage Elvaine Morgan."));
talkEntry:addResponse("Are you ready for a secret diplomatic mission? Deliver this royal despatch to Archmage Morgan of Runewick. Do not even think about breaking its seal!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 11));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sp�te Post V: Du hast eine Nachricht f�r Erzmagier Elvaine Morgan erhalten."));
talkEntry:addResponse("Seid ihr bereit f�r eine geheime diplomatische Mission? Bringt diese k�nigliche Depesche zu Erzmagier Morgan von Runewick. Und denkt nichtmal dran, das Siegel zu brechen!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Aren't you on a secret mission to deliver a diplomatic despatch to the Archmage of Runewick? Or did I send someone else?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Seid ihr nicht auf einer geheimen Mission und habt eine diplomatische Depesche zum Erzmagier nach Runewick zu bringen? Oder schickte ich jemand anderes...?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addResponse("Aren't you on a secret mission to deliver a diplomatic despatch to the Archmage of Runewick? Or did I send someone else?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Seid ihr nicht auf einer geheimen Mission und habt eine diplomatische Depesche zum Erzmagier nach Runewick zu bringen? Oder schickte ich jemand anderes...?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a magical topaz and a topaz ring. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addResponse("You helped her majesty a lot. Please maintain silence about your journey. Your silence is worth your life and for me, it is worth this ring.");
talkEntry:addConsequence(npc.base.consequence.item.item(198, 1, 333, {["gemLevel"] = "1"}));
talkEntry:addConsequence(npc.base.consequence.item.item(282, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 14));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a magical topaz and a topaz ring."));
talkEntry:addResponse("You helped her majesty a lot. Please maintain silence about your journey. Your silence is worth your life and for me, it is worth this ring.");
talkEntry:addConsequence(npc.base.consequence.item.item(198, 1, 333, {["gemLevel"] = "1"}));
talkEntry:addConsequence(npc.base.consequence.item.item(282, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 14));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen magischen Topas und einen Topasring. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addResponse("Ihr habt ihrer Majest�t sehr geholfen. Bitte bewahrt Stillschweigen �ber eure Reise. Euer Schweigen ist euch euer Leben und mir diesen Ring wert.");
talkEntry:addConsequence(npc.base.consequence.item.item(198, 1, 333, {["gemLevel"] = "1"}));
talkEntry:addConsequence(npc.base.consequence.item.item(282, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 14));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 13));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen magischen Topas und einen Topasring."));
talkEntry:addResponse("Ihr habt ihrer Majest�t sehr geholfen. Bitte bewahrt Stillschweigen �ber eure Reise. Euer Schweigen ist euch euer Leben und mir diesen Ring wert.");
talkEntry:addConsequence(npc.base.consequence.item.item(198, 1, 333, {["gemLevel"] = "1"}));
talkEntry:addConsequence(npc.base.consequence.item.item(282, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 14));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 14));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("At this moment, you cannot help me anymore. I guess the both of us should do what we can do best again. For me, that is reading my book.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 14));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Mir ist nicht mehr zu helfen. Wir beide sollten tun, was wir am besten k�nnen. Bei mir ist das B�cher lesen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 14));
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addResponse("At this moment, you cannot help me anymore. I guess the both of us should do what we can do best again. For me, that is reading my book.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 14));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addResponse("Mir ist nicht mehr zu helfen. Wir beide sollten tun, was wir am besten k�nnen. Bei mir ist das B�cher lesen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am the royal ambassador. That means I issue the orders of the queen and diplomatic despatches.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin der k�nigliche Botschafter. Das bedeutet, dass ich die Befehle und die diplomatischen Depeschen der K�nigin kund tue.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I am the royal ambassador. That means I issue the orders of the queen and diplomatic despatches.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin der k�nigliche Botschafter. Das bedeutet, dass ich die Befehle und die diplomatischen Depeschen der K�nigin kund tue.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("You aren't from Gobaith, are you? If so, my condolescence.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Ihr seid nicht von Gobaith, richtig? Falls doch, mein Beileid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("You are none of the officals, right? So, what do you require - orders?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Ihr seid keine Amtsperson, richtig? Nun, was gibt es - braucht ihr Befehle?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("seal");
talkEntry:addResponse("Never ever even think about breaking the queen's seal. You'll regret it...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ambassador");
talkEntry:addTrigger("embassador");
talkEntry:addResponse("Did you ever wonder why ambassador sits in an embassy and not an ambassy? Or why he isn't called embassador?");
talkEntry:addResponse("Indeed, I am the royal ambassador. That means that you receive orders from the queen by my hand.");
talkEntry:addResponse("I used to travel a lot in diplomatic mission, but now I prefer to read a good book.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("lazy");
talkEntry:addResponse("Lazy, hah. If you had travelled as much as me, you'd understand that I deserve an extended rest now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Order");
talkEntry:addResponse("The orders of the queen all cross my desk. Except for those she yells right in the faces of her lackeys. That makes me somehow... special, no?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("despatch");
talkEntry:addTrigger("dispatch");
talkEntry:addResponse("Whenever there is an issue with Galmair or Runewick, the queen issues despatches. She rarely leaves her palace to deal with our neighbours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("Baron");
talkEntry:addResponse("Let me see... yes, I have orders for the Baron, it reads: 'Drop dead!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("diplomat");
talkEntry:addResponse("The fine art of diplomacy isn't a strength of Cadomyr; but for such things, there is me!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("siegel");
talkEntry:addResponse("Brecht niemals ein k�nigliches Siegel. Ihr w�rdet es bereuen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Botschafter");
talkEntry:addResponse("Habt ihr euch gefragt, was einen Botschafter von einem Boten unterscheidet? Die K�nigin h�lt mich manchmal f�r zweiteres...");
talkEntry:addResponse("F�rwahr, ich bin der Botschafter der K�nigin. Also, ihre Befehle werden duch mich kund getan.");
talkEntry:addResponse("Daf�r war ich oft und gerne in diplomatischer Mission unterwegs. Jetzt ziehe ich es vor, lieber mal ein gutes Buch zu lesen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("faul");
talkEntry:addResponse("Faul, hah. Wenn ihr so viel gereist w�ret wie ich, w�rdet ihr verstehen, dass ich nun eine l�ngere Rast verdient habe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Die Befehle der K�nigin gehen alle �ber meinen Schreibtisch. Au�er die, die sie ihren Lakaien direkt ins Gesicht schreit. Das macht mich doch irgendwie... wichtig, oder?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Depesche");
talkEntry:addResponse("Wenn es ein Problem mit Galmair oder Runewick gibt sendet die K�nigin Depeschen aus. Sie verl�sst nur ungerne ihren Palast, um sich mit unseren Nachbarn rumzuplagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("Baron");
talkEntry:addResponse("Lasst mich mal nachsehen... ja, ich habe hier einen Befehl f�r den Baron: 'Stirb'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Diplomat");
talkEntry:addResponse("Die hohe Kunst der Diplomatie ist eigentlich keine St�rke Cadomyrs. Aber daf�r gibt es ja mich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Daerbur");
talkEntry:addTrigger("Wimbert");
talkEntry:addResponse("You might want to search for Daerbur Wimbert in the darkhole mine. That is very far to the north. Better ask in Galmair, they are familiar with... dark holes.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Daerbur");
talkEntry:addTrigger("Wimbert");
talkEntry:addResponse("Ihr sucht Daerbur Wimbert am besten in der Dunkellochmine. Diese ist weit im Norden. Fragt besser mal in Galmair nach, die kennen sich mit dunklen L�chern bestens aus.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Robertus");
talkEntry:addResponse("Oh, if you are looking for the royal builder Robertus, just head for the market place. He usually corrects his plans there. I wonder what he is building currently.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Robertus");
talkEntry:addResponse("Oh, wenn ihr nach dem k�niglichen Baumeister Robertus sucht, dann geht einfach zu Marktplatz. Dort arbeitet er zumeist an seinen Pl�nen. Ich frag mich, was er jetzt wieder bauen will.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Arenius");
talkEntry:addTrigger("Batavius");
talkEntry:addResponse("A fallen crusader lurks in front of the gates of Cadomyr. His name is Arenius Batavius. He is rather thirsty for information I overheard.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Arenius");
talkEntry:addTrigger("Batavius");
talkEntry:addResponse("Ein gescheiterter Kreuzritter lungert vor dem Tor Cadomyrs herum. Sein Name ist Arenius Batavius. Er ist sehr darauf erpicht, an Informationen zu kommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Duplo");
talkEntry:addResponse("They are pretty long, aren't they?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Duplo");
talkEntry:addResponse("Die sind verdammt lang, nicht wahr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("The archmage is, indeed, intelligent. But he has problems deriving the right deeds from his thoughts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Der Erzmagier ist f�rwahr intelligent. Allerdings f�llt es ihm schwer, aus seinen Gedanken die richtigen Taten abzuleiten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("The archmage is, indeed, intelligent. But he has problems deriving the right deeds from his thoughts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Der Erzmagier ist f�rwahr intelligent. Allerdings f�llt es ihm schwer, aus seinen Gedanken die richtigen Taten abzuleiten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick is far to the east. There is a secret passage under the mountains but it is a dangerous path. But the travel is worth it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick ist weit im Osten. Es gibt eine geheime Passage unter den Bergen hindurch, aber es ist ein gef�hrlicher Weg. Die Reise ist es jedoch wert.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Negotiations with the Don used to be difficult in the past. But strangely, since Queen Rosaline inherited the throne, his behaviour changed.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Verhandlungen mit dem Don waren fr�her immer recht erm�dend. Merkw�rdigerweise hat sich sein Verhalten drastisch ver�ndert, seit K�nigin Rosaline den Thron bestiegen hat.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair you can find when travelling far to the north. But don't take to much money with you, you will return without it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Ihr gelangt nach Galmair, wenn ihr weit in den Norden reist. Aber nehmt nicht zu viel Geld mit, ihr werdet ohne es wiederkommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("I obey her orders like I obeyed King Reginald's. You better do likewise or you'll be treated like Baron Hastings.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Ich gehorche ihren Befehlen wie ich K�nig Reginalds Befehlen gehorcht habe. Ihr macht besser das gleiche oder es ergeht euch wie Baron Hastings.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("I obey her orders like I obeyed King Reginald's. You better do likewise or you'll be treated like Baron Hastings.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ich gehorche ihren Befehlen wie ich K�nig Reginalds Befehlen gehorcht habe. Ihr macht besser das gleiche oder es ergeht euch wie Baron Hastings.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr is my home and I do my share to make it prosper. Maybe not every day, but once in a while.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr ist meine Heimat und ich trage meinen Teil dazu bei, es gedeihen zu lassen. Vielleicht nicht jeden Tag, aber immer mal wieder.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Back in my youth, I once travelled in diplomatic mission to Albar. It was... I think we sent a host to there afterwards.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("W�hrend meiner Jugend bin ich einst in diplomatischer Mission nach Albar gereist. Es ging um... Ich meine, wir haben hinterher eine Streitmacht dorthin entsandt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Diplomacy is not a skill of the Gynkeesh. They have many, but not that one.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Diplomatie ist keine St�rke der Gynkeesh. Sie m�gen einige andere haben, aber nicht diese.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("I was once to Salkamar. My ears bleeded after I had to listen all their awkward points of view. Horrible realm!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Ich war ein einziges mal in Salkamar. Meine Ohren haben geblutet nachdem ich mir all die komischen Standpunkte dort angeh�rt habe. Ein schreckliches Land!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Adron");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elara");
talkEntry:addResponse("You think I worship Elara because I read books? I worship books, isn't that obvious?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Ihr denkt also, ich bin ein Anbete Elaras, weil ich B�cher lese? Ich bin ein Anbeter guter Literatur, ist das nicht offensichtlich?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Findari");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Malach�n is the patron of Cadomyr... But I doubt I have to tell you that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Malach�n ist der Schutzgott Cadomyrs... Aber wem erz�hle ich das?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Out of my embassy!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Raus aus meiner Botschaft!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ronagan is the god of travellers, don't you know? So, why don't you travel a bit for me with Ronagan's blessing?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ronagan ist der Gott der Reisenden, wu�tet ihr das nicht? Nun, warum tut ihr nicht eine Reise f�r mich mit Ronagans Segen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("My faith in the gods is strong, but I prefer not to talk about something as private as this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("I am loyal, for Zhambra smiled upon me. I wouldn't do anything without an explicite, written order of her majesty.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Ich bin loyal, Zhambra meint es gut mit mir. Ich w�rde nichts ohne einen ausdr�cklichen und schriftlichen Befehl ihrer Majest�t tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("The only thing I'd buy is my peace. Sometimes, I wish I'd be a less important man.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Das einzige, was ich erkaufen w�rde, w�re meine Ruhe. Ich w�nschte manchmal, ich w�re nicht so ein wichtiger Mann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Let's be honest, you disturb me and I am an important person. So, if you do a royal mission for me, both of us would be happy.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Mal ehrlich, ihr st�rt mich und ich bin eine wichtige Pers�nlichkeit. Also w�rdet ihr uns beide gl�cklich machen, wenn ihr euch auf eine Mission f�r die K�nigin begeben w�rdet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hector");
talkEntry:addTrigger("Valerion");
talkEntry:addResponse("I am proud of being a Valerion. Are you proud to be a...?");
talkEntry:addResponse("Hector Valerion, at your service.");
talkEntry:addResponse("I am the royal ambassador and my name is indeed Hector Valerion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hector");
talkEntry:addTrigger("Valerion");
talkEntry:addResponse("Ich bin stolz darauf, ein Valerion zu sein. Seid ihr stolz darauf ein... was genau nochmal... zu sein?");
talkEntry:addResponse("Hector Valerion, stets zu Diensten.");
talkEntry:addResponse("Ich bin der k�nigliche Botschafter und meine Name ist in der Tat Hector Valerion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Well, no.");
talkEntry:addResponse("Alright, indeed.");
talkEntry:addResponse("Who said this?");
talkEntry:addResponse("#me shrugs.");
talkEntry:addResponse("I am trying to read!");
talkEntry:addResponse("#me sighs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Ja, ne.");
talkEntry:addResponse("Sicherlich, klar!");
talkEntry:addResponse("Wer sagt denn sowas?");
talkEntry:addResponse("#me zuckt mit den Schultern.");
talkEntry:addResponse("Ich versuche hier zu lesen!");
talkEntry:addResponse("#me seufzt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("I guess I forgot on which page I was.");
talkEntry:addResponse("My book is really interesting. Does the same hold for what you just said?");
talkEntry:addResponse("Shh!");
talkEntry:addResponse("Pardon?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Ich f�rchte, ich hab vergessen, auf welcher Seite ich war.");
talkEntry:addResponse("Mein Buch ist wirklich spannend. Gilt das auch f�r das, was ihr gerade gesagt habt?");
talkEntry:addResponse("Psst!");
talkEntry:addResponse("Pardon?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Ups, die Post ist da!", "Ups, I have mail.");
talkingNPC:addCycleText("#me g�hnt gelangweilt.", "#me yawns lazily.");
talkingNPC:addCycleText("#me bl�ttert in einem Buch.", "#me browses a book.");
talkingNPC:addCycleText("Ich hoffe nur, ich muss nicht schon wieder irgendwelche Depeschen �berbringen.", "I just hope I don't have to deliver any despatches.");
talkingNPC:addCycleText("Wann soll ich hier eigentlich mal ungest�rt zum Lesen kommen?", "When do I get to read my way?");
talkingNPC:addCycleText("Ob das Volk heute oder morgen seine Befehle bekommt, was macht das f�r einen Unterschied? Cadomyr wird es ewig geben!", "Does it make a difference whether the people get their orders today or tomorrow? Cadomyr will last forever!");
talkingNPC:addCycleText("Gut, gut, gut...", "Good, good, good...");
talkingNPC:addCycleText("Eindeutig zu viel Arbeit. Ich sollte erstmal ein wenig lesen, wahrscheinlich �berlegt sie es sich nochmal.", "Simply too much work. I should read a bit, most probably, she'll reconsider anyway.");
talkingNPC:addCycleText("Ich h�tte heiraten sollen als noch die Zeit daf�r war.", "I should have merried when I still had the time.");
talkingNPC:addCycleText("Wenn das Leben nicht so l�uft, wie man will, sollte man was dagegen tun.", "If life does not turn out how you'd like it to be one should do something about this.");
talkingNPC:addCycleText("Ruhe! Ich lese!", "Silence! I am reading!");
talkingNPC:addCycleText("#me betrachtet missmutig eine Schriftrolle, die das k�nigliche Siegel Cadomyrs tr�gt.", "#me stares morosely at a scroll that bears the royal seal of Cadomyr.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist der k�nigliche Botschafter Hector Valerion.", "This NPC is the royal ambassador Hector Valerion.");
mainNPC:setUseMessage("Ihr werdet die Finger von einem Mann ihrer Majest�t lassen.", "You won't lay hand on a man of the queen, will you?");
mainNPC:setConfusedMessage("Pardon?", "Pardon?");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 815);
mainNPC:setEquipment(11, 195);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 2295);
mainNPC:setEquipment(9, 827);
mainNPC:setEquipment(10, 369);
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