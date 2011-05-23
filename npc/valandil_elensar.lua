--------------------------------------------------------------------------------
-- NPC Name: Valandil Elensar                                            None --
-- NPC Job:  none                                                             --
--                                                                            --
-- NPC Race: elf                        NPC Position:  783, -400, 0           --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   not set                                                          --
--                                                                            --
-- Last parsing: May 23, 2011                            easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (3, 783, -400, 0, 4, 'Valandil Elensar', 'npc.valandil_elensar', 0, 2, 5, 123, 62, 9, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.skill")
require("npc.base.talk")
module("npc.valandil_elensar", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 0");
talkEntry:addResponse("Quest status set to 0");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 1");
talkEntry:addResponse("Quest status set to 1");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 2");
talkEntry:addResponse("Quest status set to 2");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 3");
talkEntry:addResponse("Quest status set to 3");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 4");
talkEntry:addResponse("Quest status set to 4");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 5");
talkEntry:addResponse("Quest status set to 5");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 6");
talkEntry:addResponse("Quest status set to 6");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 7");
talkEntry:addResponse("Quest status set to 7");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 8");
talkEntry:addResponse("Quest status set to 8");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is the forester Valandil Elensar. Keyphrases: Hello, quest, hatchet, forester, wood."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist der F�rster Valandil Elensar. Schl�sselw�rter: Hallo, Quest, Beil, F�rster, Holz."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greetings");
talkEntry:addTrigger("Be greeted");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addResponse("Greetings, friend, sorry that I won't stand up but I planted trees all day long, now I feel a little tired.");
talkEntry:addResponse("Welcome in Elstree forest, watch out for the deers, they are easily frightened today.");
talkEntry:addResponse("Hello, I hope you weren't send to me in order to buy wood like my last visitor.");
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
talkEntry:addResponse("Gr��e, verzeiht, dass ich mich nicht erhebe aber ich habe den ganzen Tag B�ume gepflanzt und bin nun ein wenig erm�det.");
talkEntry:addResponse("Willkommen im Elsbaumwald, achtet auf die Rehe, sie sind heute sehr schreckhaft.");
talkEntry:addResponse("Hallo, ich hoffe, ihr wurdet nicht zu mir geschickt, um Holz zu kaufen wie mein letzter Besucher.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greebas");
talkEntry:addTrigger("Greebs");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Greetings, friend, sorry that I won't stand up but I planted trees all day long, now I feel a little tired.");
talkEntry:addResponse("Welcome in the Elstree forest, watch out for the deers, they are easily frightened today.");
talkEntry:addResponse("Hello, I hope you weren't send to me in order to buy wood like my last visitor.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greebas");
talkEntry:addTrigger("Greebs");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Gr��e, verzeiht, dass ich mich nicht erhebe aber ich habe den ganzen Tag B�ume gepflanzt und bin nun ein wenig erm�det.");
talkEntry:addResponse("Willkommen im Elsbaumwald, achtet auf die Rehe, sie sind heute sehr schreckhaft.");
talkEntry:addResponse("Hallo, ich hoffe, ihr wurdet nicht zu mir geschickt, um Holz zu kaufen wie mein letzter Besucher.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("Farewell, may the gods watch your paths.");
talkEntry:addResponse("Take care of yourself and never forget that the trees here are not to be touched by anyone but me without permission.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Auf bald, m�gen die G�tter �ber eure Pfade wachen.");
talkEntry:addResponse("Passt auf euch auf und denkt daran, dass die B�ume hier von niemanden au�er mir ohne Erlaubnis ber�hrt werden d�rfen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Good bye, enjoy your time in Elstree forest.");
talkEntry:addResponse("Oh, when you happen to pass sheep watch your back or else they might stick their curious noses into your pocket.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Auf Wiedersehen, genie�t eure Zeit hier im Elsbaumwald.");
talkEntry:addResponse("Oh, wenn ihr an Schafen vorbei kommen solltet, habt acht oder sie stecken ihre neugierigen M�uler in eure Taschen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Oh, I am fine, thank you.");
talkEntry:addResponse("I got a splinter in my thumb but I will handle it.");
talkEntry:addResponse("My head aches a little but it will pass after some rest.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Mir geht es gut, danke euch.");
talkEntry:addResponse("Ich habe einen Splitter im Daumen aber das wird schon.");
talkEntry:addResponse("Mein Kopf schmerzt ein wenig aber das geht vorbei nach ein bischen Rast.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Valandil Elensar.");
talkEntry:addResponse("Valandil Elensar is my name, I am the forester.");
talkEntry:addResponse("I am Valandil Elensar, the forester.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Valandil Elensar.");
talkEntry:addResponse("Valandil Elensar ist mein Name, ich bin der F�rster hier.");
talkEntry:addResponse("Ich bin Valandil Elensar, der F�rster.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Sorry, I do not trade. All I know is how to prune trees without harming them more than necessary.");
talkEntry:addResponse("The narrow-minded act of trading does not suit me, thus you cannot purchase anything from me.");
talkEntry:addResponse("I do not sell anything, in special no wood of slaughtered trees.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Verzeiht, ich handel nicht. Ich wei� nur, wie man B�ume m�glichst schonend zur�ckschneidet.");
talkEntry:addResponse("Der engstirnige Akt des Handelns ist nichts f�r mich, deshalb k�nnt ihr auch nichts von mir kaufen.");
talkEntry:addResponse("Ich verkaufe nichts, insbesonder kein Holz von geschlachteten B�umen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Well, there is not much I could tell, Elstree forest is a rather peaceful place.");
talkEntry:addResponse("I am no story-teller, if you want to gain information about the world you better ask one of the old elves or study the chronicles, that is more exciting than I could present it.");
talkEntry:addResponse("Well. I am afraid I do not have anything to tell you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Nun, es gibt nicht viel, das ich erz�hlen k�nnte, der Elsbaumwald ist ein eher ruhiger Ort.");
talkEntry:addResponse("Ich bin kein Geschichtenerz�hler, wenn ihr mehr �ber die Welt erfahren wollt, schlagt in den Chroniken nach, das ist aufregender, als ich es darstellen k�nnte.");
talkEntry:addResponse("Nun, ich f�rchte, ich habe nichts zu erz�hlen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("forester");
talkEntry:addResponse("I am a forester, if you want you can assist me and fulfill a task.");
talkEntry:addResponse("As a forester, I care for the forest, yes.");
talkEntry:addResponse("Being a forester is exhausting but also you get to be in touch with the trees a lot.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("F�rster");
talkEntry:addResponse("Ich bin ein F�rster und wenn ihr helfen wollt, gebe ich euch einen Auftrag.");
talkEntry:addResponse("Als F�rster k�mmere ich mich um die B�ume, richtig.");
talkEntry:addResponse("F�rster zu sein strengt an aber man ist auch viel an der frischen Luft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nana");
talkEntry:addTrigger("Winterbutter");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Nana ist eine liebliche und nette Person. Sie lebt im Eibenthal, wohin ich fr�her oft gereist bin - bevor die Borkenk�fer kamen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nana");
talkEntry:addTrigger("Winterbutter");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Nana is a cute and kind person, living in Yewdale. I used to travel there once in a while - before the bark beetles came.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("bark beetle");
talkEntry:addResponse("Bark beetles are the trees' foes. And I am the trees' friend. So they are my foes!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Borkenk�fer");
talkEntry:addResponse("Der Borkenk�fer ist der Feind der B�ume und ich bin ein Freund der B�ume. Also ist er mein Feind!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("lice");
talkEntry:addTrigger("louse");
talkEntry:addTrigger("scale bug");
talkEntry:addTrigger("scale insect");
talkEntry:addResponse("Scale lice want to exterminate the forest. But what if they succeed - won't they exterminate themselves?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schildlaus");
talkEntry:addTrigger("Schildl�use");
talkEntry:addTrigger("L�use");
talkEntry:addResponse("Die Schildl�use wollen den Wald vernichten. Doch, was wenn sie Erfolg haben? Rotten sie sich nicht so selbst aus?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elstree");
talkEntry:addResponse("Yes, the Elstree forest is like a child and a mother to me. I care for it like for a child and it grants me a sense of well-being like a mother.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elsbaum");
talkEntry:addResponse("Ja, der Elsbaumwald ist wie ein Kind und eine Mutter f�r mich. Ich k�mmere mich um ihn wie um ein Kind und er gibt mir die Geborgenheit wie eine Mutter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Raban");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Raban, ja, von diesem Namen habe ich geh�rt. Er ist ein Einsiedler, der tief im Wald lebt. Fragt mich aber nicht, wo.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Raban");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Raban, yes, I heard that name. He's a hermit, living somewhere deep in the forest, but do not ask me where.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eugene");
talkEntry:addTrigger("Burton");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Burton. Eugene Burton. If I ever catch this dreaded poacher, I will treat him just like he uses to treat the peaceful animals of Elstree forest.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eugene");
talkEntry:addTrigger("Burton");
talkEntry:addResponse("Burton. Eugene Burton. Wenn ich diesen verdammten Wilderer je erwische, werde ich genau das mit ihm machen, was er mit den friedlichen Tieren des Elsbaumwaldes zu tun pflegt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Nur die Leute aus Runewick ehren den Wald wie ein Kleinod. Sei es wegen ihrer Weisheit oder von ganzem Herzen, wer wei� das schon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Only the people of Runewick honour the forest like a treasure. Due to wisdom or their hearts, I do not know.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Die Leute aus Galmair scheren sich nur um ihren Profit. Daher frage ich mich, warum sie sich keine langfristigen Gedanken machen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The people of Galmair care for their profit, only. So, I wonder why they don't think about tomorrow's profit, too.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Sand und Stein, Cadomyr ist ein unwirtlicher Ort. Nur die Palmen halten es dort aus.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Sand and stone, Cadomyr is an inhospitable place. Only palmtrees can stand this region.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hatchet");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 0));
talkEntry:addResponse("If you want a hatchet I could give one to you. But you would have to do a certain task for me in return.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Beil");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 0));
talkEntry:addResponse("Wenn ihr ein Beil wollt, k�nnte ich euch eines geben, allerdings w�re dies mit einem gewissen Auftrag verbunden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hatchet");
talkEntry:addResponse("If you want to buy a hatchet, you should ask a merchant in Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Beil");
talkEntry:addResponse("Wenn ihr ein Beil kaufen wollt, solltet ihr einen H�ndler in Runewick aufsuchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Elstree Forest I"));
talkEntry:addResponse("Ah, fine, so you want to help me, caring for the trees. Bark beetles are a real plague these days. Take this hatchet and search for ill naldor trees. Bring me ten logs, will you?");
talkEntry:addConsequence(npc.base.consequence.item.item(74, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Elsbaumwald I"));
talkEntry:addResponse("Ah, fein, ihr m�chtet mir dabei helfen, die B�ume zu pflegen. Borkenk�fer sind zu einer echten Plage geworden. Nehmt dieses Beil und sucht nach kranken Naldorb�umen. Bringt mir zehn Scheite, ja?");
talkEntry:addConsequence(npc.base.consequence.item.item(74, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Elstree Forest I"));
talkEntry:addResponse("Ah, fine, so you want to help me, caring for the trees. Bark beetles are a real plague these days. Take this hatchet and search for ill naldor trees. Bring me ten logs, will you?");
talkEntry:addConsequence(npc.base.consequence.item.item(74, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Elsbaumwald I"));
talkEntry:addResponse("Ah, fein, ihr m�chtet mir dabei helfen, die B�ume zu pflegen. Borkenk�fer sind zu einer echten Plage geworden. Nehmt dieses Beil und sucht nach kranken Naldorb�umen. Bringt mir zehn Scheite, ja?");
talkEntry:addConsequence(npc.base.consequence.item.item(74, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Please take care of ill naldor trees, else bark beetles might make other trees suffer, too.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Bitte k�mmert euch um die kranken Naldorb�ume, andernfalls k�nnte der Borkenk�fer auch andere B�ume befallen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 1));
talkEntry:addResponse("Please take care of ill naldor trees, else bark beetles might make other trees suffer, too.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 1));
talkEntry:addResponse("Bitte k�mmert euch um die kranken Naldorb�ume, andernfalls k�nnte der Borkenk�fer auch andere B�ume befallen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(544, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 50 Kupferst�cke und deine Holzf�llerfertigkeit steigt."));
talkEntry:addResponse("Oh, vielen Dank. Hier, eine kleine Entsch�digung f�r eure M�hen.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "lumberjacking", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 50));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2560, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(544, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 50 copper coins and your lumberjacking skill increases."));
talkEntry:addResponse("Oh, thank you. Here, take this reward for your efforts.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "lumberjacking", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 50));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2560, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(544, "all", "<", 10));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Nun, ihr findet sicher noch weitere kranke Naldorb�ume.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(544, "all", "<", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Well, I am sure you'll find more ill naldor trees.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Elstree Forest II"));
talkEntry:addResponse("Oje, Schildl�use haben einige der Kirschb�ume befallen. Wir haben kein Wahl, schlagt die kranken B�ume und bring mir zwanzig Scheite.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Elsbaumwald II"));
talkEntry:addResponse("Oh dear, scale lice infested some of the cherry trees. We have no other choice, cut the ill trees and bring me twenty logs, please.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Elstree Forest II"));
talkEntry:addResponse("Oh dear, scale lice infested some of the cherry trees. We have no other choice, cut the ill trees and bring me twenty logs, please.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Elsbaumwald II"));
talkEntry:addResponse("Oje, Schildl�use haben einige der Kirschb�ume befallen. Wir haben kein Wahl, schlagt die kranken B�ume und bring mir zwanzig Scheite.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oje, Schildl�use haben einige der Kirschb�ume befallen. Wir haben kein Wahl, schlagt die kranken B�ume und bring mir zwanzig Scheite.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Oh dear, scale lice infested some of the cherry trees. We have no other choice, cut the ill trees and bring me twenty logs, please.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 3));
talkEntry:addResponse("Oh dear, scale lice infested some of the cherry trees. We have no other choice, cut the ill trees and bring me twenty logs, please.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 3));
talkEntry:addResponse("Oje, Schildl�use haben einige der Kirschb�ume befallen. Wir haben kein Wahl, schlagt die kranken B�ume und bring mir zwanzig Scheite.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(543, "all", ">", 19));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke und deine Holzf�llerfertigkeit steigt."));
talkEntry:addResponse("Ha, ihr habt es den Schildl�usen gezeigt, danke euch. Nehmt dies als Belohnung.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "lumberjacking", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(543, 20));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(543, "all", ">", 19));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins and your lumberjacking skill increases."));
talkEntry:addResponse("Ha, now the archers can train again for any possible emergency, thank you. Take this as a reward.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "lumberjacking", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(543, 20));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(543, "all", "<", 20));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Das ist noch nicht gen�gend Holz, schaut doch bitte zu, dass ihr noch mehr besorgt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(543, "all", "<", 20));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Those are not enough logs yet, try to get some more.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Elstree Forest III"));
talkEntry:addResponse("We always used to pin some twigs to the ceiling because of the delicious scent they spread. But now the branches we have have lost their scent. Do you think you can get us five new ones? The most intensive scented twigs can be found in the northern woods");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Elsbaumwald III"));
talkEntry:addResponse("Wir brachten immer einige Zweige an der Decke an, des k�stlichen Duftes wegen, den sie verbreiten. Doch nun haben die jetzigen Zweige ihren Duft verloren. Meint ihr, ihr k�nntet uns f�nf neue besorgen? Die aus dem Nordwald riechen am intensivsten.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Elstree Forest III"));
talkEntry:addResponse("We always used to pin some twigs to the ceiling because of the delicious scent they spread. But now the branches we have have lost their scent. Do you think you can get us five new ones? The most intensive scented twigs can be found in the northern woods.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Elsbaumwald III"));
talkEntry:addResponse("Wir brachten immer einige Zweige an der Decke an, des k�stlichen Duftes wegen, den sie verbreiten. Doch nun haben die jetzigen Zweige ihren Duft verloren. Meint ihr, ihr k�nntet uns f�nf neue besorgen? Die aus dem Nordwald riechen am intensivsten.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("We always used to pin some twigs to the ceiling because of the delicious scent they spread. But now the branches we have have lost their scent. Do you think you can get us five new ones?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Wir brachten immer einige Zweige an der Decke an, des k�stlichen Duftes wegen, den sie verbreiten. Doch nun haben die jetzigen Zweige ihren Duft verloren. Meint ihr, ihr k�nntet uns f�nf neue besorgen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 5));
talkEntry:addResponse("We always used to pin some twigs to the ceiling because of the delicious scent they spread. But now the branches we have have lost their scent. Do you think you can get us five new ones?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 5));
talkEntry:addResponse("Wir brachten immer einige Zweige an der Decke an, des k�stlichen Duftes wegen, den sie verbreiten. Doch nun haben die jetzigen Zweige ihren Duft verloren. Meint ihr, ihr k�nntet uns f�nf neue besorgen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2786, "all", ">", 4));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke und deine Holzf�llerfertigkeit steigt."));
talkEntry:addResponse("Mmh... riecht ihr das? Der beruhigende Duft des Waldes, vielen vielen Dank. Meine Frau und ich k�nnen nun endlich wieder entspannt einschlafen.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "lumberjacking", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2786, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2786, "all", ">", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins and your lumberjacking skill increases."));
talkEntry:addResponse("Mmh... do you smell that? The calming scent of the woods, thank you very much. Finally my wife and I can go to sleep completely relaxed again.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "lumberjacking", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2786, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2786, "all", "<", 5));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Nun, wir wollten uns eigentlich einen Vorrat anlegen, damit wir euch nicht so schnell wieder bel�stigen m�ssen. Bringt doch bitte gleich ein paar mehr Zweige.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(2786, "all", "<", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Well, actually we wanted to have a bigger storage so that we do not have to bother you again. Please, gather some more twigs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Elstree Forest IV"));
talkEntry:addResponse("In addition to my tasks as forester, I care for the cows. Can you bring me ten bundles of grain to feed them? Nana Winterbutter in Yewdale might help you.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Elsbaumwald IV"));
talkEntry:addResponse("Zus�tzlich zu meinen Aufgaben als F�rster k�mmere ich mich um die K�he. K�nnt ihr mir zehn B�ndel Getreide bringen, um sie zu f�ttern? Nana Winterbutter in Eibenthal k�nnte dir dabei helfen.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 6));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Elstree Forest IV"));
talkEntry:addResponse("In addition to my tasks as forester, I care for the cows. Can you bring me ten bundles of grain to feed them? Nana Winterbutter in Yewdale might help you.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 6));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Elsbaumwald IV"));
talkEntry:addResponse("Zus�tzlich zu meinen Aufgaben als F�rster k�mmere ich mich um die K�he. K�nnt ihr mir zehn B�ndel Getreide bringen, um sie zu f�ttern? Nana Winterbutter im Eibenthal k�nnte dir dabei helfen.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Please, the cows have a hard time, finding fresh grass. Will you bring me some straw?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Bitte, die K�he haben es schwer, saftiges Gras zu finden. Werdet ihr mir Stroh bringen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 7));
talkEntry:addResponse("Please, the cows have a hard time, finding fresh grass. Will you bring me some straw?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 7));
talkEntry:addResponse("Bitte, die K�he haben es schwer, saftiges Gras zu finden. Werdet ihr mir Stroh bringen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(249, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 200 copper coins and your lumberjacking skill increases."));
talkEntry:addResponse("Thank you so much. Now I can feed the cows and enjoy their gratefullness.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "lumberjacking", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(249, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(249, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 200 Kupferst�cke und deine Holzf�llerfertigkeit steigt."));
talkEntry:addResponse("Vielen, vielen Dank. Nun kann ich die K�he f�ttern und mich ihrer Dankbarkeit erfreuen.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "lumberjacking", "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(249, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(69, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(249, "all", "<", 10));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Could you please bring me more straw? Some of the cows are already pretty thin, aren't they?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(249, "all", "<", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("K�nntet ihr mir bitte mehr Stroh bringen? Einige der K�he sehen schon ganz sch�n abgemagert aus, nicht?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am grateful for all your help. If you visit Nana Winterbutter in Yewdale, can you greet her from me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich bin dankbar f�r all eure Hilfe. Wenn ihr Nana Winterbutter im Eibenthal besucht, m�gt ihr sie von mir gr��en?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 8));
talkEntry:addResponse("I am grateful for all your help. If you visit Nana Winterbutter in Yewdale, can you greet her from me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(69, "=", 8));
talkEntry:addResponse("Ich bin dankbar f�r all eure Hilfe. Wenn ihr Nana Winterbutter im Eibenthal besucht, m�gt ihr sie von mir gr��en?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Really?");
talkEntry:addResponse("#me looks confused");
talkEntry:addResponse("Can your repeat that?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Wirklich?");
talkEntry:addResponse("#me schaut etwas verwirrt");
talkEntry:addResponse("K�nnt ihr das wiederholen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("No?");
talkEntry:addResponse("Why not?");
talkEntry:addResponse("#me shakes his head slowly");
talkEntry:addResponse("I don't understand...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Nein?");
talkEntry:addResponse("Weshalb nicht?");
talkEntry:addResponse("#me sch�ttelt seinen Kopf bed�chtig");
talkEntry:addResponse("Ich verstehe nicht ganz...");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Bl�de Borkenk�fer!", "Damn bark beetles!");
talkingNPC:addCycleText("L�use! �berall L�use!", "Lice! Everywhere lice!");
talkingNPC:addCycleText("#me harkt einen Haufen Laub zusammen.", "#me rakes a pile of leaves.");
talkingNPC:addCycleText("#me f�hrt die Klinge eines Beils mit einem Wetzstein entlang.", "#me sharpens the blade of a hatchet with a whetstone");
talkingNPC:addCycleText("#me sieht sich um und murmelt vor sich hin: 'Meine Freunde...'", "#me looks around and murmurs: 'My friends...'");
talkingNPC:addCycleText("Wenn ich jemanden dabei erwische, wie er ohne meine Billigung Holz schl�gt, dann wird er was erleben!", "When I catch somebody cutting wood without my permission, he's got something coming!");
mainNPC:addLanguage(0);
mainNPC:addLanguage(3);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Das ist ein NPC dessen Entwickler zu faul war eine Beschreibung einzutragen.", "This is a NPC who's developer was too lazy to type in a description.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
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
