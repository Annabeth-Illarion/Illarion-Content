--------------------------------------------------------------------------------
-- NPC Name: Robertus                                                    None --
-- NPC Job:  none                                                             --
--                                                                            --
-- NPC Race: human                      NPC Position:  119, 601, 0            --
-- NPC Sex:  male                       NPC Direction: north                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                                            --
-- Last parsing: November 24, 2010                       easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 119, 601, 0, 0, 'Robertus', 'npc.robertus', 0, 0, 0, 255, 255, 255, 255, 255, 255);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("npc.robertus", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is the royal builder Robertus. Keyphrases: Hello, builder."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist der k�nigliche Baumeister Robertus. Schl�sselw�rter: Hallo, Baumeister."));
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
talkEntry:addResponse("Ah, you must be the deliverer of marble. Put it just next to the stack of bricks.");
talkEntry:addResponse("Welcome, stranger. Do you have any building material for me?");
talkEntry:addResponse("Be greeted, in the name of the queen.");
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
talkEntry:addResponse("Ah, ihr m��t der Marmorlieferant sein. Lagert es neben den Ziegelsteinen.");
talkEntry:addResponse("Willkommen, Fremdling. Habt ihr Baumaterial f�r mich?");
talkEntry:addResponse("Seid im Namen der K�nigin gegr��t.");
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
talkEntry:addResponse("Ah, you must be the deliverer of marble. Put it just next to the stack of bricks.");
talkEntry:addResponse("Welcome, stranger. Do you have any building material for me?");
talkEntry:addResponse("Be greeted, in the name of the queen.");
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
talkEntry:addResponse("Auf wiedersehen.");
talkEntry:addResponse("Bis zum n�chsten mal.");
talkEntry:addResponse("Gehet in Frieden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("Good bye.");
talkEntry:addResponse("Until next time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Auf wiedersehen.");
talkEntry:addResponse("Bis zum n�chsten mal.");
talkEntry:addResponse("Gehet in Frieden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("Good bye.");
talkEntry:addResponse("Until next time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Auf wiedersehen.");
talkEntry:addResponse("Bis zum n�chsten mal.");
talkEntry:addResponse("Gehet in Frieden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("As long as the queen is content, I am happy. And I do anything to please her.");
talkEntry:addResponse("I just need to finish this calculation, then we can talk.");
talkEntry:addResponse("Every day is a day to serve queen Rosaline.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Solange die K�nigin zufrieden ist, bin ich es auch. Und ich werde alles tun, um sie zufrieden zu stellen.");
talkEntry:addResponse("Ich muss nur noch grad diese Berechnung abschlie�en, dann k�nnen wir reden.");
talkEntry:addResponse("Jeder Tag ist der richtige, um K�nigin Rosaline zu dienen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Robertus.");
talkEntry:addResponse("My name is Robertus, I am the royal builder. I serve the queen with every fibre of my body.");
talkEntry:addResponse("They call me Robertus. I'm the royal builder of Cadomyr, loyal to the queen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Robertus.");
talkEntry:addResponse("Mein Name ist Robertus, ich bin der k�nigliche Baumeister. Ich diene der K�nigin mit jeder Faser meines K�rpers.");
talkEntry:addResponse("Man nennt mich Robertus. Ich bin der k�nigliche Baumeister Cadomyrs, stets der K�nigin ergeben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I trade building materials. I'll purchase anything that can help building her majesty's... place of peaceful rest.");
talkEntry:addResponse("Bricks, stone blocks, marble... I trade all the workers need.");
talkEntry:addResponse("I can sell you the tools you need to serve the queen. On, on!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich handele mit Baumaterialien. Ich werde alles erwerben, was ben�tigt wird um f�r ihre Majest�t... einen Ort der letzten Ruhe zu bauen.");
talkEntry:addResponse("Ziegelsteine, Steinbl�cke, Marmor... Ich handele mit allem, was die Arbeiter brauchen.");
talkEntry:addResponse("Ich kann euch die Werkzeuge verkaufen, die ihr braucht, um K�nigin Rosaline zu dienen. Los, los!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Shh, don't speak about this in public, but we're actually building the queen's grave.");
talkEntry:addResponse("I wonder where all the refugees came from. More hands for the queen!");
talkEntry:addResponse("Never venture to the mountains alone. Dragons were reported to roam there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Shh, redet nicht davon in der �ffentlichkeit, aber wir bauen das Grab der K�nigin");
talkEntry:addResponse("Ich frage mich nur, wo die Fl�chtlinge alle herkamen. Ach, mehr H�nde f�r die K�nigin!");
talkEntry:addResponse("Wagt es niemals, alleine in die Berge zu gehen. Angeblich treiben dort Drachen ihr Unwesen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("can we fix it");
talkEntry:addResponse("Yes, we can!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("k�nnen wir das schaffen");
talkEntry:addResponse("Yo, wir schaffen das!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("yes we can");
talkEntry:addResponse("So, can we fix it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("yo wir schaffen das");
talkEntry:addResponse("Also k�nnen wir das schaffen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("bob the builder");
talkEntry:addResponse("I prefer to be referred to as Robertus, please.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("bob der baumeister");
talkEntry:addResponse("Ich ziehe den Namen Robertus vor, bitte sch�n.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am Robertus, the royal builder. The queen relies on me to build her a grave that will last for ages.");
talkEntry:addResponse("Construction is my business. Behold the tavern: My work for the queen. I am not proud of it, but proud to serve queen Rosaline.");
talkEntry:addResponse("I am the builder of Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich bin Robertus, der k�nigliche Baumeister. Die K�nigin vertraute mir an, ihr ein Grab zu bauen, welches die Zeiten �bersteht.");
talkEntry:addResponse("Bauwerke sind mein Gesch�ft. Seht euch die Taverne an: Meine Tat f�r die K�nigin. Ich bin nicht stolz auf die Taverne, ich bin stolz, der K�nigin zu dienen.");
talkEntry:addResponse("Ich bin der Baumeister von Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am Robertus, the royal builder. The queen relies on me to build her a grave that will last for ages.");
talkEntry:addResponse("Construction is my business. Behold the tavern: My work for the queen. I am not proud of it, but proud to serve queen Rosaline.");
talkEntry:addResponse("I am the builder of Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("builder");
talkEntry:addResponse("I am Robertus, the royal builder. The queen relies on me to build her a grave that will last for ages.");
talkEntry:addResponse("Construction is my business. Behold the tavern: My work for the queen. I am not proud of it, but proud to serve queen Rosaline.");
talkEntry:addResponse("I am the builder of Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("baumeister");
talkEntry:addResponse("Ich bin Robertus, der k�nigliche Baumeister. Die K�nigin vertraute mir an, ihr ein Grab zu bauen, welches die Zeiten �bersteht.");
talkEntry:addResponse("Bauwerke sind mein Gesch�ft. Seht euch die Taverne an: Meine Tat f�r die K�nigin. Ich bin nicht stolz auf die Taverne, ich bin stolz, der K�nigin zu dienen.");
talkEntry:addResponse("Ich bin der Baumeister von Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("trader");
talkEntry:addTrigger("merchant");
talkEntry:addTrigger("collegue");
talkEntry:addTrigger("vendor");
talkEntry:addTrigger("market");
talkEntry:addResponse("You can buy many goods here on the market place. Garments to dress for the next festival, weapons to repell Cadomyr's enemies and finest jewels.");
talkEntry:addResponse("This market has it all and Cadomyr is proud of it.");
talkEntry:addResponse("The only thing you cannot buy on this market are slaves. But Cadomyr really needs hands.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("h�ndler");
talkEntry:addTrigger("kollege");
talkEntry:addTrigger("h�ker");
talkEntry:addTrigger("markt");
talkEntry:addResponse("Ihr k�nnt allerlei Dinge auf diesem Markt kaufen. Gew�nder f�r das n�chste Fest, Waffen um die Feinde Cadomyrs zur�ckzuschlagen oder feinste Juwelen.");
talkEntry:addResponse("Auf diesem Markt bekommt ihr alles und Cadomyr ist stolz darauf.");
talkEntry:addResponse("Das einzige, was ihr auf diesem Markt nicht bekommen werdet, das sind Sklaven. Cadomyr braucht aber dringend Arbeiter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I never heard of this place before. Cadomyr is my home and I do everything to make it prosper.");
talkEntry:addResponse("Bless you.");
talkEntry:addResponse("Pardon me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Von diesem Ort habe ich noch nie geh�rt. Cadomyr ist meine Heimat und ich werde alles tun, um es gedeihen zu lassen.");
talkEntry:addResponse("Gesundheit.");
talkEntry:addResponse("Pardon?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("queendom");
talkEntry:addTrigger("kingdom");
talkEntry:addResponse("Cadomyr is indeed a queendom. Never will the queen chose a husband, she serves her people, only.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("k�niginreich");
talkEntry:addTrigger("k�nigreich");
talkEntry:addResponse("Cadomyr ist wirklich ein K�niginreich. Nie wird die K�nigin einen Gemahl nehmen, sie dient nur ihrem Volke.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("grave");
talkEntry:addResponse("I am the one who's service for queen Rosaline will stand the test of time, for I build her grave.");
talkEntry:addResponse("The grave is taking progress, we need more marble, though.");
talkEntry:addResponse("I think I should let the workers clad the grave chamber of her majesty with gold.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("grab");
talkEntry:addResponse("Ich bin derjenige, dessen Dienst f�r K�nigin Rosaline die Zeiten �berstehen wird, denn ich baue ihr Grab.");
talkEntry:addResponse("Das Grab macht Fortschritte, wir brauchen nur mehr Marmor.");
talkEntry:addResponse("Ich denke, ich sollte die Arbeiter anweisen, die Grabkammer ihrer Majest�t mit Gold auszukleiden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("pyramide");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Eine Pyramide als Grabmal? Wer w�rde denn so etwas t�richtes tun?");
talkEntry:addResponse("Die K�nigin bevorzugt einen Kubus, denke ich. Aber der Bauplan ist noch nicht fertig.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("pyramide");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("A pyramide as grave? Who would do such a folish thing?");
talkEntry:addResponse("The queen prefers a cube, but the drawing is not done yet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hastings");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Baron Hastings? Ein Verr�ter ist er, jawohl.");
talkEntry:addResponse("Der Kopf des Barons wird bald auf einem Spie� stecken.");
talkEntry:addResponse("Ein Unmensch ist er, der Baron Hastings! Doch die K�nigin wird �ber ihn richten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hastings");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Baron Hastings? A traitor, he is, indeed!");
talkEntry:addResponse("The head of the baron will soon throne on a pike!");
talkEntry:addResponse("A bastard, he is, the baron Hastings! The queen will judge him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("cube");
talkEntry:addResponse("How creative our marvellous queen is! A cube as grave! How brilliant!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("kubus");
talkEntry:addResponse("Wie kreativ unsere wunderbare K�nigin ist! Ein Kubus als Grab! Wie brilliant!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tavern");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I build the tavern; well, I commanded the workers, sometimes, with the whip.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("taverne");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich habe die Taverne erbaut; nun, ich habe die Arbeiter befehligt, manchmal auch mit der Peitsche.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sklave");
talkEntry:addResponse("Sklaven, nun, ich bevorzugen den Begriff Arbeiter. Es ist doch eine Ehre, der K�nigin zu dienen.");
talkEntry:addResponse("Eine Peitsche ist ein wichtiges Werkzeug. Ich verstehe wohl nie, warum einige Arbeiter nicht spuren. Es ist doch eine Ehre, f�r die K�nigin zu arbeiten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("slave");
talkEntry:addResponse("Slaves, well, I prefer the term workers. It is an honor to work for the queen afterall.");
talkEntry:addResponse("A whip is an important tool. I'll never understand why some workers do not obey. It is an honor to work for the queen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Archmage Morgan, he calls himself. He's a bastard of impure blood.");
talkEntry:addResponse("He hides in his chamber, pretending to study. I assume he tends his whores there!");
talkEntry:addResponse("An arrogant person, he is. Never trust a mage, I say.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Erzmagier Morgan, so nennt er sich. Er ist ein Bastard unreinen Blutes.");
talkEntry:addResponse("Er versteckt sich in seiner Kammer und tut so, als wenn er die Schriften studieren w�rde. Ich glaube, er k�mmert sich dort mehr um seine Huren!");
talkEntry:addResponse("Eine solch arrogante Person. Traut niemals einem Magier, h�rt meine Worte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("A wicked place! Witches and conjurers dwell there.");
talkEntry:addResponse("Runewick is a place of pure lameness and boredom... until the magicians are on the prowl.");
talkEntry:addResponse("One should burn down Runewick better today than tomorrow. I think all those books burn quite well.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ein verwunschener Ort! Hexen und Beschw�rer reichen sich dort die H�nde.");
talkEntry:addResponse("Runewick ist ein �der und langweiliger Ort... Bis die Magier ihr Unwesen treiben.");
talkEntry:addResponse("Man sollte Runewick lieber heute als morgen niederbrennen. Ich bin mir sicher, dass all diese B�cher gut brennen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("One thing Don Guilianni is capable of: He knows how to control his minions.");
talkEntry:addResponse("Don Guilianni is a coward. But that is not a wonder, a son of a whore he is.");
talkEntry:addResponse("I bet five copper the Don will be stabbed by one of his own men one day.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Eines kann man Don Guilianni nicht abstreiten: Er hat seine M�nner im Griff.");
talkEntry:addResponse("Don Guilianni ist ein Feigling. Aber das ist nicht �berraschend bei einem solchen Hurensohn.");
talkEntry:addResponse("Ich wette f�nf Kupferm�nzen, dass der Don eines Tage von einem seiner eigenen M�nner erdolcht wird.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("A pool of sins! Galmair knows no law, no habits, no customs!");
talkEntry:addResponse("Galmair... never venture there alone, please. You might find a dagger in your back even before you enter the town.");
talkEntry:addResponse("Galmair cannot be fixed. A lost case.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ein S�ndenpfuhl! Galmair kennt keine Gesetze, keine Sitten, keine Gebr�uche!");
talkEntry:addResponse("Galmair... geht dort nie alleine hin. Ihr habt wohlm�glich einen Dolch in eurem R�cken, bevor ihr durch das Stadttor geht.");
talkEntry:addResponse("Galmair kann man nicht mehr helfen. Eine verlorene Stadt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("K�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("My queen. Speak her name with glee!");
talkEntry:addResponse("One bad word about her majesty and you will find your tongue nailed on the gate of the palace.");
talkEntry:addResponse("Hail queen Rosaline Edwards of Cadomyr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Meine K�nigin. Sprecht ihren Namen mit Freude aus!");
talkEntry:addResponse("Ein schlechtes Wort �ber ihre Majest�t und eure Zunge wird an das Palasttor genagelt.");
talkEntry:addResponse("Hoch lebe K�nigin Rosaline Edwards von Cadomyr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Cadomyr is my home, my everything. And all of us must work together to make it prosper under the guidance of our queen.");
talkEntry:addResponse("Cadomyr rules!");
talkEntry:addResponse("I swore an oath and I hope you will also do anything to serve Cadomyr and queen Rosaline.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Cadomyr ist meine Heimat, mein ein und alles. Wir alle m�ssen zusammen arbeiten, um es gedeihen zu lassen, vereint unter der F�hrung unserer K�nigin.");
talkEntry:addResponse("Cadomyr ist stark!");
talkEntry:addResponse("Ich habe einen Eid geschworen und ich hoffe, dass auch ihr alles tun werdet, um Cadomyr und K�nigin Rosaline zu dienen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("We remember our roots, our ancestors. Cadomyr stands alone, but this is not a reason to forget about the old customs.");
talkEntry:addResponse("Albar... ages ago, the people of Cadomyr set out from Albar.");
talkEntry:addResponse("I wish I could visit an albarian slave market. There is so much work that need to be done.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Wir halten unsere Wurzeln und Ahnen in Ehren. Cadomyr steht nun alleine dar, aber dies ist kein Grund, die alten Sitten zu vergessen.");
talkEntry:addResponse("Albar... vor langer Zeit zog das Volk von Cadomyr aus, um Albar zu verlassen.");
talkEntry:addResponse("Ich w�nschte, ich k�nnte einen albarischen Sklavenmarkt aufsuchen. So viel Arbeit ist hier zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me spits on the ground.");
talkEntry:addResponse("Gync?! A pool of sins! No habits! Just like Galmair... Coincidence?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("#me spuckt auf den Boden.");
talkEntry:addResponse("Gynk? Ein S�ndenpfuhl! Keine Sitten! Fast wie Galmair... welch Zufall!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me laughs out loud.");
talkEntry:addResponse("Salkablabla - all they do is talk. Changes need actions, they'll never understand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("#me lacht ver�chtlich auf.");
talkEntry:addResponse("Salkablabla - die k�nnen nur reden! Wann begreifen die endlich, dass Taten einer starken Hand bed�rfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Irmorom shall protect us from any accidents during the construction.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Irmorom m�ge uns vor Unf�llen w�hrend der Bauarbeiten beh�ten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I'll never let Cherga take away our queen. If she departs from this world, I will follow.");
talkEntry:addResponse("I do not fear Cherga. I will meet Cherga, side by side with the queen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Niemals werde ich Cherga unsere K�nigin rauben lassen. Sollte sie dennoch diese Welt verlassen, so werde ich folgen.");
talkEntry:addResponse("Ich f�rchte Cherga nicht. Ich werde ihr, Seite an Seite mit der K�nigin, gegen�bertreten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("message");
talkEntry:addTrigger("news");
talkEntry:addTrigger("letter");
talkEntry:addTrigger("scroll");
talkEntry:addTrigger("parchment");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest status] Delayed Mail II: You deliver the message from Hector Valerion to Robertus."));
talkEntry:addResponse("Oh, her majesty has drawn a sketch how she'd like her grave to be. What a marvellous plan! A cube in the desert!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("nachricht");
talkEntry:addTrigger("brief");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Schriftrolle");
talkEntry:addTrigger("Pergament");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Queststatus] Sp�te Post II: Du �berbringst Robertus die Nachricht von Hector Valerion."));
talkEntry:addResponse("Oh, ihre Majest�t hat eine Skizze gezeichnet, wie ihr Grab aussehen soll. Was f�r ein wundervoller Plan! Ein Kubus in der W�ste!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hector");
talkEntry:addTrigger("Valerion");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest status] Delayed Mail II: You deliver the message from Hector Valerion to Robertus."));
talkEntry:addResponse("Oh, my majesty has drawn a sketch how she'd like her grave to be. What a marvellous plan! A cube in the desert!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hector");
talkEntry:addTrigger("Valerion");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Queststatus] Sp�te Post II: Du �berbringst Robertus die Nachricht von Hector Valerion."));
talkEntry:addResponse("Oh, ihre Majest�t hat eine Skizze gezeichnet, wie ihr Grab aussehen soll. Was f�r ein wundervoller Plan! Ein Kubus in der W�ste!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("So, you want to help, building the grave of her highness? I'll always trade building material with you, but there is nothing specific you can do for me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Nun, ihr wollt also dabei helfen, das Grabmal ihrer Hoheit zu bauen? Ich werde stets Baumaterial mit euch handeln, aber konkret k�nnt ihr mir gerade nicht weiterhelfen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("So, you want to help, building the grave of her highness? I'll always trade building material with you, but there is nothing specific you can do for me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Nun, ihr wollt also dabei helfen, das Grabmal ihrer Hoheit zu bauen? Ich werde stets Baumaterial mit euch handeln, aber konkret k�nnt ihr mir gerade nicht weiterhelfen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("It's good that you said this. Hail the queen!");
talkEntry:addResponse("Really? I should tell the queen about this.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Es ist gut, dass ihr dies gesagt habt. Lang lebe die K�nigin!");
talkEntry:addResponse("Wirklich? Ich sollte dies der K�nigin mitteilen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Do you have any further information?");
talkEntry:addResponse("You make me curious. Should I report to the queen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Habt ihr weitere Informationen?");
talkEntry:addResponse("Ihr macht mich neugierig. Sollte ich dies der K�nigin berichten?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ass");
talkEntry:addTrigger("arse");
talkEntry:addResponse("Same to you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("arsch");
talkEntry:addResponse("Ihr mich auch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Hoch lebe die K�nigin!", "Hail the Queen!");
talkingNPC:addCycleText("#me beugt sich �ber eine gro�e Zeichnung und macht sorgf�ltig Korrekturen an einzelnen Linien.", "#me leans over a huge drawing and corrects individual lines carefully.");
talkingNPC:addCycleText("#me schl�gt mit seiner Faust auf eine auf dem Tisch liegende Zeichnung. 'Nein! So nicht!'", "#me slams his fist on a drawing, lying on the table. 'No! Not this way!'");
talkingNPC:addCycleText("#me murmelt vor sich hin und streicht mit einem Federkiel an seinem Kinn entlang.", "#me murmurs to himself and strokes his chin with the feather of a quill.");
talkingNPC:addCycleText("Wir k�nnten eine S�uler hier hinzuf�gen... und da auch...", "We could add a pillar here... and there...");
talkingNPC:addCycleText("Sie wird beeindruckt sein, ich hoffe nur, die K�nigin wird ihr Grab nie brauchen.", "She will be impressed, I just hope the queen will never need her grave.");
talkingNPC:addCycleText("Dient ihrer Hohheit!", "Serve her majesty!");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist der k�nigliche Baumeister Robertus.", "This NPC is the royal builder Robertus.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 363);
mainNPC:setEquipment(11, 195);
mainNPC:setEquipment(5, 207);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 2112);
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