--------------------------------------------------------------------------------
-- NPC Name: Reret Odohir                                             Cadomyr --
-- NPC Job:  Notary                                                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  106, 553, 0            --
-- NPC Sex:  female                     NPC Direction: south                  --
--                                                                            --
-- Author:   Miriam                                                           --
--                                                Illarion easyNPC Editor 1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 106, 553, 0, 4, 'Reret Odohir', 'npc.reret_odohir', 1, 8, 0, 255, 215, 58, 205, 133, 63);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.money")
require("npc.base.condition.quest")
require("npc.base.condition.rank")
require("npc.base.condition.sex")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.consequence.town")
require("npc.base.talk")
module("npc.reret_odohir", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Reret Odohir the Notary of Cadomyr. Keywords: 'Join Cadomyr', 'Leave Cadomyr', 'rank', 'licence'."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Reret Odohir die Notarin von Cadomyr. Schl�sselw�rter: 'Cadomyr beitreten', 'Cadomyr verlassen', 'Rang', 'Lizenz'."));
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
talkEntry:addResponse("Be greeted, nice to see you here.");
talkEntry:addResponse("Be greeted, I am the notary of this town.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��e");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Guten Morgen");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Gute Nacht");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addTrigger("Mohltied");
talkEntry:addResponse("Seid gegr��t.");
talkEntry:addResponse("Gr��e.");
talkEntry:addResponse("Gr��e, sch�n Euch mal wieder hier zu sehen.");
talkEntry:addResponse("Zum Gru�e, ich bin die Notarin dieser Stadt.");
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
talkEntry:addResponse("Greetings, nice to see you again");
talkEntry:addResponse("Be greeted, I am the notary of this town.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Seid gegr��t.");
talkEntry:addResponse("Gr��e.");
talkEntry:addResponse("Gr��e, sch�n Euch mal wieder hier zu sehen.");
talkEntry:addResponse("Zum Gru�e, ich bin die Notarin dieser Stadt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Fare well!");
talkEntry:addResponse("Bye!");
talkEntry:addResponse("#me smiles at you and waves.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Auf bald!");
talkEntry:addResponse("Bis bald!");
talkEntry:addResponse("#me l�chelt dich an und winkt zum Abschied.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Fare well!");
talkEntry:addResponse("#me smiles at you and waves.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Auf bald!");
talkEntry:addResponse("#me l�chelt dich an und winkt zum Abschied.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I am fine and how are you?");
talkEntry:addResponse("I'm fine. Thanks for asking.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Mir geht es gut und wie geht es Euch?");
talkEntry:addResponse("Eigentlich ganz gut, danke der Nachfrage.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I'm Reret Odohir, Notary and citizen of Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Reret Odohir, Notar und B�rger von Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sell");
talkEntry:addTrigger("buy");
talkEntry:addTrigger("wares");
talkEntry:addTrigger("price");
talkEntry:addTrigger("trade");
talkEntry:addTrigger("purchase");
talkEntry:addResponse("I sell nothing, but I can register you as a citizen. Just tell me, if you want to become a citizen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("kauf");
talkEntry:addTrigger("waren");
talkEntry:addTrigger("preis");
talkEntry:addTrigger("Handel");
talkEntry:addTrigger("ver�u�er");
talkEntry:addTrigger("erwerb");
talkEntry:addResponse("Ick verkauf nichts, aber ich kann Euch als B�rger eintragen. Sagt mir einfach wenn Ihr B�rger dieser Stadt werden m�chtet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("join Cadomyr");
talkEntry:addTrigger("become citizen");
talkEntry:addTrigger("gain citizenship");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "1"));
talkEntry:addResponse("Let me prepare the documents...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Cadomyr beitreten");
talkEntry:addTrigger("B�rger werden");
talkEntry:addTrigger("B�rgerschaft beantragen");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "1"));
talkEntry:addResponse("Lasst mich die Urkunde vorbereiten...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("join Cadomyr");
talkEntry:addTrigger("become citizen");
talkEntry:addTrigger("gain citizenship");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "1"));
talkEntry:addResponse("Let me prepare the documents...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Cadomyr beitreten");
talkEntry:addTrigger("B�rger werden");
talkEntry:addTrigger("B�rgerschaft beantragen");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "1"));
talkEntry:addResponse("Lasst mich die Urkunde vorbereiten...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(0));
talkEntry:addTrigger("join Cadomyr");
talkEntry:addTrigger("become citizen");
talkEntry:addTrigger("gain citizenship");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "1"));
talkEntry:addResponse("Let me prepare the documents...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(0));
talkEntry:addTrigger("Cadomyr beitreten");
talkEntry:addTrigger("B�rger werden");
talkEntry:addTrigger("B�rgerschaft beantragen");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "1"));
talkEntry:addResponse("Lasst mich die Urkunde vorbereiten...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("join Cadomyr");
talkEntry:addTrigger("become citizen");
talkEntry:addTrigger("gain citizenship");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "1"));
talkEntry:addResponse("Oh! You are already a citizen of Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Cadomyr beitreten");
talkEntry:addTrigger("B�rger werden");
talkEntry:addTrigger("B�rgerschaft beantragen");
talkEntry:addConsequence(npc.base.consequence.town.town("=", "1"));
talkEntry:addResponse("Oh! Ihr seid bereits B�rger von Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("give up citizenship");
talkEntry:addTrigger("terminate");
talkEntry:addTrigger("leave");
talkEntry:addTrigger("leaving");
talkEntry:addConsequence(npc.base.consequence.quest.quest(209, "=", 1));
talkEntry:addResponse("You want to give up citizenship in Cadomyr. Are you sure?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("beende B�rgerschaft");
talkEntry:addTrigger("verlasse");
talkEntry:addTrigger("annulier");
talkEntry:addConsequence(npc.base.consequence.quest.quest(209, "=", 1));
talkEntry:addResponse("Ihr wollt den Status als B�rger Cadomyrs augfeben? Seid Ihr sicher?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("give up citizenship");
talkEntry:addTrigger("terminate");
talkEntry:addTrigger("leave");
talkEntry:addTrigger("leaving");
talkEntry:addResponse("Ehm... you are not a citizen of Cadomyr anyway.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beende B�rgerschaft");
talkEntry:addTrigger("verlasse");
talkEntry:addTrigger("annulier");
talkEntry:addResponse("Ehm... Ihr seid kein B�rger Cadomyrs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(209, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("yes");
talkEntry:addConsequence(npc.base.consequence.quest.quest(209, "=", 0));
talkEntry:addConsequence(npc.base.consequence.town.town("=", "0"));
talkEntry:addResponse("You are no longer citizen under the protection of Her Majesty Queen Rosaline, you no longer belong to Cadomyr. Farewell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(209, "=", 1));
talkEntry:addTrigger("ja");
talkEntry:addConsequence(npc.base.consequence.quest.quest(209, "=", 0));
talkEntry:addConsequence(npc.base.consequence.town.town("=", "0"));
talkEntry:addResponse("Ihr seid nun nicht l�nger B�ger unter dem Schutz K�nigin Rosalines, Ihr geh�rt nicht mehr zu Cadomyr. Auf bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(209, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.quest.quest(209, "=", 0));
talkEntry:addResponse("I see... Yes, Cadomyr is truly a nice place. I am glad you stay with us.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(209, "=", 1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.quest.quest(209, "=", 0));
talkEntry:addResponse("Ich verstehe... Ja, Cadomyr ist f�r wahr ein guter Ort. Es freut mich, dass ihr hier bei uns bleibt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("welche Stadt");
talkEntry:addTrigger("fraktion");
talkEntry:addTrigger("Reich");
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
talkEntry:addCondition(npc.base.condition.rank.rank(">", 10));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("#me bows deeply.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 10));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("#me bows deeply.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 10));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("#me verbeut sich erf�rchtig.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 10));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("#me verbeut sich erf�rchtig.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 9));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, Duke %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 9));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, Duchess %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 9));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Herzog %CHARNAME! Hochwohlgeboren, wie ist es Euch ergangen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 9));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Herzogin %CHARNAME! Hochwohlgeboren, wie ist es Euch ergangen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 8));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, Earl!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 8));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, Earl!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 8));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Seid gegr��t, mein F�rst!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 8));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Seid gegr��t, meine F�rstin!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 7));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, Count %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 7));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, Countess %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 7));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Graf %CHARNAME, seid gegr��t!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 7));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Gr�fin %CHARNAME, seid gegr��t!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, Baron!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, Baroness!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Baron, seid gegr��t!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Baroness, seid gegr��t!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 5));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, Lord %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 5));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, Lady %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 5));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Freiherr %CHARNAME, seid gegr��t!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 5));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Freifrau %CHARNAME, seid gegr��t!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, noble knight!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, noble dame!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Edler Ritter, seid gegr��t!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Edle Hofdame, seid gegr��t!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, squire!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Greetings to you, abigail!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Seid gegr��t, Herr Knappe!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Seid gegr��t, Frau Zofe!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 2));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Good day, page %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 2));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Good day, maid %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 2));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Guten Tag, Page %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 2));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Guten Tag, Magd %CHARNAME!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Ah! So you are a recruit?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("Ah! So you are a servant?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Ah! Ihr seid ein Rekrut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Ah! Ihr seid eine Dienerin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rank");
talkEntry:addResponse("You are new here. You are not well known. Make an effort and become famous, serf!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rank");
talkEntry:addResponse("You are new here. You are not well known. Make an effort and become famous, serf!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Ihr seid noch ganz neu hier. Euch kennt kaum jemand. Strengt Euch mehr an und mach Euch einen Namen, H�riger!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank(">", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("rang");
talkEntry:addResponse("Ihr seid noch ganz neu hier. Euch kennt kaum jemand. Strengt Euch mehr an und mach Euch einen Namen, H�rige!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rank");
talkEntry:addResponse("I do not know about other ranks of other towns.");
talkEntry:addResponse("I am not interested in other systems, only the Cadomyrian one.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rang");
talkEntry:addResponse("Ich wei� nichts �ber R�nge in anderen St�dten.");
talkEntry:addResponse("Ich interessiere mich nur f�r das cadomyrische Statussystem.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("licence");
talkEntry:addTrigger("license");
talkEntry:addResponse("There is no need for you to buy a licence, since you are a citizen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("lizenz");
talkEntry:addResponse("Ihr ben�tigt keine Lizenz, da ihr B�rger dieser Stadt seid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(1));
talkEntry:addTrigger("lizenz");
talkEntry:addResponse("Ihr ben�tigt keine Lizenz, da ihr B�rgerin dieser Stadt seid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank("<", 100));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("licence");
talkEntry:addTrigger("license");
talkEntry:addResponse("You look as though you are quite new here, thus, you can currently use our tools for free.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.rank.rank("<", 100));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addCondition(npc.base.condition.town.town(2));
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
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("alpha");
talkEntry:addTrigger("beta");
talkEntry:addTrigger("gamma");
talkEntry:addResponse("There is no need for you to buy a licence, since you are a citizen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addCondition(npc.base.condition.sex.sex(0));
talkEntry:addTrigger("alpha");
talkEntry:addTrigger("beta");
talkEntry:addTrigger("gamma");
talkEntry:addResponse("Ihr ben�tigt keine Lizenz, da ihr B�rger dieser Stadt seid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(1));
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
talkEntry:addCondition(npc.base.condition.quest.quest(811, ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("alpha");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Alpha' for one gold coin. You can use the static tools of this town for an additional one real time hour. The time has been added to your time left."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 10000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 12));
talkEntry:addResponse("You are free to use our tools for an additional three hours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(811, ">", 0));
talkEntry:addTrigger("alpha");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Alpha' f�r eine Goldm�nze erworben. Du kannst die Ger�te dieser Stadt f�r eine weitere Echtzeit-Stunde frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 10000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 12));
talkEntry:addResponse("Euch ist es nun gestattet, unsere Ger�te f�r weitere drei Stunden zu verwenden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("alpha");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Alpha' for a gold coin. You can use the static tools of this town for the next real time hour."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 10000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 12));
talkEntry:addResponse("Wonderful, you are free to use our tools for the next three hours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("alpha");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Alpha' f�r eine Goldm�nze erworben. Du kannst die Ger�te dieser Stadt f�r die n�chste Echtzeit-Stunde frei benutzen."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 10000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 12));
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
talkEntry:addCondition(npc.base.condition.quest.quest(811, ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("beta");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Beta' for two gold coins. You can use the static tools of this town for an additional three real time hours. The time has been added to your time left."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 20000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 36));
talkEntry:addResponse("You are free to use our tools for an additional nine hours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(811, ">", 0));
talkEntry:addTrigger("beta");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Beta' f�r zwei Goldm�nzen erworben. Du kannst die Ger�te dieser Stadt f�r weitere drei Echtzeit-Stunden frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 20000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 36));
talkEntry:addResponse("Euch ist es nun gestattet, unsere Ger�te f�r weitere neun Stunden zu verwenden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("beta");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Beta' for two gold coins. You can use the static tools of this town for the next three real time hours."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 20000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 36));
talkEntry:addResponse("Wonderful, you are free to use our tools for the next nine hours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beta");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Beta' f�r zwei Goldm�nzen erworben. Du kannst die Ger�te dieser Stadt f�r die n�chsten drei Echtzeit-Stunden frei benutzen."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 20000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 36));
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
talkEntry:addCondition(npc.base.condition.quest.quest(811, ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gamma");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Gamma' for three gold coins. You can use the static tools of this town for an additional eight real time hours. The time has been added to your time left."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 30000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 96));
talkEntry:addResponse("You are free to use our tools for an additional day.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(811, ">", 0));
talkEntry:addTrigger("gamma");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Gamma' f�r drei Goldm�nzen erworben. Du kannst die Ger�te dieser Stadt f�r weitere acht Echtzeit-Stunden frei benutzen. Die Stunden wurden zu deiner verbliebenen Zeit aufsummiert."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 30000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 96));
talkEntry:addResponse("Euch ist es nun gestattet, unsere Ger�te f�r einen weiteren Tag zu verwenden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gamma");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Licence purchased] You bought licence 'Gamma' for three gold coins. You can use the static tools of this town for the next eight real time hours."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 30000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 96));
talkEntry:addResponse("Wonderful, you are free to use our tools for a day.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gamma");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Lizenz erworben] Du hast die Lizenz 'Gamma' f�r drei Goldm�nzen erworben. Du kannst die Ger�te dieser Stadt f�r die n�chsten acht Echtzeit-Stunden frei benutzen."));
talkEntry:addConsequence(npc.base.consequence.money.money("-", 30000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(811, "+", 96));
talkEntry:addResponse("Wunderbar, euch ist es nun gestattet, unsere Ger�te f�r einen Tag zu verwenden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("jakob");
talkEntry:addTrigger("lindorn");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 14));
talkEntry:addResponse("Ah Jakob sent you, but you have already asked me for something to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("jakob");
talkEntry:addTrigger("lindorn");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 14));
talkEntry:addResponse("Ah Jakob hat Euch geschickt aber Ihr habt mich bereits nach einer Aufgabe gefragt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 14));
talkEntry:addResponse("Ah Jakob sent you, but you have already asked me for something to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 14));
talkEntry:addResponse("Ah Jakob hat Euch geschickt aber Ihr habt mich bereits nach einer Aufgabe gefragt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("jakob");
talkEntry:addTrigger("lindorn");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Present from Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(150, "=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 14));
talkEntry:addResponse("I'd like to send my grandparents in Salkamar a present from Cadomyr. They both like gardening, so I'd like to send them five desert sky capsules. I'm still busy working though, so could I ask you to go and find some for me, please?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("jakob");
talkEntry:addTrigger("lindorn");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschenk aus Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(150, "=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 14));
talkEntry:addResponse("Ich m�chte meinen Gro�eltern in Salkamar ein Geschenk aus Cadomyr schicken. Sie m�gen beiden Gartenarbeit, daher dachte ich daran ihnen f�nf W�stenhimmelskapseln zu schicken. Ich bin mit der Arbeit sehr besch�ftigt, k�nnte ich Euch bitten einige W�stenhimmelskapseln f�r mich zu finden?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Present from Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(150, "=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 14));
talkEntry:addResponse("I'd like to send my grandparents in Salkamar a present from Cadomyr. They both like gardening, so I'd like to send them five desert sky capsules. I'm still busy working though, so could I ask you to go and find some for me, please?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschenk aus Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(150, "=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 14));
talkEntry:addResponse("Ich m�chte meinen Gro�eltern in Salkamar ein Geschenk aus Cadomyr schicken. Sie m�gen beiden Gartenarbeit, daher dachte ich daran ihnen f�nf W�stenhimmelskapseln zu schicken. Ich bin mit der Arbeit sehr besch�ftigt, k�nnte ich Euch bitten einige W�stenhimmelskapseln f�r mich zu finden?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Present from Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(150, "=", 1));
talkEntry:addResponse("I'd like to send my grandparents in Salkamar a present from Cadomyr. The both like gardening, so I'd like to send them five desert sky capsules. I'm still busy working though, so could I ask you to go and find some for me, please?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschenk aus Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(150, "=", 1));
talkEntry:addResponse("Ich m�chte meinen Gro�eltern in Salkamar ein Geschenk aus Cadomyr schicken. Sie m�gen beiden Gartenarbeit, daher dachte ich daran ihnen f�nf W�stenhimmelskapseln zu schicken. Ich bin mit der Arbeit sehr besch�ftigt, k�nnte ich Euch bitten einige W�stenhimmelskapseln f�r mich zu finden?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Present from Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(150, "=", 1));
talkEntry:addResponse("I'd like to send my grandparents in Salkamar a present from Cadomyr. The both like gardening, so I'd like to send them five desert sky capsules. I'm still busy working though, so could I ask you to go and find some for me, please?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Geschenk aus Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(150, "=", 1));
talkEntry:addResponse("Ich m�chte meinen Gro�eltern in Salkamar ein Geschenk aus Cadomyr schicken. Sie m�gen beiden Gartenarbeit, daher dachte ich daran ihnen f�nf W�stenhimmelskapseln zu schicken. Ich bin mit der Arbeit sehr besch�ftigt, k�nnte ich Euch bitten einige W�stenhimmelskapseln f�r mich zu finden?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(146, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a dagger. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(146, 5, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(27, 1, 466, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(150, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Oh, you found the desert sky capsules? Thank you, that is very kind of you. Here, please take this, it shall be your reward for your troubles.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(146, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst als Belohnung einen Dolch. Euer Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(146, 5, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(27, 1, 466, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(150, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Oh, ihr habt die W�stenhimmelskapseln gefunden? Danke, das ist sehr freundlich von Euch. Hier, bitte nehmt dies, betrachtet es als Belohung f�r eure M�hen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I'm still busy working, so could I ask you to go and find five desert sky capsule for me, please?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich bin mit der Arbeit sehr besch�ftigt, k�nntet ich Euch bitten, f�nf W�stenhimmelskapseln f�r mich zu finden?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I'm still busy working, so could I ask you to go and find five desert sky capsule for me, please?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich bin mit der Arbeit sehr besch�ftigt, k�nntet ich Euch bitten, f�nf W�stenhimmelskapseln f�r mich zu finden?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Thanks again for your help.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Danke nochmals f�r Eure Hilfe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Thanks again for your help.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(150, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Danke nochmals f�r Eure Hilfe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("No, sorry. I have nothing to do for you. Why don't you just enjoy your stay in Cadomyr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Nein, tut mir leid. Ich habe keinen Auftrag f�r Euch. Warum genie�t Ihr nicht einfach Euren Aufenthalt in Cadomyr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("No, sorry. I have nothing to do for you. Why don't you just enjoy your stay in Cadomyr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Nein, tut mir leid. Ich habe keinen Auftrag f�r Euch. Warum genie�t Ihr nicht einfach Euren Aufenthalt in Cadomyr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("You can get registered as citizen here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Hier k�nnt Ihr Euch als B�rger eintragen lassen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("You can get registered as citizen here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Hier k�nnt Ihr Euch als B�rger eintragen lassen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Sand can be used to make glass, but I like it just the way it is. This place is full of sand, it is on the streets, inside my shoes, even the air is filled with sand if the wind is blowing. If you don't like sand, don't go to the desert.");
talkEntry:addResponse("I really like sand, especially quartz sand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Sand kann man nutzen um Glas daraus zu machen, aber ich mag Sand so wie er ist. Dieser Ort ist voll von Sand, er ist auf den Stra�en, in meinen Schuhen, selbst in der Luft ist Sand, wenn der Wind weht. Wer keinen Sand mag, sollte nicht in die W�ste gehen.");
talkEntry:addResponse("Ich mag Sand sehr gerne, besonders Quartzsand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("People go to shrines to pray to their gods. Usually they take a donation for the gods with them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Die Leute gehen zu Tempeln der G�tter um zu beten. F�r gew�hnlich bringen sie eine Gabe an die Gottheit mit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("I heard the Archmage does nothing but read books and study the arcane arts. If it's true he must be almost dead from starvation.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Ich habe geh�rt, der Erzmagier tut nichts au�er B�cher zu lesen und die arkanen K�nste zu studiere. Wenn das stimmt, dann muss er fast tot vor Hunger sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("I've heard the name before.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Ich habe diesen Namen schon mal geh�rt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("I don't like it there. It's a cold and boring place.");
talkEntry:addResponse("There are many book there, but not very interesting ones.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Mir gef�llt es dort nicht. Das ist ein kalter, langweiliger Ort.");
talkEntry:addResponse("Es gibt dort viele B�cher... aber die sind nicht sonderlich interessant.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Valerio Guilianni is the ruler of Galmair. He does not live in Cadomyr of course.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Valerio Guilianni ist der Herrscher von Galmair. Und nat�rlich lebt er nicht in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair is only half as nice as Cadomyr. They don't have sand there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair ist nur halb so sch�n wie Cadomyr. Die haben da n�mlich keinen Sand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Honour to our Queen!");
talkEntry:addResponse("The Queen likes donkey milk... and I like sand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Ehre der K�nigin!");
talkEntry:addResponse("Die K�nigin mag Eselmilch... und ich mag Sand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("She is the noble and rightful ruler of Cadomyr.");
talkEntry:addResponse("Honour to our Queen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Sie ist die edle und rechtm��ige Herrscherin von Cadomyr.");
talkEntry:addResponse("Ehre der K�nigin!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("I really love the hot weather here, and you?");
talkEntry:addResponse("Each town has magical gems, but ours, the ones of Cadomyr, are the most beautiful of them all!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Ich liebe warmes Wetter hier, und Ihr?");
talkEntry:addResponse("Jede Stadt besitzt magische Edelsteine, aber unsere, die von Cadomyr, sind die sch�nsten von allen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Albar? My grandparents spoke badly about the place. I've never been there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Albar? Meine Gro�eltern haben schlecht �ber diesen Ort gesprochen. Ich war niemals dort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Many merchants come from Gynk, at least that's my impression.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Viele H�ndler kommen aus Gynk, zumindest ist das so mein Eindruck.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("My grandparents live in Salkamar. It's a nice place. I loved to vist them when I was a child.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Meine Gro�eltern leben in Salkamar. Es ist ein sch�ner Ort. Ich habe sie als Kind immer gerne besucht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("I don't know this town, do they have notaries there?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Ich kenne diese Stadt nicht, haben die da auch Notare?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("A pleasure, I am Redet Odohir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Freut mich, ich bin Redet Odohir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Redet");
talkEntry:addTrigger("Odohir");
talkEntry:addResponse("That's me. How can I help you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Redet");
talkEntry:addTrigger("Odohir");
talkEntry:addResponse("Das bin ich. Was kann ich f�r Euch tun?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("#me smiles.");
talkEntry:addResponse("That's what I expected to hear from you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("#me l�chelt.");
talkEntry:addResponse("Das habe ich von Euch zu h�ren erwartet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("No? That's sad.");
talkEntry:addResponse("No? Well, you'll have a reason for saying so.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Nein? Das ist schade.");
talkEntry:addResponse("Nein? Nun, Ihr werde Eure Gr�nde f�r diese Antwort haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me unterzeichnet ein Dokument.", "#me signs a document.");
talkingNPC:addCycleText("#me befestigt ein Siegel an einem Brief.", "#me puts a seal under a letter.");
talkingNPC:addCycleText("#me l�chelt.", "#me smiles.");
talkingNPC:addCycleText("#me macht sich ein paar Notizen.", "#me takes some notes.");
talkingNPC:addCycleText("#me summt eine Melodie.", "#me hums a melody.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Reret Odohir die Notarin.", "This NPC is Reret Odohir the Notary.");
mainNPC:setUseMessage("Lasst mich in Ruhe!", "Don't you touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 845);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 2295);
mainNPC:setEquipment(9, 0);
mainNPC:setEquipment(10, 45);
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