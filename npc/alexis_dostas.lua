--------------------------------------------------------------------------------
-- NPC Name: Alexis Dostas                                            Cadomyr --
-- NPC Job:  mule seller                                                      --
--                                                                            --
-- NPC Race: human                      NPC Position:  141, 637, 0            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                                            --
-- Last parsing: September 20, 2011                      easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 141, 637, 0, 6, 'Alexis Dostas', 'npc.alexis_dostas', 0, 3, 4, 123, 62, 9, 205, 133, 73);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.alexis_dostas", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Alexis Dostas the mule seller. Keyphrases: Hello, mule, Cadomyr, profession, stables."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Alexis Dostas der Maultierh�ndler. Schl�sselw�rter: Hallo, Maultier, Cadomyr, Beruf, Stallungen."));
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
talkEntry:addResponse("Be greeted. You came here for a mule I suppose.");
talkEntry:addResponse("Welcome to the stables.");
talkEntry:addResponse("If you need a beast of burden, you came to the right place.");
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
talkEntry:addResponse("Seid gegr��t. Ihr seid hier eines Maultiers wegen, nehme ich an.");
talkEntry:addResponse("Willkommen in den Stallungen.");
talkEntry:addResponse("Falls ihr ein Lasttier ben�tigt seid ihr hier richtig.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Be greeted. You came here for a mule I suppose.");
talkEntry:addResponse("Welcome to the stables.");
talkEntry:addResponse("If you need a beast of burden, you came to the right place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Seid gegr��t. Ihr seid hier eines Maultiers wegen, nehme ich an.");
talkEntry:addResponse("Willkommen in den Stallungen.");
talkEntry:addResponse("Falls ihr ein Lasttier ben�tigt seid ihr hier richtig.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farewell. And come back alive.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Gehabt euch wohl und kommt gesund zur�ck.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Farewell. And come back alive.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Gehabt euch wohl und kommt gesund zur�ck.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("This is none of your business, sorry.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Entschuldigt, aber das tut jetzt nichts zur Sache.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("My name is Alexis Dostas, I am the local mule seller.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Mein Name ist Alexis Dostas, ich bin hier der Maultierh�ndler.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I do not issue quests; but you can rent a mule that will accompany you on your journeys.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich vergebe keine Aufgaben; aber ihr k�nnt euch ein Maultier leihen, welches euch dann auf euren Reisen begleitet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I do not issue quests; but you can rent a mule that will accompany you on your journeys.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich vergebe keine Aufgaben; aber ihr k�nnt euch ein Maultier leihen, welches euch dann auf euren Reisen begleitet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I feed beasts of burden. I care for them, I lend them to anyone who promises to treat them well.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich f�ttere die Lasttiere hier. Ich k�mmere mich um sie und leihe sie jedem, der verspricht, sie gut zu behandeln.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I feed beasts of burden. I care for them, I lend them to anyone who promises to treat them well.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich f�ttere die Lasttiere hier. Ich k�mmere mich um sie und leihe sie jedem, der verspricht, sie gut zu behandeln.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mule");
talkEntry:addTrigger("donkey");
talkEntry:addTrigger("burden");
talkEntry:addResponse("Mules are rather frugal animals. They just need a little oat from time to time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("feed");
talkEntry:addTrigger("food");
talkEntry:addTrigger("oat");
talkEntry:addResponse("Mules love oat! No wonder, they're related to horses.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Stable");
talkEntry:addResponse("Sometimes, I may care for proud destriers of noble knights, the other day for Bette and the other mules. I treat all of them well, all of them work hard for Cadomyr's honour.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("horse");
talkEntry:addTrigger("destrier");
talkEntry:addResponse("There are two differences between horses and mules: Longer legs and even more hunger for oat!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Maultier");
talkEntry:addTrigger("Muli");
talkEntry:addTrigger("Esel");
talkEntry:addTrigger("Lasttier");
talkEntry:addResponse("Maultiere sind recht gen�gsame Tiere. Sie brauchen nur hin und wieder etwas Hafer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Futter");
talkEntry:addTrigger("F�tter");
talkEntry:addTrigger("Hafer");
talkEntry:addResponse("Maultiere lieben Hafer! Kein Wunder, sind sie doch mit Pferden verwandt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Stall");
talkEntry:addResponse("Manchmal darf ich mich um stolze Schlachr�sser edler Ritter k�mmern, an anderen Tagen um Bette und die anderen Maultiere. Ich behandle alle gleich gut, denn alle tragen ihren Teil zu Cadomyrs Ehre bei.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("pferd");
talkEntry:addTrigger("ross");
talkEntry:addResponse("Es gibt genau zwei Unterschiede zwischen Pferden und Maultieren: L�ngere Beine und noch mehr Hunger auf Hafer!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Queen Rosaline is a good sovereign. She rules just and fair, just like her father.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("K�nigin Rosaline ist eine gute Herrscherin. Sie regiert gerecht und weise, genau wie ihr Vater.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Queen Rosaline is a good sovereign. She rules just and fair, just like her father.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("K�nigin Rosaline ist eine gute Herrscherin. Sie regiert gerecht und weise, genau wie ihr Vater.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I have to admit: When Sir Reginald... passed away, I was a little afraid about the future. But Queen Rosaline drove away all my sorrows.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Ich gebe zu: Als Sir Reginald... nicht mehr war, da war ich etwas unsicher �ber die Zukunft. Aber K�nigin Rosaline hat alle meine Sorgen von mir genommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Willkommen in den Stallungen.", "Welcome to the stables.");
talkingNPC:addCycleText("Die G�tter m�gen die K�nigin sch�tzen.", "Gods, save the queen.");
talkingNPC:addCycleText("#me hakt etwas Heu zusammen.", "#me rakes hay.");
talkingNPC:addCycleText("#me sch�ttet etwas Wasser in eine Tr�nke.", "#me pours some water into a water trough.");
talkingNPC:addCycleText("Meine kleine Schwester ist ein h�bsches M�dchen.", "My little sister is a pretty pretty girl.");
talkingNPC:addCycleText("Seid ihr weit gereist und tun euch eure F��e weh?", "Have you walked for miles, are your feet hurting?");
talkingNPC:addCycleText("#me pfeift vor sich hin.", "#me whistles a song.");
talkingNPC:addCycleText("Cadomyr, oh Cadomyr, wie lieb ich dir!", "Cadomyr, O Cadomyr, how much I love you!");
talkingNPC:addCycleText("Bette? Wo ist denn Bette?", "Bette? Where is Bette?");
talkingNPC:addCycleText("#me �ffnet einen Hafersack.", "#me opens a bag of oat.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Alexis Dostas der Maultierh�ndler.", "This NPC is Alexis Dostas the mule seller.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 365);
mainNPC:setEquipment(11, 193);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 2114);
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