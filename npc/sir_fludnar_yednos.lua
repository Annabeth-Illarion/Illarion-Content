--------------------------------------------------------------------------------
-- NPC Name: Sir Fludnar Yednos                                      Runewick --
-- NPC Job:  Scholar                                                          --
--                                                                            --
-- NPC Race: human                      NPC Position:  896, 757, 1            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   envi                                                             --
--                                                                            --
-- Last parsing: December 02, 2011                       easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 896, 757, 1, 4, 'Sir Fludnar Yednos', 'npc.sir_fludnar_yednos', 0, 2, 0, 33, 28, 25, 180, 102, 102);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.state")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.consequence.state")
require("npc.base.consequence.treasure")
require("npc.base.talk")
module("npc.sir_fludnar_yednos", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is the scholar Sir Fludnar Yednos. Keyphrases: Hello, quest, god, orc."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist der Gelehrte Sir Fludnar Yednos. Schl�sselw�rter: Hallo, Quest, G�tter, Ork."));
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
talkEntry:addResponse("Could you lower your voice? But be greeted anyway!");
talkEntry:addResponse("Hmm...Can I help you?");
talkEntry:addResponse("Be greeted as well, but now let me continue my research.");
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
talkEntry:addResponse("K�nnt ihr nicht leiser sprechen? Aber seid trotzdem gegr��t!");
talkEntry:addResponse("Hmm...Kann ich euch helfen?.");
talkEntry:addResponse("Seid auch gegr��t, aber nun last mich doch weiter forschen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Are you lost?");
talkEntry:addResponse("Leave me alone!");
talkEntry:addResponse("Who is disturbing my work?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Habt ihr euch verlaufen?");
talkEntry:addResponse("Raus hier aber schnell!");
talkEntry:addResponse("Wer st�rt mich hier bei der Arbeit?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("Good bye.");
talkEntry:addResponse("Don't forget to close the door!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Lebt wohl.");
talkEntry:addResponse("Aufwiedersehen.");
talkEntry:addResponse("Vergesst nicht die T�r zu schlie�en!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Get out!");
talkEntry:addResponse("Finally!");
talkEntry:addResponse("...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Raus hier!");
talkEntry:addResponse("Endlich!");
talkEntry:addResponse("...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("If nobody disturbed me, it would be better!");
talkEntry:addResponse("Could you keep silent please?");
talkEntry:addResponse("Fine, fine, but let me continue my work now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("W�rde man mich nicht st�ren, w�rde es mir besser gehen.");
talkEntry:addResponse("K�nnt ihr bitte leise sein?");
talkEntry:addResponse("Gut, Gut, aber nun lasst mich weiterarbeiten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Who asks?");
talkEntry:addResponse("Sir Fludnar Yednos.");
talkEntry:addResponse("Why do you need to know?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Wer fragt?");
talkEntry:addResponse("Sir Fludnar Yednos.");
talkEntry:addResponse("Ist das von belang zu wissen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... find out in which age Bragon helped create the orcs? I think it was the fourth age, but maybe you should ask a priest. There should be one at the Chapel of the Five.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 11));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... findet heraus, in welchem Zeitalter Bragon half die Orks zu erschaffen! Ich denke es war das vierte. Wie auch immer, ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 11));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... find out in which age Bragon helped create the orcs? I think it was the fourth age, but maybe you should ask a priest. There should be one at the Chapel of the Five.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 11));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... findet heraus, in welchem Zeitalter Bragon half die Orks zu erschaffen! Ich denke es war das vierte. Wie auch immer, ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 11));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 11));
talkEntry:addResponse("I asked you in which age Bragon helped create the orcs? I think it was the fourth age. Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 11));
talkEntry:addResponse("Ich habe euch gefragt: In welchem Zeitalter Bragon half die Orks zu erschaffen! Ich denke es war das vierte. Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I asked you in which age Bragon helped create the orcs? I think it was the fourth age. Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 11));
talkEntry:addResponse("Ich habe euch gefragt: In welchem Zeitalter Bragon half die Orks zu erschaffen! Ich denke es war das vierte. Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(11));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Find out what Bragon's reason was to support the Blood God in the creation of the orcs! A priest should know. There should be one at the Chapel of the Five.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(11));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, was der Grund f�r Bragons Unterst�tzung f�r den Blutgott in der Erschaffung der Orks war! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(11));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Find out what Bragon's reason was to support the Blood God in the creation of the orcs! A priest should know. There should be one at the Chapel of the Five.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(11));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, was der Grund f�r Bragons Unterst�tzung f�r den Blutgott in der Erschaffung der Orks war! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 12));
talkEntry:addResponse("I asked you what Bragon's reason was to support the Blood God in the creation of the orcs? Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 12));
talkEntry:addResponse("Ich habe euch gefragt: Was der Grund f�r Bragons Unterst�tzung f�r den Blutgott in der Erschaffung der Orks war? Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I asked you what Bragon's reason was to support the Blood God in the creation of the orcs? Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 12));
talkEntry:addResponse("Ich habe euch gefragt: Was der Grund f�r Bragons Unterst�tzung f�r den Blutgott in der Erschaffung der Orks war? Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(13));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... find out what Bragon is to the orcs... something with purge or similar to that, but i can't remember! A priest should know. There should be one at the Chapel of the Five.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(13));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... Naja egal, findet heraus, was Bragon f�r die Orks ist... etwas mit Vernichter oder �hnlichem, aber ich kann mich nicht mehr recht erinnern! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(13));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... find out what Bragon is to the orcs... something with purge or similar to that, but i can't remember! A priest should know. There should be one at the Chapel of the Five.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(13));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... Naja egal, findet heraus, was Bragon f�r die Orks ist... etwas mit Vernichter oder �hnlichem, aber ich kann mich nicht mehr recht erinnern! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 13));
talkEntry:addResponse("I asked you what Bragon is to the orcs... something with purge or similar to that, but i can't remember! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 13));
talkEntry:addResponse("Ich habe euch gefragt: Was Bragon f�r die Orks ist... etwas mit Vernichter oder �hnlichem, aber ich kann mich nicht mehr recht erinnern! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I asked you what Bragon is to the orcs... something with purge or similar to that, but i can't remember! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 13));
talkEntry:addResponse("Ich habe euch gefragt: Was Bragon f�r die Orks ist... etwas mit Vernichter oder �hnlichem, aber ich kann mich nicht mehr recht erinnern! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(14));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... find out when Bragon realized that the creation of the orcs could not change the Blood God! A priest should know. There should be one at the Chapel of the Five.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 14));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(14));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... Naja egal, findet heraus, in welchem Zeitalter Bragon bemerkt hat, dass die Erschaffung der Orks den Blutgott bes�nftigen konnte! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 14));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yeah");
talkEntry:addTrigger("Yubba");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(14));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... find out when Bragon realized that the creation of the orcs could not change the Blood God! A priest should know. There should be one at the Chapel of the Five.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 14));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yeah");
talkEntry:addTrigger("Yubba");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(14));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... Naja egal, findet heraus, in welchem Zeitalter Bragon bemerkt hat, dass die Erschaffung der Orks den Blutgott bes�nftigen konnte! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 14));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 14));
talkEntry:addResponse("I asked you when Bragon realized that the creation of the orcs could not change the Blood God! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 14));
talkEntry:addResponse("Ich habe euch gefragt: In welchem Zeitalter Bragon bemerkt hat, dass die Erschaffung der Orks den Blutgott bes�nftigen konnte! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 14));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I asked you when Bragon realized that the creation of the orcs could not change the Blood God! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 14));
talkEntry:addResponse("Ich habe euch gefragt: In welchem Zeitalter Bragon bemerkt hat, dass die Erschaffung der Orks den Blutgott bes�nftigen konnte! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(17));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright find out what the orcs call Bragon... something with sun! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(17));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, welchen Namen die Orks f�r Bragon haben... etwas mit Sonne! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein. Viel Gl�ck und seid vorsichtig!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(17));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright find out what the orcs call Bragon... something with sun! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(17));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, welchen Namen die Orks f�r Bragon haben... etwas mit Sonne! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein. Viel Gl�ck und seid vorsichtig!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 15));
talkEntry:addResponse("I asked you what the orcs call Bragon... something with sun! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 15));
talkEntry:addResponse("Ich habe euch gefragt: Welchen Namen die Orks f�r Bragon haben... etwas mit Sonne! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 15));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I asked you what the orcs call Bragon... something with sun! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 15));
talkEntry:addResponse("Ich habe euch gefragt: Welchen Namen die Orks f�r Bragon haben... etwas mit Sonne! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out what Bragon did to remedy his mistake of helping to create the orcs! A priest should know. There should be one at the Chapel of the Five.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 16));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, was Bragon in Bezug auf die Wiedergutmachung seines Fehlers durch die Erschaffung der Orks tat! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 16));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out what Bragon did to remedy his mistake of helping to create the orcs! A priest should know. There should be one at the Chapel of the Five.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 16));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, was Bragon in Bezug auf die Wiedergutmachung seines Fehlers durch die Erschaffung der Orks tat! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 16));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 16));
talkEntry:addResponse("I asked you what Bragon did to remedy his mistake of helping to create the orcs! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 16));
talkEntry:addResponse("Ich habe euch gefragt: Was Bragon in Bezug auf die Wiedergutmachung seines Fehlers durch die Erschaffung der Orks tat! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 16));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I asked you what Bragon did to remedy his mistake of helping to create the orcs! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 16));
talkEntry:addResponse("Ich habe euch gefragt: Was Bragon in Bezug auf die Wiedergutmachung seines Fehlers durch die Erschaffung der Orks tat! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(25));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out what kind of relationship Bragon and the Blood God had! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 17));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(25));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, was verbindet Bragon und dem Blutgott! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein. Viel Gl�ck und seid vorsichtig!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 17));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(25));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out what kind of relationship Bragon and the Blood God had! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 17));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(25));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, was verbindet die Bragon und dem Blutgott! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein. Viel Gl�ck und seid vorsichtig!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 17));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 17));
talkEntry:addResponse("I asked you what kind of relationship Bragon and the Blood God had! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 17));
talkEntry:addResponse("Ich habe euch gefragt: Was verbindet Bragon und dem Blutgott! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 17));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I asked you what kind of relationship Bragon and the Blood God had! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 17));
talkEntry:addResponse("Ich habe euch gefragt: Was verbindet Bragon und dem Blutgott! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(34));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out what name the orcs have given Bragon... something to do with summer! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 18));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(34));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, welchen Namen die Orks f�r Bragon haben... etwas mit Sommer! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein. Viel Gl�ck und seid vorsichtig!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 18));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(34));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out what name the orcs have given Bragon... something to do with summer! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 18));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(34));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, welchen Namen die Orks f�r Bragon haben... etwas mit Sommer! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein. Viel Gl�ck und seid vorsichtig!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 18));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 18));
talkEntry:addResponse("I asked you what name the orcs have given Bragon... something to do with summer! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 18));
talkEntry:addResponse("Ich habe euch gefragt: Welchen Namen die Orks f�r Bragon haben... etwas mit Sommer! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 18));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I asked you what name the orcs have given Bragon... something to do with summer! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 18));
talkEntry:addResponse("Ich habe euch gefragt: Welchen Namen die Orks f�r Bragon haben... etwas mit Sommer! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(51));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out why orcs pray to Bragon! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 19));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(51));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, warum die Orks zu Bragon beten! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein. Viel Gl�ck und seid vorsichtig!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 19));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yeah");
talkEntry:addTrigger("Yubba");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(51));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out why orcs pray to Bragon! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 19));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yeah");
talkEntry:addTrigger("Yubba");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(51));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, warum die Orks zu Bragon beten! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein. Viel Gl�ck und seid vorsichtig!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 19));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 19));
talkEntry:addResponse("I asked you why orcs pray to Bragon! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 19));
talkEntry:addResponse("Ich habe euch gefragt: Warum die Orks zu Bragon beten! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 19));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I asked you why orcs pray to Bragon! Now, go ask a priest for the information and don't waste my time until you have it!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 19));
talkEntry:addResponse("Ich habe euch gefragt: Warum die Orks zu Bragon beten! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(100));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out the meaning of the 'Tribunal of Eternity'! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(100));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, was es mit dem so genannten 'Tribunal der Ewigkeit' auf sich hat! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein. Viel Gl�ck und seid vorsichtig!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(100));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Find the information for Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out the meaning of the 'Tribunal of Eternity'! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(100));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Finde die Information f�r Sir Fludnar Yednos"));
talkEntry:addResponse("Hmm... seid ihr sicher? Naja egal, findet heraus, was es mit dem so genannten 'Tribunal der Ewigkeit' auf sich hat! Ich denke ihr solltet hierf�r einen Priester fragen. Es sollte einer an der Kapelle der F�nf zu finden sein. Viel Gl�ck und seid vorsichtig!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 20));
talkEntry:addResponse("Hmm... are you sure? Alright, find out the meaning of the 'Tribunal of Eternity'! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 20));
talkEntry:addResponse("Ich habe euch gefragt: Was es mit dem so genannten 'Tribunal der Ewigkeit' auf sich hat! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 20));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Hmm... are you sure? Alright, find out the meaning of the 'Tribunal of Eternity'! A priest should know. There should be one at the Chapel of the Five. Good luck and be careful!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 20));
talkEntry:addResponse("Ich habe euch gefragt: Was es mit dem so genannten 'Tribunal der Ewigkeit' auf sich hat! Geht nun, findet einen Priester f�r die Information und verschwendet meine Zeit nicht bis ihr sie habt!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 11));
talkEntry:addResponse("Don't bother me! You'd do better to find a priest and NOT return until you have the answer, otherwise you will have to face the consequences.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 11));
talkEntry:addResponse("Ver�rgert mich nicht! Findet besser einen Priester und kommt NICHT ohne Antwort zur�ck, ansonsten m�sst ihr mit den Konsequenzen leben.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Don't bother me! You'd do better to find a priest and NOT return until you have the answer, otherwise you will have to face the consequences.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 11));
talkEntry:addResponse("Ver�rgert mich nicht! Findet besser einen Priester und kommt NICHT ohne Antwort zur�ck, ansonsten m�sst ihr mit den Konsequenzen leben.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 10));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 21));
talkEntry:addResponse("Don't bother me! You'd do better to find a priest and NOT return until you have the answer, otherwise you will have to face the consequences.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 10));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 21));
talkEntry:addResponse("Ver�rgert mich nicht! Findet besser einen Priester und kommt NICHT ohne Antwort zur�ck, ansonsten m�sst ihr mit den Konsequenzen leben.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 10));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Don't bother me! You'd do better to find a priest and NOT return until you have the answer, otherwise you will have to face the consequences.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 10));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 21));
talkEntry:addResponse("Ver�rgert mich nicht! Findet besser einen Priester und kommt NICHT ohne Antwort zur�ck, ansonsten m�sst ihr mit den Konsequenzen leben.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 21));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest finished] You bungled it. :O"));
talkEntry:addResponse("Hmm... it seems you have forgotten what I asked you to do! You are not worthy to work for me.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 21));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest beendet] Du hast es verbockt. :O"));
talkEntry:addResponse("Hmm... es scheint als habt ihr vergessen um was ich euch los schickte! Nun, dann seid ihr es nicht wert f�r mich zu arbeiten.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest finished] You bungled it. :O"));
talkEntry:addResponse("Hmm... it seems you have forgotten what I asked you to do! You are not worthy to work for me.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 21));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest beendet] Du hast es verbockt. :O"));
talkEntry:addResponse("Hmm... es scheint als habt ihr vergessen um was ich euch los schickte! Nun, dann seid ihr es nicht wert f�r mich zu arbeiten.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 11));
talkEntry:addResponse("Don't bother me! You'd do better to find a priest and NOT return until you have the answer, otherwise you will have to face the consequences.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("was tun");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 11));
talkEntry:addResponse("Ver�rgert mich nicht! Findet besser einen Priester und kommt NICHT ohne Antwort zur�ck, ansonsten m�sst ihr mit den Konsequenzen leben.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Don't bother me! You'd do better to find a priest and NOT return until you have the answer, otherwise you will have to face the consequences.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 11));
talkEntry:addResponse("Ver�rgert mich nicht! Findet besser einen Priester und kommt NICHT ohne Antwort zur�ck, ansonsten m�sst ihr mit den Konsequenzen leben.");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addTrigger("answer");
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 31));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest deliver answer] Tell him your answer"));
talkEntry:addResponse("Do you know the answer? So, what is it then?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("antwort");
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 31));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest �bermittle Antwort] Erz�hle ihm deine Antwort"));
talkEntry:addResponse("Wisst ihr die Antwort? So, wie lautet sie nun?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("info");
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 31));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest deliver answer] Tell him your answer"));
talkEntry:addResponse("Do you know the answer? So, what is it then?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("info");
talkEntry:addCondition(npc.base.condition.quest.quest(600, ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(600, "<", 31));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest �bermittle Antwort] Erz�hle ihm deine Antwort"));
talkEntry:addResponse("Wisst ihr die Antwort? So, wie lautet sie nun?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Concord");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 21));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a magical rubin"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Concord");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 21));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a treasure map"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eintracht");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 21));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast einen magischen Rubin erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eintracht");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 21));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast eine Schatzkarte erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("comfort");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 22));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a magical rubin"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("comfort");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 22));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a treasure map"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tr�sten");
talkEntry:addTrigger("Hoffnung");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 22));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast einen magischen Rubin erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tr�sten");
talkEntry:addTrigger("Hoffnung");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 22));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("purge");
talkEntry:addTrigger("impurity");
talkEntry:addTrigger("weakness");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 23));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a magical rubin"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("purge");
talkEntry:addTrigger("impurity");
talkEntry:addTrigger("weakness");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 23));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a treasure map"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Vernichter");
talkEntry:addTrigger("Unrein");
talkEntry:addTrigger("Schwach");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 23));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast einen magischen Rubin erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Vernichter");
talkEntry:addTrigger("Unrein");
talkEntry:addTrigger("Schwach");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 23));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast eine Schatzkarte erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Discord");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 24));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a magical rubin"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Discord");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 24));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a treasure map"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zwietracht");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 24));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast einen magischen Rubin erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zwietracht");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 24));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast eine Schatzkarte erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sunmaker");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 25));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a magical rubin"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sunmaker");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 25));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a treasure map"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sonnenmacher");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 25));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast einen magischen Rubin erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sonnenmacher");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 25));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast eine Schatzkarte erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dragon");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 26));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a magical rubin"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dragon");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 26));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a treasure map"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Drachen");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 26));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast einen magischen Rubin erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Drachen");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 26));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast eine Schatzkarte erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fire");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 27));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a magical rubin"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fire");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 27));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a treasure map"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Feuer");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 27));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast einen magischen Rubin erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Feuer");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 27));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Strong");
talkEntry:addTrigger("summer");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 28));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a magical rubin"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Strong");
talkEntry:addTrigger("summer");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 28));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a treasure map"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Stark");
talkEntry:addTrigger("Sommer");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 28));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast einen magischen Rubin erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Stark");
talkEntry:addTrigger("Sommer");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 28));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast eine Schatzkarte erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("live");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 29));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a magical rubin"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("live");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 29));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a treasure map"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("leben");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 29));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast einen magischen Rubin erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("leben");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 29));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast eine Schatzkarte erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Flame");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 30));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a magical rubin"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Flame");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You earnt a treasure map"));
talkEntry:addResponse("Thank you very much for your help! ...I have something for you. Maybe you can use it. Now... you know where the door is. Farewell and leave now! Silently!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 30));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Flamme");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 30));
talkEntry:addCondition(npc.base.condition.chance.chance(30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast einen magischen Rubin erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.item.item(46, 1, 999, 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Flamme");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du hast eine Schatzkarte erhalten"));
talkEntry:addResponse("Vielen Dank f�r eure Unterst�tzung! ...ich habe hier etwas f�r euch. Vielleicht k�nnt ihr etwas damit anfangen. Wie dem auch sei... ihr wisst wo die T�re ist. Lebt wohl, und nun geht! Aber leise!");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(600, "=", 40));
talkEntry:addConsequence(npc.base.consequence.treasure.treasure(8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("can I do");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 40));
talkEntry:addResponse("Hmm... You already had your task. There nothing to do for you here. Better ask someone else! Farewell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 40));
talkEntry:addResponse("Hmm... Du hattest bereits deine Aufgabe. Hier ist nichts mehr zu tun f�r dich. Besser du fragst jemand anderen. Leb wohl.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 40));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Hmm... You already had your task. There nothing to do for you here. Better ask someone else! Farewell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(600, "=", 40));
talkEntry:addResponse("Hmm... Du hattest bereits deine Aufgabe. Hier ist nichts mehr zu tun f�r dich. Besser du fragst jemand anderen. Leb wohl.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addTrigger("work");
talkEntry:addResponse("I'm a scholar, or what have you thought?");
talkEntry:addResponse("I am researching on Orcs.");
talkEntry:addResponse("I'm a researcher and my interest is in the race of orcs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addTrigger("arbeit");
talkEntry:addResponse("Ich bin ein Gelehrter, oder was habt ihr gedacht?");
talkEntry:addResponse("Ich forsche an Orks.");
talkEntry:addResponse("Ich bin Forscher und interessiert an der Rasse der Orks.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I'm a scholar, or what have you thought?");
talkEntry:addResponse("I am researching on Orcs.");
talkEntry:addResponse("I'm a researcher and my interest is in the race of orcs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin ein Gelehrter, oder was habt ihr gedacht?");
talkEntry:addResponse("Ich forsche an Orks.");
talkEntry:addResponse("Ich bin Forscher und interessiert an der Rasse der Orks.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oh yes, the good, old times. *sigh*");
talkEntry:addResponse("It was a small island somewhere in the east of the main land.");
talkEntry:addResponse("It was a chaotic place with many wannabes!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addResponse("Oh ja, die guten alten Zeiten. *seufzt*");
talkEntry:addResponse("Es war eine kleine Insel irgendwo im Osten des Festlands.");
talkEntry:addResponse("Es war ein chaotischer Ort mit lauter M�chtegern-Typen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("I am");
talkEntry:addTrigger("my name");
talkEntry:addResponse("Nice to meet you.");
talkEntry:addResponse("Well, what do you want from me?");
talkEntry:addResponse("Interesting, interesting, but never heard such a ridiculous name.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ich bin");
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Sch�n euch kennen zu lernen.");
talkEntry:addResponse("Sch�n, was wollt ihr von mir?");
talkEntry:addResponse("Interessant, interessant, aber ich habe noch nie so einen l�cherlichen Namen geh�rt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("five");
talkEntry:addResponse("Chapel of the Five? Ask people. I am sure someone knows it.");
talkEntry:addResponse("Chapel of the Five? I think it is in the west.");
talkEntry:addResponse("Altar of the Five? I don't know, but shall I looking for by myself? ...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("chapel");
talkEntry:addResponse("I would recommend the Chapel of the Five. Ask people. I am sure someone knows it.");
talkEntry:addResponse("I would recommend the Chapel of the Five. I think it is in the west.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("priest");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I have no idea where they are hiding. Better you ask someone else or you look for an altar at least.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Northern");
talkEntry:addTrigger("Mountains");
talkEntry:addTrigger("krest");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("A mighty clan. Some members of them live here now. Better avoid to bother them.");
talkEntry:addResponse("They had a very honourable chief.");
talkEntry:addResponse("Their warlord destroyed a whole dwarves army once. Probably one of the orcs knows more about that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("halfing");
talkEntry:addResponse("Halfings...the favourite food of orcs.");
talkEntry:addResponse("Orcs have several recipes for them.");
talkEntry:addResponse("Halflings are also very useful as slaves for orcs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("bloodgod");
talkEntry:addResponse("I don't want mention is right name. It would be heresey");
talkEntry:addResponse("Orcs celebrating and following him, because he created them.");
talkEntry:addResponse("Beware of those who follow him. Those are lost as he is.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("F�nf");
talkEntry:addResponse("Kapelle der F�nf? Fragt herum. Ich bin sicher jemand kann euch helfen.");
talkEntry:addResponse("Kapelle der F�nf? Ich denke die liegt im Westen.");
talkEntry:addResponse("Kapelle der F�nf? Keine Ahnung, aber soll ich selber suchen gehen? ...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kapelle");
talkEntry:addResponse("Kapelle der F�nf w�rde ich vorschlagen. Fragt herum. Ich bin sicher jemand kann euch helfen.");
talkEntry:addResponse("Kapelle der F�nf w�rde ich vorschlagen. Ich denke die liegt im Westen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("priest");
talkEntry:addResponse("Ich habe keine wo sich die verstecken. Besser ihr fragt jemand anderen oder sucht wenigstens nach einen Altar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Northern");
talkEntry:addTrigger("Mountains");
talkEntry:addTrigger("krest");
talkEntry:addResponse("Ein m�chtiger Klan einst. Einige von denen leben nun hier. Besser ihr vermeidet diese zu �rgern.");
talkEntry:addResponse("Die hatten einen ehrenhaften Chief.");
talkEntry:addResponse("Deren Kriegsherr zerst�rte eine ganze Armee von Zwergen einst. Vielleicht wei� einer der Orks mehr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Halbling");
talkEntry:addResponse("Halblinge...das favorisierte Essen der Orks.");
talkEntry:addResponse("Orks haben verschiedene Rezepte f�r sie.");
talkEntry:addResponse("Orks verwenden sie auch als Sklaven.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Blutgott");
talkEntry:addResponse("Ich m�chte seinen Namen nicht nennen. Es w�re H�resie.");
talkEntry:addResponse("Orks feiern und folgen ihm, weil er sie erschaffen hat.");
talkEntry:addResponse("H�tet euch von jenen die ihm folgen. Verloren wie er, sind auch sie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("orc");
talkEntry:addResponse("There is a great settlement of orcs close to the Death Marsh. But you should be careful if you go there, because they have a powerful shaman.");
talkEntry:addResponse("Green, strong, bloody. These are my words for the orcs in Katanbi-Desert. Also known as Moshran's Brood.");
talkEntry:addResponse("An interesting race for research, isn't?.");
talkEntry:addResponse("Better you show some respect if you meet one! You never know if the enslave you otherwise!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ork");
talkEntry:addResponse("Da ist eine gro�e Siedlung von Orks nahe dem Todes Sumpf. Aber ihr solltet vorsichtig sein, wenn ihr dort hingeht, weil die einen m�chtigen Schamanen haben.");
talkEntry:addResponse("Gr�n, stark, Blutig. Das sind meine Worte f�r die Orks in der Katanbi W�ste. Auch bekann als Moshran's Brut.");
talkEntry:addResponse("Eine interessante Rasse zum forschen, oder?");
talkEntry:addResponse("Besser ihr zeigt ihnen gegen�ber etwas Respekt. Man wei� nie, ob sie einen sonst versklaven?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("marsh");
talkEntry:addResponse("The Death Marsh is in the north from here, beyond the dragon's lair. But be careful!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sumpf");
talkEntry:addResponse("Der Todes Sumpf ist n�rdlich von hier, hinter der Drachenh�hle. Aber sei vorsichtig!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dragon");
talkEntry:addResponse("You have not been here for a long them, haven't you? Ask someone else if you want know more about that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("drache");
talkEntry:addResponse("Lange seit ihr noch nicht hier, oder? Fragt jemand anderen wenn ihr mehr dazu wissen wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("shaman");
talkEntry:addResponse("The name of the Shaman that you can find in the craven cave is Igruk. Therefore Igruk's craven cave. *grins*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schaman");
talkEntry:addResponse("Der Name des Schamanen den du in der feigen H�hle finden kannst hei�t Igruk. Daher Igruk's feige H�hle. *grinst*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Igruk");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("A very powerful shaman. Don't go alone to his cave. Otherwise you will die as many did some years ago when these orcs invaded in this area.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Igruk");
talkEntry:addResponse("Ein sehr m�chtiger Schamane. Geh nicht alleine zu seiner H�hle. Ansonsten wirst du sterben wie viele vor einigen Jahren als diese Orks in diesen Teil eindrangen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("area");
talkEntry:addResponse("The area where orcs live is now called Igruk's craven cave.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("teil");
talkEntry:addResponse("Der Teil wo diese Orks nun leben wird Igruk's feige H�hle genannt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("craven");
talkEntry:addTrigger("cave");
talkEntry:addResponse("Do you like to visit Igruk? You can find him northern the snakehead bay. But be careful, many strong orcs are hiding there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("feig");
talkEntry:addTrigger("h�hle");
talkEntry:addResponse("Du m�chtest Igruk besuchen? Du kannst ihn n�rdlich der Schlangenkopf Bucht finden. Aber seid vorsichtig. Es verstecken sich dort viele starke Orks.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("snakehead");
talkEntry:addTrigger("bay");
talkEntry:addResponse("You have not been here for a long them, haven't you? Ask someone else if you want know more about that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schlangenkopf");
talkEntry:addTrigger("bucht");
talkEntry:addResponse("Lange seit ihr noch nicht hier, oder? Fragt jemand anderen wenn ihr mehr dazu wissen wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("invade");
talkEntry:addTrigger("hundred");
talkEntry:addResponse("Orcs invaded in this area some years ago and crashed almost everything they met. But we could stand their attack even they got a lot of supply from Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dring");
talkEntry:addTrigger("drang");
talkEntry:addTrigger("hundert");
talkEntry:addResponse("Orks drangen in diesen Teil vor einigen Jahren ein und t�teten beinahe jeden den sie getroffen haben. Aber wir konnten ihren Angriff abwehren, obwohl sie Unterst�tzung aus Galmair bekamen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("brood");
talkEntry:addResponse("Moshran's Brood... Rather dumb than evil orcs in the Katanbi Desert on the way to Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("brut");
talkEntry:addResponse("Moshran's Brut... Eher d�mliche als b�sartige Orks in der Katanbi W�ste am Weg nach Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The Katanbi-Desert can be found in the west. In this case you will be close to Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Katanbi");
talkEntry:addResponse("Die Katanbi W�ste kann im Westen gefunden werden. Sprich, in der N�he von Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("He has so much knowledge.");
talkEntry:addResponse("I have not seen anyone who is smarter than he.");
talkEntry:addResponse("If you have a question, nobody can answer it better than him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Er hat so viel Wissen.");
talkEntry:addResponse("Ich habe noch nie jemanden gesehen der so schlau ist.");
talkEntry:addResponse("Wenn ihr eine Frage habt, es gibt niemanden der es besser beantworten kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He has so much knowledge.");
talkEntry:addResponse("I have not seen anyone who is smarter than he.");
talkEntry:addResponse("If you have a question, nobody can answer it better than him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Er hat so viel Wissen.");
talkEntry:addResponse("Ich habe noch nie jemanden gesehen der so schlau ist.");
talkEntry:addResponse("Wenn ihr eine Frage habt, es gibt niemanden der es besser beantworten kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Nice towers do we have, haven't we? And many great books. Take a look.");
talkEntry:addResponse("Our forest is so beautiful, isn't it?");
talkEntry:addResponse("I enjoy it to live here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Sch�ne T�rme haben wir, nicht wahr? Und viele tolle B�cher. Werft einen Blick rein.");
talkEntry:addResponse("Unser Wald ist so wunderh�bsch, oder?");
talkEntry:addResponse("Ich genie�e es hier zu leben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Watch his daggers if you ever meet him!");
talkEntry:addResponse("He has only one aim: more wealth!");
talkEntry:addResponse("I think he believes in Nargun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Achte auf seine Dolche wenn du ihn jemals treffen solltest!");
talkEntry:addResponse("Er hat nur ein einziges Interesse: mehr Reichtum!");
talkEntry:addResponse("Ich denke er glaubt an Nargun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Only one word: Criminals.");
talkEntry:addResponse("They are all greedy and moody.");
talkEntry:addResponse("A disgusting place.");
talkEntry:addResponse("Huuu, why do remember me that I still have to pay my debts there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Nur ein Wort: Verbrecher.");
talkEntry:addResponse("Die sind all gierig und launisch.");
talkEntry:addResponse("Ein abscheulicher Platz.");
talkEntry:addResponse("Huuu, warum m�sst ihr mich erinnern, dass ich dort noch Schulden zu begleichen habe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("I don't know how such a person could become queen.");
talkEntry:addResponse("Wisdom is not one of her characteristics.");
talkEntry:addResponse("I haven't seen her so far, but she should be very pretty.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Ich wei� nicht wie so eine Person K�nigin werden konnte.");
talkEntry:addResponse("Weisheit ist nicht gerade eine ihrer Eigenschaften.");
talkEntry:addResponse("Ich habe sie noch nie gesehen, aber sie soll sehr h�bsch sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I don't know how such a person could become queen.");
talkEntry:addResponse("Wisdom is not one of her characteristics.");
talkEntry:addResponse("I haven't seen her so far, but she should be very pretty.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ich wei� nicht wie so eine Person K�nigin werden konnte.");
talkEntry:addResponse("Weisheit ist nicht gerade eine ihrer Eigenschaften.");
talkEntry:addResponse("Ich habe sie noch nie gesehen, aber sie soll sehr h�bsch sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("They think they have honour, but to be honest, they only lack on wisdom.");
talkEntry:addResponse("I think the have some quite good goldsmiths.");
talkEntry:addResponse("I would not be surprised if they have some slaves.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Die denken, dass sie Ehre h�tten, aber um ehrlich zu sein, denen mangelt es lediglich an Weisheit.");
talkEntry:addResponse("Ich denke, dass sie ein paar ganz gute Goldschmiede haben.");
talkEntry:addResponse("Ich w�re nicht �berrascht wenn die nicht einige Sklaven h�tten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Why are you not going there?");
talkEntry:addResponse("That is no place I like to live.");
talkEntry:addResponse("Are they still enslaving people?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Warum geht ihr nicht dort hin?.");
talkEntry:addResponse("Das ist kein Ort wo ich leben m�chte.");
talkEntry:addResponse("Versklaven die noch immer Leute?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Why are you not going there?");
talkEntry:addResponse("Huuu, why do remember me that I still have to pay my debts there.");
talkEntry:addResponse("They have nice game halls.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Warum geht ihr nicht dort hin?");
talkEntry:addResponse("Huuu, warum m�sst ihr mich erinnern, dass ich dort noch Schulden zu begleichen habe?");
talkEntry:addResponse("Nette Spielhallen haben sie dort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Why are you not going there?");
talkEntry:addResponse("I hope they come and free us from all this evil here.");
talkEntry:addResponse("I say you, I am very sorry that they killed their prince at Gobaith.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Warum geht ihr nicht dort hin?");
talkEntry:addResponse("Ich hoffe die kommen und befreien uns von diesem �bel hier.");
talkEntry:addResponse("Ich sage dir, dass es mir sehr leid tut, dass sie ihren Prinzen in Gobaith get�tet haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Elara, who else?");
talkEntry:addResponse("I pray to Elara.");
talkEntry:addResponse("If you look around here, you could believe I pray to Nargun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Eldra, wem sonst?");
talkEntry:addResponse("Ich bete zu Eldra.");
talkEntry:addResponse("Wenn man sich hier umsieht k�nnt man glauben Nagrun ist mein Gott.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I hope she gives me knowledge.");
talkEntry:addResponse("I believe in here as other scholars.");
talkEntry:addResponse("She will help me to solve this matter here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Ich hoffe sie verleiht wir mehr Wissen.");
talkEntry:addResponse("Wie andere Gelehrte verehre ich nur sie.");
talkEntry:addResponse("Sie wird mir helfen mein R�tsel hier zu l�sen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("One more word about him and I call the guards.");
talkEntry:addResponse("There is rumours that the temple follows him.");
talkEntry:addResponse("The Father of the Orks he is.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Ein Wort mehr �ber ihn und ich rufe die Wache.");
talkEntry:addResponse("Es gibt Ger�chte, dass der Tempel ihm folgt.");
talkEntry:addResponse("F�r Orks ist er ihr Vater, ja.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Don't believe I pray to him just because it looks chaotic here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Glaubt nur nicht ich bete zu ihm weil es hier so chaotisch aussieht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There shall be people who pray to this god.");
talkEntry:addResponse("I do not believe in this god.");
talkEntry:addResponse("Nothing compared to Elara");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Es soll Leute geben die an diesen Gott glauben.");
talkEntry:addResponse("Ich glaube nicht an diesen Gott.");
talkEntry:addResponse("Nichts im Vergleich zu Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Do I look as I sell something?");
talkEntry:addResponse("Do you remember where the gate is? GET OUT!");
talkEntry:addResponse("I can sell you this book for 1000 gold! *smirks* ");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Sehe ich aus als w�rde ich etwas verkaufen?");
talkEntry:addResponse("Erinnerst du dich wo die T�re ist? RAUS HIER!");
talkEntry:addResponse("Ich kann dir das Buch hier um 1000 Goldm�nzen verkaufen. *grinst frech*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("I am working and you are disturbing me!");
talkEntry:addResponse("The gate is behind you.");
talkEntry:addResponse("Have somebody ever told you that you are disturbing?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Ich arbeite und ihr st�rt.");
talkEntry:addResponse("Die T�r ist hinter euch.");
talkEntry:addResponse("Hat euch jemals jemand erz�hlt, dass ihr st�rend seid?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sir");
talkEntry:addTrigger("fludnar");
talkEntry:addTrigger("yednos");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("That's my name.");
talkEntry:addResponse("Impressing, you can pronounce my name correctly!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sir");
talkEntry:addTrigger("fludnar");
talkEntry:addTrigger("yednos");
talkEntry:addResponse("Das ist mein Name.");
talkEntry:addResponse("Beeindruckend, ihr k�nnt meinen Namen richtig aussprechen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("And what shall I do now?");
talkEntry:addResponse("Can you give a proper answer?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Und was soll ich jetzt tun?");
talkEntry:addResponse("K�nnt ihr eine angebrachte Antwort geben?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("And what shall I do now?");
talkEntry:addResponse("Can you give a proper answer?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Und was soll ich jetzt tun?");
talkEntry:addResponse("K�nnt ihr eine angebrachte Antwort geben?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("#me covers his nose and mumbles 'Maybe you should consider to clean your teeth. You have a very smelly breath'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("#me h�lt sich die Nase zu und murmelt 'Vielleicht solltet ihr euch die Z�hne putzen. Ihr habt einen �blen Mundgeruch'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me sitzt am Tisch und liest in einem Buch.", "#me sits at the table and reads in a book.");
talkingNPC:addCycleText("#me macht einige Notizen und seufzt leicht.", "#me takes some notes and sighs.");
talkingNPC:addCycleText("#me blickt hin und wieder �ber seine Schulter.", "#me looks over his soulder time to time.");
talkingNPC:addCycleText("#me murmelt vor sich hin: 'Orks, welches interessantes Gesch�pf'", "#me mumbles: 'Orks, how interesting creatures.'");
talkingNPC:addCycleText("#w Diese Orks... was die alles klein hauen k�nnen. Sagenhaft!", "#w Those orks... what they can crash easily. Impressing!");
talkingNPC:addCycleText("#w Der Kriegsrat besteht aus dem H�uptling, dem Schaman und dem Kriegsherrn.", "#w The war-cycle consists of the chief, the shaman and the warlord.");
talkingNPC:addCycleText("#w So dumm sind Orks ja gar nicht.", "#w Orcs are not that dumb as assumed.");
talkingNPC:addCycleText("#w Oh ein Rezept... 'gef�llter Halbing'.", "#w Oh a recipe... 'stuffed halfing'.");
talkingNPC:addCycleText("#w In der Kriegsf�hrung ist der Ork herausragend.", "#w In warfare the ork is outstanding.");
talkingNPC:addCycleText("#me betrachtet seine Notizen mit wohlwollen.", "#me looks at his notes with a satisfied glance in his face.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:addLanguage(10);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Einer der Gelehrten dieser Stadt, der sich insbesondere f�r die Rasse der Orks interessiert.", "One of the scholars of this town, who is interested in the race of orcs in particular.");
mainNPC:setUseMessage("Psss! Ruhe bitte!", "Psss! Silent please!");
mainNPC:setConfusedMessage("Was sagtet ihr? K�nntet ihr deutlicher sprechen?", "What are you saying? Could you say that again?");
mainNPC:setEquipment(1, 357);
mainNPC:setEquipment(3, 182);
mainNPC:setEquipment(11, 193);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 110);
mainNPC:setEquipment(4, 2295);
mainNPC:setEquipment(9, 34);
mainNPC:setEquipment(10, 369);
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