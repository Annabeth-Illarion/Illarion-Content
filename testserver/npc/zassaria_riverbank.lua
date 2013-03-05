--------------------------------------------------------------------------------
-- NPC Name: Zassaria Riverbank                                      Runewick --
-- NPC Job:  Message quest giver                                              --
--                                                                            --
-- NPC Race: lizardman                  NPC Position:  908, 812, 1            --
-- NPC Sex:  female                     NPC Direction: east                   --
--                                                                            --
-- Author:   Miriam                                                           --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (5, 908, 812, 1, 2, 'Zassaria Riverbank', 'npc.zassaria_riverbank', 1, 3, 0, 70, 77, 0, 70, 52, 0);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
module("npc.zassaria_riverbank", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Zassaria Riverbank. Keywords: quest, mission, order."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Zassaria Riverbank. Schl�sselw�rter: Quest, Mission, Auftrag."));
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
talkEntry:addResponse("Greetingsss to you.");
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
talkEntry:addResponse("Seid gegr��sst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greetingsss to you.");
talkEntry:addResponse("#me hisses.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Seid gegr��sst.");
talkEntry:addResponse("#me zischt");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Ssss. Zzzelphia be with you. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Ssss. Zzzelphia sssei mit Euch. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Ssss. Zzzelphia be with you. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Ssss. Zzzelphia sssei mit Euch. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I'm feeling very good. Sss. Extraordinary.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Mir geht es sssehr gut. Ausssgezzeichnet. Sss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am the one called Zassaria Riverbank. Nice to meet you. Sss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich werde Zassaria Riverbank genannt. Sss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sell");
talkEntry:addTrigger("buy");
talkEntry:addTrigger("wares");
talkEntry:addTrigger("price");
talkEntry:addTrigger("trade");
talkEntry:addTrigger("purchase");
talkEntry:addResponse("Tsss! I ate all my fisssh. I'll catch new fishiesss sssoon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("kauf");
talkEntry:addTrigger("waren");
talkEntry:addTrigger("preis");
talkEntry:addTrigger("Handel");
talkEntry:addTrigger("ver�u�er");
talkEntry:addTrigger("erwerb");
talkEntry:addResponse("Tsss! Ich a� all meinen Fisssch. Ich werde ssschnellssstm�glich neuen fangen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("florain");
talkEntry:addTrigger("dreyndel");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Ask for me I"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 1));
talkEntry:addResponse("Could you help me jussst a little? Sss... Nizar assked me for an oil lamp some time ago. Tsss. I found one while fissshing just yesssterday. Zss. Can you tell him he ssshould talk to me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("florain");
talkEntry:addTrigger("dreyndel");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Frag f�r mich I"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 1));
talkEntry:addResponse("K�nntet Ihr mit Helfen? Sss ... Nizar fragte mich nach einer �llampe. Zss. Gessstern habe ich eine beim Fissschen gefunden. Ssso sssagt ihm, er m�ge mit mir reden. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Frag f�r mich I"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 1));
talkEntry:addResponse("Could you help me jussst a little? Sss... Nizar assked me for an oil lamp some time ago. Tsss. I found one while fissshing just yesssterday. Zss. Can you tell him he ssshould talk to me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Frag f�r mich I"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 1));
talkEntry:addResponse("K�nntet Ihr mit Helfen? Sss ... Nizar fragte mich nach einer �llampe. Zss. Gessstern habe ich eine beim Fissschen gefunden. Ssso sssagt ihm, er m�ge mit mir reden. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Sss... Nizar assked me for an oil lamp some time ago. Can you tell him he ssshould talk to me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Nizar fragte mich nach einer �llampe. Zss. Ssso sssagt ihm, er m�ge mit mir reden. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Sss... Nizar assked me for an oil lamp some time ago. Can you tell him he ssshould talk to me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Nizar fragte mich nach einer �llampe. Zss. Ssso sssagt ihm, er m�ge mit mir reden. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You solved the Quest and are rewarded by Zarissa with some coins, an old sabre found at the bottom of the sea and a pair of new boots. You advance in Archmage Elvaine Morgan's favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 600));
talkEntry:addConsequence(npc.base.consequence.item.item(25, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(53, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 3));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 2));
talkEntry:addResponse("Ssso you talked to Missster Nizar? Tsss. Well, thank you for your help... Zss...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel��t] Du hast das Quest gel�st und erh�lst zum Dank etwas Geld, einen S�bel den Zarissa auf dem Grund des Meeres gefunden hat und ein Paar neue Stiefel. Dein Ansehen bei Erzmagier Elvaine Morgan steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 600));
talkEntry:addConsequence(npc.base.consequence.item.item(25, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(53, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 3));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 2));
talkEntry:addResponse("Ihr habt also mit Missster Nizar gessssprochen? Tsss. Nun, danke f�r Eure Hilfe..Zss...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Ask for me II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 4));
talkEntry:addResponse("Ssso, you came to help me again? Zss. Thatsss very nice of you. Sss. I haven't sssseen Argentusss Almsbag for a while. Zzz. Pleassse, asssk him if he would ssstill like to buy fisssh. The fisssh are ssstarting to sssmell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Frag f�r mich II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 4));
talkEntry:addResponse("Sssso, du kommssst um mir zzzu helfen? Wie nett. Zss. Argenutsss Almsbag hat sssich ssschon lange nicht mehr bei mir blicken lassssen. Fragt ihn, ob er noch Fisssch kaufen m�chte. Zss. Der Fisssch beginnt zzzu riechen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] ask for me II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(118, "=", 4));
talkEntry:addResponse("Ssso, you came to help me again? Zss. Thatsss very nice of you. Sss. I haven't sssseen Argentusss Almsbag for a while. Zzz. Pleassse, asssk him if he would ssstill like to buy fisssh. The fissh are ssstarting to sssmell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Frag f�r mich II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 4));
talkEntry:addResponse("Sssso, du kommssst um mir zzzu helfen? Wie nett. Zss. Argenutsss Almsbag hat sssich ssschon lange nicht mehr bei mir blicken lassssen. Fragt ihn, ob er noch Fisssch kaufen m�chte. Zss. Der Fisssch beginnt zzzu riechen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Pleassse asssk Argentusss Almsssbag about hisss fisssh order. Zsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Bitte fragt bei Argentuss Almsssbag wegen ssseiner Fisschbestellung nach. Sss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Pleassse asssk Argentusss Almsssbag about hisss fisssh order. Zsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Bitte fragt bei Argentuss Almsssbag wegen ssseiner Fisschbestellung nach. Sss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You solved the quest. You are awarded 10 silver coins and an old wizard hat. You advance in Archmage Elvaine Morgan's favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(357, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 6));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 4));
talkEntry:addResponse("Thank you. Zzzs. Take thisss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 5));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel��t] Du hast das Quest gel�st. Du wirst mit 10 Silberm�nzen und einem alten Zauberhut belohnt. Dein Ansehen bei Erzmagier Elvaine Morgan steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(357, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 6));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 4));
talkEntry:addResponse("Danke sssehr. Nehmt diesss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Ask for me III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 7));
talkEntry:addResponse("Pleassse asssk Neiran el Nyarale what happened to my collection of oil lampsss. I sssaw him carrying them away. You can find him upstairs in the tower of fire, the building right there to the west. Zss Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Frag f�r mich III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 7));
talkEntry:addResponse("Bitte fragt Neiran el Nyarale wass er mit meiner Sssammlung �llampen gemacht hat. Ich sssah wie er ssie davon trug. Ihr k�nnt ihn oben im Turm des Feuers finden, es ist das Geb�ude gleich dort im Westen. Zss Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Ask for me III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 7));
talkEntry:addResponse("Pleassse asssk Neiran el Nyarale what happened to my collection of oil lampsss. I sssaw him carrying them away. You can find him upstairs in the tower of fire, the building right there to the west. Zss Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Frag f�r mich III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 7));
talkEntry:addResponse("Bitte fragt Neiran el Nyarale wass er mit meiner Sssammlung �llampen gemacht hat. Ich sssah wie er ssie davon trug.  Ihr k�nnt ihn oben im Turm des Feuers finden, es ist das Geb�ude gleich dort im Westen. Zss Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Pleassse asssk Neiran el Nyarale what happened to my collection of oil lampsss. I sssaw him carrying them away. Zss Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 7));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Bitte fragt Neiran el Nyarale wass er mit meiner Sssammlung �llampen gemacht hat. Ich sssah wie er ssie davon trug. Zss Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 7));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Pleassse asssk Neiran el Nyarale what happened to my collection of oil lampsss. I sssaw him carrying them away. Zss Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 7));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Bitte fragt Neiran el Nyarale wass er mit meiner Sssammlung �llampen gemacht hat. Ich sssah wie er ssie davon trug. Zss Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You solved the quest. You are awarded 12 silver coins and a new robe in the colour of the ocean. You advance in Archmage Elvaine Morgan's favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1200));
talkEntry:addConsequence(npc.base.consequence.item.item(193, 1, 333, {["descriptionEn"] = "This robe has the colour of the sea.", ["descriptionDe"] = "Diese Robe hat die Farbe des Meers."}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 9));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("What? He saysss he threw them away? Zss! Zss! Firssst I ssshall thank you for assking Neiran el Nyarale. Zzzs. Take thisss as a present. Then I will talk to him! Zss... ");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 8));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel��t] Du hast das Quest gel�st. Du wirst mit 12 Silberm�nzen und eine neue Robe in der Farbe des Ozeans belohnt. Dein Ansehen bei Erzmagier Elvaine Morgan steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1200));
talkEntry:addConsequence(npc.base.consequence.item.item(193, 1, 333, {["descriptionEn"] = "This robe has the colour of the sea.", ["descriptionDe"] = "Diese Robe hat die Farbe des Meers."}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 9));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Wasss? Veggeworfen hat er sssie? Zss! Zss! Zzzuerssst will ich Euch danken, dassss Ihr mit Neiran el Nyarale spracht. Nehmt diesss alsss Gessschenk. Dann werde ich mir ihm ssssprechen! Zss...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Ask for me IV"));
talkEntry:addConsequence(npc.base.consequence.item.item(73, 1, 440, {["nameDe"] = "Echt gro�er Fisch", ["nameEn"] = "Really big fish", ["descriptionEn"] = "This trout is as large as a salmon.", ["rareness"] = "2", ["descriptionDe"] = "Diese Forelle ist so gro� wie ein Lachs!"}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 10));
talkEntry:addResponse("Zss! Zss! Look, I caught thiss trout. It'sss asss large asss a salmon, but, Marinna Forgeron, magical sssmith from Galmair does not believe me! Zss! Zss! Sssshow her thisss fisssh, please. Ssss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 9));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Frag f�r mich II"));
talkEntry:addConsequence(npc.base.consequence.item.item(73, 1, 440, {["nameDe"] = "Echt gro�er Fisch", ["nameEn"] = "Really big fish", ["descriptionEn"] = "This trout is as large as a salmon.", ["rareness"] = "2", ["descriptionDe"] = "Diese Forelle ist so gro� wie ein Lachs!"}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 10));
talkEntry:addResponse("Zss! Zss! Ssschaut, ich habe eine Forelle gefangen, die issst ssso gro�sss wie ein Lachssss. Aber, zss, Marianne Forgeron, magisssche Ssschmied auss Galmair sssagt, ich l�ge! Zss! Zzzeigt ihr diesssen Fisssch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 9));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Ask for me IV"));
talkEntry:addConsequence(npc.base.consequence.item.item(73, 1, 440, {["nameDe"] = "Echt gro�er Fisch", ["nameEn"] = "Really big fish", ["descriptionEn"] = "This trout is as large as a salmon.", ["rareness"] = "2", ["descriptionDe"] = "Diese Forelle ist so gro� wie ein Lachs!"}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 10));
talkEntry:addResponse("Zss! Zss! Look, I caught thiss trout. It'sss asss large asss a salmon, but, Marinna Forgeron, magical sssmith from Galmair does not believe me! Zss! Zss! Sssshow her thisss fisssh, please. Ssss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 9));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Frag f�r mich II"));
talkEntry:addConsequence(npc.base.consequence.item.item(73, 1, 440, {["nameDe"] = "Echt gro�er Fisch", ["nameEn"] = "Really big fish", ["descriptionEn"] = "This trout is as large as a salmon.", ["rareness"] = "2", ["descriptionDe"] = "Diese Forelle ist so gro� wie ein Lachs!"}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 10));
talkEntry:addResponse("Zss! Zss! Ssschaut, ich habe eine Forelle gefangen, die issst ssso gro�sss wie ein Lachssss. Aber, zss, Marianne Forgeron, magisssche Ssschmied auss Galmair sssagt, ich l�ge! Zss! Zzzeigt ihr diesssen Fisssch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Pleassse, ssshow thiss fisssh to Marinanne Forgeron in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 10));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Zzzeigt Marianne Forgeron auss Galmair diesssen gro�ssen Fisssch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 10));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Pleassse, ssshow thiss fisssh to Marinanne Forgeron in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 10));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Zzzeigt Marianne Forgeron auss Galmair diesssen gro�ssen Fisssch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You solved the quest. You are awarded with some coins and jewellery. You advance in Archmage Elvaine Morgan's favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(62, 1, 877, {["rareness"] = "1", ["craftedBy"] = "Zassaria Riverbank"}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 12));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 9));
talkEntry:addResponse("Thank you. Please take thisss asss a reward, and keep the fisssh as a souvenir, I caught an even larger one than thisss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 11));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel��t] Du hast das Quest gel�st. Du wirst mit M�nzen und Schmuck belohnt. Dein Ansehen bei Erzmagier Elvaine Morgan steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(62, 1, 877, {["rareness"] = "1", ["craftedBy"] = "Zassaria Riverbank"}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 12));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 9));
talkEntry:addResponse("Danke sssch�n. Bitte nehmt diess. Und behaltet den Fisssch als Souvenir, ich habe bereits einen gr��eren gefangen. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Ask for me V"));
talkEntry:addConsequence(npc.base.consequence.item.item(225, 1, 999, {["descriptionEn"] = "This crown belongs to Rosaline Edwards.", ["descriptionDe"] = "Diese Krone geh�rt Rosaline Edwards."}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 13));
talkEntry:addResponse("I was lucky today. Zss! Zss! I found the crown of Rosaline Edwards. She will sssurely misss it, please go and take her crown back.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 12));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Frag f�r mich V"));
talkEntry:addConsequence(npc.base.consequence.item.item(225, 1, 999, {["descriptionEn"] = "This crown belongs to Rosaline Edwards.", ["descriptionDe"] = "Diese Krone geh�rt Rosaline Edwards."}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 13));
talkEntry:addResponse("Ich habe wirklich Anglergl�ck. Zss! Zss! Ich habe die Krone von Rosaline Edwards gefissscht. Sicher vermisst sie ihren Kopfssschuck ssschon. Geht und bringt ihr die Krone zur�ck. Zss! Zss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 12));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Ask for me V"));
talkEntry:addConsequence(npc.base.consequence.item.item(225, 1, 999, {["descriptionEn"] = "This crown belongs to Rosaline Edwards.", ["descriptionDe"] = "Diese Krone geh�rt Rosaline Edwards."}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 13));
talkEntry:addResponse("I was lucky today. Zss! Zss! I found the crown of Rosaline Edwards. She will sssurely misss it, please go and take her crown back.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 12));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Frag f�r mich V"));
talkEntry:addConsequence(npc.base.consequence.item.item(225, 1, 999, {["descriptionEn"] = "This crown belongs to Rosaline Edwards.", ["descriptionDe"] = "Diese Krone geh�rt Rosaline Edwards."}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 13));
talkEntry:addResponse("Ich habe wirklich Anglergl�ck. Zss! Zss! Ich habe die Krone von Rosaline Edwards gefissscht. Sicher vermisst sie ihren Kopfssschuck ssschon. Geht und bringt ihr die Krone zur�ck. Zss! Zss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Pleassse take the crown back to Rosaline Edwards, ssshe will misss it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Bitte bringt Rosaline Edwards ihre Krone zzzur�ck. Ssssie wird sie vermisssen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Pleassse take the crown back to Rosaline Edwards, ssshe will misss it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Bitte bringt Rosaline Edwards ihre Krone zzzur�ck. Ssssie wird sie vermisssen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 14));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You solved the quest. You are awarded a silvered longsword and some coins. You advance in Archmage Elvaine Morgan's favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.item.item(98, 1, 222, {["descriptionEn"] = "This sword was a present from Zassaria Riverbank", ["rareness"] = "1", ["descriptionDe"] = "Dieses Schwert war ein Geschenk von Zassaria Riverbank."}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 15));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 12));
talkEntry:addResponse("Thank you for your ssservice. Take thisss as a reward.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 14));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel��t] Du hast das Quest gel�st. Du wirst mit einem versilberten Langschwert und ein paar Silberm�nzen belohnt. Dein Ansehen bei Erzmagier Elvaine Morgan steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.item.item(98, 1, 222, {["descriptionEn"] = "This wand was a present from Zassaria Riverbank", ["rareness"] = "1", ["descriptionDe"] = "Dieses Schwert war ein Geschenk von Zassaria Riverbank."}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 15));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 12));
talkEntry:addResponse("Danke f�r Euer Bem�hen. Nehmt diess als Belohung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 15));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Thank you. Zss. I have nothing elssse for you to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 15));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Danke sssch�n. Zss. Ich habe nichtsss mehr f�r dich zzzu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 15));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Thank you. Zss. I have nothing elssse for you to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 15));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Danke sssch�n. Zss. Ich habe nichtsss mehr f�r dich zzzu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I have no tasssk for people who do not belong to Runewick. You can go to Torina to become a citizzzen. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich habe keine Aufgabe f�r Leute die nicht Runewick angeh�ren. Ihr k�nnt zzzu Torina gehen, um B�rger zzzu werden. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I have no tasssk for people who do not belong to Runewick. You can go to Torina to become a citizzzen. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich habe keine Aufgabe f�r Leute die nicht Runewick angeh�ren. Ihr k�nnt zzzu Torina gehen, um B�rger zzzu werden. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I work asss a fisssher. It'sss fun. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich arbeite alsss Fischerin. Esss macht Spa�sss. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I work asss a fisssher. It'sss fun. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich arbeite alsss Fischerin. Esss macht Spa�sss. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Do you know there'sss a difference between Zsss, Tsss and Ssss?");
talkEntry:addResponse("Usssually marriages between my people are arranged by the parentsss. Sss. Usssually.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addTrigger("erz�hl mir was");
talkEntry:addTrigger("erz�hlt mir was");
talkEntry:addResponse("Wissst ihr, dasss es einen Unterschied zzzwischen Zsss, Tss und Ssss?");
talkEntry:addResponse("Normalerweisse werden Ehen in meinem Volk arrangiert. Ssss. Normalerweissse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Lizzardsss pray to Zzzelphia. To whom do you pray?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Echsssenmenschen beten zzzu Zzzelphia. Zzzu wem betet Ihr? Sss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("She'sss the Godesss of the water and the sssea.");
talkEntry:addResponse("You call her Tanora, thisss word iss not easssy for usss to pronounce.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Sssie isssst die G�ttin desss Wassers und dess Meereess.");
talkEntry:addResponse("Ihr nennt sssie Tanora, dasss issst kein Wort ausss unssserer Ssssprache.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("There isss no place like thisss under the sssea. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Esss gibt sssolch einen Ort Unterwassser nicht. Zss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Ssss...", "Ssss...");
talkingNPC:addCycleText("Ssss?", "Ssss?");
talkingNPC:addCycleText("Ssss!", "Ssss!");
talkingNPC:addCycleText("#me zischt.", "#me hisses.");
talkingNPC:addCycleText("Zss!", "Zss!");
talkingNPC:addCycleText("Tsss...", "Tsss...");
talkingNPC:addCycleText("#me l�sst ihren Schwanz hin und her schnellen.", "#me wags her tail back and forth.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(4);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Zassaria Riverbank von Runewick.", "This NPC is Zassaria Riverbank of Runewick.");
mainNPC:setUseMessage("#me zischt ver�rgert.", "#me hisses angrily.");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 0);
mainNPC:setEquipment(11, 196);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 52);
mainNPC:setEquipment(9, 0);
mainNPC:setEquipment(10, 0);
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