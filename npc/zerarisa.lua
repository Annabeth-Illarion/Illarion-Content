--------------------------------------------------------------------------------
-- NPC Name: Zerarisa                                                 Cadomyr --
-- NPC Job:  fisherwoman                                                      --
--                                                                            --
-- NPC Race: lizardman                  NPC Position:  46, 683, 0             --
-- NPC Sex:  female                     NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                                            --
-- Last parsing: May 18, 2011                            easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (5, 46, 683, 0, 4, 'Zerarisa', 'npc.zerarisa', 1, 3, 0, 200, 130, 0, 60, 140, 100);
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
require("npc.base.consequence.skill")
require("npc.base.talk")
module("npc.zerarisa", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 0");
talkEntry:addResponse("Quest status set to 0");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 1");
talkEntry:addResponse("Quest status set to 1");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 2");
talkEntry:addResponse("Quest status set to 2");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 3");
talkEntry:addResponse("Quest status set to 3");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 4");
talkEntry:addResponse("Quest status set to 4");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 5");
talkEntry:addResponse("Quest status set to 5");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 6");
talkEntry:addResponse("Quest status set to 6");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 7");
talkEntry:addResponse("Quest status set to 7");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 8");
talkEntry:addResponse("Quest status set to 8");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is the fisherwoman Zerarisa. Keyphrases: Hello, quest, rod, fisher."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist die Fischerin Zerarisa. Schl�sselw�rter: Hallo, Quest, Angelrute, Fischerin."));
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
talkEntry:addResponse("Greetingsss to you.");
talkEntry:addResponse("Yess, greetingss.");
talkEntry:addResponse("Blessingss of Mother upon you, greetingss.");
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
talkEntry:addResponse("Gr��sse dir.");
talkEntry:addResponse("Ja, Gr��sse.");
talkEntry:addResponse("Gr��sse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Greetingsss to you.");
talkEntry:addResponse("Yess, greetingss.");
talkEntry:addResponse("Greetsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Gr��sse dir.");
talkEntry:addResponse("Ja, Gr��sse.");
talkEntry:addResponse("Gr��sse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("May the rainsss be heavy and frequent.");
talkEntry:addResponse("May the ssea-Mother watch your path.");
talkEntry:addResponse("Farewell, zsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("M�genss Regen h�ufig und ssstark sssein.");
talkEntry:addResponse("M�genss die Meermutter dein Pfad leitenss.");
talkEntry:addResponse("Abschied, zsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Goodbye");
talkEntry:addResponse("Farewell");
talkEntry:addResponse("#me nods slowly: 'Goodbye'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addResponse("Gut wiedersehensss.");
talkEntry:addResponse("Abschied.");
talkEntry:addResponse("#me nickt langsam: 'Gut wiedersehensss'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Zerarisa iss fine, yess, but her paw hurtsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Zerarisa issst gut, ja, aber Krallensss ssschmerzensss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I be Zerarisa, would you like to do a job for me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich sindss Zerarisa, machenss du Aufgabe f�r michss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rod");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 0));
talkEntry:addResponse("You'll need a fissshing rod, you can get one from Fredericus, if the line breakss, you need thread to fix.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rute");
talkEntry:addTrigger("angel");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 0));
talkEntry:addResponse("Brauchenss Angelrute, gehenss Fredericuss. Wennss Sschnur rei�enss, brauchensss Fadensss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rod");
talkEntry:addResponse("Broke your rod? If itss jusst the line, you can usse thread to fix it. If itss the wood, assk a carpenter for a new one.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rute");
talkEntry:addTrigger("angel");
talkEntry:addResponse("Habenss gebrochen die Rute? Wennss die Schnur, brauchenss Faden. Wennss das Holzss, brauchenss Ssschreiner.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Cape Farewell I"));
talkEntry:addResponse("Zerarisa hass hurt her paw, if you could collect ten trout for me, I give you coinsss.");
talkEntry:addConsequence(npc.base.consequence.item.item(72, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Kap des Abschiedes I"));
talkEntry:addResponse("Sschwester Zerarisa habenss verletzt Pfote, fangenss zssehn Forelle, kriegenss M�nzssen.");
talkEntry:addConsequence(npc.base.consequence.item.item(72, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Cape Farewell I"));
talkEntry:addResponse("Zerarisa hass hurt her paw, if you could collect ten trout for me, I give you coinsss.");
talkEntry:addConsequence(npc.base.consequence.item.item(72, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Kap des Abschiedes I"));
talkEntry:addResponse("Sschwester Zerarisa habenss verletzt Pfote, fangenss zssehn Forelle, kriegenss M�nzssen.");
talkEntry:addConsequence(npc.base.consequence.item.item(72, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(73, "all", "<", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Did you get the ten troutss for me yet?");
talkEntry:addResponse("Zerarisa iss sstill waiting for the troutss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(73, "all", "<", 10));
talkEntry:addResponse("Habenss zssehn Forellen? Nein?");
talkEntry:addResponse("Zerarisa wartenss auf Forellen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(73, "all", "<", 10));
talkEntry:addResponse("Did you get the ten troutss for me yet?");
talkEntry:addResponse("Zerarisa iss sstill waiting for the troutss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(73, "all", "<", 10));
talkEntry:addResponse("Habenss zssehn Forellen? Nein?");
talkEntry:addResponse("Zerarisa wartenss auf Forellen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(73, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 50 copper coins and your fishing skill increases. You advance in Queen Rosaline Edwards's favour."));
talkEntry:addResponse("Zerarisa thankss you for the troutss, here, take ssome copperss.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 50));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(73, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(73, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 50 Kupferst�cke und deine Fischereifertigkeit steigt. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addResponse("Zerarisa dankenss f�r Forellen, nehmenss Kupfersss.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 50));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(73, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(73, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 50 copper coins and your fishing skill increases."));
talkEntry:addResponse("Zerarisa thankss you for the troutss, here, take ssome copperss.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 50));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(73, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(73, "all", ">", 9));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 50 Kupferst�cke und deine Fischereifertigkeit steigt."));
talkEntry:addResponse("Zerarisa dankenss f�r Forellen, nehmenss Kupfersss.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 50));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(73, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Cape Farewell II"));
talkEntry:addResponse("Thankss for troutss again, if you want you can catch twenty ssalmonss for me now.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Kap des Abschiedes II"));
talkEntry:addResponse("Dankss f�r Forellen nochmalss, wollenss fangen zsswanzig Lachss nun f�r Zerarisa?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Cape Farewell II"));
talkEntry:addResponse("Thankss for troutss again, if you want you can catch twenty ssalmonss for me now.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Kap des Abschiedes II"));
talkEntry:addResponse("Dankss f�r Forellen nochmalss, wollenss fangen zsswanzig Lachss nun f�r Zerarisa?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(355, "all", "<", 20));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Twenty ssalmonss for Zerarisa, and you get coinss.");
talkEntry:addResponse("Zerarisa sstill waitss for her ssalmonss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(355, "all", "<", 20));
talkEntry:addResponse("Zsswanzigs Lachsess, kriegenss M�nzssenss.");
talkEntry:addResponse("Zerarisa immernoch wartenss f�r Lachsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(355, "all", "<", 20));
talkEntry:addResponse("Twenty ssalmonss for Zerarisa, and you get coinss.");
talkEntry:addResponse("Zerarisa sstill waitss for her ssalmonss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(355, "all", "<", 20));
talkEntry:addResponse("Zsswanzigs Lachsess, kriegenss M�nzssenss.");
talkEntry:addResponse("Zerarisa immernoch wartenss f�r Lachsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(355, "all", ">", 19));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins and your fishing skill increases. You advance in Queen Rosaline Edwards's favour."));
talkEntry:addResponse("Thankss for ssalmonss, Zerarisa hass coinss for you.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(355, 20));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 4));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(355, "all", ">", 19));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke und deine Fischereifertigkeit steigt. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addResponse("Dankss f�r Lachsss, Zerarisa habenss M�nzssen f�r dich.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(355, 20));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 4));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(355, "all", ">", 19));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins and your fishing skill increases."));
talkEntry:addResponse("Thankss for ssalmonss, Zerarisa hass coinss for you.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(355, 20));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(355, "all", ">", 19));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke und deine Fischereifertigkeit steigt."));
talkEntry:addResponse("Dankss f�r Lachsss, Zerarisa habenss M�nzssen f�r dich.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(355, 20));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Cape Farewell III"));
talkEntry:addResponse("Zerarisa needss five roasst trout now, you can cookss them at a ssmoke oven. You'll get coinsss.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Kap des Abschiedes III"));
talkEntry:addResponse("Zerarisa brauchenss f�nf ger�uchert Forellenss nun, k�nnenss r�uchern in Ofenss. Kriegensss M�nzssenss!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Cape Farewell III"));
talkEntry:addResponse("Zerarisa needss five roasst trout now, you can cookss them at a ssmoke oven. You'll get coinsss.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Kap des Abschiedes III"));
talkEntry:addResponse("Zerarisa brauchenss f�nf ger�uchert Forellenss nun, k�nnenss r�uchern in Ofenss. Kriegensss M�nzssenss!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(455, "all", "<", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Have you the five roasst trout? Catch five trout and smoke them at an oven.");
talkEntry:addResponse("Zerarisa ssstill waitss for roasst trout, sshe wantss five.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(455, "all", "<", 5));
talkEntry:addResponse("Habenss f�nf ger�uchertss Forellenss? Fangenss und r�uchernss in R�ucheh�tte.");
talkEntry:addResponse("Zerarisa wartenss auf f�nf ger�uchertss Forellenss, wollenss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(455, "all", "<", 5));
talkEntry:addResponse("Have you the five roasst trout? Catch five trout and cook them at an oven.");
talkEntry:addResponse("Zerarisa ssstill waitss for roasst trout, sshe wantss five.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(455, "all", "<", 5));
talkEntry:addResponse("Habenss f�nf ger�uchertss Forellenss? Fangenss und r�uchernss in R�ucheh�tte.");
talkEntry:addResponse("Zerarisa wartenss auf f�nf ger�uchertss Forellenss, wollenss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(455, "all", ">", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins and your fishing skill increases. You advance in Queen Rosaline Edwards's favour."));
talkEntry:addResponse("Zerarisa thanksss you for the troutss, here...");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(455, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 6));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(455, "all", ">", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke und deine Fischereifertigkeit steigt. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addResponse("Zerarisa dankenss f�r Forellenss, nehmenss...");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(455, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 6));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(455, "all", ">", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins and your fishing skill increases."));
talkEntry:addResponse("Zerarisa thanksss you for the troutss, here...");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(455, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(455, "all", ">", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke und deine Fischereifertigkeit steigt."));
talkEntry:addResponse("Zerarisa dankenss f�r Forellenss, nehmenss...");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(455, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Cape Farewell IV"));
talkEntry:addResponse("Do Zerarisa favour, go findss Henry, he'ss butcher in Dewy Sswampss, getss me ten piecess of leather from him.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 6));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Kap des Abschiedes IV"));
talkEntry:addResponse("Tuenss Zerarisa Gefallen, findenss Henry, isst Sschlachter in Morgentausumpfss, bringenss zehn Lederh�ute von ihmss.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 6));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Cape Farewell IV"));
talkEntry:addResponse("Do Zerarisa favour, go findss Henryss, he'ss butcher in Dewy Swampss, getss me ten piecess of leather from him.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 6));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Kap des Abschiedes IV"));
talkEntry:addResponse("Tuenss Zerarisa Gefallen, findenss Henry, isst Sschlachter in Morgentausumpfss, bringenss zehn Lederh�ute von ihmss.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2547, "all", "<", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("You findss Henry in Dewy Swampss? He owess me ten piecess of leather.");
talkEntry:addResponse("Zerarisa sstill waitss for leather from Henry in Dewy Swampss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 7));
talkEntry:addResponse("Habenss sschon gefundenss Henry in Morgentausumpfss? Schuldenss zehn Lederh�ute.");
talkEntry:addResponse("Zerarisa wartenss noch auf Leder von Henry in Morgentaussumpf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 7));
talkEntry:addResponse("You findss Henry in Dewy Swampss? He owess me ten piecess of leather.");
talkEntry:addResponse("Zerarisa sstill waitss for leather from Henry in Dewy Swampss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 7));
talkEntry:addResponse("Habenss sschon gefundenss Henry in Morgentausumpfss? Schuldenss zehn Lederh�ute.");
talkEntry:addResponse("Zerarisa wartenss noch auf Leder von Henry in Morgentaussumpf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2547, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 200 copper coins and your fishing skill increases. You advance in Queen Rosaline Edwards's favour."));
talkEntry:addResponse("Zerarisa thanksss you, here'ss money for your troubless.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2547, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 8));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2547, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 200 Kupferst�cke und deine Fischereifertigkeit steigt. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addResponse("Zerarisa dankenss dir, hier sindsss Geld f�r �rgerss.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2547, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 8));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2547, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 200 copper coins and your fishing skill increases."));
talkEntry:addResponse("Zerarisa thanksss you, here'ss money for your troubless.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2547, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2547, "all", ">", 9));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 200 Kupferst�cke und deine Fischereifertigkeit steigt."));
talkEntry:addResponse("Zerarisa dankenss dir, hier sindsss Geld f�r �rgerss.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "fishing", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2547, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(71, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Zerarisa hass no more jobss for you, sshe hass enough fissh.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 8));
talkEntry:addResponse("Zerarisa habenss nichts mehr Aufgabe f�r dich, habenss genug Fissch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 8));
talkEntry:addResponse("Zerarisa hass enough fissh, no more jobss for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(71, "=", 8));
talkEntry:addResponse("Zerarisa habenss nichts mehr Aufgabe f�r dich, habenss genug Fissch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nana");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Yesss, the halfling... sshe'll want ssalmonss from me, but I don't have enough for her too. Could you catch ssome yourssself and give them to her?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nana");
talkEntry:addResponse("Ja, Halblingsss... Wollenss Lachsss, aber habensss nicht genug f�r sssie. Fangenss sselbsst und gebensss ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Winterbutter");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Yesss, the halfling... sshe'll want ssalmonss from me, but I don't have enough for her too. Could you catch ssome yourssself and give them to her?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Winterbutter");
talkEntry:addResponse("Ja, Halblingsss... Wollenss Lachsss, aber habensss nicht genug f�r sssie. Fangenss sselbsst und gebensss ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I catch fisssh and ssell them to landlingss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich fangenss Fischss und verkaufensss Landlinge.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I catch fisssh and ssell them to landlingss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich fangenss Fischss und verkaufensss Landlinge.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Zerarisa wished ssshe could dive down to forsssaken issslands!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Zerarisa w�nschensss dasss k�nnensss tauchen tief zssu verwunsschen Inselsss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("We all equalsss for the mother.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Wir sssinds alle gleich in Angesichtsss der Mutter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fisher");
talkEntry:addResponse("I catch fisssh and ssell them to landlingss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fischer");
talkEntry:addResponse("Ich fangenss Fischss und verkaufensss Landlinge.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cape");
talkEntry:addResponse("You are at Cape Farewell, Zerarisa wavesss landlingsss on boatsss here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kap");
talkEntry:addTrigger("Abschied");
talkEntry:addResponse("Wir sindsss am Kap desss Abschiedesss, Zerarisa winkensss Landlinge auf Booten hier.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Wizard be mean, make thingsss not undersstandss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Zauberer machenss Dingenss nicht verstehensss, gemein!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Wizard be mean, make thingsss not undersstandss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Zauberer machenss Dingenss nicht verstehensss, gemein!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Witchess be, wizardsss be. Runewick evilss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Hexenss sindss, Magier sindss. Runewick b�ssse!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Owesss Zerarisa something, Zerarise owess something. Handsss wash each othersss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Ssschuldet Zerarisa wasss, Zerarisa schuldetss was. Eine Hand w�ssscht die anderess!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Paying good, paying in time. Galmair goodss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Zahlenss gut, zahlenss p�nktlich. Galmair gutss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Queen jussst, queen pretty, isss not ssshe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("K�nigin gerecht, K�nigin h�bschss, nicht wahr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Queen jussst, queen pretty, isss not ssshe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("K�nigin gerecht, K�nigin h�bschss, nicht wahr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Zss, Zerarisa living here. Queen jussst, queen pretty, isss not ssshe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Zss, Zerarisa lebenss hier. K�nigin gerecht, K�nigin h�bschss, nicht wahr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Albarss far awaysss along coastss. Never ssswum there Zerarisa.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Albarsss weit weg entlang K�ssste. Niemalsss schwommen dort Zerarisa.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Zss! Gynk dangerousss, robss, sssteals!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Zss! Gynk gef�hrlichsss, raubenss, stehlenss!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Sssalkamar have funny name for realm, no?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Sssalkamar habenss witzig Namen f�r Reichsss, nein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Have faith only in mothersss, Zerarisa! Hail Zshhel?pheey?arrr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Habenss nur Glaube in Mutter, Zerarisa! Heil Zshhel?pheey?arrr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Mothersss caresss, mothersss providesss. What wantss more?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Mutter k�mmertss, Mutter f�ttertss. Wasss wollenss mehr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I ssell nothingss, I am not a merchant.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich kaufenss nichtss, nichtss bin Handelsssfrau.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("If you're interessted in a job, assk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Habenss Lust auf Aufgabe, fragensss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zerarisa");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Zerarisa have name, have claw, have tail! And you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zerarisa");
talkEntry:addResponse("Zerarisa habenss Namensss, habenss Klauensss, habensss Ssschwanzss. Und du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dewy");
talkEntry:addTrigger("swamps");
talkEntry:addResponse("Zss, Dewy Sswampss be Runewick landss. Go far, north, easst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Morgentau");
talkEntry:addTrigger("Sumpf");
talkEntry:addResponse("Zss, Morgentaussumpf seienss Runewickland. Gehenss weit, Nord, Osst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("What iss the yess for? If you want a job assk me for a job.");
talkEntry:addResponse("You are very agreeable persson, but if you want job, assk for job.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Wass meinenss mit ja? Wollenss Aufgabe, fragenss Aufgabe.");
talkEntry:addResponse("Seienss zssustimmend, aber wenn wollenss Aufgabe, fragenss Aufgabe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("You isss not very nice?");
talkEntry:addResponse("No, zss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Du seienss nicht ssehr nett?");
talkEntry:addResponse("Nein, zss?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me kratzt sich an ihrer schlaff runterh�ngenden Pfote.", "#me lazily scratches a limp-looking paw.");
talkingNPC:addCycleText("#me setzt sich hin und schaut gedankenverloren drein.", "#me sits down on the ground and looks thoughtfully.");
talkingNPC:addCycleText("#me stinkt nach Fisch.", "#me smells strongly of fish.");
talkingNPC:addCycleText("#me bleckt die Z�hne w�hrend sie hungrig aufs Wasser schaut.", "#me flicks her lips as she looks hungrily towards the water.");
talkingNPC:addCycleText("#me pult Dreck unter ihren Krallen hervor.", "#me cleans under her claws.");
talkingNPC:addCycleText("Zsss.", "Zsss.");
talkingNPC:addCycleText("Zsss!", "Zsss!");
talkingNPC:addCycleText("Zsss?", "Zsss?");
talkingNPC:addCycleText("#me zischelt.", "#me hisses.");
talkingNPC:addCycleText("Willkommens am Kap desss Abschiedsss!", "Welcome to Cape Farewell, zss!");
mainNPC:addLanguage(0);
mainNPC:addLanguage(4);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist die Fischerin Zerarisa.", "This NPC is the fisherwoman Zerarisa.");
mainNPC:setUseMessage("Fassens mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 181);
mainNPC:setEquipment(11, 195);
mainNPC:setEquipment(5, 72);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 367);
mainNPC:setEquipment(10, 369);
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
