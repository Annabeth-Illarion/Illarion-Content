--------------------------------------------------------------------------------
-- NPC Name: Hummi Olaficht                                              None --
-- NPC Job:  none                                                             --
--                                                                            --
-- NPC Race: halfling                   NPC Position:  48, 970, 0             --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   envi                                                             --
--                                                                            --
-- Last parsing: February 28, 2012                       easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (2, 48, 970, 0, 4, 'Hummi Olaficht', 'npc.hummi_olaficht', 0, 2, 5, 254, 14, 1, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.race")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.hummi_olaficht", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Hummi Olaficht. He can give you some information about what you can find here. Keyphrases: quest, faction, gods, race, craft, motive, landscape, leader, law, chest, explorer, stones of power."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Hummi Olaficht. Er kann dir einige Informationen geben �ber Dinge die du hier finden kanns. Schl�sselw�rter: Quest, Fraktion, G�tter, Rassen, Handwerk, Motive, Landschaft, Anf�hrer, Gesetz, Truhe, Erkunder, Steine der Macht."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("test");
talkEntry:addConsequence(npc.base.consequence.inform.inform("test works"));
talkEntry:addResponse("A");
talkEntry:addResponse("B");
talkEntry:addResponse("C");
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
talkEntry:addConsequence(npc.base.consequence.inform.inform("Ask the NPC for 'factions' if you want to know more."));
talkEntry:addResponse("Hiho, if you'd like to know something about the factions here, just ask me!");
talkEntry:addResponse("Hiya, have we met before? There are so many new faces, my apologies if we have, otherwise let me tell about the factions!");
talkEntry:addResponse("Good day, if you'd like to know something about the factions here, let me know!");
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
talkEntry:addConsequence(npc.base.consequence.inform.inform("Frage den NPC nach 'Fraktionen' wenn du mehr wissen m�chtest."));
talkEntry:addResponse("Hiho, wenn du etwas �ber die Fraktionen hier wissen m�chtest, frag mich einfach danach.");
talkEntry:addResponse("Hallo, wenn du etwas �ber die Fraktionen hier wissen m�chtest, frag mich einfach danach.");
talkEntry:addResponse("Guten Tag, wenn du etwas �ber die Fraktionen hier wissen m�chtest, frag mich einfach danach.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Ask the NPC for 'factions' if you want to know more."));
talkEntry:addResponse("Hiho to you, if you'd like to know something about the factions here, just ask me.");
talkEntry:addResponse("Hiya, have we met before? There are so many new faces, my apologies if we have, otherwise let me tell about the factions!");
talkEntry:addResponse("Good day, if you'd like to know something about the factions here, let me know!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Frage den NPC nach 'Fraktionen' wenn du mehr wissen m�chtest."));
talkEntry:addResponse("Hiho, wenn du etwas �ber die Fraktionen hier wissen m�chtest, frag mich einfach danach.");
talkEntry:addResponse("Hallo, wenn du etwas �ber die Fraktionen hier wissen m�chtest, frag mich einfach danach.");
talkEntry:addResponse("Guten Tag, wenn du etwas �ber die Fraktionen hier wissen m�chtest, frag mich einfach danach.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Fare thee well.");
talkEntry:addResponse("Tata!");
talkEntry:addResponse("Good bye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Mach's gut.");
talkEntry:addResponse("Tsch��.");
talkEntry:addResponse("Wiedersehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Fare thee well.");
talkEntry:addResponse("Tata!");
talkEntry:addResponse("Good bye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Mach's gut.");
talkEntry:addResponse("Tsch��.");
talkEntry:addResponse("Wiedersehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How do you feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I'm fine and you?");
talkEntry:addResponse("I feel wonderful.");
talkEntry:addResponse("Can't complain.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Mir geht's toll. Und dir?");
talkEntry:addResponse("Ich f�hle mich wunderbar.");
talkEntry:addResponse("Ich kann mich nicht beschweren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I'm Hummi, the local guide around these parts.");
talkEntry:addResponse("I'm Hummi and you? Need help with anything?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Hummi und wei� alle wichtigen Dinge �ber diesen Platz hier. So, frag mich was!");
talkEntry:addResponse("Ich bin Hummi und du? M�chtest du etwas wissen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Ask the NPC for 'Elesil', 'Frizza', 'Iradona' or 'Explorer' if you want to know more."));
talkEntry:addResponse("Alas, another bold traveler! Unfortunately, I haven't much work, but don't let me discourage ya. The factions are always on the look out for adventurers and workers alike! For example Elesil Daelwon in Runewick, Frizza in Cadomyr and Iradona Goldschein in Galmair. Another option would be the Explorer-guild. Just look for them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Frage den NPC nach 'Elesil', 'Frizza', 'Iradona' oder 'Erkunder' wenn du mehr wissen m�chtest."));
talkEntry:addResponse("Hoi, ein anderer taferer Reisender! Leider habe ich keine Arbeit f�r euch. Dass soll euch nicht entmutigen, da die Fraktionen immer nach Abenteuerer und Arbeitern suchen! Zum Beispiel Elesil Daelwon in Runewick, Frizza in Cadomyr und Iradona Goldschein in Galmair. Eine weitere M�glichkeite w�re die Erkunder-Gilde. Du brauchst sie nur zu suchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Ahh, gotta case of idle hands I see. Be assured traveler if you're willing to seek there are folk out there that could use a hand or two. Best start with one of the factions! For example Elesil Daelwon in Runewick, Frizza in Cadomyr and Iradona Goldschein in Galmair. Another option would be the Explorer-guild. Just look for them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Ahh, ein unbesch�ftigtes Wesen. Aber keine Angst, es gibt hier und da genug Leute die Unterst�tzung suchen. Am besten startet bei einer der Fraktionen! Zum Beispiel Elesil Daelwon in Runewick, Frizza in Cadomyr und Iradona Goldschein in Galmair. Eine weitere M�glichkeite w�re die Erkunder-Gilde. Du brauchst sie nur zu suchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elesil");
talkEntry:addTrigger("Daelwon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("You can find her at the teleporter in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elesil");
talkEntry:addTrigger("Daelwon");
talkEntry:addResponse("Du findest sie beim Teleporter in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frizza");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("You can find her at the teleporter in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frizza");
talkEntry:addResponse("Du findest sie beim Teleporter in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Iradona");
talkEntry:addTrigger("Goldschein");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("You can find her at the teleporter in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Iradona");
talkEntry:addTrigger("Goldschein");
talkEntry:addResponse("Du findest sie beim Teleporter in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I don't have a specific profession.");
talkEntry:addResponse("I only pass along information, but I don't have profession, per say.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich habe keine spezifische Arbeit.");
talkEntry:addResponse("Ich gebe lediglich Informationen, aber ich habe nicht wirklich einen Beruf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I don't have any specific profession.");
talkEntry:addResponse(" I only pass along information, but I don't have profession, per say.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich habe keine spezifische Arbeit.");
talkEntry:addResponse("Ich gebe lediglich Informationen, aber ich habe nicht wirklich einen Beruf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Sounds pretty nice, but nothing like mine. *giggles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Klingt h�bsch, aber nicht so h�bsch wie mein Name. *kichert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("This in an old island, which does not exist anymore. Many who you can find here, are from this island. If you like know more about it, feel free to ask them.");
talkEntry:addResponse("I haven't been there, therefore I cannot tell you anything about it except that it doesn't exist anymore and that you can ask other people about it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Das ist eine alte Insel, welche nicht mehr existiert. Viele die du hier finden kann sind von dort. Wenn du mehr dar�ber wissen m�chtest, frag sie.");
talkEntry:addResponse("Ich war noch nie dort, daher wei� ich auch nichts �ber sie, au�er dass es sie nicht mehr gibt und dass du andere Leute �ber sie fragen kannst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("faction");
talkEntry:addResponse("We have three factions here: Runewick, Cadomyr and Galmair. You will have to choose one. Otherwise you will have quite low chances to survive. *Giggles* Each of which are home to certain races and craftsmen. If you'd like to know more about factions, races, or crafting in this area just say the word.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("race");
talkEntry:addResponse("In every faction there are particular races you will find. In Runewick, you'll mainly find Elves and Halflings; in Galmair, Dwarves; and in Cadomyr, Lizards and Orcs. As far as humans, well just about anywhere really.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("craft");
talkEntry:addResponse("Which one do you mean? Alchemist, Candle maker, Carpenter, Lumberjack, Cook, Baker, Farmer, Herb gatherer, Tailor, Tanner, Dyer, Blacksmith, Brick maker, Mason, Miner, Brewer, Fisher, Glass blower, Digger, Finesmith or Gem grinder?");
talkEntry:addResponse("Every faction has specialists depending on the craft. Mention a specific craft and I will tell you in which faction you will find it.");
talkEntry:addResponse("The main crafts you'll find in Runewick are Alchemists, Candle makers, Carpenters/Lumberjacks, Cooks/Bakers, Farmers, Herb gatherers, and Tailors/Tanners/Dyers. In Galmair you'll find Blacksmiths, Masons, Miners, and Brewers. Finally, in Cadomyr you'll get Fishers, Glass blowers, Diggers, Finesmiths, and Gem grinders.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("motive");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The leading motive in Runewick is wisdom, in Cadomyr it's honor, and in Galmair it's wealth.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("landscape");
talkEntry:addResponse("The four towers of Runewick are somewhere in the southeast between the meadow and the forest; the halls and caves of Galmair are to the northwest between the mountains and the forest; and the houses of Cadomyr lie to the west between the desert and the mountains.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("leader");
talkEntry:addResponse("Archmage Elvaine Morgan is the leader of Runewick, Don Valerio Guilianni rules in Galmair, and Queen Rosaline Edwards reigns over Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("law");
talkEntry:addResponse("Runewick is the only community with posted laws to rely on; Galmair doesn't have any real laws - except obeying the Don; and there are customs in Cadomyr which are of albarian origin, but to an Albarian they will look shockingly innovative. More information can be found in the town of your choice.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Father");
talkEntry:addResponse("The father of Queen Rosaline Edwards was King Sir Reginald, and the father of Don Valerio Guilianni was Don Tommaso Guilianni. Both Reginald and Tommaso are dead. The father of Archmage Elvaine Morgan is presumed dead as well, but that's just the rumors I have heard. *Giggles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sevenhill");
talkEntry:addResponse("That is to the south of the Sinking Mountains, just north of the Mountains of Khenserra, and generally speaking west of us. *Giggles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sinking");
talkEntry:addResponse("Sinking Mountains? They lie somewhere in the north.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Khenserra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Mountains of Khenserra? They are somewhere to the south.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fraktion");
talkEntry:addResponse("Wir haben hier drei Fraktionen: Runewick, Cadomyr und Galmair. Du wirst eine f�r dich w�hlen m�ssen. Ansonsten wirst du nur geringe �berlebenschancen haben. *Kichert* Jede mit bestimmten Rassen und Berufen. Wenn du mehr dar�ber wissen m�chtest, dann sag den jeweiligen Namen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rasse");
talkEntry:addResponse("In jeder Fraktion kannst du spezifische Rassen finden. In Runewick vorallem Elfen und Halblinge; in Galmair Zwerge; und in Cadomyr Orks und Echsenmenschen. Menschen sind �berall zufinden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Handwerk");
talkEntry:addResponse("Welches meinst du? Alchemist, Kerzenmacher, Schreiner, Holzf�ller, Koch, B�cker, Bauer, Kr�utersucher, Schneider, Gerber, F�rber, Schmied, Ziegelmacher, Steinmetz, Sch�rfer, Brauer, Fischer, Glasbl�ser, Gr�ber, Goldschmied oder Edelsteinschleifer?");
talkEntry:addResponse("Jede Fraktion ist auf bestimmte Handwerke spezialisiert. Nenn mir dein Handwerk und ich sag in welcher Fraktion du es finden wirst.");
talkEntry:addResponse("");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Motive");
talkEntry:addResponse("Das leitende Motive in Runewick ist Weisheit, in Galmair ist es Reichtum, und in Cadomyr ist es `Ehre.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Landschaft");
talkEntry:addResponse("Die vier T�rme von Runewick wirst du irgendwo im S�dosten zwischen S�mpfen und W�ldern finden; die Hallen und H�hlen von Galmair inmitten von Bergen und W�ldern; und die H�user von Cadomyr zwischen einer W�ste und Bergen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Anf�hrer");
talkEntry:addResponse("Erzmagier Elvaine Morgan der Herrscher in Runewick, Don Valerio Guilianni herrscht in Galmair, und K�nigin Rosaline Edwards in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gesetz");
talkEntry:addResponse("Runewick ist die einzige Gemeinde mit exakten Gesetzen an denen du dich orientieren kannst; Galmair hat keine wirklichen Gesetzte - du musst nur dem Don gehorchen; und dann sind noch die Br�uche von Cadomyr welche ihren Ursprung in Albar haben, aber f�r einen Albarianer sind diese schockierend innovative.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Vater");
talkEntry:addResponse("Der Vater von K�nigin Rosaline Edwards war K�nig Sir Reginald und der Vater von Don Valerio Guilianni war Don Tommaso Guilianni. Beide sind Tod. Wahrscheinlich auch der Vater von Erzmagier Elvaine Morgan, aber ich hab nie was von ihm geh�rt.*kichert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("siebenh�gel");
talkEntry:addResponse("Das ist s�dlich von den Sinkenden Berge, n�rdlich der Berge von Khenserra und westlich von uns hier. *kichert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sinken");
talkEntry:addResponse("Sinkende Berge? Irgendwo im Norden m�ssten die sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Khenserra");
talkEntry:addResponse("Berge von Khenserra? Irgendwo im S�den m�ssten die sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("guild");
talkEntry:addTrigger("explor");
talkEntry:addResponse("If you want to find the Explorer-guild, just head to ??????.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gilde");
talkEntry:addTrigger("entdeck");
talkEntry:addTrigger("erkund");
talkEntry:addResponse("Falls du die Erkunder-Gilde finden m�chtest, dann geh zu ??????.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("chest");
talkEntry:addResponse("In these chests over there you find your belongings probably.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("kist");
talkEntry:addTrigger("truhe");
talkEntry:addResponse("In diesen Truhen dort dr�ben kannst du wom�glich dein Hab und Gut finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("box");
talkEntry:addTrigger("depot");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("In these chests over there you find your belongings probably.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("box");
talkEntry:addTrigger("depot");
talkEntry:addResponse("In diesen Truhen dort dr�ben kannst du wom�glich dein Hab und Gut finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wisdom");
talkEntry:addResponse("Wisdom is the highest premise in Runewick. Therefore, most follow the path of Elara, but other followers are permitted. It is well known that people seek the council of Archmage Elvaine Morgan, whose sageness is widely renowned.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Weisheit");
talkEntry:addResponse("Weisheit ist die h�chste Pr�misse in Runewick. Deswegen glauben sie auch an Elara neben anderen G�ttern und dem Rat ihres Herrschers Erzmagier Elvaine Morgan, wessen Klugheit ist weitbekannt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wealth");
talkEntry:addResponse("Wealth is the highest premise in Galmair. Therefore, Irmorom is exalted above all other gods. So it goes without question that Don Valerio Guilianni leads them since he is by far the richest.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Reichtum");
talkEntry:addResponse("Reichtum ist die h�chste Pr�misse in Galmair. Deswegen glauben sie auch an Irmorom neben anderen G�ttern und gehorchen Don Valerio Guilianni, der die reichste Person dort ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("honour");
talkEntry:addTrigger("honor");
talkEntry:addResponse("Honor is the highest premise in Cadomyr. Therefore, they believe in Malachin above all other gods, and they rely on Queen Rosaline Edwards for her noble leadership.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ehre");
talkEntry:addResponse("Ehre ist die h�chste Pr�misse in Cadomyr. Deswegen glauben sie auch an Malachin neben anderen G�ttern und ihrer Herrscherin K�nigin Rosaline Edwards, welche die nobelste Person dort ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Alchemist");
talkEntry:addTrigger("Druid");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Alchemists and druids alike can be found readily available in Runewick from novice to grandmaster. Galmair won't have nearly the selection, but I have seen a druid or two there before. Cadomyr on the other hand doesn't have a single druid or alchemist as far as I remember.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Alchemist");
talkEntry:addTrigger("Druid");
talkEntry:addResponse("Alchemisten k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Galmair gibt es ein paar wenige. Cadomyr hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Candle");
talkEntry:addResponse("Candle makers are mainly found in Runewick, I guess because so many scholars read deep into the night. Cadomyr certainly has a few too. Galmair lacks the equipment and resources for sustaining a candle maker so mostly they have to trade for such wares.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kerzenmacher");
talkEntry:addResponse("Kerzenmacher k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Cadomyr gibt es ein paar wenige. Galmair hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Carpenter");
talkEntry:addResponse("Carpenters are mainly found in Runewick since there is a forest nearby. However, Galmair has a few wealthy carpenters if memory serves me right. Cadomyr from what I know mainly trades for the wares of a carpenter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schreiner");
talkEntry:addResponse("Schreiner k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Galmair gibt es ein paar wenige. Cadomyr hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lumberjack");
talkEntry:addResponse("Most lumberjacks I know live near Runewick since the largest forest is nearby. Galmair does have a few as well since there is less competition. Cadomyr's trees are not strong enough so they must rely on trade.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Holz");
talkEntry:addResponse("Holzf�ller k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Galmair gibt es ein paar wenige. Cadomyr hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cook");
talkEntry:addResponse("Cooks are abundant in Runewick and many travel far and wide to taste their delights. Including me! Although Galmair is not as renowned for its cooks I've seen several set up shop within its grand halls. Cadomyr has very few cooks and relies heavily on trade.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Koch");
talkEntry:addResponse("K�che k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Galmair gibt es ein paar wenige. Cadomyr hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Baker");
talkEntry:addResponse("Runewick without question has the finest bakers in all the land. Galmair bakers could certainly learn a lesson or two, but if you find yourself in need there are worst places to stop. As far as Cadomyr goes I think only the wealthiest could afford baked bread.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("B�cker");
talkEntry:addResponse("B�cker k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Galmair gibt es ein paar wenige. Cadomyr hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farmer");
talkEntry:addResponse("Farmers rely on Runewick's fair climate to grow and harvest their crops, and without question have the most peasants in the land. Galmair doesn't get nearly the same amount of rain as Runewick, but the land is cheap and I know a skilled farmer or two that call Galmair home. Cadomyr, ha, you'd be better off digging for buried treasure as a profession.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bauer");
talkEntry:addResponse("Bauern k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Galmair gibt es ein paar wenige. Cadomyr hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Herb");
talkEntry:addResponse("Herb gatherers usually stay close to Runewick so they can sell their fresh herbs to alchemists and druids. Cadomyr has a few well-maintained herb gathers as well, if memory serves me right. Without supply and demand Galmair relies strictly on trade for any herbal needs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kr�utersammler");
talkEntry:addResponse("Kr�utersammler k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Cadomyr gibt es ein paar wenige. Galmair hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tailor");
talkEntry:addResponse("The finest tailors in the land can be found in Runewick. Cadomyr also has a fair amount of tailors too. As for Galmair, I am quite sure most of their tailored wares come through trade.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schneider");
talkEntry:addResponse("Schneider k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Cadomyr gibt es ein paar wenige. Galmair hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanner");
talkEntry:addResponse("Runewick depends heavily on its tanners to supply raw material for its tailors. Cadomyr doesn't have as many but they are around if you know where to look. Galmair as far as I know has to trade for such wares.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gerber");
talkEntry:addResponse("Gerber k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Cadomyr gibt es ein paar wenige. Galmair hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dyer");
talkEntry:addResponse("Dyers like tanners stay close to Runewick to trade their wares with tailors. I've also seen a number of dyers in Cadomyr too. Galmair as far as I know has to trade for dyes if they're needed.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("F�rber");
talkEntry:addResponse("F�rber k�nnen vor allem in Runewick gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Cadomyr gibt es ein paar wenige. Galmair hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fisher");
talkEntry:addResponse("Fishermen stay close to Cadomyr for obvious reasons. The same goes for Runewick as well. As for Galmair, be prepared for salted fish because the only way they get fish is through trade.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fischer");
talkEntry:addResponse("Fischer k�nnen vor allem in Cadomyr gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Runewick gibt es ein paar wenige. Galmair hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Glass");
talkEntry:addTrigger("blow");
talkEntry:addResponse("Cadomyr has always been known for their glassblowers if you are searching for a mentor. However, if you're looking for less competition perhaps you should make your way to Runewick. Now as for Galmair you won't find many glassblowers if my memory serves me right.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Glasbl�ser");
talkEntry:addResponse("Glasbl�ser k�nnen vor allem in Cadomyr gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Runewick gibt es ein paar wenige. Galmair hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Digger");
talkEntry:addResponse("Diggers can always find clay and sand near Cadomyr. Then again, Galmair isn't a bad place either, but as for Runewick the nearby land is no place for diggers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr�ber");
talkEntry:addResponse("Gr�ber k�nnen vor allem in Cadomyr gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Galmair gibt es ein paar wenige. Runewick hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Finesmith");
talkEntry:addResponse("Finesmiths are mainly found in Cadomyr, but you can also search in Galmair as well. Runewick, not so much, they trade for such wares.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Goldschmied");
talkEntry:addResponse("Goldschmiede k�nnen vor allem in Cadomyr gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Galmair gibt es ein paar wenige. Runewick hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gem");
talkEntry:addTrigger("grinder");
talkEntry:addResponse("The most precise gem grinders in the land are found in Cadomyr, but I have met a fair number in Galmair too. Don't expect much in Runewick though, they mainly depend on trade for gems.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Edelstein");
talkEntry:addTrigger("schleifer");
talkEntry:addResponse("Edelsteinschleifer k�nnen vor allem in Cadomyr gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Galmair gibt es ein paar wenige. Runewick hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Blacksmith");
talkEntry:addResponse("Galmair is by far the best place to look for a good blacksmith, but if you find yourself near Cadomyr you should be able to find one there as well. You'll have no such luck in Runewick though because they must trade for such wares.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schmied");
talkEntry:addResponse("Schmiede k�nnen vor allem in Galmair gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Cadomyr gibt es ein paar wenige. Runewick hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Brick");
talkEntry:addTrigger("Brick maker");
talkEntry:addResponse("Ah, looking for a brick maker best start in Galmair. If you can't find one there, Cadomyr might have one or two as well. As for Runewick it won't be the best place to find bricks I assure you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ziegelmacher");
talkEntry:addResponse("Ziegelmacher k�nnen vor allem in Galmair gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Cadomyr gibt es ein paar wenige. Runewick hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mason");
talkEntry:addResponse("Galmair for sure but you might be able to find a mason in Cadomyr too. Runewick not so much, although you might be able to make a trade.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Steinmetz");
talkEntry:addResponse("Steinmetze k�nnen vor allem in Galmair gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Cadomyr gibt es ein paar wenige. Runewick hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Miner");
talkEntry:addResponse("You'll find a slew of miners in Galmair. Otherwise, head toward Cadomyr if you're looking for less competition. As for Runewick, never seen a miner there, but you might be able to make a trade.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sch�rfer");
talkEntry:addResponse("Sch�rfer k�nnen vor allem in Galmair gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Cadomyr gibt es ein paar wenige. Runewick hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Brewer");
talkEntry:addResponse("Galmair without question, they have the finest brewers near and wide, but if Galmair isn't the place for you the next best place is Runewick. Not aware of a brewer in Cadomyr, I think they may trade for their mead.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Brauer");
talkEntry:addResponse("Brauer k�nnen vor allem in Galmair gefunden werden, weil dort die besten Bedingungen zur Aus�bung dieses Berufes bestehen. Auch in Runewick gibt es ein paar wenige. Cadomyr hat zu handeln, wenn es etwas von denen ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("elf");
talkEntry:addTrigger("elves");
talkEntry:addCondition(npc.base.condition.race.race(3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Elves are mainly found in Runewick. So if you are looking for a tranquil community there is no better place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("elf");
talkEntry:addTrigger("elves");
talkEntry:addCondition(npc.base.condition.race.race(3));
talkEntry:addResponse("Elfen k�nnen vorallem in Runewick gefunden werden. Daher wirst du dort gut aufgehoben sein. *kichert* Aber du kannst auch woanders hingehen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("elf");
talkEntry:addTrigger("elves");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("If it's elves you seek best to head toward Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("elf");
talkEntry:addTrigger("elves");
talkEntry:addResponse("Elfen k�nnen vorallem in Runewick gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("human");
talkEntry:addCondition(npc.base.condition.race.race(0));
talkEntry:addResponse("You'd be hard pressed not find a place with humans! *Giggles* So feel free to go anywhere!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mensch");
talkEntry:addCondition(npc.base.condition.race.race(0));
talkEntry:addResponse("Menschen k�nnen �berall gefunden werden. Daher wirst du dort gut aufgehoben sein. *kichert* Aber du kannst auch woanders hingehen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("human");
talkEntry:addResponse("Humans, hmm, can't think of a single place without humans.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mensch");
talkEntry:addResponse("Menschen k�nnen �berall gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dwarf");
talkEntry:addTrigger("dwarves");
talkEntry:addCondition(npc.base.condition.race.race(1));
talkEntry:addResponse("If you're seeking the long bearded ones head toward Galmair!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("zwerg");
talkEntry:addCondition(npc.base.condition.race.race(1));
talkEntry:addResponse("Zwerge k�nnen vorallem in Galmair gefunden werden. Daher wirst du dort gut aufgehoben sein. *kichert* Aber du kannst auch woanders hingehen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dwarf");
talkEntry:addTrigger("dwarves");
talkEntry:addResponse("Dwarves are mainly found in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("zwerg");
talkEntry:addResponse("Zwerge k�nnen vorallem in Galmair gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("orc");
talkEntry:addCondition(npc.base.condition.race.race(4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Follow the path toward Cadomyr and Galmair if your looking for other orcs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ork");
talkEntry:addCondition(npc.base.condition.race.race(4));
talkEntry:addResponse("Orks k�nnen vorallem in Cadomyr und Galmair gefunden werden. Daher wirst du dort gut aufgehoben sein. *kichert* Aber du kannst auch woanders hingehen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("orc");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Orcs are mainly found in Cadomyr and Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ork");
talkEntry:addResponse("Orks k�nnen vorallem in Cadomyr and Galmair gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("lizard");
talkEntry:addCondition(npc.base.condition.race.race(5));
talkEntry:addResponse("Most Lizardmen call Cadomyr home. So if you prefer a waterfront living there is no better place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("echse");
talkEntry:addCondition(npc.base.condition.race.race(5));
talkEntry:addResponse("Echsenmenschen k�nnen vorallem in Cadomyr gefunden werden. Daher wirst du dort gut aufgehoben sein. *kichert* Aber du kannst auch woanders hingehen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("lizard");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Cadomyr is where you will find the majority of the lizardmen population.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("echse");
talkEntry:addResponse("Echsenmenschen k�nnen vorallem in Cadomyr gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("halbling");
talkEntry:addTrigger("halfling");
talkEntry:addCondition(npc.base.condition.race.race(2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Hiho! Looking for more of my kin? Best be off to Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("halbling");
talkEntry:addTrigger("halfling");
talkEntry:addCondition(npc.base.condition.race.race(2));
talkEntry:addResponse("Halblinge wie ich es einer bin k�nnen vorallem in Runewick gefunden werden. Daher wirst du dort gut aufgehoben sein. *kichert* Aber du kannst auch woanders hingehen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("halbling");
talkEntry:addTrigger("halfling");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("We Halflings certainly like Runewick, no better place in my opinion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("halbling");
talkEntry:addTrigger("halfling");
talkEntry:addResponse("Halblinge wie ich es einer bin k�nnen vorallem in Runewick gefunden werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("He is a wise elf that rules over Runewick. In fact, I hear he was an Archmage in Lor-Angur; he is very good with magic. *Claps his hands* Nice fireworks! He is very wise and gives good advice; I recommend you speak with him and listen closely! And if you are smart enough, he probably shows you Runewick's two stones of power. An Emerald and a Ruby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Er ist der Herrscher �ber Runewick. Da er Erzmagier und ein Elf aus Lor-Angur ist, ist er sehr gut in Magie. *klatscht in die H�nde* H�bsche Feuerwerke! Er ist sehr weise und gibt gute Ratschl�ge und ich kann dir empfehlen diese auch zu befolgen. Und wenn du schlau genug bist, dann zeigt er dir vielleicht Runewicks Steine der Macht. Einen Smaragd und einen Rubin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is a wise elf that rules over Runewick. In fact, I hear he was an Archmage in Lor-Angur; he is very good with magic. *Claps his hands* Nice fireworks! He is very wise and gives good advice; I recommend you speak with him and listen closely! And if you are smart enough, he probably shows you Runewick's two stones of power. An Emerald and a Ruby.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Er ist der Herrscher �ber Runewick. Da er Erzmagier und ein Elf aus Lor-Angur ist, ist er sehr gut in Magie. *klatscht in die H�nde* H�bsche Feuerwerke! Er ist sehr weise und gibt gute Ratschl�ge und ich kann dir empfehlen diese auch zu befolgen. Und wenn du schlau genug bist, dann zeigt er dir vielleicht Runewicks Steine der Macht. Einen Smaragd und einen Rubin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Runewick has four towers that loom over the land in the southeast. If you follow the path correctly you will have to cross a long narrow bridge and from there you should see the towers easily. They believe in wisdom and above all the advice of their Archmage, Elvaine Morgan. Use the word 'Runewick' in the teleporter and you will be there.");
talkEntry:addResponse("Their rivals from Cadomyr and Galmair call them arrogant smartasses who claim to know it all and try to keep a self-defined 'balance'. Don't ask me what all that means. *Giggles* However, use the word 'Runewick' in the teleporter and you will be there.");
talkEntry:addResponse("Ah, Runewick, you should expect to find many types of craftsmen in that wondrous place: Alchemists, Candle makers, Carpenters, Lumberjacks, Cooks, Bakers, Farmers, Herb gatherers, Tailors, Tanners and Dyers. However, use the word 'Runewick' in the teleporter and you will be there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick hat vier T�rme und kann im S�dosten gefunden werden. Du musst eine lange schmalle Br�cke zudem �berqueren. Sie glauben zudem an Weisheit und den Rat ihres Erzmagier Elvaine Morgan. Wie dem auch sei, verwende das Wort 'Runewick' im Teleporter und du bist dort.");
talkEntry:addResponse("Ihre Gegner aus Cadomyr und Galmair nennen sie arrogante Klugschei�er, welche behaupten alles zu wissen und versuchen eine selbst definierte 'Balance' zu halten. Frag mich nicht, was das ist. Wie dem auch sei, verwende das Wort 'Runewick' im Teleporter und du bist dort.");
talkEntry:addResponse("Insbesondere folgende Handwerke k�nnen in Runewick gefunden werden: Alchemisten, Kerzenmacher, Schreiner, Holzf�ller, Koch, B�cker, Bauer, Kr�utersammler, Schneider, Gerber und F�rber. Wie dem auch sei, verwende das Wort 'Runewick' im Teleporter und du bist dort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is the son of Don Tommaso, and since his father's death Valerio has ruled over Galmair. He is a very strong dwarf with considerable wealth. I have heard rumors that he is easily offended, and on more than one occasion has sent armored guards to settle his scores. *Shudders* And if you pay him enough, he probably shows you Galmair's two stones of power. A Topaz and an Amethyst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Er ist der Herrscher von Galamair und Nachfolger von seinem Vater. Er ist ein sehr starker Zwerg und ist auch sehr reich. Es ist besser ihn nicht zu ver�rgern, da er sonst speziell f�r dich Kopfgeldj�ger anheuern wird. *kichert*. Und wenn du schlau genug bist, dann zeigt er dir vielleicht Galmairs Steine der Macht. Einen Topaz und einen Amethyst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Galmair is located in the northwest and it consists of several halls and caves- very deep and amazing caves! With enough wealth you can become anything! However, use the word 'Galmair' in the teleporter and you will be there.");
talkEntry:addResponse("Their rivals from Runewick and Cadomyr call them greedy and chaotic. They assume that people from Galmair would do anything to earn a coin. However, use the word 'Galmair' in the teleporter and you will be there.");
talkEntry:addResponse("Galmair has always been known for its working class: Blacksmiths, Brick makers, Masons, Miners, and Brewers. However, use the word 'Galmair' in the teleporter and you will be there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair ist irgendwo im Nordwesten und es besteht aus mehreren Hallen und H�hlen. Sehr tiefe und beeindruckende H�hlen. Wie dem auch sei, du kannst dort alles bekommen was du m�chtest, solange du gen�gend Geld hast. Wie dem auch sei, verwende das Wort 'Galmair' im Teleporter und du bist dort.");
talkEntry:addResponse("Bei ihren Gegner aus Runewick und Cadomyr sind sie als gierig und chaotisch verschrien. Die nehmen an, dass Leute aus Galmair w�rden alles f�r einige zus�tzliche M�nzen tun. Wie dem auch sei, verwende das Wort 'Galmair' im Teleporter und du bist dort.");
talkEntry:addResponse("Insbesondere folgende Handwerke k�nnen in Galmair gefunden werden: Schmied, Ziegelmacher, Steinmetz, Sch�rfer, Brauer. Wie dem auch sei, verwende das Wort 'Galmair' im Teleporter und du bist dort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("queen");
talkEntry:addResponse("The Queen of Cadomyr? Her name is Rosaline Edwards, but don't let her beauty fool you she is a proud and noble ruler. It's well known that she is Albarian, but be prepared she doesn't govern in quite the same manner. She is, however, a devout follower of Malach�n and is always on the lookout for valiant warriors and hunters! And if you are brave enough, she probably shows you Cadomyr's two stones of power. A Bluestone and a Blackstone.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("k�nigin");
talkEntry:addResponse("Diese durchaus sehr sch�ne Frau ist die K�nigin von Cadomyr. Sie ist sehr stolz und nobel. Au�erdem mag sie solche die tapfer agieren und ihren Mut in Schlachten zeigen. Ihre alabarische Wurzeln sind wahrscheinlich der Grund f�r ihre Vorliebe. Und wenn du schlau genug bist, dann zeigt sie dir vielleicht Cadomyrs Steine der Macht. Einen Blaustein und einen Schwarzstein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ah, Rosaline Edwards, she is the fair Queen of Cadomyr. It's well known that she is Albarian, but be prepared she doesn't govern in quite the same manner. She is, however, a devout follower of Malach�n and is always on the lookout for valiant warriors and hunters! And if you are brave enough, she probably shows you Cadomyr's two stones of power. A Bluestone and a Blackstone.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addResponse("Diese durchaus sehr sch�ne Frau ist die K�nigin von Cadomyr. Sie ist sehr stolz und nobel. Au�erdem mag sie solche die tapfer agieren und ihren Mut in Schlachten zeigen. Ihre alabarische Wurzeln sind wahrscheinlich der Grund f�r ihre Vorliebe. Und wenn du schlau genug bist, dann zeigt sie dir vielleicht Cadomyrs Steine der Macht. Einen Blaustein und einen Schwarzstein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Cadomyr can be found nestled behind its formidable town walls in the midst of the desert to the southwest of this peninsula. They believe in honor and follow their queen's orders without hesitation or fear. However, use the word 'Cadomyr' in the teleporter and you will be there.");
talkEntry:addResponse("Cadomyr is the desert town to the southwest, just look for the high town walls. If you should venture there be prepared to follow the Queen's social order. *Giggles* In Runewick and Galmair they just call it the town of wannabe heroes! However, use the word 'Cadomyr' in the teleporter and you will be there.");
talkEntry:addResponse("Cadomyr, the desert bastion for Fishermen, Glass blowers, Diggers, Finesmiths, and Gem grinders alike lies to the southwest behind massive stone walls! However, use the word 'Cadomyr' in the teleporter and you will be there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr kann hinter einen gro�en Stadtmauer in der W�ste im s�dwestlichen Bereich der Halbinsel gefunden werden. Sie glauben dort an Ehre und ihre K�nigin, und sie sind ein sehr stolzen und furchtloses Volk. Wie dem auch sei, verwende das Wort 'Cadomyr' im Teleporter und du bist dort.");
talkEntry:addResponse("Ihre Gegner aus Runewick und Galmair denken, dass Cadomyr ein Platz von m�chte gern Helden sei, welche einem verr�ckten Kode der Ehre folgen und wo jeder wei�, welchen gottgegebenen 'Rang' er einnimmt. Wie dem auch sei, verwende das Wort 'Cadomyr' im Teleporter und du bist dort.");
talkEntry:addResponse("Insbesondere folgende Handwerke k�nnen in Cadomyr gefunden werden: Fischer, Glasbl�sser, Gr�ber, Goldschmied, Edelsteinschleifer. Wie dem auch sei, verwende das Wort 'Cadomyr' im Teleporter und du bist dort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("stones");
talkEntry:addTrigger("power");
talkEntry:addResponse("The stones of power offer their owns tremendous power. The sorcerer Mordak al Kharud owned once three of them and could thus conquer almost whole Illarion. But this was some decades ago. Nowadays the faction leaders own them. Since each faction leader has two of them, the balance between them is guaranteed. There, however, exist seven stones. These are Emerald, Ruby, Topaz, Amethyst, Bluestone, Blackstone and Diamond.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Steine");
talkEntry:addTrigger("Macht");
talkEntry:addResponse("Die Steine der Macht verleihen ihren Besitzern enorme Macht. Der Zauberer Mordak al Kharud besa� einst drei von ihnen und konnte deshalb beinahe ganz Illarion erobern. Aber das ist einge Jahrzehnte her. Nun besitzen die Herrscher der Fraktionen diese. Dadurch dass jeder zwei besitzt ist das Gleichgewicht zwischen ihnen garantiert. Wie dem auch sei, es gibt sieben Steine. Diese sind Smaragd, Rubin, Topas, Amethyst, Blaustein, Schwarzstein und Diamant.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Emerald");
talkEntry:addResponse("The Emerald belongs to Runewick and is part of the collection of archmage Elvaine Morgan. You can find further information about it in each of the factions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Smaragd");
talkEntry:addResponse("Der Smaragd geh�rt zu Runewick und ist Teil der Sammlung von Erzmagier Elvaine Morgan. Du findest weitere Informationen �ber den Stein in jeder Fraktion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ruby");
talkEntry:addResponse("The Ruby belongs to Runewick and is part of the collection of archmage Elvaine Morgan. You can find further information about it in each of the factions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rubin");
talkEntry:addResponse("Der Rubin geh�rt zu Runewick und ist Teil der Sammlung von Erzmagier Elvaine Morgan. Du findest weitere Informationen �ber den Stein in jeder Fraktion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Topaz");
talkEntry:addResponse("The Topaz belongs to Galmair and is part of the collection of Don Valerio Guilianni. You can find further information about it in each of the factions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Topas");
talkEntry:addResponse("Der Topas geh�rt zu Galmair und ist Teil der Sammlung von Don Valerio Guilianni. Du findest weitere Informationen �ber den Stein in jeder Fraktion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Amethyst");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The Amethyst belongs to Galmair and is part of the collection of Don Valerio Guilianni. You can find further information about it in each of the factions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Amethyst");
talkEntry:addResponse("Der Amethyst geh�rt zu Galmair und ist Teil der Sammlung von Don Valerio Guilianni. Du findest weitere Informationen �ber den Stein in jeder Fraktion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bluestone");
talkEntry:addResponse("The Bluestone belongs to Cadomyr and is part of the collection of Queen Rosaline Edwards. You can find further information about it in each of the factions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Blaustein");
talkEntry:addResponse("Der Blaustein geh�rt zu Cadomyr und ist Teil der Sammlung von K�nigin Rosaline Edwards. Du findest weitere Informationen �ber den Stein in jeder Fraktion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Blackstone");
talkEntry:addResponse("The Blackstone belongs to Cadomyr and is part of the collection of Queen Rosaline Edwards. You can find further information about it in each of the factions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schwarzstein");
talkEntry:addResponse("Der Schwarzstein geh�rt zu Cadomyr und ist Teil der Sammlung von K�nigin Rosaline Edwards. Du findest weitere Informationen �ber den Stein in jeder Fraktion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Diamond");
talkEntry:addResponse("The Diamond is missing. Noone knows where it is but rumors say that it must be somewhere here. If you can find it for your choosen faction you will definitely be highly rewarded.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Diamant");
talkEntry:addResponse("Der Diamant wird vermisst. Niemand wei� wo er ist aber Ger�chten zufolge muss er irgendwo hier sein. Wenn du ihn f�r die Fraktion deiner Wahl finden kannst wirst du bestimmt hoch belohnt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak");
talkEntry:addTrigger("Kharud");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Mordak al Kharud was once a powerful mage who wanted to have everything. He was beaten with the help of the rulers of the factions. You can find more information in each of the factions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mordak");
talkEntry:addTrigger("Kharud");
talkEntry:addResponse("Mordak al Kharud war einst ein m�chtiger Zauberer der alles an sich rei�en wollte. Er wurde mit Hilfe der Herrscher der Fraktionen besiegt. Mehr Informationen �ber ihn findest du in den Fraktionen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("explorer");
talkEntry:addResponse("Damit, I forgot it what I had to say about them!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erkunder");
talkEntry:addResponse("Verdammt, ich verge�en was ich dazu sagen wollte!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Albar is a very old empire with a hierarchical social order. The society of Cadomyr is to some extent similar to it, but you can't fully compare the two. It is well known that the queen's family is originally from there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Ein sehr altes Reich mit einer sehr hierarchischen gesellschaftlichen Ordnung ihrer Gesellschaft. Die Gesellschaft von Cadomyr �hnelt ihr, kann aber nicht wirklich damit verglichen werden. Die Familie der K�nigin hat ihre Wurzeln von dort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Gynk is a chaotic place, where almost anything is possible as long as you can manage to survive. Galmair is very similar, probably due to the fact that the Don's father is from Gynk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Gynk ist ein sehr chaotischer Platz, wo beinahe alles m�glich ist solange man es schafft zu �berleben. Galmair ist sehr �hnlich. Wahrscheinlich liegt das daran, dass der Vater des Don aus Gynk war .");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Is one of the three largest cities in all of Illarion, and although it is close to Gynk and Albar it's more closely related to the magical city of Lor-Angur. Many of its social influences can be seen in Runewick, mainly, due to the fact that Elvaine Morgan was once the Archmage there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Es ist neben Gynk und Albar das dritte gro�e Reich und hat eine sehr enge Beziehung zu Lor-Angur, der Heimatstadt vom Herrscher von Runewick, Elvaine Morgan.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("angur");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("That is the distant magical city of wonder and lore. Much of its ways can be seen in Runewick because Archmage Elvaine Morgan is from there. I wonder if he is working on getting that fifth tower like Lor-Angur? *smiles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("angur");
talkEntry:addResponse("Das ist eine sehr ber�hmte und ferne Stadt von Magiern und es ist die Heimatstadt des Herrschers von Runewick, Erzmagier Elvaine Morgan. Die haben sogar einen f�nften Turm. *l�chelt*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Inhabitants of every faction prefer specific younger gods for the most part. In Runewick they pray to Elara, Oldra, and Adron; in Galmair they pray to Irmorom, Ronagan, and Nargun; and in Cadomyr they honor Malachin, Zhambra and Sirani.");
talkEntry:addResponse("Most inhabitants vary between the younger and elder gods. You will find that most everyone worships one of the younger gods within their preferred faction, but rarely does anyone still worship the elder gods. I can't understand why anyone would worship someone who has left us. Where would your prayers go? *Giggles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Die Einwohner jeder Fraktion bevorzugen spezifische junge G�tter. In Runewick beten sie zu Elara, Oldra und Adron; in Galmair zu Irmorom, Ronagan und Nargun; und in Cadomyr zu Malachin, Zhambra and Sirani.");
talkEntry:addResponse("Wir unterscheiden zwischen jungen und alten G�ttern. Du wirst f�r beinahe jeden der jungen einen Gleichgesinnten in einer der Fraktionen finden, aber niemanden f�r die �lteren. Aber wer ist so dumm und dient denen noch? Die sind weg!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("elder");
talkEntry:addResponse("The elder gods are Br�gon, Eldan, Findari, Tanora, and Ushara. Besides Tanora they have all left this realm, and you should not waste your time worshipping them. Only some nostalgic and disconcerted elves still do, but that behavior is silly to me. *Giggles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("alten");
talkEntry:addResponse("Die alten G�tter sind Bragon, Eldan, Findari, Tanora und Ushara. Bis auf Tanora haben sie diese Ebene verlassen. Somit besteht kein Grund ihnen mehr zu dienen. Nur nostalgische und verwirrte Elfen tun das noch, aber die sind komisch. *kichert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("younger");
talkEntry:addResponse("The younger gods are Narg�n, Elara, Adron, Oldra, Cherga, Malach�n, Irmorom, Sirani, Zhambra, Ronagan, and Moshran. Most factions are shaped and molded by the gods they follow. I follow Elara! *Smiles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("junge");
talkEntry:addResponse("Die jungen G�tter sind Narg�n, Elara, Adron, Oldra, Cherga, Malach�n, Irmorom, Sirani, Zhambra, Ronagan und Moshran. Einige Fraktionen glauben in den einen, andere Fraktionen in die anderen. Ich glaube an Elara. Und du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is the god of festivities and wine, his followers can be found mostly in Runewick. So if you follow his teachings as well you will find like-minded people there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Er ist des Weines und der Feste und einige Anh�nger k�nnen in Runewick gefunden werden. Wenn du an ihm glaubst, dann wirst du dort Gleichgesinnte finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is one of the elder gods who left this realm. Therefore, he will not help you at all and makes no sense to worship him. Only nostalgic and disconcerted Elves still do, so don't bother. However, he was known as the god of fire.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Er ist einer der alten G�tter, die diese Ebene verlassen haben. Daher wird er dir nicht mehr helfen und es macht keinen Sinn ihm zu dienen. Nur nostalgische und verwirrte Elfen tun das noch. Wie dem auch sei, er war bekannt als der Gott des Feuers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She is the goddess of spirits and the underworld. No one in particular worships her, except those who think they will be traveling to underworld soon. *Giggles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Sie ist die G�tting der Geister und der Unterwelt. Niemand besonderes dient ihr, au�er jene, welche denken, sie bald zu besuchen. *kichert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She is the goddess of wisdom and knowledge, most consider her the patron god of Runewick. So if you follow her teachings you will find like-minded people there. Perhaps I will see you in Runewick since she is my goddess! *Giggles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Sie ist die G�ttin des Wissens und der Weisheit und einige Anh�nger k�nnen in Runewick gefunden werden. Wenn du an sie glaubst, dann wirst du dort Gleichgesinnte finden, so wie ich, weil ich ja auch an Elara glaube. *kichert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is one of the elder gods who left this realm. Therefore, don't bother to worship him- where would your prayers go? Only nostalgic Elves still do so anyway. If you're still wondering about him though, he was known as the god of spirit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Er ist einer der alten G�tter, die diese Ebene verlassen haben. Daher wird er dir nicht mehr helfen und es macht keinen Sinn ihm zu dienen. Nur nostalgische und verwirrte Elfen tun das noch. Wie dem auch sei, er war bekannt als der Gott des Geistes.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She is one of the elder gods who left this realm. There is no point in knowing about her; I mean she is long gone. Alright, alright if you must know she was the goddess of air.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Sie ist eine der alten G�tter, die diese Ebene verlassen haben. Daher wird sie dir nicht mehr helfen und es macht keinen Sinn ihr zu dienen. Nur nostalgische und verwirrte Elfen tun das noch. Wie dem auch sei, sie war bekannt als der Gott der Luft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is the god of trade and craftsmanship most of his followers can be found in Galmair. So if you believe in him as the dwarves do then you will find like-minded people there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Er ist des Handels und des Handwerks und einige Anh�nger k�nnen in Galmair gefunden werden. Wenn du an ihm glaubst, dann wirst du dort Gleichgesinnte finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is the god of battle and hunting. So if you are seeking the thrill of the hunt or glory in battle you best be on your way to Cadomyr, and I will pray that you live past a week! *Grins*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Er ist der Jagd und der Schlachten und einige Anh�nger k�nnen in Cadomyr gefunden werden. Wenn du an ihm glaubst, dann wirst du dort Gleichgesinnte finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is the unnamed one, also called the Milkspiller, who suffered a sickness in his belly from an old cake he had stolen from Narg�n. The cake was actually baked by Narg�n in order to poison and kill a giant. But I won't say anymore about him. *Shivers*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Er ist der Ungenannte, den man auch den Milchversaurer nennt, der sich den Magen an einem alten Kuchen verdarb, den er Nargun gestohlen hatte, welcher damit eigentlich einen Riesen hatte erschlagen wollte. Und mehr sag ich nicht dazu. *zittert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is the god of chaos and the trickiest of tricksters I assure you! There is no better place to find his followers than in Galmair. Be warned though, I wouldn't try to play any tricks on the Don he might try and eat you! *Giggles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Er ist der Gott des Chaos und einige Anh�nger k�nnen in Galmair gefunden werden. Wenn du an ihm glaubst, dann wirst du dort Gleichgesinnte finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She is the goddess of life and fertility! Many of her followers call Runewick home because the soil is rich and the harvest is grand. I go there often to fatten my belly! *Grins*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Sie ist die G�ttin der Fruchtbarkeit und des Lebens und einige Anh�nger k�nnen in Runewick gefunden werden. Wenn du an sie glaubst, dann wirst du dort Gleichgesinnte finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is the god of thieves and shadows; only Galmair openly worships this god as far as I know. Most others like me only pray to him for safe travel, and I'll do just that for you if your are off to Galmair!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Er ist der Gott der Diebe und der Schatten und einige Anh�nger k�nnen in Galmair gefunden werden. Wenn du an ihm glaubst, dann wirst du dort Gleichgesinnte finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She is the goddess of love and pleasure. *Blushes* I have heard that many travel to Cadomyr in search of love and well other things. *Giggles* May you find your true mate if you're bound for Cadomyr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Sie ist die G�ttin der Liebe und der Freude und einige Anh�nger k�nnen in Cadomyr gefunden werden. Wenn du an sie glaubst, dann wirst du dort Gleichgesinnte finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She is the only elder god that has not departed from this realm. Her followers are mainly the lizardmen, but don't take her lightly for many of them regard her with strict devotion and pride. Since she is an elder god the elves honor her too. If you haven't guessed it yet she is the goddess of water!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Sie ist eine der alten G�tter, die diese Ebene verlassen haben. Daher wird sie dir nicht mehr helfen und es macht keinen Sinn ihr zu dienen. Nur nostalgische und verwirrte Elfen tun das noch. Wie dem auch sei, sie war die G�ttin des Wasser.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She is one of the elder gods and has long since left this realm. I wouldn't even bother remembering her name if I were you. Only nostalgic and disconcerted Elves still do anyway. However, if you must know she was known as the god of earth.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Sie ist eine der alten G�tter, die diese Ebene verlassen haben. Daher wird sie dir nicht mehr helfen und es macht keinen Sinn ihr zu dienen. Nur nostalgische und verwirrte Elfen tun das noch. Wie dem auch sei, sie war die G�ttin der Erde.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is the god of friendship and loyalty, and many of his followers can be found in Cadomyr. If such noble things are what you are seeking I wish you well and safe travels!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Er ist der Freundschaft und Treue und einige Anh�nger k�nnen in Cadomyr gefunden werden. Wenn du an ihm glaubst, dann wirst du dort Gleichgesinnte finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("*Chuckles* All I have is information, and I'll give that to you for free!");
talkEntry:addResponse("I'm sorry, but I don't sell anything.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Von mir bekommst du nur Informationen, und die sind umsonst!");
talkEntry:addResponse("Tut mir leid, aber ich verkaufe nichts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("*Chuckles* All I have is information, and I'll give that to you for free!");
talkEntry:addResponse("I'm sorry, but I don't sell anything.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Von mir bekommst du nur Informationen, und die sind umsonst!");
talkEntry:addResponse("Tut mir leid, aber ich verkaufe nichts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hummi");
talkEntry:addTrigger("olaficht");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("That's me! If your after information look no further!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hummi");
talkEntry:addTrigger("olaficht");
talkEntry:addResponse("Das bin ich und ich wei� viele wichtige Dinge.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Yes?");
talkEntry:addResponse("'Yes' is the opposite of 'no'. *Giggles*");
talkEntry:addResponse("'Yes' means 'Ja' in the old language. *Giggles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Ja?");
talkEntry:addResponse("'Ja' ist das Gegenteil von 'Nein'. *kichert*");
talkEntry:addResponse("'Ja' bedeutet 'Yes' in der neuen Sprache. *kichert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("No?");
talkEntry:addResponse("'No' is the opposite of 'Yes'. *Giggles*");
talkEntry:addResponse("'No' means 'Nein' in the old language. *Giggles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Nein?");
talkEntry:addResponse("'Nein' ist das Gegenteil von 'Ja'. *kichert*");
talkEntry:addResponse("'Nein' bedeutet 'No' in der neuen Sprache. *kichert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(100));
talkEntry:addResponse("Duddli, do-da, ask me for help.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(100));
talkEntry:addResponse("Duddli, duddla, frag mich nach Hilfe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Schaut in den Truhen dort dr�ben nach, vielleicht findert ihr dort eure Sachen!", "Look at the chests over there, you find your belongings probably!");
talkingNPC:addCycleText("Frag mich nach 'Hilfe', wenn du 'Hilfe' brauchst.", "Ask me for 'help', if you need help.");
talkingNPC:addCycleText("Frag mich wenn du was �ber Fraktionen wissen m�chtest.", "Ask me if you'd like to know something about factions.");
talkingNPC:addCycleText("Runewick, Galmair, Cadomyr...ich wei� alles...fast alles. *kichert*", "Runewick, Galmair, Cadomyr... I know everything...almost. *Giggles*");
talkingNPC:addCycleText("Frage immer nach Aufgaben, vielleicht hat einer eine f�r dich und es gibt etwas f�r dich zu verdienen.", "Hiho, traveler! Keep on the lookout if you're in search for tasks or grand quests! All across the land many are in need, don't be afraid ask!");
talkingNPC:addCycleText("Ob K�nigin Rosaline Edwards, Don Valerio Guilianni, oder Erzmagier Elvaine Morgan... ich wei� alles �ber sie... fast alles.*kichert*", "Queen Rosaline Edwards, Don Valerio Guilianni, or Archmage Elvaine Morgan...learn all you need to know right here! Well, just about everything. *Giggles*");
talkingNPC:addCycleText("Wenn du nicht wei�t wohin du gehen sollst, frag mich nach hilfe.", "Don't get lost! I'm Hummi, the local area guide ask me for help, and I won't let you down!");
talkingNPC:addCycleText("Wenn du wissen m�chtest wo du und dein Glaube gut aufgehoben sind, frage mich nach hilfe.", "If you'd like to know where you and your faith are welcome, tell me your god and I'll tell you the best faction to join!");
talkingNPC:addCycleText("Ich bin Hummi und wei� viele Sachen", "I'm Hummi and I know many things.");
talkingNPC:addCycleText("Ob Elf, Zwerg, Mensch, Ork, Echsenmensch oder Halbing, ich wei� f�r jeden den richtigen Platz.", "Whether your an elf, dwarf, human, orc, lizardman, or halfling I know the right place for everyone!");
talkingNPC:addCycleText("Lebwohl Gobaith, willkommen �stlich des Siebenh�gel Gebirge.", "Farewell to Gobaith and welcome to the east known as Sevenhill Mountains!");
talkingNPC:addCycleText("W�hle eine der Fraktionen: Runewick, Galmair, Cadomyr. Sag ihren Name w�hrend du im Teleporter stehst um dorthin zu gelangen.", "Choose one of the three factions: Runewick, Galmair, Cadomyr. Say its name while you stay in the teleporter to get there.");
talkingNPC:addCycleText("Ich kann nur empfehlen: Sobald du in Runewick, Galmair oder Cadomyr ankommen bist, dich im Zensusb�ro anzumelden. Die �berlebenschancen steigen gewaltig! *kichert*", "I highly recommend: As soon as you got to Runewick, Galmair or Cadomyr to register there in the respective census office. *giggles*");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("A NPC who has brief and important information about factions.", "Ein NPC der kurze und wichtige Informationen �ber die Fraktionen hat.");
mainNPC:setUseMessage("Finger weg!", "Do not touch me!");
mainNPC:setConfusedMessage("Du musst schon in einer Sprache sprechen die ich verstehe. Entweder die gemeinsame oder die rassenspezifische Sprache.", "You have to talk to me in a language which I understand. Either the common or the racespecific language.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 181);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 34);
mainNPC:setEquipment(10, 53);
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