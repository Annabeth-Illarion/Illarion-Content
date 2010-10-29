--------------------------------------------------------------------------------
-- NPC Name: Half-hung Bryan                                             None --
-- NPC Job:  Inn-keeper                                                       --
--                                                                            --
-- NPC Race: human                      NPC Position:  674, 314, 0            --
-- NPC Sex:  male                       NPC Direction: southwest              --
--                                                                            --
-- Author:   not set                                                          --
--                                                                            --
-- Last parsing: October 09, 2010                        easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 674, 314, 0, 5, 'Half-hung Bryan', 'npc.half-hung_bryan', 0, 2, 0, 185, 73, 25, 178, 163, 156);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.half-hung_bryan", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Half-hung Bryan the innkeeper of The Hemp Necktie Inn . Keyphrases: Inn, Necktie, Law, Farmer"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Half-hung Bryan der Gastwirt vom Gasthof zur Hanfschlinge. Schl�sselw�rter: Gasthof, Strick, Gesetz, Knecht"));
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
talkEntry:addResponse("ENGLISH");
talkEntry:addResponse("ENGLISH");
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
talkEntry:addResponse("Seid Willkommen in meinem Gasthof.");
talkEntry:addResponse("Gr��e, wie kann ich Euch helfen?");
talkEntry:addResponse("#me blickt dich mit steifem Nacken an. 'Gr��e'.");
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
talkEntry:addResponse("Seid Willkommen in meinem Gasthof.");
talkEntry:addResponse("Gr��e, wie kann ich Euch helfen?");
talkEntry:addResponse("#me nickt gr��end.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("ENGLISH1.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Au revoir. Und verge�t nicht, mein Gasthof steht Euch immer offen.");
talkEntry:addResponse("Macht's gut.");
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
talkEntry:addResponse("Au revoir. Und verge�t nicht, mein Gasthof steht Euch immer offen.");
talkEntry:addResponse("Macht's gut.");
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
talkEntry:addResponse("#me macht einen kehlig w�rgendes Ger�usch. 'Ich habe Nackenschmerzen...'");
talkEntry:addResponse("#me inhaliert mit einem rasselnden Laut die stickige Luft. 'Das Atmen f�llt mir Schwer...'");
talkEntry:addResponse("#me betastet nachdenklich die dunkel verf�rbte Narbe quer �ber seinem Hals: 'Hm-hm... - Und Euch? Wie f�hlt sich Euer Hals an?'");
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
talkEntry:addResponse("Ich bin Bryan. Und das ist mein Gasthof. Der Gasthof zur Hanfschlinge. Gef�llt Euch der Name?");
talkEntry:addResponse("Ich bin Half-hung Bryan. Was wollt Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("ENGLISH");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ihr k�nnt Zimmer bei mir mieten. Oder auch nur n' Bett f�r die Nacht. Darfs was sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("ENGLISH");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Mann nennt mich Half-hung Bryan. Seht Ihr die Narbe an meinem Hals? Das war der Strick.");
talkEntry:addResponse("Hm. Ich hatt nicht immer den schiefen Hals. Aber das war fr�her. Damals war viel anders.");
talkEntry:addResponse("Fr�her war ich Knecht auf einem albarischem Hof. Und dann dachte ich ich muss ausziehen in die gro�e Welt. Jetzt ist mein Hals schief und Leute wie Ihr wollen st�ndig etwas von mir.");
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
talkEntry:addResponse("Mir geh�rt dieser schmucke Gasthof, mitten in der Wildnis. Und doch! - Der Gasthof zur Hanfschlinge hat immer viele G�ste.");
talkEntry:addResponse("Einst hab ich einfach am feld geschuftet. Dann wurde ich n'Galgenvogel und danach, hatt ich Gl�ck und k�nnte mir den Gasthof kaufen.");
talkEntry:addResponse("Ich k�mmere mich um meinen Gasthof. Wollt Ihr ein Zimmer mieten?");
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
talkEntry:addResponse("Mir geh�rt dieser schmucke Gasthof, mitten in der Wildnis. Und doch! - Der Gasthof zur Hanfschlinge hat immer viele G�ste.");
talkEntry:addResponse("Einst hab ich einfach am feld geschuftet. Dann wurde ich n'Galgenvogel und danach, hatt ich Gl�ck und k�nnte mir den Gasthof kaufen.");
talkEntry:addResponse("Ich k�mmere mich um meinen Gasthof. Wollt Ihr ein Zimmer mieten?");
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
talkEntry:addResponse("Bitte was?");
talkEntry:addResponse("Gobaith? Hab ich noch nie davon geh�rt.");
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
talkEntry:addResponse("Gut. Was wollt Ihr von mir?");
talkEntry:addResponse("#me kr�chzt lachend: 'Und ich bin Bryan. Man hat mich zwei Mal geh�ngt und trotzdem steh ich vor Euch.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Borgate");
talkEntry:addTrigger("barkeeper");
talkEntry:addTrigger("innkeeper");
talkEntry:addTrigger("Northoff");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("inn");
talkEntry:addTrigger("guesthouse");
talkEntry:addTrigger("tavern");
talkEntry:addTrigger("necktie");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hang");
talkEntry:addTrigger("hung");
talkEntry:addTrigger("hemp");
talkEntry:addTrigger("neck");
talkEntry:addTrigger("gibbet");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gowan");
talkEntry:addTrigger("Sam");
talkEntry:addTrigger("brute");
talkEntry:addTrigger("Booze");
talkEntry:addTrigger("hook");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("knecht");
talkEntry:addTrigger("bauer");
talkEntry:addTrigger("farmer");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("law");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bryan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Borgate");
talkEntry:addTrigger("wirt");
talkEntry:addTrigger("Northoff");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Borgate schenkt das Bier aus. Ein anst�ndiger Kerl. Wollt ihr etwas trinken? Dann geht zu ihm.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gasthof");
talkEntry:addTrigger("Taverne");
talkEntry:addTrigger("hof");
talkEntry:addTrigger("Hanfschlinge");
talkEntry:addResponse("Mein Hof war, zuerst nicht mehr als eine Scheune. Hab sie leer gefunden und darin �bernachtet. Seit dem geh�rte sie mir.");
talkEntry:addResponse("Klar die Ersten Jahre wahren hart. Allerlei Untier l�uft hier drau�en rum, weit weg von den St�dten. Aber ich bin nur mir selbst verpflichtet.");
talkEntry:addResponse("Der Gasthof zur Hanfschlinge, ist keiner Stadt verpflichtet. Auch wenn das jemanden nicht gef�llt, hier gelten Bryans Regeln.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("h�ngen");
talkEntry:addTrigger("strick");
talkEntry:addTrigger("galgen");
talkEntry:addTrigger("Hanf");
talkEntry:addTrigger("Schlinge");
talkEntry:addResponse("Das erste Mal ist der Strick gerissen. Und beim zweiten Mal, der Ast abgebrochen.");
talkEntry:addResponse("La�t Euch den Meisterbrief des Henkers zeigen, wenn man Euch einmal hinrichten sollte. Solche Leute st�mpern dann wenigstens nicht herum.");
talkEntry:addResponse("#me macht einen gurgelnden Laut. 'Desertation und schwerer Verrat am K�nig. Albarische Soldaten kn�pfen sie auch zweimal auf.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gowan");
talkEntry:addTrigger("Sam");
talkEntry:addTrigger("brute");
talkEntry:addTrigger("Booze");
talkEntry:addTrigger("hook");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Hier im Gasthof zum Hanfstrick stellt man keine Fragen. So sagt's mein Gesetz. Und das ist das Einzige das hier, so weit au�erhalb der St�dte z�hlt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("knecht");
talkEntry:addTrigger("bauer");
talkEntry:addTrigger("farmer");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ist schon lange her. Da hab ich auf einem Hof in Albar den Acker gepfl�gt. Irgendwann kam der Landsherr und befahl mich zum Soldaten. Soldaten leben nicht lang, also bin ich desertiert. Die Strafe f�r Fahnenflucht ist der Galgen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("regel");
talkEntry:addTrigger("Gesetz");
talkEntry:addResponse("Regel eins, es werden keine Fragen gestellt. Regel zwei, werden keine Fragen gestellt. Regel drei, Half-hung Bryan vermietet Zimmer an wen und wie er will. Regel vier, Half-hung Bryan tut was Half-hung Bryan tut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bryan");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("#me kr�chzt kehlig. 'Hrm?'");
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
talkEntry:addResponse("Wer ist auf dieser Seite? wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wirds immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.");
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.");
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.");
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
talkEntry:addResponse("Wer ist auf dieser Seite? Wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wirds immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.");
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.");
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.");
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
talkEntry:addResponse("Wer ist auf dieser Seite? Wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wirds immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.");
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.");
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.");
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
talkEntry:addResponse("Wer ist auf dieser Seite? wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wirds immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.");
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.");
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.");
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
talkEntry:addResponse("Wer ist auf dieser Seite? Wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wirds immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.");
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.");
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.");
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
talkEntry:addResponse("Wer ist auf dieser Seite? Wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wirds immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.");
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.");
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.");
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
talkEntry:addResponse("Albar - Meine Heimat. Es gibt Tage an denen vermisse ich es mir den R�cken krum zu schuften, die harte Erde des Ackers zu Pfl�gen... Wenn ein Mann seine Finger tief im Dreck hat, wei� er, dass er eine gute Arbeit tut.");
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
talkEntry:addResponse("Was soll man �ber Gynk schon sagen? Die Erde dort ist voller Schlangen, die Bauern ernten Sibanac anstelle von ordentlichem Gem�se und das Wetter ist schrecklich.");
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
talkEntry:addResponse("Als mein alter Lehnsherr in den Krieg gegen Salkamar zog, befahl er auch den tapferen Bryan zum Soldaten. Aber ich versuchte zu fliehen, darauf hin lie� er mich h�ngen, zwei Mal. Je einmal f�r Fahnenflucht und f�r Verrat am K�nig.");
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
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
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
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
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
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
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
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
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
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'");
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
talkEntry:addResponse("Half-hung Bryan hat keine Arbeit f�r Euch.");
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
talkEntry:addResponse("Half-hung Bryan hat keine Arbeit f�r Euch.");
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
talkEntry:addResponse("#me zuckt zaghaft mit den Schultern. 'Geht klar.'");
talkEntry:addResponse("Von mir aus.");
talkEntry:addResponse("Geht in Ordnung.");
talkEntry:addResponse("Na meinetwegen.");
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
talkEntry:addResponse("Hr-hrm.");
talkEntry:addResponse("Was sollte mich das k�mmern?");
talkEntry:addResponse("#me r�uspert sich kehlig. 'Das ist mir Wurst wie K�se.'");
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
talkEntry:addResponse("Half-hung Bryan stellt keine Fragen.");
talkEntry:addResponse("Half-hung Bryan tut was auch immer Half-hung Brayn tut.");
talkEntry:addResponse("Half-hung Bryan vermietet Zimmer an wen und wie er will.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me dreht langsam seinen Kopf bis ein unheilvolles knackendes Ger�usch zu h�ren ist. Einmal in jede Richtung.", "ENGLISH");
talkingNPC:addCycleText("#me gibt einen kehligen Laut von sich, es klingt wie ein Keuchen.", "ENGLISH");
talkingNPC:addCycleText("#me greift sich mit nachdenklicher Miene an die dunkel verf�rbte Narbe an seinem Hals..", "ENGLISH");
talkingNPC:addCycleText("Hr-hrm", "Hr-hrm");
talkingNPC:addCycleText("#me reibt sich den Nacken.", "ENGLISH");
talkingNPC:addCycleText("#me legt seine Hand auf den Schertknauf, an seinem G�rtel und mustert mit finsterem Blick die Umgebung.", "ENGLISH");
talkingNPC:addCycleText("#me leckt sich �ber die vertockneten Lippen.", "ENGLISH");
talkingNPC:addCycleText("#me faltet die H�nde vor seiner Brust. 'Ausgezeichnet.'", "ENGLISH");
talkingNPC:addCycleText("#me kratzt sich am Hals.", "ENGLISH.");
talkingNPC:addCycleText("#me hustet laut und w�rgend.", "ENGLISH.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein kr�ftiger Mann mit schr�g verenktem Hals und Hakennase, der mit hei�erer Stimme spricht. Eine gerippte, dunkel gef�rbte Narbe zieht sich quer �ber seinen Hals.", "ENGLISH");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(3, 458);
mainNPC:setEquipment(5, 70);
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