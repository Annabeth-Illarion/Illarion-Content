--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>. 
]]
--------------------------------------------------------------------------------
-- NPC Name: Pheritaleth                                              Cadomyr --
-- NPC Job:  Magical Blacksmith                                               --
--                                                                            --
-- NPC Race: elf                        NPC Position:  111, 599, 0            --
-- NPC Sex:  female                     NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                       easyNPC Parser v1.23 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (3, 111, 599, 0, 4, 'Pheritaleth', 'npc.pheritaleth', 1, 8, 0, 255, 236, 139, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.gemcraft")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("npc.pheritaleth", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(702, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(234, "all", ">", 0, {["nameEn"] = "Really big gold nugget"}));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("charwis");
talkEntry:addTrigger("irongate");
talkEntry:addTrigger("gold");
talkEntry:addTrigger("nugget");
talkEntry:addConsequence(npc.base.consequence.quest.quest(702, "=", 11));
talkEntry:addResponse("Unbelievable! This gold nugget really is as large as an apple! Please, tell Charwis I'm sorry I called him a liar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(702, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(234, "all", ">", 0, {["nameDe"] = "Echt gro�er Goldnugget"}));
talkEntry:addTrigger("charwis");
talkEntry:addTrigger("irongate");
talkEntry:addTrigger("gold");
talkEntry:addTrigger("nugget");
talkEntry:addConsequence(npc.base.consequence.quest.quest(702, "=", 11));
talkEntry:addResponse("Unglaublich! Der Goldnugget ist ja wahrlich so gro� wie ein Apfel! Bitte sagt Charwis, es tut mir leid, dass ich ihn einen L�gner nannte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Pheritaleth the magical blacksmith. Keywords: Be greeted, gemcraft, profession, gems."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Pheritaleth die Zauberschmiedin. Schl�sselw�rter: Seid gegr��t, Vereinigung, Beruf, Edelsteine."));
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
talkEntry:addResponse("I foretell that you did not come to me to chat about inane things. We should strictly get to business, mine is transmuting gems.");
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
talkEntry:addResponse("Ich nehme an, ihr seid nicht zu mir gekommen um �ber Unwichtiges Gew�sch zu reden. Lasst uns zur Sache kommen, mein Gesch�ft ist das Vereinen von Edelsteinen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("I foretell that you did not come to me to chat about inane things. We should strictly get to business, mine transmuting is gems.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Ich nehme an, ihr seid nicht zu mir gekommen um �ber Unwichtiges Gew�sch zu reden. Lasst uns zur Sache kommen, mein Gesch�ft ist das Vereinen von Edelsteinen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Happy mining.");
talkEntry:addResponse("Farewell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Viel Spa� in der Mine.");
talkEntry:addResponse("Gehabt euch wohl.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Happy mining.");
talkEntry:addResponse("Farewell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Viel Spa� in der Mine.");
talkEntry:addResponse("Gehabt euch wohl.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Fine! Let's talk about gems.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Gut. Nun lasst uns �ber Edelsteine reden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addConsequence(npc.base.consequence.gemcraft.gemcraft(craftNPC));
talkEntry:addResponse("They call me Pheritaleth and I am skilled in gem transmutation.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich werde Pheritaleth genannt und bin eine Edelsteink�nstlerin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gemcraft");
talkEntry:addTrigger("transmute");
talkEntry:addTrigger("combine");
talkEntry:addTrigger("enchant");
talkEntry:addConsequence(npc.base.consequence.gemcraft.gemcraft(craftNPC));
talkEntry:addResponse("Let me take a look at your gems...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("verwandel");
talkEntry:addTrigger("verein");
talkEntry:addTrigger("kombinier");
talkEntry:addTrigger("verzauber");
talkEntry:addConsequence(npc.base.consequence.gemcraft.gemcraft(craftNPC));
talkEntry:addResponse("Dann lasst mal eure Edelsteine sehen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("My profession is to transmute magical gems. I have several aeons of experience, so do not question my expertise.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Mein Beruf ist es, magische Edelsteine zu vereinen. Ich habe mehrere Zeitalter an Erfahrung, also stellt meine Kompetenz nicht in Frage.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("My profession is to transmute magical gems. I have several aeons of experience, so do not question my expertise.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Mein Beruf ist es, magische Edelsteine zu vereinen. Ich habe mehrere Zeitalter an Erfahrung, also stellt meine Kompetenz nicht in Frage.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gem");
talkEntry:addResponse("I know a lot about all the gems. Just throw in a keyword!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Amethyst");
talkEntry:addResponse("Amethysts are the the clubs amongst gems. Their beauty is rather crude but natural.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ruby");
talkEntry:addResponse("Some say, rubies were made of Br�gon's fire, but I know better why they are so red...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Obsidian");
talkEntry:addResponse("Obsidian is known to be used in dark rituals, but keep in mind that evil deeds are done by evil men, not by gems.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sapphire");
talkEntry:addResponse("Those who don't know any better see a connection between sapphires and Tanora. How I laughed when I first heard that rumour!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Emerald");
talkEntry:addResponse("Emeralds are the gems many people forgot about; I have never heard idiotic theories about their origin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Topaz");
talkEntry:addResponse("I keep wondering why some people search for topaz along the shores. You may as well wait for them to drop from the sky.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Diamond");
talkEntry:addResponse("The diamond is the king amongst the gems. They are extremely rare and powerful.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Edelstein");
talkEntry:addResponse("Ich wei� eine Menge �ber die Edelsteine. Gebt mir einfach ein Stichwort!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Amethyst");
talkEntry:addResponse("Die Amethysten sind die Kn�ppel unter den Edelsteinen. Ihre Sch�nheit ist von roher, aber nat�rlicher Art.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rubin");
talkEntry:addResponse("Manche glauben, Rubine wurden aus Br�gons Feuer geschaffen, aber ich wei�, warum sie wirklich so rot sind...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Obsidian");
talkEntry:addResponse("Der Obsidian ist daf�r bekannt, in dunklen Ritualen Verwendung zu finden. Denkt aber immer daran, dass diejenigen b�se sind, die B�ses tun, und nicht die Edelsteine.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Saphir");
talkEntry:addResponse("Die Unwissenden denken, Tanora h�tte etwas mit den Saphiren zu tun. Wie habe ich gelacht, als ich diesen Quatsch das erste mal geh�rt habe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Smaragd");
talkEntry:addResponse("Viele haben vergessen, dass es Smaragde �berhaupt gibt. Ich habe noch keine schwachsinnigen Theorien �ber ihre Herkunft geh�rt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Topaz");
talkEntry:addResponse("Ich wundere mich immer wieder dar�ber, warum die Leute Topase an der K�ste suchen. Genausogut k�nnte man darauf warten, dass sie einem auf den Kopf fallen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Diamant");
talkEntry:addResponse("Die Diamanten sind die K�nige der Edelsteine. Sie sind �u�erst selten und m�chtig.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addTrigger("faith");
talkEntry:addResponse("The Eleven are just rascals, only the Five have true power.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addTrigger("Glaube");
talkEntry:addResponse("Die Elf sind einfach nur ein paar Bengel. Die wahre Macht ist den F�nf zu eigen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("religion");
talkEntry:addResponse("The Eleven are just rascals, only the Five have true power.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("religion");
talkEntry:addResponse("Die Elf sind einfach nur ein paar Bengel. Die wahre Macht ist den F�nf zu eigen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("So, you assume my art is a craft and I should pray to Irmorom? Shall I laugh or shall I cry?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Ah, ihr glaubt also, meine Kunst ist ein Handwerk und ich sollte zu Irmorom beten? Soll ich jetzt lachen oder weinen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Ushara granted us the gems long ago, even for my kin. Hail her!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Ushara vermachte uns vor selbst f�r mein Volk langer Zeit die Edelsteine. Huldigt ihr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Her Majesty is the current monarch. Let us wait some decades and another short lived human will take her place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Ihre Majest�t ist gerade die Monarchin. Lasst uns ein paar Jahrzehnte warten und irgendein anderer kurzlebiger Mensch hat ihren Platz eingenommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Her Majesty is the current monarch. Let us wait some decades and another short lived human will take her place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ihre Majest�t ist gerade die Monarchin. Lasst uns ein paar Jahrzehnte warten und irgendein anderer kurzlebiger Mensch hat ihren Platz eingenommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr is quite a gemstone itself. It shimmers in the morning sun... perhaps because of the dew.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr ist selbst ein Edelstein. Es schimmert in der Morgensonne, k�nnte am Tau liegen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Fury.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Wut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Meine Vorfahren haben schon Edelsteine geschliffen als euer Stamm noch nicht mal gegr�ndet war.", "My ancestors cut gems back when your tribe was not even founded.");
talkingNPC:addCycleText("Manche werden nie verstehen, welche Macht die Edelsteine haben und sie f�r einfache Klunker halten.", "Some people will never understand the power of gems and regard them as just rocks.");
talkingNPC:addCycleText("Wenn ihr nach Tand sucht, geht zu Jacobus, dem Juwelier.", "If you need ordinary bling-bling, go to Jacobus, the jeweller.");
talkingNPC:addCycleText("In jedem Edelstein liegt wahre Macht.", "True magic lies within every gem.");
talkingNPC:addCycleText("Schaut, wie dieser hier funkelt.", "Look at it, it is sparkling.");
talkingNPC:addCycleText("Funkel wie ein Diamant.", "Shine bright like a diamond.");
talkingNPC:addCycleText("Wenn ein Mann sagt, dass die Augen einer Frau wie Edelsteine strahlen, meint er damit, dass er ihr sie rausschneiden m�chte?", "If a man says that a woman's eyes look like gemstones, does he imply that he wants to cut them out of her face?");
talkingNPC:addCycleText("Zwerge lieben Granit, Elfen lieben Edelsteine.", "Dwarves love granite, elves love gemstones.");
talkingNPC:addCycleText("Diamanten sind die besten Freunde einer Elfin.", "Diamonds are an elf's best friend.");
talkingNPC:addCycleText("Habt ihr Edelsteine?", "Got any gems?");
mainNPC:addLanguage(0);
mainNPC:addLanguage(3);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Pheritaleth die Zauberschmiedin.", "This NPC is Pheritaleth the magical blacksmith.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 465);
mainNPC:setEquipment(3, 805);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 122);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 2295);
mainNPC:setEquipment(9, 0);
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