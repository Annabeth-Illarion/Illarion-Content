--------------------------------------------------------------------------------
-- NPC Name: Neiran el Nyarale                                       Runewick --
-- NPC Job:  guard                                                            --
--                                                                            --
-- NPC Race: elf                        NPC Position:  897, 781, 2            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Miriam                                                           --
--                                                       easyNPC Parser v1.23 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (3, 897, 781, 2, 4, 'Neiran el Nyarale', 'npc.neiran_el_nyarale', 0, 2, 0, 128, 255, 255, 245, 230, 197);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
require("npc.base.trade")
module("npc.neiran_el_nyarale", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
local tradingNPC = npc.base.trade.tradeNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Neiran el Nyarale the guard. Keywords: Quest, greetings, archmage, donate, platform."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Neiran el Nyarale der Wachmann. Schl�sselw�rter: Auftrag, Gr��e, Erzmagier, Spenden, Plattform."));
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
talkEntry:addResponse("Greetings to you!");
talkEntry:addResponse("#me smiles, 'Greetings'");
talkEntry:addResponse("Good day, how can I help you?");
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
talkEntry:addResponse("Seid gegr��t!");
talkEntry:addResponse("#me l�chlet: 'Gr��e'");
talkEntry:addResponse("Guten Tag, wie kann ich euch helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Hello hello!");
talkEntry:addResponse("Good day, how can I help you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Hallo hallo!");
talkEntry:addResponse("Guten Tag, wie kann ich euch helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farewell!");
talkEntry:addResponse("See you soon again.");
talkEntry:addResponse("#me waves: 'Have a good day!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Lebt wohl.");
talkEntry:addResponse("Tsch�ss. Bis demn�chst!");
talkEntry:addResponse("#me winkt: 'Einen sch�nen Tag w�nsche ich!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Take care!");
talkEntry:addResponse("May the Five be with you!");
talkEntry:addResponse("#me bows.");
talkEntry:addResponse("#me waves, 'Have a good day!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Bis bald!");
talkEntry:addResponse("M�gen die F�nf mit Euch sein!");
talkEntry:addResponse("#me verbeugt sich.");
talkEntry:addResponse("#me winkt: 'Einen sch�nen Tag w�nsche ich!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Me? Thank you, I am fine. How are you?");
talkEntry:addResponse("How do you do?");
talkEntry:addResponse("#me shrugs his shoulders, 'I'm fine, how are you?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Ich? Mir geht es gut. Danke. Wie geht es Euch?");
talkEntry:addResponse("Wie geht es Euch?");
talkEntry:addResponse("#me zuckt mit den Schultern: 'Mir geht es gut und euch?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Neiran el Nyarale, how can I help you?");
talkEntry:addResponse("Neiran el Nyarale, at your service.");
talkEntry:addResponse("Neiran el Nyarale from Runewick, and who are you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Neiran el Nyarale, was kann ich f�r Euch tun?");
talkEntry:addResponse("Neiran el Nyarale, zu euren Diensten.");
talkEntry:addResponse("Neiran el Nyarale, aus Runewick. Und wer seid ihr?");
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
talkEntry:addResponse("Me? I am not a trader. I'm the guard of the treasury, a very interesting profession if you ask me.");
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
talkEntry:addResponse("Ich? Ich bin kein H�ndler. Ich bin der W�chter der Schatzkammer, ein sehr interessanter Beruf wenn ihr mich fragt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Runewick Treasury"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(205, "=", 1));
talkEntry:addResponse("Do you want a task? Donate some of your wealth and contribute to ensuring the city stays clean! The donation platform is right next to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Die Schatzkammer Runewicks"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(205, "=", 1));
talkEntry:addResponse("Ihr m�chtet eine Aufgabe? Spendet einen Teil eures Reichtums und sorgt daf�r dass die Stadt sauber bleibt! Die Spendenplattform ist gleich neben mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Runewick Treasury"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(205, "=", 1));
talkEntry:addResponse("Do you want a task? Donate some of your wealth and contribute to ensuring the city stays clean! The donation platform is right next to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Die Schatzkammer Runewicks"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(205, "=", 1));
talkEntry:addResponse("Ihr m�chtet eine Aufgabe? Spendet einen Teil eures Reichtums und sorgt daf�r dass die Stadt sauber bleibt! Die Spendenplattform ist gleich neben mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Just drop whatever you do not need or want here on the field to donate it to the treasury . It is not difficult to make Runewick a better place!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Werft das was ihr nicht braucht oder was ihr spenden wollt hier auf das Feld. Es ist nicht schwer Runewick zu einem bessren Ort zu machen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Just drop whatever you do not need or want here on the field to donate it to the treasury . It is not difficult to make Runewick a better place!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 1));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Werft das was ihr nicht braucht oder was ihr spenden wollt hier auf das Feld. Es ist nicht schwer Runewick zu einem bessren Ort zu machen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You advance in Archmage Elvaine Morgan favour."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(205, "=", 3));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 20));
talkEntry:addResponse("Thank you for you help!");
talkEntry:addResponse("Thank you for your support!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Dein Ansehen bei Erzmagier Elvaine Morgan steigt."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(205, "=", 3));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 20));
talkEntry:addResponse("Vielen Dank f�r Eure Hilfe!");
talkEntry:addResponse("Vielen Dank f�r Eure Unterst�tzung!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("#me smiles happily and adds something to a list.");
talkEntry:addResponse("I'm busy right now, please come again later.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("#me l�chelt gl�cklich und schreibt etwas auf eine Liste nieder.");
talkEntry:addResponse("Ich bin im Moment etwas besch�ftigt, kommt doch sp�ter wieder.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("#me smiles happily and adds something to a list.");
talkEntry:addResponse("I'm busy right now, please come again later.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(205, "=", 3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("#me l�chelt gl�cklich und schreibt etwas auf eine Liste nieder.");
talkEntry:addResponse("Ich bin im Moment etwas besch�ftigt, kommt doch sp�ter wieder.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Zassaria");
talkEntry:addTrigger("lizard");
talkEntry:addTrigger("lamp");
talkEntry:addTrigger("collection");
talkEntry:addTrigger("riverbank");
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 8));
talkEntry:addResponse("Oil lamp collection? I threw away some oil lamps a few days ago... but, they did not belong to Lady Zassaria, did they?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(701, "=", 7));
talkEntry:addTrigger("Zassaria");
talkEntry:addTrigger("echse");
talkEntry:addTrigger("Lampe");
talkEntry:addTrigger("Sammlung");
talkEntry:addConsequence(npc.base.consequence.quest.quest(701, "=", 8));
talkEntry:addResponse("�llampensammlung? Ich habe da eine ganze Menge �llampen vor ein paar Tagen entsorgt...aber, das war doch nicht Lady Zassarias �llampensammlung, oder?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am the guard here. I guard the donation platform.");
talkEntry:addResponse("I tell newcomers how to donate part of their wealth to Runewick to make the city a little bit better than it already is.");
talkEntry:addResponse("I help to keep the steets clean. Do you want to help me with this task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin W�chter hier. Ich h�te die Spendenplattform.");
talkEntry:addResponse("Ich erkl�re Neuank�mmlingen wie sie einen Teil ihres Reichtums an Runewick spenden k�nnen um die Stadt ein wenig besser zu machen als sie bereits ist.");
talkEntry:addResponse("Ich helfe die Stra�en sauber zu halten. M�chtet ihr mir bei dieser Aufgabe behilflich sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I am the guard here. I guard the donation platform.");
talkEntry:addResponse("I tell newcomers how to donate part of their wealth to Runewick to make the city a little bit better than it already is.");
talkEntry:addResponse("I help to keep the steets clean. Do you want to help me with this task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin W�chter hier. Ich h�te die Spendenplattform.");
talkEntry:addResponse("Ich erkl�re Neuank�mmlingen wie sie einen Teil ihres Reichtums an Runewick spenden k�nnen um die Stadt ein wenig besser zu machen als sie bereits ist.");
talkEntry:addResponse("Ich helfe die Stra�en sauber zu halten. M�chtet ihr mir bei dieser Aufgabe behilflich sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("I do not have much to tell, if you want to hear about adventures, then better to go on adventures yourself.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Ich habe nicht viel zu erz�hlen, wenn ihr etwas �ber Abenteuer h�ren wollt, geht besser selbst welche erleben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Donation platform");
talkEntry:addTrigger("donate");
talkEntry:addTrigger("platform");
talkEntry:addTrigger("trash");
talkEntry:addResponse("This is no rubbish bin! This is a donation platform, you can donate part of your wealth for the good of Runewick");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spendenplattform");
talkEntry:addTrigger("spende");
talkEntry:addTrigger("plattform");
talkEntry:addResponse("Das ist keine M�llkippe! Das ist die Spendenplattform, hier k�nnt ihr einen Teil eures Reichtums zum Wohle Runewicks spenden!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("I follow the five Elder Gods, they created Illarion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Ich folge den f�nf alten G�ttern, sie erschufen Illarion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("religion");
talkEntry:addResponse("We elves pray to the five Elder Gods.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("religion");
talkEntry:addResponse("Wir Elfen beten zu den f�nf alten G�ttern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("faith");
talkEntry:addResponse("We elves pray to the five Elder Gods.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Glaube");
talkEntry:addResponse("Wir Elfen beten zu den f�nf alten G�ttern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("The Archmage is a wise man.");
talkEntry:addResponse("The Archmage is called Elvain Morgan.");
talkEntry:addResponse("Thanks to the Archmage we have this donation platform where citizens can donate part of their wealth.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Der Erzmagier ist ein weiser Mann.");
talkEntry:addResponse("Der Erzmagier hei�t Elvaine Morgan.");
talkEntry:addResponse("Dank des Erzmagiers haben wir diese Spendenplattform in dem B�rger einen Teil ihres Reichtums spenden k�nnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Elvaine Morgan is a wise man.");
talkEntry:addResponse("Elvaine Morgan is the Archmage.");
talkEntry:addResponse("Thanks to the Archmage we have this donation platform where citizens can donate part of their wealth.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Elvaine Morgan ist ein weiser Mann.");
talkEntry:addResponse("Elvaine Morgan ist der Erzmagier.");
talkEntry:addResponse("Dank des Erzmagiers haben wir diese Spendenplattform in dem B�rger einen Teil ihres Reichtums spenden k�nnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Yes, this is Runewick.");
talkEntry:addResponse("Let's keep the steets of Runewick clean!");
talkEntry:addResponse("Many people here study magic. Why did you come here?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Ja, dies ist Runewick.");
talkEntry:addResponse("Lasst uns die Stra�en von Runewick sauber halten!");
talkEntry:addResponse("Viele Leute hier studieren Magie. Warum seid ihr hier?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("No, that's not me.");
talkEntry:addResponse("He is not here.");
talkEntry:addResponse("He was never here, as far as I know.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Nein, das bin ich nicht.");
talkEntry:addResponse("Der ist nicht hier.");
talkEntry:addResponse("So weit ich wei�, war er nicht hier.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("They do not keep the streets clean in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("In Galmair halten sie die Stra�en nicht sauber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Queen is a title used by humans and dwarves for female leaders.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("K�nigin ist ein Titel den Menschen und Zwerge f�r weibliche Anf�hrer benutzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Mh? ? Who is that?");
talkEntry:addResponse("No, I haven't seen her. I don't even remember the last time she was here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Mh? ...Wer?");
talkEntry:addResponse("Nein, ich habe sie nicht gesehen. Ich erinnere mich nichtmal daran wann sie das letzte mal hier war.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Ah... Cadomyr. That's a town full of sand.");
talkEntry:addResponse("Just a place not far from here. Nothing more, nothing less.");
talkEntry:addResponse("#me nods slowly.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Ah... Cadomyr. Das ist eine Stadt voll von Sand.");
talkEntry:addResponse("Nur ein Ort nicht weit weg von hier. Nicht mehr oder weniger als dies.");
talkEntry:addResponse("#me nickt langsam.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("#me nods with a faint smile on his lips.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("#me nickt mit einem schmalen L�cheln auf den Lippen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("#me nods with a faint smile on his lips.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("#me nickt mit einem schmalen L�cheln auf den Lippen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("#me nods with a faint smile on his lips.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("#me nickt mit einem schmalen L�cheln auf den Lippen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse(" I've never been to this place.");
talkEntry:addResponse("It was...a place.");
talkEntry:addResponse("#me nods with a faint smile on his lips.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Da war ich noch nie.");
talkEntry:addResponse("Es war...ein Ort.");
talkEntry:addResponse("#me nickt mit einem schmalen L�cheln auf den Lippen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Nice to meet you! ");
talkEntry:addResponse("Good to see you!");
talkEntry:addResponse("#me smiles friendly.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Feut mich!");
talkEntry:addResponse("Sch�n euch zu treffen!");
talkEntry:addResponse("#me l�chelt freundlich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Neiran");
talkEntry:addTrigger("el Nyarale");
talkEntry:addTrigger("Nyarale");
talkEntry:addResponse("That's me. How can I help you?");
talkEntry:addResponse("#me raises a hand and waves.");
talkEntry:addResponse("#me looks around, 'Who called for me?'");
talkEntry:addResponse("#me smiles friendly");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Neiran");
talkEntry:addTrigger("el Nyarale");
talkEntry:addTrigger("Nyarale");
talkEntry:addResponse("Das bin ich. Was kann ich f�r Euch tun?");
talkEntry:addResponse("#me hebt eine Hand und winkt.");
talkEntry:addResponse("#me bickt sich um: 'Wer rief nach mir?'");
talkEntry:addResponse("#me smiles friendly");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("#me nods slowly.");
talkEntry:addResponse("#me smiles.");
talkEntry:addResponse("I am happy to hear you say so!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("#me nickt langsam.");
talkEntry:addResponse("#me l�chelt.");
talkEntry:addResponse("Es freut mich, dass ihr das sagt..");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("I didn't expect that answer.");
talkEntry:addResponse("#me raises an eyebrow.");
talkEntry:addResponse("I shall give you some more time to consider your answer, but at the moment you seem to be...still inexperienced.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Ich h�tte eine andere Antwort erwartet.");
talkEntry:addResponse("#me hebt eine Augenbraue.");
talkEntry:addResponse("Ich werde euch mehr Zeit geben eure Antwort zu bedenken. Zur Zeit scheint ihr noch...unerfahren zu sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ah...pardon? What did you say?");
talkEntry:addResponse("#me raises an eyebrow.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ah... verzeiht. Was sagtet ihr?");
talkEntry:addResponse("#me hebt eine Augenbraue.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Wir in Runewick wollen unsere Stra�en sauber halten. Hilf auch du mit!", "Let's keep Runewick's streets clean!");
talkingNPC:addCycleText("#me schaut sich um.", "#me looks around.");
talkingNPC:addCycleText("#me l�chelt und l�sst einige M�nzen auf die magische Oberfl�che fallen.", "#me smiles and drops some coins onto the magical surface.");
talkingNPC:addCycleText("Was ist wahrer Reichtum? Wissen oder M�nzen?", "What is of greater value? Knowledge or coins?");
talkingNPC:addCycleText("M�nzen, Waffen, Schmuck und Besteck, alles kann eingeschmolzen werden! Spendet an unsere sch�nen Stadt.", "Coins, weapons, jewellery, cutlery... everything can be melted down!");
talkingNPC:addCycleText("Spendet Roh- und Baustoffe, wir bessern die Stra�en von Runewick aus!", "Donate building material and ressouces, we repair the streets of Runewick!");
talkingNPC:addCycleText("Spendet Papier und Tinte, die Bibliothek von Runewick wird es Euch danken!", "Donate ink and paper, for the libraries of Runewick!");
talkingNPC:addCycleText("Ich werde von eurem Einsatz f�r unsere sch�ne Stadt beim Erzmagier sprechen - z�gert nicht!", "I'll tell the Archmage about your support for the town! Do not hesitate to donate.");
talkingNPC:addCycleText("#me sieht gl�cklich aus.", "#me seems to be happy.");
talkingNPC:addCycleText("#me schreibt eine Liste.", "#me writes a list.");
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2,"buySecondary"));
mainNPC:addLanguage(0);
mainNPC:addLanguage(3);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Neiran el Nyarale der Wachmann.", "This NPC is Neiran el Nyarale the guard.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 181);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 825);
mainNPC:setEquipment(10, 53);
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