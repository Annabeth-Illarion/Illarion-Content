--------------------------------------------------------------------------------
-- NPC Name: Hook Gowan                                                  None --
-- NPC Job:  trader                                                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  674, 323, 0            --
-- NPC Sex:  male                       NPC Direction: southwest              --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                                            --
-- Last parsing: October 09, 2010                        easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 674, 323, 0, 5, 'Hook Gowan', 'npc.hook_gowan', 0, 1, 2, 28, 24, 23, 108, 65, 33);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.hook_gowan", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Hook Gowan a trader of The Hemp Necktie Inn . Keyphrases: Nubris, Ronagan, King Edwards, tell something"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Hook Gowan ein H�ndler im Gasthof zur Hanfschlinge. Schl�sselw�rter: Nubris, Ronagan, K�nig Edwards, erz�hl etwas"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greetings");
talkEntry:addTrigger("Be greeted");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addResponse("xxx");
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
talkEntry:addResponse("Mit einem Fu� im Schatten, zum Gru�e.");
talkEntry:addResponse("Guten Tag, braucht ihr etwas? Ich kaufe und verkaufe erlesene G�ter aus dritter Hand.");
talkEntry:addResponse("Seid gegr��t und kauft bei mir ein.");
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
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
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
talkEntry:addResponse("Mit einem Fu� im Schatten, zum Gru�e.");
talkEntry:addResponse("Guten Tag, braucht ihr etwas? Ich kaufe und verkaufe erlesene G�ter aus dritter Hand.");
talkEntry:addResponse("Seid gegr��t und kauft bei mir ein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("xxx");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Die Schatten sollen Euch verbergen, lebt wohl.");
talkEntry:addResponse("Auf Wiedersehen.");
talkEntry:addResponse("M�gen Euch die G�tter sch�tzen. Bis bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Die Schatten sollen Euch verbergen, lebt wohl.");
talkEntry:addResponse("Auf Wiedersehen.");
talkEntry:addResponse("M�gen Euch die G�tter sch�tzen. Bis bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Einigerma�en. Danke, der Nachfrage.");
talkEntry:addResponse("Der Adel ist der Dekadenz verfallen und der Rand der Gesellschaft muss hungern! Gedankt sei's Ronagan, das er unser eins dennoch beh�tet.");
talkEntry:addResponse("Hrmpf - Heute bin ich aufgewacht und glaubte meine Hand w�re mir wiedergegeben. - Anstelle des h�sslichen Hakens! Doch dann wurde mir klar, es war ein �bler Traum, den mir wohl Nargun gesannt hatte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("ENGLISH");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("#me winkt mit seiner Hakenhand: 'Mann nennt mich Hook Gowan.'");
talkEntry:addResponse("#me zwinkert: 'Ich bin Hook, H�ndler aus dritter Hand, wenn ihr versteht was ich damit meine.'");
talkEntry:addResponse("Gowan. Ich hei�e Gowan. - Manchmal w�nsch ich mir, die Leute w�rden mich einfach nur Gowan nennen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("xxx");
talkEntry:addResponse("xxxx");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich handle mit G�tern aus dritter Hand. Haupts�chlich praktische Dinge die man hier drau�en in der Wildnis gut brauchen kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("H�rt auf Fragen zu stellen, das sieht hier niemand gern.");
talkEntry:addResponse("#me setzt ein l�cheln auf und prahlt: 'Lasst Euch sagen, ich bin ein �bler Bursche. Vor langer Zeit stahl ich das Nachthemd K�nig Edwards.'");
talkEntry:addResponse("Einst war ich B�rger Cadomyrs, doch man hat mich verbannt. Zuvor verga� man allerdings nicht mir die Hand abzuhacken.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("ENGLISH1.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Fr�her stahl ich noch selbst meinen Lebensunterhalt zusammen. Aber heute verschachere ich das Zeug nur noch. Und hier im Gasthof kann mir auch keiner Verbieten das ganz offen zu sagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Fr�her stahl ich noch selbst meinen Lebensunterhalt zusammen. Aber heute verschachere ich das Zeug nur noch. Und hier im Gasthof kann mir auch keiner Verbieten das ganz offen zu sagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Ein alter Freund von mir lebte derweilen auf Gobaith. Aber ich hab ihn schon ewig nicht gesehen. Und ich glaub auch nicht das jetzt noch Leute dort leben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("I am");
talkEntry:addTrigger("my name");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ich bin");
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Alles klar. Wollt Ihr etwas ver�u�ern oder einkaufen?");
talkEntry:addResponse("In Ordnung. H�rt her - Ihr stellt keine Fragen und ich werde Euch nicht bel�gen.");
talkEntry:addResponse("Ausgezeichnet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("third");
talkEntry:addTrigger("three");
talkEntry:addTrigger("goods");
talkEntry:addResponse("ENGLISH");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("king");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nubris");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gowan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hook");
talkEntry:addTrigger("hand");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("drei");
talkEntry:addTrigger("dritter");
talkEntry:addTrigger("dritt");
talkEntry:addTrigger("wahre");
talkEntry:addTrigger("g�ter");
talkEntry:addResponse("Wahre aus dritter Hand. Aye. Das hei�t die Sachen sind schon Mal benutzt worden.");
talkEntry:addResponse("#me lacht leise: 'Die dritte Hand ist meine, die Zweite geh�rt meinem Verk�ufer und die Erste dem Eigent�mer.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nig");
talkEntry:addResponse("#me schmunzelt traurig: 'Vor vielen Jahren gelang es mit das Nachthemd von K�nig Edwards zu stehlen. Doch man fasste mich kurz darauf, der K�nig lie� mir die Hand abhacken und verbannte mich. Nun bin ich hier und man nennt mich Hook Gowan.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("edwards");
talkEntry:addResponse("#me schmunzelt traurig: 'Vor vielen Jahren gelang es mit das Nachthemd von K�nig Edwards zu stehlen. Doch man fasste mich kurz darauf, der K�nig lie� mir die Hand abhacken und verbannte mich. Nun bin ich hier und man nennt mich Hook Gowan.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("nubris");
talkEntry:addResponse("Tja, mein Vater lebte noch direkt in Nubris. Ich bin ausgezogen... - Nurbis, das goldene Juwel des S�dens, wie es in Salkamar genannt wird. Viele Menschen dort, haben eine dunkle Haut.");
talkEntry:addResponse("In Nubris, lasst mich von meiner weit entfernten Heimat erz�hlen... - dort gibts es ein Tier, es hei�t Kawaaru. Eine riesige Echse mit sanften Gem�t. Welche zum tragen von schweren G�tern gen�tzt wird.");
talkEntry:addResponse("Ich will ganz subjektiv meinen Nubris ist die sch�nste Stadt Illarions. Weithin sind die vergoldeten Kuppeld�cher und die pr�chtigen goldgelben Granitbauten sichtbar. Au�erdem regiert ein �ltestenrat die Stadt.");
talkEntry:addResponse("In Nubris ist es viel zu hei� f�r hinderliche Lederr�stungen oder gar Stahl. Stattdessen verwendet man haupts�chlich leichte R�stplatten aus hartem Holz oder Schuppenpanzer aus stabilen Steinsorten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gowan");
talkEntry:addTrigger("Hook");
talkEntry:addResponse("Ja, ich hab einen Haken an der Hand. Was wollt Ihr?");
talkEntry:addResponse("Nein ich bin kein Pirat. Ich mag nicht mal das Meer, von zu viel Geschaukle wird mir n�mlich immer �bel.");
talkEntry:addResponse("Der alte K�nig, Cadomyrs hat mir damals noch die Hand abgehackt. Ist wahr - ist wahr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("haken");
talkEntry:addTrigger("hand");
talkEntry:addResponse("Ja, ich hab einen Haken an der Hand. Was wollt Ihr?");
talkEntry:addResponse("Nein ich bin kein Pirat. Ich mag nicht mal das Meer, von zu viel Geschaukle wird mir n�mlich immer �bel.");
talkEntry:addResponse("Der alte K�nig, Cadomyrs hat mir damals noch die Hand abgehackt. Ist wahr - ist wahr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Diese Baumkuschler, sehen alle aus wie Weibsvolk. F�llt mir immer schwer n' Elfen von ner Elfin zu unterscheiden. - Alle so Weibisch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Hm-h, lasst mich nachdenken. In Runewick werde ich wegen drei verschiedener Verst��e gesucht. - Ich denke ich werde mich erst einmal eine Weile von dort fern halten. Ihr nicht auch?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Ha! Diesem zu klein geratenen Lustmolch sollte man eine rote M�tze aufsetzen, damit man ihn nicht mehr so leicht �bersieht wenn er durchs Gras l�uft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Hui-ui! Nach Galmair bringen mich keine zehn Oger! Ich schulde dem Don Guilianni eine beachtliche Summe Gold. Er hat es mir einst unfreiwilliger Weise aus seiner privaten Schatzkammer geliehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ich kann es Euch nicht genau sagen, doch es hei�t Rosaline sei noch strikter als ihr Vater. Der alte K�nig, lie� mir ja einst die Hand abhacken...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Ich bin vor vielen Jahren aus Cadomyr verbannt worden. Es war mir lieb, schlie�lich war die Stadt meine Heimat. Aber so l�uft das nun Mal.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ach Albar... Ich kenne einige Albarer, aber es sind allesamt dumme R�pel und Bauernk�pfe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Die Sumpflande stinken, Gank stinkt und Gynkesen stinken ebenso. - Wie k�nnte es auch anders sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("In Salkamar soll das liebe lange Jahr die Sonne scheinen, hat man mir gesagt. Allerdings nicht vom Himmel herab, sondern aus den Hinterteilen der Salkamarer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Ich will mit Euch �ber Ronagan sprechen, wenn ihr mehr �ber unseren Schattenherrn wissen wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ronagan, Gott der Diebe und Schatten! Er beh�tet jene die im Schatten der Reichen und feinen Gesellschaft leben m�ssen.");
talkEntry:addResponse("Es hei�t es g�be einen Tempel f�r den Schattenherrn im S�dosten des Landes. Allerdings konnte ich nichts finden als ich danach suchte.");
talkEntry:addResponse("Mein Herr, verachtet die Autorit�t des Adels. Und wie er, lebe ich um Schabernak mit der dekadenten Obrigkeit zu treiben. ");
talkEntry:addResponse("Manch mal erscheint er als junger Galan, verkleidet, Vagabunden oder Landstreichern. Er soll durchaus humorvoll sein.");
talkEntry:addResponse("Ronagan verabscheut Vertrauensbruch oder Verrat. Einem Partner zu hintergehen ist eine schlimme Tat, f�r unsereins und der Schattenherr wird es gewiss nicht �bersehen.");
talkEntry:addResponse("Ich h�rte es gibt H�ndler die dem Schattenherrn opfern, damit sie nicht beraubt werden und er die Langfinger fern h�lt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Hm-h. Ehrlich gesagt, hab ich schon ausreichend Leute die f�r mich arbeiten. Euch kann ich also nicht brauchen, tut mir Leid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Hm-h. Ehrlich gesagt, hab ich schon ausreichend Leute die f�r mich arbeiten. Euch kann ich also nicht brauchen, tut mir Leid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Fein! Das kommt mir eigentlich ganz gelegen.");
talkEntry:addResponse("Ja! Ja-ja, so machen wir das.");
talkEntry:addResponse("Ausgezeichnet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Aye.");
talkEntry:addResponse("Seid ihr sicher?");
talkEntry:addResponse("Tats�chlich?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("Wenn Ihr keine Fragen stellt, werde ich Euch auch nicht bel�gen.");
talkEntry:addResponse("Soso? - Gut zu wissen.");
talkEntry:addResponse("Oh, das ist ja interessant.");
talkEntry:addResponse("Ein Schritt im Schatten und Einer �ber die Rinne...");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me hebt seine Hakenhand und kratzt sich mit der Spitze des Hakens am Hinterkopf. Er kneift die Augen zusammen und scheint einen Moment nachzudenken.", "ENGLISH.");
talkingNPC:addCycleText("#me h�ngt seinen Haken in den Gurt einer seiner Ledertaschen und hebt sie hoch, mit kritischem Blick mustert er die Tasche von allen Seiten.", "ENGLISH.");
talkingNPC:addCycleText("#me betastet abwesend blickend, mit seiner gesunden Hand den Haken an seinem rechten Arm. ", "ENGLISH.");
talkingNPC:addCycleText("#me legt seinen Kopf schief.", "ENGLISH.");
talkingNPC:addCycleText("#me r�uspert sich unauff�llig.", "ENGLISH.");
talkingNPC:addCycleText("#me g�hnt ausgiebig und h�lt sich dabei den gl�nzenden Haken vor den Mund.", "ENGLISH.");
talkingNPC:addCycleText("#me stemmt seine Arme in die Seiten und blickt mit zweifelnder Mimik durch den Raum.", "ENGLISH.");
talkingNPC:addCycleText("#me lehnt sich ein wenig zur�ck und atmet l�chelnd aus.", "ENGLISH.");
talkingNPC:addCycleText("#me murmelt: 'Ein Schritt im Schatten und Einer �ber die Rinne, der Diebe Stern verbirgt sich am Gestirne.'", "ENGLISH.");
talkingNPC:addCycleText("#me wirft einen ungeduldigen Blick aus dem n�chst liegenden Fenster.", "ENGLISH.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein verschmitzt drein blickender Mann mit Hakenhand. Er spricht mit hei�erer, kratziger Stimme.", "xxx");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
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