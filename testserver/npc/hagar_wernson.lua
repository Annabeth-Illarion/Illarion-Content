--------------------------------------------------------------------------------
-- NPC Name: Hagar Wernson                                            Galmair --
-- NPC Job:  Barkeeper                                                        --
--                                                                            --
-- NPC Race: human                      NPC Position:  391, 344, -6           --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Authors:  kormkormsen                                                      --
--           Rincewind                                                        --
--                                                       easyNPC Parser v1.21 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 391, 344, -6, 6, 'Hagar Wernson', 'npc.hagar_wernson', 0, 1, 1, 112, 74, 51, 217, 154, 123);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.sex")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.consequence.trade")
require("npc.base.talk")
require("npc.base.trade")
module("npc.hagar_wernson", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
local tradingNPC = npc.base.trade.tradeNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("verkauf");
talkEntry:addTrigger("handel");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkEntry:addResponse("Lass uns handeln!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sell");
talkEntry:addTrigger("trade");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkEntry:addResponse("Let's!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Hagar Wernson the keeper of 'The Winged Sow' Tavern. Keywords: Galmair, I am 'your name'."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dies ist NPC Hager Wernson der Wirt der 'Taverne zur gefl�gelten Sau'. Schl�sselw�rter: Galmair, Ich bin 'dein Name'."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(306, "=", 0));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("The Innkeeper gifts you a beer for free. Cheers!"));
talkEntry:addConsequence(npc.base.consequence.item.item(1909, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(306, "=", 1));
talkEntry:addResponse("You are new here, aren't you? Here you go! The first beer's free. Welcome at the Winged Sow tavern!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(306, "=", 0));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Der Wirt gibt dir ein Bier aus. Prost!"));
talkEntry:addConsequence(npc.base.consequence.item.item(1909, 1, 333, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(306, "=", 1));
talkEntry:addResponse("Du bist neu hier, was? Hier! Das erste Bier geht immer auf's Haus. Willkommen in der Taverne zur gefl�gelten Sau!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("G'day, beautiful maiden! Come here! I'll clean that table.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.item.item(333, "all", "=>", 1, nil));
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addResponse("G'day, %CHARNAME! Here's yer place! Fill yer up?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.item.item(333, "all", "=>", 1, nil));
talkEntry:addTrigger("Gr��e");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Seid gegr��t");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addTrigger("mit dir");
talkEntry:addResponse("Moin, Moin, %CHARNAME! Komm ran! Hier kannste Dich vollkippen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.item.item(333, "all", "=>", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("G'day, %CHARNAME! Here's yer place! Fill yer up?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.item.item(333, "all", "=>", 1, nil));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Moin, Moin, %CHARNAME! Komm ran! Hier kannste Dich vollkippen.");
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
talkEntry:addResponse("G'day, be wellcome in the Winged Sow Tavern!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��e");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Seid gegr��t");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addTrigger("mit dir");
talkEntry:addResponse("Moin, seid willkommen in der Taverne zur gefl�gelten Sau!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("G'day, be wellcome in the Winged Sow Tavern!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Moin, seid willkommen in der Taverne zur gefl�gelten Sau!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Be well! An' careful that no one steps on yer hands...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Bis bald! Und lass dir nich auffe H�nde treten...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Be well! An' careful that no one steps on yer hands...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Bis bald! Und lass dir nich auffe H�nde treten...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Aye, I'm fine. But you seem to be thirsty...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Aye, mir gehts gut. Aber ihr seht aus als h�ttet ihr Durst...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Hagar Wernson, the innkeeper.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Hagar Wernson, der Wirt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addResponse("I haven't any tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addResponse("Ich hab keine Arbeit f�r Euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I haven't any tasks for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich habe keine Arbeit f�r Euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I'm the inkeeper here.");
talkEntry:addResponse("This is my tavern. 'The Winged Sow'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin der Wirt, hier.");
talkEntry:addResponse("Das ist meine Taverne. 'Zur gefl�gelten Sau'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I'm the inkeeper here.");
talkEntry:addResponse("This is my tavern. 'The Winged Sow'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin der Wirt, hier.");
talkEntry:addResponse("Das ist meine Taverne. 'Zur gefl�gelten Sau'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Aye, s' horrible waht happened there. I will miss the Nordmark for ever.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Aye, das war schrecklich was dort passiert ist. Die Nordmark werd ich immer vermissen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("No need for tell me. I'm really good with names. I never forgot one. - What may I serve you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Brauchste mir nicht zu sagen. Mit Namen bin ich ausgesprochen gut. hab noch nie einen vergessen. - Was darfs heute sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dragon");
talkEntry:addResponse("Dragon's Pond. My old tavern. Sadly I had to leave it behind.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("nordmark");
talkEntry:addTrigger("northmark");
talkEntry:addResponse("That's the place where my old tavern was. The Dragon's Pond! It was a good place to be. No witches and longears. Except for the ones whose heads we put on a spike. Har-har!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sow");
talkEntry:addTrigger("pig");
talkEntry:addResponse("Aye, peek at the sky. Maybe you are able to see one.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Murgo");
talkEntry:addResponse("I knew Murgo. He was a good friend of my people.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Vigalf");
talkEntry:addResponse("Good-good old Vigalf. Zhambra may bless my old friend.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("drache");
talkEntry:addResponse("Drachentr�nke. Meine alte Taverne. Trauriger Weise musste ich sie verlassen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nordmark");
talkEntry:addResponse("Das ist der Ort wo die alte Taverne stand. Die Drachentr�nke! Das war ein guter Ort zum Leben. Keine Hexer und Langohren. Abgesehen von denen, deren K�pfe wir auf nen Pfahl gesteckt haben. Har-har!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sau");
talkEntry:addTrigger("schwein");
talkEntry:addResponse("Aye, schaut in die Wolken, vielleicht seht ihr eine.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Murgo");
talkEntry:addResponse("Ich kannte Murgo noch von der Zeit auf Gobaith. War ein guter Freund von meinen Leuten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Vigalf");
talkEntry:addResponse("Guter-guter alter Vigalf. Zhambra sch�tze meinen alten Freund.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("All that riff-raff should be kicked in their butts, if you ask me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Dieses ganze Gesocks geh�rt kre�ftig in den Hintern getreten. Wenn meine Meinung was Wert ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("All that riff-raff should be kicked in their butts, if you ask me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Dieses ganze Gesocks geh�rt kre�ftig in den Hintern getreten. Wenn meine Meinung was Wert ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("All that riff-raff should be kicked in their butts, if you ask me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Dieses ganze Gesocks geh�rt kre�ftig in den Hintern getreten. Wenn meine Meinung was Wert ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("The Don makes sure my tavern is the only one in town. Good deal, eh? That's totally worth the fee.");
talkEntry:addResponse("What's up? I paid for everything a few days ago!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Der Don, sorgt daf�r das meine Taverne die einzige in der Stadt ist. Feine Sache oder? Das lass ich mir gerne etwas kosten.");
talkEntry:addResponse("Was willst du? Ich hab alles schon vor n' paar Tagen bezahlt!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("I know what the people say... But here in Galmair your wallet gets nice and fat. The only fat thing in Cadomyr is Queen Rosaline's butt! Har-har-har!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Ich wei� was die Leute sagen... Aber hier in Galmair! - Wird der M�nzbeutel prall und fett. Das einzig fette in Cadomyr ist K�nigin Edwards! Har-har-har!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("They say queen Rosaline sells hot love for a handful of copper. Oh! No, wait. Thats what I say...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Man sagt K�nigin Edwards verkauft hei�e Liebe f�r ne Hand voll Kupfer. Oh! Nein wartet, das ist was ich sage...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("They say queen Rosaline sells hot love for a handful of copper. Oh! No, wait. Thats what I say...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Man sagt K�nigin Edwards verkauft hei�e Liebe f�r ne Hand voll Kupfer. Oh! Nein wartet, das ist was ich sage...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Like the dwarves say: 'There are too many head bangers in Cadomyr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("In Cadomyr laufen mir zu viele Holzk�pfe mit gro�en Schwertern herum.");
talkEntry:addResponse("Es hei�t die Frauen in Cadomyr h�tten besondere Tricks auf Lager. N�sse knacken zum Beispiel.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("My old friend Vigalf was born there. He didn't like it that much.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Mein alter Freund Vigalf kam aus Albar. Hat ihm dort nie so wirklich gefallen sch�tze ich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("I'm Norodaj! What would I do in this horrible heat? But I guess a clever man should be able to make good money there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Ich bin 'n Norodaj! Was sollte ich in dieser Affen-Hitze? Aber ich sch�tze ein kluger Mann kann dort gutes Geld machen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Salkamar is a club of boring parchment shufflers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Salkamar ist ein Verein von langweiligen Sesselpupsern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("I'm Norodaj. Zhambra and Tanora are those of my choice. And Ronagan, to keep my tavern safe! Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Ich bin Norodaj. Zhambra und Tanora sind meine Wahl. Und Ronagan, damit meine Taverne sicher ist. Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Adron? Well, for sure... I had his shrine here - somewhere. Uhm..");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Adron? Ja Sicherlich... Ich hatte seinen Schrein hier - irgendwo. Uhm..");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("One of the treehugger gods. Don't ask me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Mit diesen Elfeng�ttern hab ich nichts am Hut. Und dich hab nichtmal nen Hut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Ask a priest or something.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Ask a priest or something.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("One of the treehugger gods. Don't ask me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Mit diesen Elfeng�ttern hab ich nichts am Hut. Und ich hab nichtmal nen Hut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Findari");
talkEntry:addResponse("One of the treehugger gods. Don't ask me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Mit diesen Elfeng�ttern hab ich nichts am Hut. Und ich hab nichtmal nen Hut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("The Merchants and dwarves. Ask them, it's their god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Die H�ndler und Zwerge, ja-ja. Frag die. Irmorom ist deren Gott.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Ask a priest or something.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Ask a priest or something.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Ask a priest or something.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Ask a priest or something.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Praise Ronagan. And thanks to him those thieves are far away from my coins.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Gepriesen sei Ronagan. Und gedankt seis ihm, das die elenden Langfinger meinen M�nzen fern bleiben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Ask a priest or something.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Fragt doch einen Priester oder so etwas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("The Norodaj are the children of the sea. Tanora blesses our ships.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Die Norodaj, sind die Kinder der See. Und Tanora sch�tze unsere Schiffe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("One of the treehugger gods. Don't ask me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Mit diesen Elfeng�ttern hab ich nichts am Hut. Und dich hab nichtmal nen Hut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Bless my brothers and friends, Zhambra.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Sch�tze meine Br�der und Freunde, Zhambra.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("At that time I was the inkeeper of the Dragon's Pond. But now - yes now I hold this moderate cottage.");
talkEntry:addResponse("This is my tavern. 'The Winged Sow', that's the name. Aye that's right!");
talkEntry:addResponse("Although the business in Galmair is much better, I tend to miss the old Drangon's Pond sometimes.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Damals war ich der Wirt der Drachentr�nke. Aber nun - ja nun geh�rt mir diese bescheidene H�tte.");
talkEntry:addResponse("Dies ist meine Taverne. 'Zur gefl�gelten Sau' hei�t sie. Aye, so ist's!");
talkEntry:addResponse("Auch wenn das Gesch�ft in Galmair besser geht, vermiss ich die alte Drachentr�nke manchmal trozdem.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I got virgin's delight, our applewine. An' Gnollpoison, a red wine, or Beartrap, our mead. An' Northburger scullcracker, our beer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich hab Jungferngl�ck, den beliebten Apfelwein. Oder Gnollgift, den guten Rotwein. B�renfalle, den besten Met der Gegend. Und Nordburger Sch�delbrecher, unser Bier.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("milk");
talkEntry:addResponse("This is no monastery! get lost!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("milch");
talkEntry:addTrigger("kauf milch");
talkEntry:addResponse("Hier iss doch kein Kloster! Verschwinde!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("water");
talkEntry:addResponse("Ye can water yer cow outside! this ain't no stable here!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wasser");
talkEntry:addResponse("Deine Kuh kannst du draussen tr�nken! Dies iss doch kein Stall!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beer");
talkEntry:addResponse("I serve the best beer of Illarion! 'Yesolt's Bockbrau', a precious dwarfish ale! And of course the fameous Don's label - 'Gulden Goldmalz'!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("bier");
talkEntry:addResponse("Hier gibts das Beste Bier Illarions! 'Yesolt's Bockbr�u', n' feines zwergisches Ale! Und nat�rlich das ber�hmte 'G�lden Goldmalz', DAS Gebr�u aus dem Hause des Dons.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hagar");
talkEntry:addTrigger("Wernson");
talkEntry:addResponse("Beer or wine?");
talkEntry:addResponse("The usual?");
talkEntry:addResponse("Hrmpf?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hagar");
talkEntry:addTrigger("Wernson");
talkEntry:addTrigger("Wirt");
talkEntry:addResponse("Was darf's sein?");
talkEntry:addResponse("S' �bliche?");
talkEntry:addResponse("Hrmpf?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Aye!");
talkEntry:addResponse("Whatever.");
talkEntry:addResponse("Alright.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Aye!");
talkEntry:addResponse("Was auch immer.");
talkEntry:addResponse("Alles klar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Aye!");
talkEntry:addResponse("Whatever.");
talkEntry:addResponse("Alright.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Aye!");
talkEntry:addResponse("Was auch immer.");
talkEntry:addResponse("Alles klar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("The gods may bless you.");
talkEntry:addResponse("Have fun in my tavern.");
talkEntry:addResponse("Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Dann sag ich mal Prost.");
talkEntry:addResponse("Viel Spass in meiner Taverne!");
talkEntry:addResponse("Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Wir laaagen vor Sor-Ann-Araah... und hatten 'nen Elf ahan Bord.... In den Kesseln da faulte das Wassah... da soffen wir Bier soohofort... ", "Blow wi-ind, blow... to Salkamar we go.... her hair was blond her eyes were blue... her lips were red, her axe was new... ter my hodae, ter my hodae, ter my hodae, hodae ho!");
talkingNPC:addCycleText("#me verwischt den Dreck auf dem Tisch.", "#me wipes in the dirt on the table.");
talkingNPC:addCycleText("#me steht in einer Wolke �bler Ger�che.", "#me stands in a cloud of bad smells.");
talkingNPC:addCycleText("#me trocknet einen Krug mit einem Drecklappen.", "#me dries a mug with a dirty rag.");
talkingNPC:addCycleText("#me klaubt sich Kr�mel aus dem Bart.", "#me picks crumbs out of his beard.");
talkingNPC:addCycleText("#me pustet den Staub aus einem Bierkrug.", "#me blows dust out of a mug.");
talkingNPC:addCycleText("#me reisst sich Haare aus der Nase.", "#me picks hair out of his nose.");
talkingNPC:addCycleText("Von den blauen Wellen kommen wir!... unser K�pt'n iss so bl�d wie wir!... an den Rudern unsrer Boote, krieg'n wir Blasen anner Pfote.... von den blauen Wellen kommen wir!...", "oh beat the drum slowly, an' play the flute only, as they carry me along... cause I'm a young pirate, an' I surely done wrong...");
talkingNPC:addCycleText("#me riecht nach vergammeltem Fleisch und feuchtem Schafsfell.", "#me smells of putrefied meat and wet sheepskin.");
talkingNPC:addCycleText("#me kratzt sich abwesend unterm Kilt.", "#me scratches himself below his kilt absently.");
talkingNPC:addCycleText("#me sieht sich gelangweilt um.", "#me looks around bored.");
talkingNPC:addCycleText("#me trocknet sich mit dem Geschirrtuch unter den Achseln.", "#me dries his armpits with the dishrag.");
talkingNPC:addCycleText("#mes Atem riecht nach schalem Bier.", "#me's breath smells of stale beer.");
tradingNPC:addItem(npc.base.trade.tradeNPCItem(164,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(191,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(224,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(353,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(453,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(454,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(517,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(518,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(783,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(784,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(785,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(786,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(787,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(788,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(789,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(790,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(791,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1315,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1316,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1317,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1318,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1319,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1840,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1841,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1842,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1843,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1844,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1853,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1854,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1855,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1856,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1857,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1858,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1859,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1860,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1861,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1908,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1909,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2055,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2056,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2057,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2058,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2059,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2185,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2186,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2187,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2188,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2189,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2276,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2278,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2456,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2496,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2497,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2498,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2499,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2500,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2501,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2922,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2923,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2935,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2952,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(80,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(151,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(199,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(784,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(785,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(789,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1319,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1909,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1908,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2501,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(290,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(291,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(783,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(786,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(787,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(788,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(791,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1318,"buySecondary"));
tradingNPC:addNotEnoughMoneyMsg("Du hast nicht genug Geld!", "You don't have enough money!");
tradingNPC:addDialogClosedMsg("Danke, komm doch bald wieder.", "Thanks, come back soon.");
tradingNPC:addDialogClosedNoTradeMsg("Nichts gefunden was dir gef�llt?", "Don't you like my wares?");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein gro�gewachsener Norodaj, der mit einem schmierigen Lappen den Schmutz in einem gl�sernen Bierkrug herumwischt.", "A tall Norodaj. He uses a dirty rag to smear a glass beermug, 'clean'.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(9, 823);
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