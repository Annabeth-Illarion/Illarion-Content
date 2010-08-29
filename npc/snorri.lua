--------------------------------------------------------------------------------
-- NPC Name: Snorri                                                      None --
-- NPC Job:  trader                                                             --
--                                                                            --
-- NPC Race: dwarf                      NPC Position:  352, 256, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                                            --
-- Last parsing: August 29, 2010                         easyNPC Parser v1.01 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (1, 352, 256, 0, 4, 'Snorri', 'npc.snorri', 0, 1, 1, 119, 56, 3, 217, 154, 123);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.snorri", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is <Insert Name> the <insert profession/function>. Keyphrases: TRIGGER1, TRIGGER2, TRIGGER3, TRIGGER4, TRIGGER5."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Snorri der Fischh�ndler. Schl�sselw�rter: �bliche Handelstrigger"));
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
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
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
talkEntry:addResponse("Hiho, wie kann ich Euch helfen? - Nein, sagt es nicht, ich wei� es schon, ihr wollt ein paar von meinen Fischen kaufen, nicht wahr? ");
talkEntry:addResponse("Tach, tach. Wie geht's denn heute so? Ihr habt Euch ja ewig nich ansehen lassen. Neue Frisur? Steht euch gut zu Gesicht!");
talkEntry:addResponse("Oh! Guten Tach! Ist mir eine Freude Euch zu Begr��en.");
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
talkEntry:addResponse("Hiho, wie kann ich Euch helfen? - Nein, sagt es nicht, ich wei� es schon, ihr wollt ein paar von meinen Fischen kaufen, nicht wahr? ");
talkEntry:addResponse("Tach, tach. Wie geht's denn heute so? Ihr habt Euch ja ewig nich ansehen lassen. Neue Frisur? Steht euch gut zu Gesicht!");
talkEntry:addResponse("Oh! Guten Tach! Ist mir eine Freude Euch zu Begr��en.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Auf ein baldiges Wiedersehen.");
talkEntry:addResponse("Gehabt Euch wohl und berichtet es Euren Freunden! 'Snorri verkauft die besten Fische, Galmairs!'");
talkEntry:addResponse("Irmorom sei mit dir. M�ge dir der Bart bis zum Boden wachsen.");
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
talkEntry:addResponse("Auf ein baldiges Wiedersehen.");
talkEntry:addResponse("Gehabt Euch wohl und berichtet es Euren Freunden! 'Snorri verkauft die besten Fische, Galmairs!'");
talkEntry:addResponse("Irmorom sei mit dir. M�ge dir der Bart bis zum Boden wachsen.");
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
talkEntry:addResponse("Oh, wie freundlich von Euch, das ihr mich danach fragt! Und ich will sagen, ja! Ja es geht mir ausgezeichnet.");
talkEntry:addResponse("Ausgezeichnet. Danke das ihr Euch danach erkundigt habt.");
talkEntry:addResponse("Gut, gut, ich will nun wirklich nichts beklagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("ENGLISH1.");
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
talkEntry:addResponse("Ich bin Snorri. Und der Griesgram, hinter mir hei�t Morri. *lacht* Er ist mein Bruder, wu�tet ihr das?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich verkaufe Fisch. Gro�e Fische, kleine Fische, bunte Fische oder langweilige... alle sind sie anders. Aber eines haben sie Gemeinsam. Sie sind frisch! So frisch, sie w�rden Euch glatt aus der Pfanne h�pfen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Aye, ich bekomm all die Fische jeden zweiten Tag, direkt vom Hafen.");
talkEntry:addResponse("Morri und ich sind Br�der. Und wir teilen uns den Marktschuppen. Auch wenn er so finster drein schaut, er ist ein netter Kerl.");
talkEntry:addResponse("Einmal, bekam ich einen Karren mit Fischen, vom Hafen, und ich schw�re bei meinem Bart, die Fische waren so frisch, ich musste sie mit Schn�ren auf den Tisch fesseln, damit sie nicht wegh�pfen konnten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin Fischh�ndler. Aber manches Mal, kitzelt es mir in der Nase, dann nehm ich die Angel und fische selbst ein wenig. Was ist Euer Beruf?");
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
talkEntry:addResponse("Ich bin Fischh�ndler. Aber manches Mal, kitzelt es mir in der Nase, dann nehm ich die Angel und fische selbst ein wenig. Was ist Euer Beruf?");
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
talkEntry:addResponse("Von Gobaith h�rt man nichts Gutes. Oder habt ihr etwas zu berichten?");
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
talkEntry:addResponse("Es ist mir eine Freude Euch kennen zu lernen. Welchen Fisch darf ich Euch denn verkaufen?");
talkEntry:addResponse("Aye, wollt ihr Fisch kaufen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fish");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("morri");
talkEntry:addTrigger("brother");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("orc");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dwarf");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("nose");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("snorri");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("snorri");
talkEntry:addResponse("Aye. Welchen Fisch wollt ihr kaufen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fisch");
talkEntry:addResponse("#me schnuppert demonstrativ: 'Hm-h. So muss Fisch riechen wenn er frisch ist. Riecht er anders, ist er verdorben.'");
talkEntry:addResponse("Der frischeste Fisch in ganz Galmair. Sogar der Koch von Don Valerio Guillianni kauft bei Snorri seine Fische ein.");
talkEntry:addResponse("Bei meinem Bart, heute ist mein Fisch wieder frisch! Aufgepa�t, hei�t es nun! Sonst h�pfen sie direkt vor meiner Nase, auf die Stra�e und schnurstracks zur�ck ins Meer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("morri");
talkEntry:addTrigger("bruder");
talkEntry:addResponse("Aye, Morri ist mir von all meinen Br�dern der Liebste.");
talkEntry:addResponse("Es macht mich zutiefst gl�cklich, das Morri neben mir steht und wir den Marktstand gemeinsam betreiben.");
talkEntry:addResponse("Morri, hat manche Tage schlechte Laune. Und da ist es meine Aufgabe, als �lterer Bruder, ihn auf zu heitern. *lacht* Das ist nicht immer so leicht, wie ihr Euch vielleicht denken k�nnt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ork");
talkEntry:addResponse("Aye, diese Orks, haben sich mit zwei Marktst�nden hier eingenistet. Was solls, sag ich, man muss das nehmen so wie's kommt.");
talkEntry:addResponse("Pfft. �ber die Orks mache ich mir kaum Gedanken. So Irmorom will, geht ihnen Morgen das Geld aus, und der Don, setzt ihr gr�nes Hinterteil auf die Stra�e.");
talkEntry:addResponse("In Galmair bestimmt das Geld. Und diese Orks gaunern anscheinend genug zusammen um dem Don die beiden Marktschuppen zu bezahlen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("zwerg");
talkEntry:addResponse("Aye, ich bin sehr stolz ein Zwerg zu sein! Denn wir Zwerge sind das kl�gste Volk. Und in allen K�nsten begabt.");
talkEntry:addResponse("Einem Zwerg ist sein Klan das wichtigste. M�ge mein Klan Reichtum und Wohlstand bis in alle Jahre erfahren!");
talkEntry:addResponse("Gold, ja wir Zwerge lieben es. Und der gesamte Klan versucht es in tiefen Hallen zu h�ufen. Denn Einflu� und Macht gehen mit Wohlstand einher, das ist jedem bekannt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("nase");
talkEntry:addResponse("#me reibt sich an der Nase. 'Aye, das stimmt. Ich hab sie mir einst beim Kampf mit einem Oger gebrochen. Jetzt ist sie krumm aber ich wette, einen Oger rieche ich noch etliche L�ngen gegen den Wind!'");
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
talkEntry:addResponse("Aye, ihr sprecht �ber diesen Zauberer nicht wahr? Elvaine Morgan. Ist der K�nig in Runewick, hab ich mir sagen lassen. Oder wie war das? Naja, mit so etwas muss sich ein Fischh�ndler nicht abm�hen.");
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
talkEntry:addResponse("Runewick, darf man nicht vertrauen. Wer kann schon sagen welches Unheil man dort in den T�rmen zusammen braut. Und irgendwann f�llt uns der Himmel auf den Kopf. Mir soll's recht sein, die Spitzohren sind dann die Ersten die's erwischt.");
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
talkEntry:addResponse("Aye, sagt's nicht weiter, aber mein Bruder Morri und ich, wir bezahlen nur Halb so viel f�r unseren Stand wie die anderen H�ndler. Da haben wir dem Don ein Schnippchen geschlagen, nicht wahr?");
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
talkEntry:addResponse("Wer in Galmair ein Problem hat, dem seis geraten sich an den Don zu wenden. Valerio Guilianni! Wenn man allerdings ein Problem mit dem Don selbst hat... *r�uspert sich* nun seht zu, dass ihr dem Don nicht in die Quere kommt.");
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
talkEntry:addResponse("Sieh an, sieh an. Hat sich das Prinzeschen doch noch zur K�nigin gemau�ert? Ich sch�tze mal, nun wird Cadomyrs Schatzkammer endg�ltig geleert.");
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
talkEntry:addResponse("Cadomyr und seine Ehre. *lacht* Deren Schatzkammer ist seit Jahren leer! Wer kann die schon Ernst nehmen? In meinem kleinen Zeh, steckt mehr Handelsgeschick als ganz Cadomyr zusammen auf zu bringen vermag.");
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
talkEntry:addResponse("Ach, �ber die L�nder der Menschen wei� ich nur wenig. Mein Bruder und ich entstammen dem weit entfernten Ironsiege. Kennt ihr meine Heimat?");
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
talkEntry:addResponse("Ach, �ber die L�nder der Menschen wei� ich nur wenig. Mein Bruder und ich entstammen dem weit entfernten Ironsiege. Kennt ihr meine Heimat?");
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
talkEntry:addResponse("Ach, �ber die L�nder der Menschen wei� ich nur wenig. Mein Bruder und ich entstammen dem weit entfernten Ironsiege. Kennt ihr meine Heimat?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ironsiege");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Last Euch sagen, Ironsiege ist eine uneinnehmbare Festung. Allein die Tore im Berg als 'imposant' zu bezeichnen reicht nicht aus. So gigantisch, erscheinen sie.");
talkEntry:addResponse("Nun, in Ironsiege findet ihr haupts�chlich drei Klans. Den Goldaxtklan, den Eisenherzklan und zu guter letzt meinen Klan. Die Flinth�mmer! Arr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ironsiege");
talkEntry:addResponse("ENGLISH");
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
talkEntry:addResponse("Last Euch sagen, Irmorom schuf einst die Zwerge aus einem St�ck Felsen. Jenen hatte er von Ushara zum Geschenk bekommen. Und viel mehr m�chte ich von den G�ttern nicht wissen m�ssen. Au�er...nun ja Adron sei's gedankt f�r K�se und Bier!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Trinkt! Trinken wir auf Adron. Gepriesen sein Bier und K�se.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Heil Irmorom. Sch�tze meinen Bruder und unseren Klan. Gedankt sei dir, denn du bist der Zwergen Sch�pfer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Ehre dir, Mutter der Felsen, Steine und Erde.");
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
talkEntry:addResponse("Ich kann Euch nicht einstellen, aber sodar ihr wollt, kauf ich Euch allen Fisch ab den ihr mir bringt. Solange er frisch ist nat�rlich. Ich werd sorgf�ltig riechen, seid Euch gewiss.");
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
talkEntry:addResponse("Ich kann Euch nicht antellen, aber sodar ihr wollt, kauf ich Euch allen Fisch ab den ihr mir bringt. Solange er frisch ist nat�rlich. Ich werd sorgfeltig riechen, seid Euch gewiss.");
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
talkEntry:addResponse("Aye. Ist gut!");
talkEntry:addResponse("D'kraga... in Ordnung.");
talkEntry:addResponse("Fein-fein-fein, so soll alles sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkEntry:addResponse("ENGLISH4");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Solltet Ihr es Euch anders �berlegen... ich bin hier.");
talkEntry:addResponse("Damit muss ich mich wohl abfinden.");
talkEntry:addResponse("Schade, schade.");
talkEntry:addResponse("Ah! Das dachte ich mir bereits.");
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
talkEntry:addResponse("Aye. Alles klar.");
talkEntry:addResponse("Hm-h? Ihr wollt den gro�en Fisch da?");
talkEntry:addResponse("Wenn ihr das sagt, will ich zustimmen. *lacht*");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me fuchtelt mit einer hand �ber den Tresen, dutzende Fliegen schwirren summend auf. Jedoch nach wenigen Augenblicken hocken sie sich wieder auf die Fische.", "ENGLISH.");
talkingNPC:addCycleText("#me dreht sich um und klatscht Morri eine Forelle an die Schulter. 'H�r auf den Leuten zu sagen, mein Fisch ist gammelig!'", "ENGLISH.");
talkingNPC:addCycleText("Fisch! Frischer Fisch! Kommt ihr Leute und kauft frischen Fisch!", "ENGLISH.");
talkingNPC:addCycleText("Frischester, schmackhafter Fisch! Ich hab die gr��ten und feinsten Fische in ganz Galmair!", "ENGLISH.");
talkingNPC:addCycleText("#me wirft einen Blick �ber die Schulter, im n�chsten Moment wirft einen zerfledderten Fisch in Morris Richtung. 'Der geht auf's Haus, Morri!", "ENGLISH.");
talkingNPC:addCycleText("#me steckt einen Finger in den Bart und beginnt die Haare einzudrehen.", "ENGLISH.");
talkingNPC:addCycleText("#me beugt sich mit misstrauischem Gesichtsausdruck �ber einen Fisch und schn�ffelt daran.", "ENGLISH.");
talkingNPC:addCycleText("#me wischt seine H�nde an der Hose ab.", "ENGLISH.");
talkingNPC:addCycleText("Der Fisch ist frisch! Aufgepasst, dass er nicht davon h�pft.", "ENGLISH.");
talkingNPC:addCycleText("#me nickt dem anderen Zwerg zu. 'Aye, Morri!'", "ENGLISH.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(2);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein rothaariger Zwerg mit buschigen Bart und schiefer Nase.", "ENGLISH");
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