--------------------------------------------------------------------------------
-- NPC Name: Torina Scibrim                                          Runewick --
-- NPC Job:  Notary                                                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  899, 776, 1            --
-- NPC Sex:  female                     NPC Direction: south                  --
--                                                                            --
-- Author:   Ardian                                                           --
--                                                Illarion easyNPC Editor 1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 899, 776, 1, 4, 'Torina Scibrim', 'npc.torina_scibrim', 1, 1, 0, 255, 250, 205, 245, 222, 179);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.condition.money")
require("npc.base.condition.quest")
require("npc.base.condition.rank")
require("npc.base.condition.sex")
require("npc.base.condition.town")
require("npc.base.consequence.inform")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.town")
require("npc.base.talk")
module("npc.torina_scibrim", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Torina Scibrim the notary. Keywords: 'become citizen', 'leave', 'give up citizenship', 'rank', 'licence'."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Torina Scibrim die Notarin. Schl�sselw�rter: 'B�rger werden', 'verlassen', 'beende B�rgerstatus','Rang', 'Lizenz'."));
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
talkEntry:addResponse("Be greeted.");
talkEntry:addResponse("Greetings.");
talkEntry:addResponse("Good day.");
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
talkEntry:addResponse("Zum Gru�e.");
talkEntry:addResponse("Seid gegr��t.");
talkEntry:addResponse("Guten Tag.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Be greeted.");
talkEntry:addResponse("Greetings.");
talkEntry:addResponse("Good day.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Zum Gru�e.");
talkEntry:addResponse("Seid gegr��t.");
talkEntry:addResponse("Guten Tag.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Zhambra with you.");
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("Goodbye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Zhambra mit Euch.");
talkEntry:addResponse("Auf bald.");
talkEntry:addResponse("Bis bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Zhambra with you.");
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("Goodbye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Zhambra mit Euch.");
talkEntry:addResponse("Auf bald.");
talkEntry:addResponse("Bis bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I'm fine, thank you for your concern.");
talkEntry:addResponse("I can't complain, even if some more action wouldn't be that bad.");
talkEntry:addResponse("Very good, and you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Mir geht es gut, danke der Nachfrage.");
talkEntry:addResponse("Ich kann nicht klagen, auch wenn ein bisschen mehr Abenteuer mal wieder nicht schlecht w�re.");
talkEntry:addResponse("Ganz gut, und Euch?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("My name is Torina Scibrim, I take care of the new arrivals of this place.");
talkEntry:addResponse("I'm Torina Scibrim, I am the notary of Runewick.");
talkEntry:addResponse("You can call me Torina Scibrim, as notary of this town I could put you on the citizen list of this beautiful place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Mein Name ist Torina Scibrim, ich k�mmere mich um die Neuank�mmlinge dieses Ortes.");
talkEntry:addResponse("Mein Name ist Torina Scibrim, ich bin die Notarin Runewicks.");
talkEntry:addResponse("Man nennt mich Torina Scibrim, als Notarin kann Ich Euch zum B�rger unseres sch�nen Ortes eintragen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("become citizen");
talkEntry:addTrigger("gain citizenship");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "2"));
talkEntry:addResponse("Let me prepare the documents...");
talkEntry:addResponse("Welcome to Runewick!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("B�rger werden");
talkEntry:addTrigger("B�rgerschaft beantragen");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "2"));
talkEntry:addResponse("Lasst mich die Urkunde vorbereiten...");
talkEntry:addResponse("Willkommen in Runewick!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("become citizen");
talkEntry:addTrigger("gain citizenship");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "2"));
talkEntry:addResponse("Let me prepare the documents...");
talkEntry:addResponse("Welcome to Runewick!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("B�rger werden");
talkEntry:addTrigger("B�rgerschaft beantragen");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "2"));
talkEntry:addResponse("Lasst mich die Urkunde vorbereiten...");
talkEntry:addResponse("Willkommen in Runewick!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(0));
talkEntry:addTrigger("become citizen");
talkEntry:addTrigger("gain citizenship");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "2"));
talkEntry:addResponse("Let me prepare the documents...");
talkEntry:addResponse("Welcome to Runewick!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(0));
talkEntry:addTrigger("B�rger werden");
talkEntry:addTrigger("B�rgerschaft beantragen");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "2"));
talkEntry:addResponse("Lasst mich die Urkunde vorbereiten...");
talkEntry:addResponse("Willkommen in Runewick!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("become citizen");
talkEntry:addTrigger("gain citizenship");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "2"));
talkEntry:addResponse("Let me prepare the documents...");
talkEntry:addResponse("Welcome to Runewick!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("B�rger werden");
talkEntry:addTrigger("B�rgerschaft beantragen");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "2"));
talkEntry:addResponse("Lasst mich die Urkunde vorbereiten...");
talkEntry:addResponse("Willkommen in Runewick!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("become citizen");
talkEntry:addTrigger("gain citizenship");
talkEntry:addResponse("Ehm...you are already a citizen of Runewick. Didn't you know?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("B�rger werden");
talkEntry:addTrigger("B�rgerschaft beantragen");
talkEntry:addResponse("Ehm... Ihr seid schon B�rger in Runewick. Wusstet Ihr das nicht?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("give up citizenship");
talkEntry:addTrigger("terminating citizen ship");
talkEntry:addTrigger("leave");
talkEntry:addTrigger("leaving");
talkEntry:addConsequence(npc.base.consequence.quest.quest(207, "=", 1));
talkEntry:addResponse("So, you realy want to leave Runewick and live elsewhere? Are you sure?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("beende B�rgerstatus");
talkEntry:addTrigger("verlassen");
talkEntry:addTrigger("verlasse");
talkEntry:addTrigger("annuliere");
talkEntry:addConsequence(npc.base.consequence.quest.quest(207, "=", 1));
talkEntry:addResponse("So, ihr m�chtet Runwick wirklich verlassen und woanders leben? Seid Ihr sicher?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(207, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("yes");
talkEntry:addConsequence(npc.base.consequence.quest.quest(207, "=", 0));
talkEntry:addConsequence(npc.base.consequence.town.town("=", "0"));
talkEntry:addResponse("You are no longer a citizen of Runewick. Fare well.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(207, "=", 1));
talkEntry:addTrigger("ja");
talkEntry:addConsequence(npc.base.consequence.quest.quest(207, "=", 0));
talkEntry:addConsequence(npc.base.consequence.town.town("=", "0"));
talkEntry:addResponse("Nun seid Ihr nicht l�nger B�rger Runewicks. Auf bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(207, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.quest.quest(207, "=", 0));
talkEntry:addResponse("Ah, good. You stay here, a wise decision.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(207, "=", 1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.quest.quest(207, "=", 0));
talkEntry:addResponse("Ah, gut. Ihr bleibt hier, eine weise Entscheidung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("welche Stadt");
talkEntry:addTrigger("Fraktion");
talkEntry:addTrigger("reich");
talkEntry:addResponse("Du geh�rst nach %TOWN!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("which town");
talkEntry:addTrigger("faction");
talkEntry:addTrigger("realm");
talkEntry:addResponse("You belong to %TOWN!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Ah! Rector %CHARNAME, be welcome, Sir. Is is truly a honour to see you!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Ah! Rector %CHARNAME, be welcome, Madam. Is is truly a honour to see you!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 9));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Ah! Rekor %CHARNAME! seid willkommen. Wahrhaftig es ist eine Ehre Euch zu sehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 9));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Ah! Rektorin %CHARNAME! seid willkommen. Wahrhaftig es ist eine Ehre Euch zu sehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Dean, be welcome. Is is a honour to see you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Dean, be welcome. Is is a honour to see you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 8));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Dekan, seid willkommen. Welch eine Ehre Euch zu sehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 8));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Dekanin, seid wilokmmen.Welch eine Ehre Euch zu sehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Oh! Professor %CHARNAME! How can I help you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Oh! Professor %CHARNAME! How can I help you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 7));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Oh! Professor %CHARNAME! Was kann ich f�r Euch tun?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 7));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Oh! Professorin %CHARNAME! Was kann ich f�r Euch tun?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Good to see you, docent %CHARNAME! How are you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse(" Good to see you, docent %CHARNAME! How are you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Sch�n Euch zu sehen, Dozent %CHARNAME! Wie geht es Euch?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse(" Sch�n euch zu sehen, Dozentin %CHARNAME! Wie geht es Euch?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, doctor %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, doctor %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 5));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Seid gegr��, Doktor %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 5));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Seid gegr��t, Doktorin %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, master!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, master!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 4));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Seid gegr��t, Magister !");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 4));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Seid gegr��t, Magister!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Scholar, how are you today?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse(" Scholar, how are you today?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 3));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Gelehrter, wie geht es Euch?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 3));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Gelehrte, wie geht es Euch?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Student, what are you here for? Do you need help?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Student, what are you here for? Do you need help?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 2));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Student, was f�hrt dich zu mir? Brauchst du Hilfe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 2));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Studentin, was dich Euch zu mir? Brauchst du Hilfe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("You are an assistat. Please set a good example for the novices.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("You are an assistant. Please set a good example for the novices.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 1));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Du bist ein Anw�rter. Bitte sei ein gutes Beispiel f�r die Novizen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 1));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Du bist eine Anw�rterin. Bitte sei ein gutes Beispiel f�r die Novizen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("You are new here. You are not well known. Feel free to stay in Runewick and gain more knowledge, novice!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("You are new here. You are not well known.  Feel free to stay in Runewick and gain more knowledge, novice!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Du bist noch ganz neu hier. Dich kennt kaum jemand. Sei so frei und bleibe in Runewick um mehr zu lernen, Novize!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Du bist noch ganz neu hier. Dich kennt kaum jemand. Sei so frei und bleibe in Runewick um mehr zu lernen, Novizin!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rank");
talkEntry:addResponse("I do not know about other ranks of other towns.");
talkEntry:addResponse("I am not interested in other systems, only the Runewickian one.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rang");
talkEntry:addResponse("Ich wei� nichts �ber R�nge in anderen St�dten.");
talkEntry:addResponse("Ich interessiere mich nur f�r das runewickische Statussystem.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("licence");
talkEntry:addTrigger("license");
talkEntry:addResponse("There is no need for you to buy a licence, since you are a citizen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("lizenz");
talkEntry:addResponse("Ihr ben�tigt keine Lizenz, da ihr B�rger dieser Stadt seid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("lizenz");
talkEntry:addResponse("Ihr ben�tigt keine Lizenz, da ihr B�rgerin dieser Stadt seid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank("<", 100));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("licence");
talkEntry:addTrigger("license");
talkEntry:addResponse("You look as though you are quite new here, thus, you can currently use our tools for free.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank("<", 100));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("lizenz");
talkEntry:addResponse("Ihr wirkt als w�rdet ihr neu hier sein. Daher k�nnt ihr unsere Ger�te zurzeit frei benutzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("licence");
talkEntry:addTrigger("license");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence] You can choose between 'Alpha', 'Beta' and 'Gamma' licences. Alpha costs one gold coin and allow you to use the tools for one real time hour. Beta costs two gold coins for three real time hours. Gamma costs three gold coins for eight real time hours. Say the name of the type of licence you want in order to buy it. You can buy several at the same time. They will be added to each other."));
talkEntry:addResponse("I sell three kinds of licences. 'Alpha', 'Beta' and 'Gamma'. Alpha allows you to use our static tools for thee hours and costs only one gold coin. Beta allows you to use our static tools for nine hours and costs only two gold coins. Gamma allows you to use our static tools for one day and costs only three gold coins. Which one do you want?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("lizenz");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Lizenz] Du kannst zwischen 'Alpha', 'Beta' und 'Gamma' w�hlen. Alpha kostet eine Goldm�nze und erlaubt dir die Nutzung der Ger�te f�r eine Echtzeit-Stunde. Beta kostet zwei Goldm�nzen f�r drei Echtzeit-Stunden. Gamma kostet drei Goldm�nzen f�r acht Echtzeit-Stunden. Sage den Namen des Typen, um zu bestellen. Du kannst mehrere gleichzeitig kaufen. Diese werden dann summiert."));
talkEntry:addResponse("Ich verkaufe drei Arten von Lizenzen. 'Alpha', 'Beta' und 'Gamma'. Mit Alpha ist es m�glich, unsere Ger�te f�r drei Stunden zu einem Preis von nur einer Goldm�nze zu nutzen. Mit Beta ist es m�glich, unsere Ger�te f�r neun Stunden zu einem Preis von nur zwei Goldm�nzen zu nutzen. Und mit Gamma ist es m�glich, unsere Ger�te f�r einen Tag zu einem Preis von nur drei Goldm�nzen zu nutzen. Welche m�chtet ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("alpha");
talkEntry:addTrigger("beta");
talkEntry:addTrigger("gamma");
talkEntry:addResponse("There is no need for you to buy a licence, since you are a citizen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("alpha");
talkEntry:addTrigger("beta");
talkEntry:addTrigger("gamma");
talkEntry:addResponse("Ihr ben�tigt keine Lizenz, da ihr B�rger dieser Stadt seid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("alpha");
talkEntry:addTrigger("beta");
talkEntry:addTrigger("gamma");
talkEntry:addResponse("Ihr ben�tigt keine Lizenz, da ihr B�rgerin dieser Stadt seid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.money.money("<", 10000));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("alpha");
talkEntry:addResponse("You need more money in order to buy licence 'Alpha', one gold as a matter of fact.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.money.money("<", 10000));
talkEntry:addTrigger("alpha");
talkEntry:addResponse("Ihr ben�tigt mehr Geld, um Lizenz 'Alpha' zu kaufen. Eine Goldm�nze, um genau zu sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(812, ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("alpha");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Alpha' for one gold coin. You can use the static tools of this town for an additional one real time hour. The time has been added to your time left."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 10000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 12));
talkEntry:addResponse("You are free to use our tools for an additional three hours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(812, ">", 0));
talkEntry:addTrigger("alpha");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Alpha' f�r eine Goldm�nze erworben. Du kannst die Ger�te dieser Stadt f�r eine weitere Echtzeit-Stunde frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 10000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 12));
talkEntry:addResponse("Euch ist es nun gestattet, unsere Ger�te f�r weitere drei Stunden zu verwenden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("alpha");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Alpha' for a gold coin. You can use the static tools of this town for the next real time hour."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 10000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 12));
talkEntry:addResponse("Wonderful, you are free to use our tools for the next three hours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("alpha");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Alpha' f�r eine Goldm�nze erworben. Du kannst die Ger�te dieser Stadt f�r die n�chste Echtzeit-Stunde frei benutzen."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 10000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 12));
talkEntry:addResponse("Wunderbar, euch ist es nun gestattet, unsere Ger�te f�r die n�chsten drei Stunden zu verwenden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.money.money("<", 20000));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("beta");
talkEntry:addResponse("You need more money in order to buy licence 'Beta', two gold coins as a matter of fact.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.money.money("<", 20000));
talkEntry:addTrigger("beta");
talkEntry:addResponse("Ihr ben�tigt mehr Geld, um Lizenz 'Beta' zu kaufen. Zwei Goldm�nzen, um genau zu sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(812, ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("beta");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Beta' for two gold coins. You can use the static tools of this town for an additional three real time hours. The time has been added to your time left."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 20000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 36));
talkEntry:addResponse("You are free to use our tools for an additional nine hours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(812, ">", 0));
talkEntry:addTrigger("beta");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Beta' f�r zwei Goldm�nzen erworben. Du kannst die Ger�te dieser Stadt f�r weitere drei Echtzeit-Stunden frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 20000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 36));
talkEntry:addResponse("Euch ist es nun gestattet, unsere Ger�te f�r weitere neun Stunden zu verwenden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("beta");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Beta' for two gold coins. You can use the static tools of this town for the next three real time hours."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 20000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 36));
talkEntry:addResponse("Wonderful, you are free to use our tools for the next nine hours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beta");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Beta' f�r zwei Goldm�nzen erworben. Du kannst die Ger�te dieser Stadt f�r die n�chsten drei Echtzeit-Stunden frei benutzen."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 20000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 36));
talkEntry:addResponse("Wunderbar, euch ist es nun gestattet, unsere Ger�te f�r die n�chsten neun Stunden zu verwenden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.money.money("<", 30000));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gamma");
talkEntry:addResponse("You need more money in order to buy licence 'Gamma', three gold coins as a matter of fact.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.money.money("<", 30000));
talkEntry:addTrigger("gamma");
talkEntry:addResponse("Ihr ben�tigt mehr Geld, um Lizenz 'Gamma' zu kaufen. Drei Goldm�nzen, um genau zu sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(812, ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gamma");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Gamma' for three gold coins. You can use the static tools of this town for an additional eight real time hours. The time has been added to your time left."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 30000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 96));
talkEntry:addResponse("You are free to use our tools for an additional day.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(812, ">", 0));
talkEntry:addTrigger("gamma");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Gamma' f�r drei Goldm�nzen erworben. Du kannst die Ger�te dieser Stadt f�r weitere acht Echtzeit-Stunden frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 30000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 96));
talkEntry:addResponse("Euch ist es nun gestattet, unsere Ger�te f�r einen weiteren Tag zu verwenden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gamma");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Gamma' for three gold coins. You can use the static tools of this town for the next eight real time hours."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 30000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 96));
talkEntry:addResponse("Wonderful, you are free to use our tools for a day.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gamma");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Gamma' f�r drei Goldm�nzen erworben. Du kannst die Ger�te dieser Stadt f�r die n�chsten acht Echtzeit-Stunden frei benutzen."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 30000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(812, "+", 96));
talkEntry:addResponse("Wunderbar, euch ist es nun gestattet, unsere Ger�te f�r einen Tag zu verwenden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("At the moment I have everything, but thanks for asking.");
talkEntry:addResponse("Maybe another time, I already have everything I need.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Derzeit habe ich alles, aber danke f�r Eure Sorge.");
talkEntry:addResponse("Vielleicht ein anderes mal, derzeit habe ich alles was ich brauche.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I have no tasks for you right now, maybe another time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich habe derzeit keine Aufgaben f�r Euch, vielleicht aber wann anders.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am the notary of Runewick and do all the stuff a notary does.");
talkEntry:addResponse("I take care of the new arrivals in Runewick, I am the notary here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin die Notarin Runewick und tu all das was ein Notar so tut.");
talkEntry:addResponse("Ich k�mmere mich um die Neuank�mmlinge in Runewick, ich bin hier die Notarin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I am the notary of Runewick and do all the stuff a notary does.");
talkEntry:addResponse("I take care of the new arrivals in Cadomyr, I am the notary here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin die Notarin Runewick und tu all das was ein Notar so tut.");
talkEntry:addResponse("Ich k�mmere mich um die Neuank�mmlinge in Runewick, ich bin hier die Notarin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Never heard of that. Is it something to eat?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Nie davon geh�rt. Ist es etwas zu Essen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("I'm pleasured to meet you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Ich freue mich Euch kennenzulernen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("He's the best mage in Runewick.");
talkEntry:addResponse("I heard he likes drinking tea.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Er ist der beste Magier in Runewick.");
talkEntry:addResponse("Ich h�rte, dass er gerne Tee trinkt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("He's the best mage in Runewick.");
talkEntry:addResponse("I heard he likes drinking tea.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Er ist der beste Magier in Runewick.");
talkEntry:addResponse("Ich h�rte, dass er gerne Tee trinkt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("We people of Runewick think wisdom is more important than honour.");
talkEntry:addResponse("That's where the Achmage lives, of couse!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Wir Leute von Runewick halten Wissen f�r wertvoller als Ehre.");
talkEntry:addResponse("Selbstverst�ndlich ist dies der Ort wo der Erzmagier lebt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Go to Galmair, if you want to see him!");
talkEntry:addResponse("He's the greedy don of Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Geht nach Galmair, wenn Ihr den sehen wollt!");
talkEntry:addResponse("Das ist der gierige Don von Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("In Galmair only wealth and money is important.");
talkEntry:addResponse("There is also a notary in Galmair, just like in every city.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("In Galmair z�hlt nur Reichtum und Geld.");
talkEntry:addResponse("Es gibt auch in Galmair einen Notar, so wie in jeder Stadt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("You want to see a real queen? Go to Cadomyr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Ihr wollt eine echte K�nigin sehen? Geht nach Cadomyr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Does she live in Runewick? I think I've heard that name before.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Lebt die in Runewick? I denke, ich habe den Namen schon mal geh�rt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr is quite a hot place. Especially if you like knights.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr ist schon sehenswert, besonders wenn Ihr Ritter m�gt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Albar is a nice country. But order is important there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Albar ist ein sch�nes Land. Aber dort herrscht Ordnung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Gync isn't the best place to grow up. It's a dirty place, just like Galmair.");
talkEntry:addResponse("I've never been to Gync, I don't think I'd like it there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Gynk ist nicht der beste Ort wo man aufzuwachsen kann. Es ist ein dreckiger Ort, genau wie Galmair.");
talkEntry:addResponse("Ich war noch nie in Gynk, I denke dort w�rde es mir nicht gefallen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Salkamar is a nice place. It's sunny there.");
talkEntry:addResponse("I've never been to Salkmar, I think this place lies near the sea.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Salkamar ist ein sch�ner Ort. Dort ist es recht sonnig.");
talkEntry:addResponse("Ich war noch nie in Salkamar, ich glaube dieser Ort liegt am Meer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("The month were named after the 16 Gods, we should name one month after the archmage!");
talkEntry:addResponse("I pray to Zhambra. To which god do you pray?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Nach den 16 G�ttern wurden die Monate des Jahres benannt. Wir sollten einem Monat nach dem Erzmagier benennen!");
talkEntry:addResponse("Ich bete zu Zhambar. Zu welchem Gott betet Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Adron");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elara");
talkEntry:addResponse("I don't worship this god.");
talkEntry:addResponse("Some people pray to her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkEntry:addResponse("Einige Leute beten zu ihm.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("I don't worship this god.");
talkEntry:addResponse("Some people pray to him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkEntry:addResponse("Einige Leute beten zu ihm.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Findari");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Many noble knights pray to Malach�n.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Viele edle Ritter beten zu Malach�n.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("I don't worship this god. He's evil!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Ich verehre diesen Gott nicht. Er ist b�se!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("I don't worship this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Ich verehre diesen Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Pray to Zhambar, so he'll protect your friends during battle.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Betet zu Zhambra damit er eure Freunde im Kampf sch�tzt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I'm a notary.");
talkEntry:addResponse("I do not sell anything.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich bin eine Notarin.");
talkEntry:addResponse("Ich verkaufe nichts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("I'm busy working, sorry. You should talk to someone else if you're in search of a nice conversation.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Es tut mir leid, ich bin gerade besch�ftigt. Ihr sollte mit jemand anderem reden, wenn Euch der Sinn nach einer netten Plauderei steht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Torina");
talkEntry:addTrigger("Scibrim");
talkEntry:addResponse("Did I hear someone call my name? How can I help you?");
talkEntry:addResponse("Yes? That's me!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Torina");
talkEntry:addTrigger("Scibrim");
talkEntry:addResponse("Habe ich jemanden nach mir rufen h�ren? Was kann ich f�r Euch tun?");
talkEntry:addResponse("Ja? Das bin ich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("I see, we agree on that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("I sehe, wir sind uns einig.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("So you don't think that way?");
talkEntry:addResponse("Well...I wouldn't say it that way.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Ihr seht dies also anders?");
talkEntry:addResponse("Nun ja... so w�rde ich das nicht sagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me bl�ttert durch einen Stapel Pergamente.", "#me skims through a pile of parchments.");
talkingNPC:addCycleText("#me betrachtet die Schreibfeder in ihrer Hand.", "#me looks at the quill, she's holding in her hand.");
talkingNPC:addCycleText("#me liest einen Brief.", "#me reads a letter.");
talkingNPC:addCycleText("#me summt leise eine Melodie.", "#me hums a little melody.");
talkingNPC:addCycleText("#me bringt ein Siegel unter einem Brief an.", "#me affixes a seal under a letter.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Torina Scibrim die Notarin.", "This NPC is Torina Scibrim the notary.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 811);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 822);
mainNPC:setEquipment(10, 326);
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