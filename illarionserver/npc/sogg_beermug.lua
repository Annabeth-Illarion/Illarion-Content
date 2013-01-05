--------------------------------------------------------------------------------
-- NPC Name: Sogg Beermug                                             Galmair --
-- NPC Job:  Trader                                                           --
--                                                                            --
-- NPC Race: orc                        NPC Position:  353, 276, 0            --
-- NPC Sex:  male                       NPC Direction: north                  --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                       easyNPC Parser v1.21 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (4, 353, 276, 0, 0, 'Sogg Beermug', 'npc.sogg_beermug', 0, 2, 0, 119, 56, 3, 137, 123, 60);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.consequence.state")
require("npc.base.consequence.trade")
require("npc.base.talk")
require("npc.base.trade")
module("npc.sogg_beermug", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
local tradingNPC = npc.base.trade.tradeNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sell");
talkEntry:addTrigger("buy");
talkEntry:addTrigger("wares");
talkEntry:addTrigger("price");
talkEntry:addTrigger("trade");
talkEntry:addTrigger("purchase");
talkEntry:addResponse("Me sell all bottles and Barrels. Uh... wait. - Nubba you can't buy a barrel. But all things needed to brew! Hurr hurr.");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
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
talkEntry:addResponse("Isch verkauf Flaschn und F�ssa. Uh...wart mal. - Nubba die F�ssa kann man nischt kaufen. Aber alles Zeug zum Braun! Hehe.");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Sogg Beermug the Alchemist. Keywords: buy, sell, trade, Occupation, Runewick, Galmair, Cadomyr"));
talkEntry:addResponse("Help? All ob us need help!...'hic'");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Sogg Beermug der Alchimist. Schl�sselw�rter: kaufe, verkaufe, Handel, Beruf, Runewick, Galmair, Cadomyr"));
talkEntry:addResponse("Hilfe brauschn wir alle!...'hick'");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
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
talkEntry:addResponse("Greebas!");
talkEntry:addResponse("Hurr! Greetings.");
talkEntry:addResponse("#me grunts and waves a mug of beer.");
talkEntry:addResponse("Skoal! Come over 'ere and drink with Sogg!");
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
talkEntry:addResponse("Greebas!");
talkEntry:addResponse("Hurr! Gr��e.");
talkEntry:addResponse("#me grunzt und winkt mit einem Krug Bier.");
talkEntry:addResponse("Prost! Kommst du her, und trinkst mit Sogg!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greebas!");
talkEntry:addResponse("Hurr! Greetings.");
talkEntry:addResponse("#me grunts and waves a mug of beer.");
talkEntry:addResponse("Skoal! Come over 'ere and drink with Sogg!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greebas!");
talkEntry:addResponse("Hurr! Gr��e.");
talkEntry:addResponse("#me grunzt und winkt mit einem Krug Bier.");
talkEntry:addResponse("Prost! Kommst du her, und trinkst mit Sogg!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farebaaaa...!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Farebaaaa...!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Farebaaaa...!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Farebaaaa...!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Mes just a little bitty drunky...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Mirr nur kleinig bisschen bertrunkchen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I'm Sogg Beermug. 'hic' Mes guarding tha barrels an' bottles! Uh!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Isch bin Sogg Beermug. 'hick' Mirr bewacht all die F�sser und Flasch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I havn't any tashks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Isch abe kene Aufgabn f�r disch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I havn't any tashks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Isch abe kene Aufgabn f�r disch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addTrigger("occupation");
talkEntry:addResponse("I'm Sogg Beermug. 'hic' Mes guarding tha barrels an' bottles! Uh!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Isch bin Sogg Beermug. 'hick' Mirr bewacht all die F�sser und Flasch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I'm Sogg Beermug. 'hic' Mes guarding tha barrels an' bottles! Uh!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Isch bin Sogg Beermug. 'hick' Mirr bewacht all die F�sser und Flasch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("I don' know some Gobiaths! But my granny was named Gobthe. Eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Isch kenne keinen Gobiath! Aba mine Oma hiesch Gobthe. Ehj?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Yuu, mes like you! Wan' some booze?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Duhu, mirr dich m�gen! Willschte wa' zu saufn?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("murgo");
talkEntry:addResponse("Yubba... - Murgo ischn fener Kerl. Treibt sich aber imma rum, scheiner Frau der Krudash... gef�llt dasch gar nich. *hick*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("murgo");
talkEntry:addResponse("Yubba... - Murgo is no good fella. He's always roaming the streets and his woman, Krudash, doesn't like it. *hic*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("er hja");
talkEntry:addTrigger("erhja");
talkEntry:addTrigger("er'hja");
talkEntry:addResponse("Eh, Er'hja? Sie's Tochta von Murgo 'nd Krudash. Ne feine Orkling, w�rd isch sage. Hu, die Eltern sin 'ute Freunde von misch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("er hja");
talkEntry:addTrigger("erhja");
talkEntry:addTrigger("er'hja");
talkEntry:addResponse("Eh, Er'hja? She's daughter of Murgo 'nd Krudash. She's a good orcling, mes say. Hu, 'er parents be good friends ob mine!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("ali[czs]");
talkEntry:addTrigger("ali[czs]e");
talkEntry:addTrigger("stout");
talkEntry:addTrigger("jack");
talkEntry:addTrigger("tom");
talkEntry:addTrigger("berry");
talkEntry:addTrigger("thomas");
talkEntry:addTrigger("berryard");
talkEntry:addResponse("Skeschmath! Nerv misch nich, mit diese Snagas. Isch bin Sogg! Misch gibt sich nicht ab mit Snagas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("ali[czs]");
talkEntry:addTrigger("ali[czs]e");
talkEntry:addTrigger("stout");
talkEntry:addTrigger("jack");
talkEntry:addTrigger("tom");
talkEntry:addTrigger("berry");
talkEntry:addTrigger("thomas");
talkEntry:addTrigger("berryard");
talkEntry:addResponse("Skeschmath! Don't annoy mes with this snagas. Meesh, Sogg! Meesh don't hang around with snagas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("krudash");
talkEntry:addTrigger("Hack");
talkEntry:addTrigger("sack");
talkEntry:addTrigger("Hacken");
talkEntry:addTrigger("pl�ndern");
talkEntry:addResponse("Y�k. Krudash's Laden, 'Hacken un Pl�ndern' is gleich da dr�bn. Guter Name f�r'n Waffnladen, findesch du nich?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("krudash");
talkEntry:addTrigger("Hack");
talkEntry:addTrigger("sack");
talkEntry:addTrigger("Hacken");
talkEntry:addTrigger("pl�ndern");
talkEntry:addResponse("Y�k. Krudash's shop, ish right there! 'Hack an Sack', good name for an arms dealer, ishn't it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("morurt");
talkEntry:addTrigger("mo'rurt");
talkEntry:addTrigger("mor'urt");
talkEntry:addTrigger("olokwa");
talkEntry:addTrigger("thud");
talkEntry:addTrigger("grimlug");
talkEntry:addTrigger("ol hja");
talkEntry:addTrigger("olhja");
talkEntry:addTrigger("ol'hja");
talkEntry:addResponse("#me claps his chest with his left hand. 'Hurr, Sogg honour our clan!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("morurt");
talkEntry:addTrigger("mo'rurt");
talkEntry:addTrigger("mor'urt");
talkEntry:addTrigger("olokwa");
talkEntry:addTrigger("thud");
talkEntry:addTrigger("grimlug");
talkEntry:addTrigger("ol hja");
talkEntry:addTrigger("olhja");
talkEntry:addTrigger("ol'hja");
talkEntry:addResponse("#me klopft sich mit der Faust schlecht gezielt auf die Brust. 'Hurr, Sogg steht zu scheinem Klan.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Uh! Mes bet this Longear is under the table after two beers. Bah-Gosch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Uh! Misch wettet, dieses Langbein kippt nach zwei Bier unterm Tisch! Bah-Gosch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Uh! Mes bet this Longear is under the table after two beers. Bah-Gosch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Uh! Misch wettet, dieses Langbein kippt nach zwei Bier unterm Tisch! Bah-Gosch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Let mes tell 'ou... that beer in Runewick taste like piss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Lass dir sagn... dasch Bier in Runewick schmeckt wie Pisse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Skoal! Let us drink for honour of the Don!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Prost! Lasch uns zur Ehre des Dons trinken!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Yubba. Here's the best place! The Dwarfsh brew the best beer. That's why I'm here! Taghta!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Yubba. Hier isch esch am sch�nsten! Die Schwerge maschen dasch beschte Bier, drum bleib isch hier! Taghta!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Seems to me this Queen never tried sum Beans Booze. Othawise she wouldn't be so pigheaded. Wug-wug!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Scheint mir... dische K�nischin, hat noch nie 'n Bohnenschnaps getrunken. Schonst w�r sie nich so verklemmt. Wug-wug!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Seems to me this Queen never tried sum Beans Booze. Othawise she wouldn't be so pigheaded. Wug-wug!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Scheint mir... dische K�nischin, hat noch nie 'n Bohnenschnaps getrunken. Schonst w�r sie nich so verklemmt. Wug-wug!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("In Cadomyr, they may have good-looking warriors, but for sure we will able to drink the most booze! Gosch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("In Cadomyr, da wolln schie ja ornliche K�mfer sein, aber unterm Tisch saufn tun wir sie trozdem alle! Gosch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("I donno care about them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Wasch k�mmern sche misch? Eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Hurr-hurr! There's the besht Sibanac there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("He-he! Dort gibtsch da' beschte Sibanac.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("I heard in Salkamar the people piss into their beer to make it taste better. *laughs*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Isch hab geh�rt, in Salkamar, pissen schie ins Bier, damits bescher schmekt. *gluckst lachend*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wo .* her");
talkEntry:addResponse("Kroch'Gurak! Ist, wo mei�te Orks von uns komme her von.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("kroch");
talkEntry:addTrigger("gurak");
talkEntry:addTrigger("Kroch'gurak");
talkEntry:addResponse("Kroch'Gurak! Ist, wo mei�te Orks von uns komme her von.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("where .* com");
talkEntry:addResponse("Kroch'Gurak! Is where most ob us orcs come from.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("kroch");
talkEntry:addTrigger("gurak");
talkEntry:addTrigger("Kroch'gurak");
talkEntry:addResponse("Kroch'Gurak! Is where most ob us orcs come from.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Me praise Adron! 'nd mes Ancestors for shure!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Ehre Adron! Und menen Vorfahren!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("moshran");
talkEntry:addTrigger("god");
talkEntry:addResponse("Gosh! Nicht sagst diese Name! Bessa fragen einen Schamanen �ber Vatha.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("moshran");
talkEntry:addTrigger("god");
talkEntry:addResponse("Gosh! Nub say tha name! Bettu talk to Shaman about tha fatha.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("cherga");
talkEntry:addTrigger("icy witch");
talkEntry:addTrigger("eis Hex");
talkEntry:addResponse("Hurr. Eisig Hexe, G�ttin von Ahnen ist. Du fragst Grimlug!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("cherga");
talkEntry:addTrigger("icy witch");
talkEntry:addTrigger("eis Hex");
talkEntry:addResponse("Hurr. Tha icy witch, be god ob ancestors. Ask Grimlug about her!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("adron");
talkEntry:addResponse("Honor to Adron, tha fat man with red nose! Yubba. May he help me, guarding all those barrels 'nd bottles!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("adron");
talkEntry:addResponse("Geerht sei Adron, der fette Mann mit roter Nase! Yubba. M�ge er helfen, zu bewachen alle meine Flasch und F�ssa!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("#me glances around the area with dull eyes.");
talkEntry:addResponse("#me belches loudly.");
talkEntry:addResponse("Bean's Booze...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("#me r�lpst herzhaft.");
talkEntry:addResponse("#me schmatzt und blickt sich mit tr�ben Augen um.");
talkEntry:addResponse("Bohn'nschnaps... ");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("sogg");
talkEntry:addTrigger("beermug");
talkEntry:addResponse("Hurr-hurr... want a beer, eh?");
talkEntry:addResponse("Hu!?... - Mesch Sogg Beermug, whut do you want?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sogg");
talkEntry:addTrigger("beermug");
talkEntry:addResponse("Hurr-hurr... wilscht n' Bier, eh?");
talkEntry:addResponse("Hu!?... - Isch bin Sogg Beermug, wasch wollscht ihr von mir?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Skoal!");
talkEntry:addResponse("Hurr-hurr. Should be good with me.");
talkEntry:addResponse("Alrighty-right!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Prost.");
talkEntry:addResponse("Hurr-hurr. Solls mir recht sein.");
talkEntry:addResponse("Alles-klarklar!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Gosch!");
talkEntry:addResponse("Skeschmat! S' that your final answer?");
talkEntry:addResponse("#me burps.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Gosch!");
talkEntry:addResponse("Skeschmat! Gneh... is das den letztes Wort?");
talkEntry:addResponse("#me r�lpst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Beer after Wine, is a no go. Better try Wine after Beer!");
talkEntry:addResponse("Hurr hurr! That's it.");
talkEntry:addResponse("Daily special... Bean's Booze!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Bier auf Wein, lasch das sein! Aber Wein auf Bier, das rat isch dier!");
talkEntry:addResponse("Hehe! So ist's.");
talkEntry:addResponse("Heut empfehl isch... Bohnenschnaps!");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me schl�gt ein Fass Bier an: 'O-zopft is!'", "#me taps another barrel with beer: 'O-zopft is!'");
talkingNPC:addCycleText("#me nimmt einen kr�ftigen Schluck aus seinem Krug.", "#me takes a swig out of his mug.");
talkingNPC:addCycleText("Booohnenschn�ps!! Isch des Beschte!", "Beans Booooze!! Tha besht booze!");
talkingNPC:addCycleText("#me r�lpst herzhaft.", "#me belches loudly.");
talkingNPC:addCycleText("#me f�llt grinsed, abermals seinen Krug.", "#me grins as he refills his mug.");
talkingNPC:addCycleText("'hick...'", "'hick...'");
talkingNPC:addCycleText("'M-mirr bewach...bewach diese F�ssa!", "M-me guard those barr'ls!");
talkingNPC:addCycleText("'Da-das 's mene Flasch!", "Tha-that 's my bottle!");
talkingNPC:addCycleText("#me macht einen konzentrierten Gesichtsausdruck, legt die Zunge zwischen die Lippen. Dann l��t er pl�tzlich einen melodi�sen Wind fahren.", "#me pokes out his tongue in deep concentration. He then rips out a loud fart.");
talkingNPC:addCycleText("#me schnaubt ein wenig.", "#me snorts quietly.");
talkingNPC:addCycleText("#me r�lpst, Duft von schalem Bier und gebratenen Fleisch entschwebt in die Nasen der Umgebung.", "#me burps, the scent of stale beer and roasted meat floats into the noses of anyone in the surrounding area.");
tradingNPC:addItem(npc.base.trade.tradeNPCItem(58,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(164,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(51,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(227,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1909,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1908,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(58,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(164,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(51,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(227,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1909,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1908,"buyPrimary"));
tradingNPC:addNotEnoughMoneyMsg("Du kannst dir das nicht leisten!", "You can't afford that!");
tradingNPC:addDialogClosedMsg("Vielen Dank, komm bald wieder!", "Thank you, come again!");
tradingNPC:addDialogClosedNoTradeMsg("Farebaaaa...!", "Farebaaaa...!");
tradingNPC:addWrongItemMsg("Das kaufe ich nicht.", "I'm not buying this.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein schwankender Ork, mit tr�nenden Augen und roter Nase.", "A drunken orc with watery eyes and a red nose.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(3, 811);
mainNPC:setEquipment(9, 821);
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