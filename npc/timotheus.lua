--------------------------------------------------------------------------------
-- NPC Name: Timotheus                                               Runewick --
-- NPC Job:  tailor,merchant                                                  --
--                                                                            --
-- NPC Race: halfling                   NPC Position:  912, 813, 1            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                                            --
-- Last parsing: May 23, 2011                            easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (2, 912, 813, 1, 4, 'Timotheus', 'npc.timotheus', 0, 2, 5, 123, 62, 9, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.timotheus", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is the tailor Timotheus. Keyphrases: Hello, tailor."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist der Schneider Timotheus. Schl�sselw�rter: Hallo, Schneider."));
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
talkEntry:addResponse("Welcome wise one.");
talkEntry:addResponse("Why greetings to you!");
talkEntry:addResponse("Greetings elevated one.");
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
talkEntry:addResponse("Willkommen, mein weiser Freund.");
talkEntry:addResponse("Wie jetzt, seid gegr��t!");
talkEntry:addResponse("Gr��e, mein Gro�er.");
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
talkEntry:addResponse("Not so informal!");
talkEntry:addResponse("Well... Greetings.");
talkEntry:addResponse("Is that the way they talk on the street nowadays?");
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
talkEntry:addResponse("Na, nicht so schnodderig.");
talkEntry:addResponse("Nun... seid gegr��t.");
talkEntry:addResponse("Redet man heutzutage so auf der Stra�e?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("May Elara protect your knowledge!");
talkEntry:addResponse("Insightful journey to you!");
talkEntry:addResponse("Farewell now!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("M�ge Elara eure Weisheit bewahren.");
talkEntry:addResponse("Eine aufschlussreiche Reise w�nsche ich.");
talkEntry:addResponse("Gehabt euch wohl.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Charming me huh? Farewell then!");
talkEntry:addResponse("The courtesies certainly haven't left you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ihr wollt mir wohl schmeicheln. Gute Reise!");
talkEntry:addResponse("Eure Anstandsformen haben euch offensichtlich noch nicht verlassen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I'm feeling wonderful, thank you.");
talkEntry:addResponse("Great! Did you know the library has books about famous tailors? Amazing literature.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Mir geht es wunderbar, danke.");
talkEntry:addResponse("Gro�artig! Wu�tet ihr, dass es in der Bibliothek B�cher �ber ber�hmte Schneider gibt? Spannende Lekt�re, muss ich sagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Timotheus.");
talkEntry:addResponse("Why, Timotheus of course!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Timotheus.");
talkEntry:addResponse("Wie jetzt, Timotheus nat�rlich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I sell all kinds of tailored goods.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich verkaufe allerlei Schneiderwaren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Did you know only we from Runewick have such marvelous clothing? I wonder what rags the people of Galmair wear.");
talkEntry:addResponse("My robes are the finest in the land!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Wu�tet ihr, dass nur wir in Runewick hier so feine Kleidung haben? Ich frage mich, in was f�r Lumpen die Leute in Galmair rumrennen.");
talkEntry:addResponse("Meine Roben sind die besten im ganzen Land.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am a tailor. I sell tailor goods, and even make some myself!");
talkEntry:addResponse("Profession, my life, whatever you prefer, it's tailoring!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin ein Schneider. Ich verkaufe Schneiderwaren und mache auch welche f�r mich selbst.");
talkEntry:addResponse("Mein Beruf, ja, mein Leben, das ist die Schneiderei.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich bin ein Schneider. Ich verkaufe Schneiderwaren und mache auch welche f�r mich selbst.");
talkEntry:addResponse("Mein Beruf, ja, mein Leben, das ist die Schneiderei.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am a tailor. I sell tailor goods, and even make some myself!");
talkEntry:addResponse("Profession, my life, whatever you prefer, it's tailoring!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tailor");
talkEntry:addResponse("Tailoring is an underestimated craft. A robe can tell a tale, of great adventures and wisdom.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schneider");
talkEntry:addResponse("Die Schneiderei ist ein untersch�tztes Handwerk. Eine Robe kann eine ganze Geschichte von Abenteuern und Weisheit erz�hlen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("location");
talkEntry:addResponse("Why, you are in Runewick of course, where else.");
talkEntry:addResponse("The place to be in Runewick, at the tailor!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ort");
talkEntry:addResponse("Wie jetzt, ihr seid nat�rlich in Runewick.");
talkEntry:addResponse("Der Platz schlechthin, Runewick beim Schneider.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("trader");
talkEntry:addTrigger("merchant");
talkEntry:addTrigger("collegue");
talkEntry:addTrigger("vendor");
talkEntry:addTrigger("market");
talkEntry:addResponse("Well of course there is NAME. He sells the goods all the farmers have been working for on the fields.");
talkEntry:addResponse("Wise old NAME, he sells all the goods for your studies late at night.");
talkEntry:addResponse("NAME over there is the finest cook there has been in a long time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("h�ndler");
talkEntry:addTrigger("kollege");
talkEntry:addTrigger("h�ker");
talkEntry:addTrigger("markt");
talkEntry:addResponse("Nun, da gibt es Fred. Er handelt mit all dem, was Bauern auf den Feldern bestellt haben.");
talkEntry:addResponse("Der alte, weise Wilbert wird euch alles verkaufen, was ihr bei n�chtlichen Studien ben�tigt.");
talkEntry:addResponse("Carlton dort dr�ben ist der beste Koch weit und breit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Gobaith? No one goes there anymore man! It's a shadow of it's former glory.");
talkEntry:addResponse("Ah that's right! All these Gobaithian refugees...");
talkEntry:addResponse("That good old island isn't much anymore is it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Gobaith? Da wagt sich niemand mehr hin. Es ist nur noch ein Schatten l�ngst vergangenen Ruhmes.");
talkEntry:addResponse("Ja, genau! All diese Fl�chtlinge aus Gobaith...");
talkEntry:addResponse("Die gute alte Insel gibt es nicht mehr, richtig?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Timmy");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am not living a lie!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Timmy");
talkEntry:addResponse("Ich lebe keine L�ge!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("Archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is a brilliant, BRILLIANT man.");
talkEntry:addResponse("If he wasn't here... I just wouldn't know what would happen with Runewick. Runewick wouldn't flourish like it does today.");
talkEntry:addResponse("Rather restrained, isn't he?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("Archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Er ist ein brillianter, ich sage, brillianter Mann.");
talkEntry:addResponse("Wenn es ihn nicht g�be... Ich kann mir gar nicht ausmalen, was dann aus Runewick werden w�rde. Es w�rde nicht so florieren wie heute, so viel ist sicher.");
talkEntry:addResponse("Er wirkt ziemlich reserviert, nicht wahr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The finest city in the land, that's for sure.");
talkEntry:addResponse("Power through knowledge, that's the motto!");
talkEntry:addResponse("The south-eastern jewel, that's what it is.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Die beste Stadt weit und weit, so viel steht fest.");
talkEntry:addResponse("Wissen ist Macht, das ist das Motto!");
talkEntry:addResponse("Das Juwel des S�dwesten, das ist es.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Don");
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I'm not sure what to think of him. His morals are certainly on the wrong side of a pig.");
talkEntry:addResponse("Money money money, that's all I hear in my head when I hear that name.");
talkEntry:addResponse("Valerio Pighead is his name if you ask me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Don");
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich wei� nicht recht, was ich von ihm halten soll. Seine Moralvorstellungen �hneln dem Hinterteil eines Schweines.");
talkEntry:addResponse("Geld, Geld, Geld, das ist alles, was mir bei dem Namen in den Kopf kommt.");
talkEntry:addResponse("Valerio Schweinskopf ist sein Name, wenn ihr mich fragt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("About as bad as it's rules I guess.");
talkEntry:addResponse("Built upon the corpses of those with fewer financial reserves.");
talkEntry:addResponse("I heard Galmair is ruled by merchants. I say: Ruled by pigs!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Es ist genauso schlecht dort wie die dortigen Regeln.");
talkEntry:addResponse("Gebaut auf den Leichen derer, die �ber kein ausreichendes Finanzpolster verf�gen.");
talkEntry:addResponse("Ich habe geh�rt, Galmair wird von H�ndlern dominiert. Ich sage: Es wird von Schweinen beherrscht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rosaline");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("Edwards");
talkEntry:addTrigger("k�nigin");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Queen Rosaline, queen Rosaline. Honourable woman, but not the smartest in her class.");
talkEntry:addResponse("She should spend more time reading books instead of boasting.");
talkEntry:addResponse("The archmage is right to distrust her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rosaline");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("Edwards");
talkEntry:addTrigger("K�nigin");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("K�nigin Rosaline, K�nigin Rosaline. Eine ehrbare Frau, aber nicht gerade die schlauste ihrer Art.");
talkEntry:addResponse("Sie sollte mal mehr Zeit mit B�chern als mit ihren Prahlereien verbringen.");
talkEntry:addResponse("Ich denke, der Erzmagier tut gut daran, ihr nicht zu trauen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Beautiful city I guess, too bad the inhabitants are airheads.");
talkEntry:addResponse("I bet they have awfully empty libraries.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Eine sch�ne Stadt, so denke ich, aber ihre Einwohner sind hirnverbrannt.");
talkEntry:addResponse("Ich sch�tze, sie haben dort eine schrecklich leere Bibliothek.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Sir Reginald of Cadomyr owned land in Albar I believe.");
talkEntry:addResponse("Strange customs, those albarians.");
talkEntry:addResponse("Isn't that somewhere at the end of the Aramon mountains?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich glaube zu wissen, dass Sir Reginald von Cadomyr Land in Albar besessen hat.");
talkEntry:addResponse("Merkw�rdige Sitten haben sie, die Albarier.");
talkEntry:addResponse("Ist das nicht irgendwo am Ende der Aramonberge?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Lawless pigs, that's what they are.");
talkEntry:addResponse("Surrounded by pirate islands. Doesn't surprise me!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ruchlose Schweine, das sind sie.");
talkEntry:addResponse("Umgeben von Pirateninseln, mich �berrascht gar nichts mehr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Above the Middle Mountains. Beautiful city, truely it is!");
talkEntry:addResponse("Archmage Morgan came from Salkamar, did you know that?");
talkEntry:addResponse("Oh how I long for it's streets.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Oberhalb der Mittelberge - eine sch�ne Stadt, das ist es wahrhaftig.");
talkEntry:addResponse("Erzmagier Morgan stammt aus Salkamar, wu�tet ihr das?");
talkEntry:addResponse("Oh, wie ich mich nach den Gassen von Salkamar sehne.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Elara brings us all knowledge. At least, that is what I believe.");
talkEntry:addResponse("Elara's blessings elevated one.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Elara gew�hrt uns all unser Wissen - daran glaube ich fest.");
talkEntry:addResponse("Elaras Segen, mein Gro�er.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Only dwarves pray to Irmorom. Everyone else takes what he grants for granted, as it seems.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Nur Zwerge beten zu Irmorom. Anscheinend nimmt Jedermann seine Gaben als selbstverst�ndlich hin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I only sell goods, my apologies. Quests are for the courageous and the air-heads.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich bin nur ein H�ndler, entschuldigt. Abenteuer sind f�r die mutigen und t�richten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Adventures? I'm pretty happy with my robes thank you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Abenteuer? Ich bin ziemlich gl�cklich mit meinen Roben, danke.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Yes? Yes to what?");
talkEntry:addResponse("Yes? I'm happy you agree...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Ja? Wozu ja?");
talkEntry:addResponse("Ja? Freut mich, dass ihr zustimmt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("No to what?");
talkEntry:addResponse("No? You don't like my robes?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Nein zu was?");
talkEntry:addResponse("Nein? Ihr m�gt meine Roben nicht?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("GERMAN", "The finest robes, vests, shirts! Do not ever walk around like a bum again.");
talkingNPC:addCycleText("GERMAN", "#me straightens his blue satin robes. They are adorned with orange filigree on the sleeves.");
talkingNPC:addCycleText("GERMAN", "#me looks around for a moment before returning to his book.");
talkingNPC:addCycleText("GERMAN", "#me turns the page of his book.");
talkingNPC:addCycleText("GERMAN", "#me suddenly giggles: 'Oh, my apologies. The man who wrote this is simply brilliant.'");
talkingNPC:addCycleText("GERMAN", "#me begins to mumble: '...and so Mesha Gobblesworth left the council after an outburst of aggression. He wouldn't se...'. He turns silent again.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
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