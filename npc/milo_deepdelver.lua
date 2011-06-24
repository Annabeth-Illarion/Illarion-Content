--------------------------------------------------------------------------------
-- NPC Name: Milo Deepdelver                                         Runewick --
-- NPC Job:  Herbalist                                                        --
--                                                                            --
-- NPC Race: halfling                   NPC Position:  883, 634, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Authors:  Nanuk                                                            --
--           Estralis Seborian                                                --
--                                                                            --
-- Last parsing: June 24, 2011                           easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (2, 883, 634, 0, 4, 'Milo Deepdelver', 'npc.milo_deepdelver', 0, 2, 0, 255, 255, 255, 232, 187, 145);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.skill")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.consequence.skill")
require("npc.base.talk")
module("npc.milo_deepdelver", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is the herbalist Milo Deepdelver. He knows some things about the Gods and herb lore."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist der Kr�uterkundige Milo Deepdelver. Er wei� ein paar Dinge �ber die G�tter und Kr�uterkunde."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=>", 3));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is the herbalist Milo Deepdelver. He knows some things about the Gods and herb lore."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=>", 3));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist der Kr�uterkundige Milo Deepdelver. Er wei� ein paar Dinge �ber die G�tter und Kr�uterkunde."));
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
talkEntry:addResponse("Greetings my friend and may the Gods be with you. I don't have much time, as this bullheaded mule of mine doesn't take a step forward. But if you know anything about mules lent me a hand, will you?");
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
talkEntry:addResponse("Ich gr��e euch mein Freund und m�gen die G�tter mit euch sein. Ich habe leider nicht sehr viel Zeit, weil mein starrsinniger Esel keine Schritt mehr tut. Aber falls ihr etwas von Eseln versteht, dann k�nnt ihr mir gerne zur Hand gehen.");
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
talkEntry:addResponse("Greetings my friend and may the Gods be with you. I don't have much time, as this bullheaded mule of mine doesn't take a step forward. But if you know anything about mules lent me a hand, will you?");
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
talkEntry:addResponse("Ich gr��e euch mein Freund und m�gen die G�tter mit euch sein. Ich habe leider nicht sehr viel Zeit, weil mein starrsinniger Esel keine Schritt mehr tut. Aber falls ihr etwas von Eseln versteht, dann k�nnt ihr mir gerne zur Hand gehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("Farewell my friend. May Oldra guide your ways where ever you go.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Auf Wiedersehen mein Freund. M�ge Oldra �ber euren Wegen wachen, wo auch immer ihr hingeht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Farewell my friend. May Oldra guide your ways where ever you go.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Auf Wiedersehen mein Freund. M�ge Oldra �ber euren Wegen wachen, wo auch immer ihr hingeht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("#me sighs: 'Well, you know, I was on my way back home, but the Gods blessed me with this old mule, that doesn't want to move.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("#me seufzt: 'Ach, wisst ihr, ich war auf dem Weg nach Hause, aber die G�tter haben mich mit diesem alten Esel bedacht, der sich nicht mehr bewegen will.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("My Name is Milo Deepdelver. I am a herbalist from Runewick. If the Gods are with me, I will be on my way home with this no good mule of mine!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Mein Name ist Milo Deepdelver. Ich bin ein Kr�uterkundiger aus Runewick. So die G�tter es wollen, bin ich auf dem Weg nach Hause mit meinem unn�tzen Esel hier!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("name");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("My Name is Milo Deepdelver. I am a herbalist from Runewick. If the Gods are with me, I will be on my way home with this no good mule of mine!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("name");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Mein Name ist Milo Deepdelver. Ich bin ein Kr�uterkundiger aus Runewick. So die G�tter es wollen, bin ich auf dem Weg nach Hause mit meinem unn�tzen Esel hier!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Milo");
talkEntry:addTrigger("Deepdelver");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Yes, this is my name. If you need some information on the Gods or herb lore just talk to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Milo");
talkEntry:addTrigger("Deepdelver");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ja, so hei�e ich. Falls ihr ein paar Informationen zu den G�ttern oder Kr�uterkunde ben�tigt, stehe ich zu eurer Verf�gung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mule");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 0));
talkEntry:addResponse("This stupid mule of mine doesn't move a single step and I am late returning to my family. Could you help me with my problem?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Esel");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 0));
talkEntry:addResponse("Meine dummer Esel bewegt sich kein St�ck mehr nach vorne und ich bin jetzt schon sp�t dran, zu meiner Familie zur�ckzukehren. K�nnt Ihr mir bei meinem Problem helfen?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("yes");
talkEntry:addTrigger("help");
talkEntry:addTrigger("mule");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Milo's mule"));
talkEntry:addResponse("My mule is doing anything for carrots, but a few miles ago they ran out. If you could get me ten carrots, I could show you a few tricks with herb lore, as I am quite proficient in this art.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ja");
talkEntry:addTrigger("Hilfe");
talkEntry:addTrigger("helfe");
talkEntry:addTrigger("Esel");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Milos Esel"));
talkEntry:addResponse("Mein Esel w�rde alles f�r Karotten machen aber vor ein paar Meilen sind sie mir ausgegangen. Wenn Ihr mir zehn Karotten besorgen k�nntet, k�nnte ich euch ein paar Tricks in Kr�uterkunde beibringen, denn ich bin sehr bewandert in dieser Kunst.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("problem");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Milo's mule"));
talkEntry:addResponse("My mule is doing anything for carrots, but a few miles ago they ran out. If you could get me ten carrots, I could show you a few tricks with herb lore, as I am quite proficient in this art.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Problem");
talkEntry:addTrigger("Mission");
talkEntry:addTrigger("Quest");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Milos Esel"));
talkEntry:addResponse("Mein Esel w�rde alles f�r Karotten machen aber vor ein paar Meilen sind sie mir ausgegangen. Wenn Ihr mir zehn Karotten besorgen k�nntet, k�nnte ich euch ein paar Tricks in Kr�uterkunde beibringen, denn ich bin sehr bewandert in dieser Kunst.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("no");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 1));
talkEntry:addResponse("Damn, you don't want to help me? What a pity! But please come back, if you want to lent me a hand with my mule!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("nein");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 1));
talkEntry:addResponse("Verdammt, ihr wollt mir nicht helfen? Wie schade! Aber bitte kommt wieder zur�ck zu mir, wenn ihr mir mit meinem Esel zur Hand gehen wollt!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("carrot");
talkEntry:addTrigger("help");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mule");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=", 0));
talkEntry:addResponse("Yes, I am still waiting for those ten carrots you wanted to bring to me. Please hurry up, my family is waiting for me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("M�hre");
talkEntry:addTrigger("Wurzel");
talkEntry:addTrigger("Karotte");
talkEntry:addTrigger("Hilfe");
talkEntry:addTrigger("helfe");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Esel");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=", 0));
talkEntry:addResponse("Ja, ich warte immer noch auf die zehn Karotten, die ihr mir versprochen habt, zu bringen. Bitte, beeilt euch, meine Familie macht sich bestimmt schon Sorgen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("problem");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Yes, I am still waiting for those ten carrots you wanted to bring to me. Please hurry up, my family is waiting for me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Problem");
talkEntry:addTrigger("Mission");
talkEntry:addTrigger("Quest");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ja, ich warte immer noch auf die zehn Karotten, die ihr mir versprochen habt, zu bringen. Bitte, beeilt euch, meine Familie macht sich bestimmt schon Sorgen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("carrot");
talkEntry:addTrigger("help");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mule");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "<", 10));
talkEntry:addResponse("But this is not the number of carrots I would need. I would not get home with this few. Bring me back exactly ten carrots and please hurry up!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("M�hre");
talkEntry:addTrigger("Wurzel");
talkEntry:addTrigger("Karotte");
talkEntry:addTrigger("Hilfe");
talkEntry:addTrigger("helfe");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Esel");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "<", 10));
talkEntry:addResponse("Aber das ist nicht die Anzahl an Karotten, die ich brauche. Mit den wenigen w�rde ich es niemals bis nach Hause schaffen. Bringt mir genau 10 Karotten und bitte beeilt euch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("problem");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "<", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("But this is not the number of carrots I would need. I would not get home with this few. Bring me back exactly ten carrots and please hurry up!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Problem");
talkEntry:addTrigger("Mission");
talkEntry:addTrigger("Quest");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "<", 10));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Aber das ist nicht die Anzahl an Karotten, die ich brauche. Mit den wenigen w�rde ich es niemals bis nach Hause schaffen. Bringt mir genau 10 Karotten und bitte beeilt euch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("carrot");
talkEntry:addTrigger("help");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mule");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 89));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You received one potion of intelligence, one potion of constitution and one bottle of elven wine."));
talkEntry:addResponse("Thanks a lot for bringing me those carrots. Now I will have no problems returning home with this lazy bastard. But I can't teach you anything anymore. You are already surpassing my skills. Here let me give you some of my provisions in exchange, especially this nice wine from the elven domain!");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.item.item(59, 1, 333, 55559555));
talkEntry:addConsequence(npc.base.consequence.item.item(59, 1, 333, 55595555));
talkEntry:addConsequence(npc.base.consequence.item.item(1318, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("M�hre");
talkEntry:addTrigger("Wurzel");
talkEntry:addTrigger("Karotte");
talkEntry:addTrigger("Hilfe");
talkEntry:addTrigger("helfe");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Esel");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 89));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�lst einen Trank der Intelligenz, einen Trank der Konstitution und eine Flasche Elfenwein."));
talkEntry:addResponse("Ich danke euch vielmals f�r die Karotten. Nun werde ich kein Problem mehr mit diesem faulen Bastard haben. Aber ich kann euch leider nichts mehr beibringen. Ihr �bertrefft meine F�higkeiten bereits. Lasst mich euch im Austausch ein paar meiner Vorr�te geben, insbesondere dieser exzellente Elven-Wein!");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.item.item(59, 1, 333, 55559555));
talkEntry:addConsequence(npc.base.consequence.item.item(59, 1, 333, 55595555));
talkEntry:addConsequence(npc.base.consequence.item.item(1318, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("problem");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 89));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You received one potion of intelligence, one potion of constitution and one bottle of elven wine."));
talkEntry:addResponse("Thanks a lot for bringing me those carrots. Now I will have no problems returning home with this lazy bastard. But I can't teach you anything anymore. You are already surpassing my skills. Here let me give you some of my provisions in exchange, especially this nice wine from the elven domain!");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.item.item(59, 1, 333, 55559555));
talkEntry:addConsequence(npc.base.consequence.item.item(59, 1, 333, 55595555));
talkEntry:addConsequence(npc.base.consequence.item.item(1318, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Problem");
talkEntry:addTrigger("Mission");
talkEntry:addTrigger("Quest");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 89));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�lst einen Trank der Intelligenz, einen Trank der Konstitution und eine Flasche Elfenwein."));
talkEntry:addResponse("Ich danke euch vielmals f�r die Karotten. Nun werde ich kein Problem mehr mit diesem faulen Bastard haben. Aber ich kann euch leider nichts mehr beibringen. Ihr �bertrefft meine F�higkeiten bereits. Lasst mich euch im Austausch ein paar meiner Vorr�te geben, insbesondere dieser exzellente Elven-Wein!");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.item.item(59, 1, 333, 55559555));
talkEntry:addConsequence(npc.base.consequence.item.item(59, 1, 333, 55595555));
talkEntry:addConsequence(npc.base.consequence.item.item(1318, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("carrot");
talkEntry:addTrigger("help");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mule");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 70));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] Your skill in herb lore increased."));
talkEntry:addResponse("Thanks a lot for bringing me those carrots. Now I will have no problems returning home with this lazy bastard. Here let me show you a few things about herbs!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 2));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("M�hre");
talkEntry:addTrigger("Wurzel");
talkEntry:addTrigger("Karotte");
talkEntry:addTrigger("Hilfe");
talkEntry:addTrigger("helfe");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Esel");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 70));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Deine F�higkeit in Kr�uterkunde wurde gesteigert."));
talkEntry:addResponse("Ich danke euch vielmals f�r die Karotten. Nun werde ich kein Problem mehr haben, mit diesem faulen Bastard heim zu kehren. Kommt, lasst mich euch ein paar Dinge zu Kr�uterkunde zeigen!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 2));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("problem");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 70));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] Your skill in herb lore increased."));
talkEntry:addResponse("Thanks a lot for bringing me those carrots. Now I will have no problems returning home with this lazy bastard. Here let me show you a few things about herbs!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 2));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Problem");
talkEntry:addTrigger("Mission");
talkEntry:addTrigger("Quest");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 70));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Deine F�higkeit in Kr�uterkunde wurde gesteigert."));
talkEntry:addResponse("Ich danke euch vielmals f�r die Karotten. Nun werde ich kein Problem mehr haben, mit diesem faulen Bastard heim zu kehren. Kommt, lasst mich euch ein paar Dinge zu Kr�uterkunde zeigen!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 2));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("carrot");
talkEntry:addTrigger("help");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mule");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 30));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] Your skill in herb lore increased."));
talkEntry:addResponse("Thanks a lot for bringing me those carrots. Now I will have no problems returning home with this lazy bastard. Here let me show you a few things about herbs!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("M�hre");
talkEntry:addTrigger("Wurzel");
talkEntry:addTrigger("Karotte");
talkEntry:addTrigger("Hilfe");
talkEntry:addTrigger("helfe");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Esel");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 30));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Deine F�higkeit in Kr�uterkunde wurde gesteigert."));
talkEntry:addResponse("Ich danke euch vielmals f�r die Karotten. Nun werde ich kein Problem mehr haben, mit diesem faulen Bastard heim zu kehren. Kommt, lasst mich euch ein paar Dinge zu Kr�uterkunde zeigen!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("problem");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 30));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] Your skill in herb lore increased."));
talkEntry:addResponse("Thanks a lot for bringing me those carrots. Now I will have no problems returning home with this lazy bastard. Here let me show you a few things about herbs!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Problem");
talkEntry:addTrigger("Mission");
talkEntry:addTrigger("Quest");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", ">", 30));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Deine F�higkeit in Kr�uterkunde wurde gesteigert."));
talkEntry:addResponse("Ich danke euch vielmals f�r die Karotten. Nun werde ich kein Problem mehr haben, mit diesem faulen Bastard heim zu kehren. Kommt, lasst mich euch ein paar Dinge zu Kr�uterkunde zeigen!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 5));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("carrot");
talkEntry:addTrigger("help");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mule");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", "<", 31));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] Your skill in herb lore increased."));
talkEntry:addResponse("Thanks a lot for bringing me those carrots. Now I will have no problems returning home with this lazy bastard. Here let me show you a few things about herbs!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 10));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("M�hre");
talkEntry:addTrigger("Wurzel");
talkEntry:addTrigger("Karotte");
talkEntry:addTrigger("Hilfe");
talkEntry:addTrigger("helfe");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Esel");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", "<", 31));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Deine F�higkeit in Kr�uterkunde wurde gesteigert."));
talkEntry:addResponse("Ich danke euch vielmals f�r die Karotten. Nun werde ich kein Problem mehr haben, mit diesem faulen Bastard heim zu kehren. Kommt, lasst mich euch ein paar Dinge zu Kr�uterkunde zeigen!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 10));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("problem");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", "<", 31));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] Your skill in herb lore increased."));
talkEntry:addResponse("Thanks a lot for bringing me those carrots. Now I will have no problems returning home with this lazy bastard. Here let me show you a few things about herbs!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 10));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Problem");
talkEntry:addTrigger("Mission");
talkEntry:addTrigger("Quest");
talkEntry:addCondition(npc.base.condition.skill.skill(2, "herb lore", "<", 31));
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "=>", 10));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Deine F�higkeit in Kr�uterkunde wurde gesteigert."));
talkEntry:addResponse("Ich danke euch vielmals f�r die Karotten. Nun werde ich kein Problem mehr haben, mit diesem faulen Bastard heim zu kehren. Kommt, lasst mich euch ein paar Dinge zu Kr�uterkunde zeigen!");
talkEntry:addConsequence(npc.base.consequence.skill.skill(2, "herb lore", "+", 10));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10));
talkEntry:addConsequence(npc.base.consequence.quest.quest(106, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mule");
talkEntry:addTrigger("help");
talkEntry:addTrigger("carrot");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 3));
talkEntry:addResponse("With the carrots you have brought I will have no problems returning home. May Adron give you wine whenever you desire.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("M�hre");
talkEntry:addTrigger("Wurzel");
talkEntry:addTrigger("Esel");
talkEntry:addTrigger("Hilfe");
talkEntry:addTrigger("helfe");
talkEntry:addTrigger("Karotte");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 3));
talkEntry:addResponse("Mit den Karotten, die ihr gebracht habt, werde ich kein Problem haben, nach Hause zur�ck zu kehren. Adron gebe euch Wein wann immer ihr danach gel�stet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("problem");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("With the carrots you have brought I will have no problems returning home. May Adron give you wine whenever you desire.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Problem");
talkEntry:addTrigger("Mission");
talkEntry:addTrigger("Quest");
talkEntry:addCondition(npc.base.condition.quest.quest(106, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Mit den Karotten, die ihr gebracht habt, werde ich kein Problem haben, nach Hause zur�ck zu kehren. Adron gebe euch Wein wann immer ihr danach gel�stet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("God");
talkEntry:addTrigger("Gods");
talkEntry:addResponse("The Gods effect our lives in all aspects. It would be wise to give them due respect. There are the Younger and Elder Gods. Which group are you interested in?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Die G�tter haben auf alle Aspekte unseres Lebens Einfluss. Es w�re weise, Ihnen Respekt zu erweisen. Es gibt die Jungen und die Alten G�tter. Zu welcher Gruppe wollt ihr mehr erfahren?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elder Gods");
talkEntry:addTrigger("Elder");
talkEntry:addResponse("The Elder Gods were first on this world. There are five of them with the name of Ushara, Br�gon, Eldan, Toanora and Findari.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Alte G�tter");
talkEntry:addTrigger("Die Alten");
talkEntry:addResponse("Die Alten G�tter kamen zuerst auf diese Welt. Es gibt f�nf von Ihnen und sie hei�en Ushara, Br�gon, Eldan, Tanora und Findari.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("younger Gods");
talkEntry:addTrigger("Younger");
talkEntry:addResponse("The Younger Gods were created by the Elder Ones. Their names are Narg�n, Elara, Adron, Oldra, Cherga, Malach�n, Irmorom, Sirani, Zhambra, Ronagan and Moshran.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Junge G�tter");
talkEntry:addTrigger("Die Jungen");
talkEntry:addResponse("Die Jungen G�tter wurden von den Alten erschaffen. Ihre Namen lauten Narg�n, Elara, Adron, Oldra, Cherga, Malach�n, Irmorom, Sirani, Zhambra, Ronagan und Moshran.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oldra is the beginning of everything on earth. From her all has emerged. Well, maybe with the exception of this stubborn mule.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Oldra verdanken wir alles auf dieser Welt. Aus Ihr ist jeder hervorgegangen. Nun ja, vielleicht mit Ausnahme von diesem st�rrischen Tier hier.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Our mother, Goddess of the earth. May She be praised!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Unsere Mutter, G�ttin der Erde. Geehrt sei Sie!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Br[��a]gon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Now we are talking about a great God. He imprisoned Moshran a long time ago. Unfortunately he escaped.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Br[��a]gon");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ja, das ist mal einer der ganz gro�en G�tter. Er hat vor langer Zeit Moshran eingekerkert. Zu unserem Ungl�ck ist er wieder entkommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Eldan is one of the old Gods. The only thing I have in common with him might be the wooden staff I am carring.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Eldan ist einer der alten G�tter. Das einzige, was ich mit Ihm gemeinsam habe ist wohl dieser h�lzerne Stab, den ich trage.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Tanora is the Goddess of Water. But you should go and ask a lizardman about her. They call her Zelphia.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Tanora ist die G�ttin des Wassers. Aber ihr solltest einen Echsenmenschen �ber Sie befragen. Bei ihnen ist Sie unter dem Namen Zelphia bekannt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Yes, the Goddess Tanora is known among the lizardmen by this name.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ja, die G�ttin Tanora ist bei den Echsenmenschen unter diesem Namen bekannt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The best tavern music I know comes from those bards and musicians who worship the Goddess of Air.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Die beste Tavernenmusik, die ich kenne, kommt von den Barden und Musikern, welche die G�ttin der Luft verehren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Narg[��u]n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Argh, don't call him by his name unless you want to seek his attention. Chaos follows his path and we don't really want that, do we?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Narg[��u]n");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Argh, nennt Ihn doch nicht bei seinem Namen sofern ihr nicht Seine Aufmerksamkeit erregen wollt. Auf seinen Pfaden folgt das Chaos und das ist nicht etwas, was wir wirklich wollen, oder?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Elara is the host of wisdom and knowledge. She is not really my kind but if you are much into reading and stuff like that, you should give it a try.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Elara ist angef�llt mir Weisheit und Wissen. Sie ist nicht so das richtige f�r mich, aber wenn Ihr gerne in B�chern st�bert, dann w�re Sie genau das richtige f�r euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Adron is one of my favoured Gods. When I sit together with my friends and drikng a wine we compete with toasts to the God of Wine and Festivities.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Adron ist eines meine beliebtesten G�tter. Wenn ich mit Freunden auf ein Glas Wein zusammen sitze, wetteifern wir mit Trinkspr�chen f�r den Gott des Weines und der Feste.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("When I hear the name of Cherga the hairs on my feet stay on end. You should be on the watch if you meet one of the followers of the Goddess of Spirits and the Underworld.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Wenn ich den Namen Cherga h�re, stehen mir die Fu�haare zu Berge. Ihr solltet vorsichtig sein, wenn ich auf Anh�nger der G�ttin der Geister und der Unterwelt trefft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malach[��i]n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Malach�n, the God of Battle and Hunting, flourishes his swords too much. Why battle, if all problems can be discussed with a nice roast on your plate and a beaker with wine in your hand?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malach[��i]n");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Malach�n, der Gott der Jagt und der Schlachten, fuchtelt mir ein wenig zu viel mit Schwertern herum. Warum sich streiten, wenn man alle Probleme bei einem sch�nen Braten und einem Humpen Wein besprechen k�nnte?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("You should never trust those dwarven traders praying to the God of Trade and Craftsmanship. With one hand they offer you a good deal and with the other they strip you of all your belongings.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ihr solltet niemals diesen Zwergenh�ndlern vertrauen, die zum Gott des Handels und Handwerks beten. Mit einer Hand bieten sie Euch einen guten Handel an und mit der anderen klauen sie euch das letzte Kupferst�ck aus der Tasche.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I have to admit, that Sirani sometimes is dancing in my dreams. Oh yes, the Goddess of Love and Pleasure surely is a sight to be remembered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich muss zugeben, dass Sirani manchmal in meinen Tr�umen tanzt. Ach ja, die G�ttin der Liebe und Freuden ist wahrlich ein Anblick, an den man sich gerne erinnert.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Count yourself lucky if you have a friend who is a true follower of Zhambra. You can trust this kind of person absolutely. Not one would dare to deceive the God of Friendship and Loyalty in such a way.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Sch�tzt euch gl�cklich, wenn ihr einen Freund habt, welcher ein ehrf�rchtiger Anh�nger von Zhambra ist. Auf so eine Person ist immer Verla�. Es w�rde keiner wagen, dem Gott der Freundschaft und Treue so zu hintergehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me laughs heartily. 'The rogue in our godly pantheon. Always good for a joke. But you should never ever stay an his bad side. The God of Thieves and Shadow doesn't like to be on the short end of the stick.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("#me lacht herzhaft. 'Der Spitzbube in unserem G�tter Pantheon. Er ist immer f�r einen guten Scherz zu haben. Aber ihr solltet ihm niemals auf dem falschen Fu� erwischen. Der Gott der Diebe und der Schatten liebt es nicht, den K�rzeren zu ziehen.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("If you are not tired of your life, you should stay far away from the God of Blood and Bones. I don't even dare to wisper his name, that no misfortune or evil may befall me. He lurks in the dark waiting for a weakness of your soul, to get hold of it... forever. Be on your guard!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Wenn Ihr nicht lebensm�de seid, so haltet euch fern vom Gott des Blutes und der Gebeine. Ich wage nicht, seinen Namen auszusprechen, so mir nicht Ungl�ck und Verderben widerf�hrt. Er lauert im Dunkeln auf eine Schw�che eurer Seele, um ihrer habhaft zu werden... auf ewige Zeiten. Seid auf der Hut!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("herbalist");
talkEntry:addResponse("You can do a lot of stuff working as a herbalist. You can heal the wounded or poison the culprit. You can strengthen the weak or weaken the strong. You can change the biggest troll to the smallest fairy or create devastating bombs. All that is possible!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kr�uterkundiger");
talkEntry:addResponse("Als Kr�uterkundiger kan man eine Menge machen. Ihr k�nnt die Kranken heilen oder den Schuldigen vergiften. Ihr k�nnt den Schwachen stark oder den Starken schwach machen. Ihr k�nnt den gr��ten Troll in die kleinste Fee verwandeln oder zerst�rerische Bomben herstellen. All das ist m�glich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Druid");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("You can do a lot of stuff working as a druid. You can heal the wounded or poison the culprit. You can strengthen the weak or weaken the strong. You can change the biggest troll to the smallest fairy or create devastating bombs. All that is possible!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Druid");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Als Druide kann man eine Menge machen. Ihr k�nnt die Kranken heilen oder den Schuldigen vergiften. Ihr k�nnt den Schwachen stark oder den Starken schwach machen. Ihr k�nnt den gr��ten Troll in die kleinste Fee verwandeln oder zerst�rerische Bomben herstellen. All das ist m�glich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("herb lore");
talkEntry:addResponse("It is a good and decent trade. You learn a lot about herbs and other ingredients, their usage and the history of herb lore.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kr�uterkunde");
talkEntry:addResponse("Dies ist ein gutes und respektables Handwerk. Man lernt eine Menge zu Kr�utern umd anderen Ingredienzien, ihren Gebrauch und die Geschichte der Kr�uterkunde.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("herb");
talkEntry:addResponse("There are different kind of herbs which can be found on the ground. You just need a sickel in your hand to find them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kr�uter");
talkEntry:addResponse("Es gibt verschiedene Arten von Kr�utern, die auf der Erde gefunden werden k�nnen. Ihr ben�tigt nur eine Sichel in eurer Hand, um sie zu finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ingredient");
talkEntry:addResponse("There are some kind of minerals which are used to finish a brew. In general it is gem dust.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ingredienz");
talkEntry:addResponse("Es gibt bestimmt Arten von Mineralien, mit denen man das Gebr�u 'abschmeckt'. In der Regel ist dies der zermalene Staub von Edelsteinen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("usage");
talkEntry:addResponse("You will need a copper kettle in your belt, the plants and ingrediences and an empty bottle in your hand to create a potion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gebrauch");
talkEntry:addResponse("Ihr ben�tigt einen kupfernen Kessel im G�rtel, die Kr�uter und Ingredienzien und eine leere Flasche in der Hand, um einen Trank herzustellen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("kettle");
talkEntry:addResponse("Last I knew a merchant at the harbor is selling a copper kettle.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kessel");
talkEntry:addResponse("Soweit ich wei� verkauft ein H�ndler am Hafen einen kupfernen Kessel.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("history");
talkEntry:addResponse("The history of herb lore is very interesting. It dates back to the old seer Nifrindarai from the perished Elven domain of the Raenandor dynasty.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Geschichte");
talkEntry:addResponse("Die Geschichte der Kr�uterkunde ist sehr interessant. Sie basiert auf die Lehren des alten Sehers Nifrindarai aus den untergegangenen Elfenreichen der Geschlechter der Raenandor.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nifrindarai");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He has found out that all herbs contain two active substances with differnet effects. The success of a formula therefore requires a harmonic combination of the ingredients and their proportions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nifrindarai");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Er hat herausgefunden, dass alle Kr�uter zwei aktive Substanzen mit unterschiedlichen Wirkungen beinhalten. Der Erfolg einer Formel bedarf somit einer harmonischen Zusammenstellung der Ingredienzien und deren Mischungsverh�ltnisse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Raenandor");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I don't know much about their story as even the name is so old that it is covered in dust.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Raenandor");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich wei� nicht viel �ber ihre Geschichte, da selbst der Name schon so alt ist, dass der Staub bei deren Erw�hnung aufgewirbelt wird.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She is our wise and benevolent archmage, the ruler of Runewick. Never before was there such a fair mind in such a fair lady.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Sie ist unser weiser und mildt�tiger Erzmagier, die Gebieterin von Runewick. Niemals zuvor ward gesehen ein so brillianter Kopf auf einem so wundersch�nen K�rper.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Elvaine Morgan is the present archmage of Runewick. From far and near people flock to her just to see her in flesh.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Elvaine Morgan ist die Erzmagierin von Runewick. Von nah und fern kommen die Menschen in Massen, nur um sie leibhaftig zu erblicken.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Could you imagine a nicer place to live at than Runewick? This fabulous city of wisdom fills my heart with joy.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("K�nnt Ihr Euch einen sch�neren Ort zum Leben als Runewick vorstellen? Diese fabelhafte Stadt der Weisheit erf�llt mich jedesmal mit gro�er Freude.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("An unpleasent person with too much goldat his disposal. I even heard that when his father died he had his fingers in the pie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ein unangenehmer Zeitgenosse mit zu viel Gold in seinen H�nden. Ich habe auch geh�rt, dass er seine Finger im Spiel hatte, als sein Vater gestorben ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Galmair is no good place to be, if you ask me. They just crave for money but their character is spoiled.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Wenn ihr mich fragt, so ist Galmair kein guter Ort sich aufzuhalten. Ihr Sinn steht nur nach Geld, doch ihr Charakter ist verdorben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rosaline");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("Edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Quite stiff they are over there in Cadomyr and their Queen Rosaline is no exception. I would expect that the back of most people in Cadomyr is hurting from all the bowing they have to perform.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rosaline");
talkEntry:addTrigger("K�nigin");
talkEntry:addTrigger("Edwards");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Die sind schon recht steif dr�ben in Cadomyr und ihre K�nigin Rosaline ist da keine Ausnahme. I w�rde mich nicht wundern, wenn der R�cken der meisten Leute in Cadomyr schmerzt aufgrund der ganzen Verbeugungen, die sie t�glich aus�ben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Cadomyrs customes are strange. Rather than relying on wisdom and knowledge their rank determines status in society. It could even happen that a total retard rules the land. Crazy, isn't it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Cadomyrs Gebr�uche sind eigenartig. Anstatt sich auf Weisheit und Wissen zu berufen, wird der Status einer Person in der Gesellschaft durch dessen Rang bestimmt. Es k�nnte sogar passieren, dass ein absoluter Volltrottel das Land beherrscht. Verr�ckt, nicht wahr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Last I heard there was another rebellion going on in Albar. These poor peasants were forming an uprise again. But as always those so called nobles will put an end to it pretty soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Albar");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Soweit ich geh�rt habe, gab es wieder mal eine Rebellion in Albar. Diese armen Bauern haben sich wieder erhoben. Aber wie so h�ufig werden diese sogenannten Edlen dem bald ein Ende setzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gynk");
talkEntry:addTrigger("Gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I tell you, you can smell a person from Gync three miles upwind. These foul people live in stinking and chaotic dungheaps, that they actually call cities.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gync");
talkEntry:addTrigger("Gynk");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich sage es euch, ihr k�nnt eine Person von Gynk drei Meilen gegen den Wind riechen. Diese verdorbenen Leute leben in stingenden und chaotischen Misthaufen, was sie auch noch als St�dte bezeichen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Salkamar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Once I have been to Salkamar. Oh, these beautiful places, these great people! You should go there yourself one day and you will not return the same as you are today.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Salkamar");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ein mal bin ich in Salkamar gewesen. Ach, diese wundersch�nen Orte, diese einzigartigen Leute! Ihr solltet selbst einmal dort hingehen und ich verspreche euch, dass ihr bei eurer R�ckkehr nicht mehr der gleiche sein werdet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me laughs loudly: 'Nobody will ever stand again with his two feet on Gobaith. I expect that you knew that.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("#me lacht laut: 'Niemand wird jemals wieder mit seinen beiden F��en auf Gobaith stehen. Ich denke mir, dass ihr das gewu�t habt.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Halfling");
talkEntry:addResponse("Yes, I am a Halfling. Naturally the best people there are! Good for a nice chat and easy to have around. You only need to watch you provisions if one of us is around.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Halbling");
talkEntry:addResponse("Ja, ich bin ein Halbling. Selbstverst�ndlich das beste Volk weit und breit! Immer f�r einen netten Plausch zu haben und gute Gesellschafter. Man muss nur auf seinen Proviant aufpassen, wenn wir in der N�he sind.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hobbit");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Some call us Hobbits but most refer to us as Halflings.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hobbit");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Manche nennen uns Hobbits, aber von den meisten werden wir als Halblinge bezeichnet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dwarf");
talkEntry:addTrigger("Dwarves");
talkEntry:addTrigger("Dwarfs");
talkEntry:addResponse("There is quite a strong community of Dwarves living at Galmair in the mountain range.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zwerg");
talkEntry:addResponse("Es gibt eine recht gro�e Niederlassung der Zwerge in Galmair in den Bergen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Human");
talkEntry:addResponse("Humans provide the biggest group of people in this land. You will find good and bad people amongst them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Menschen");
talkEntry:addResponse("Die Menschen stellen die gr��te Gruppe in diesen Landen. Du wirst gute und schlechte Leute unter ihnen finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elves");
talkEntry:addTrigger("Elfs");
talkEntry:addResponse("I don't really have much to do with the Elves. They are quite snobbish if you ask my.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elben");
talkEntry:addTrigger("Elfen");
talkEntry:addResponse("Mit den Elfen habe ich eigentlich nicht viel zu tun. Sie sind mir einfach zu eingebildet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elb");
talkEntry:addTrigger("Elf");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I don't really have much to do with the Elves. They are quite snobbish if you ask my.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elb");
talkEntry:addTrigger("Elf");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Mit den Elfen habe ich eigentlich nicht viel zu tun. Sie sind mir einfach zu eingebildet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lizard");
talkEntry:addResponse("The Lizardmen are a very guarded community. With the exception of Zerarisa at Cape Farewell I don't really know them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Echsen");
talkEntry:addResponse("Die Echsenmenschen sind eine sehr verschlossene Gruppe. Mit Ausnahme von Zerarisa am Kap des Abschiedes kenne ich nicht wirklich jemanden von ihnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Orc");
talkEntry:addResponse("The Orcs are a kind of brutish lot. You don't want to mess with them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ork");
talkEntry:addResponse("Die Orks sind recht raue Gesellen. Ihr solltet keinen Streit mit ihnen anfangen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fairy");
talkEntry:addTrigger("Fairies");
talkEntry:addResponse("The little flying creatures can be annoying sometimes, but in general they are good natured. I haven't seen many of them around though.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fee");
talkEntry:addResponse("Die kleinen fliegenden Kreaturen k�nnen manchmal recht nervig sein, aber in der Regel sind sie freundlich. Ich habe nur in letzter Zeit wenige von ihnen gesehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gnom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Sorry, I have never really met a Gnome. I just heard that they are similar to dwarves but I can't say if that is true.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gnom");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Entschuldigt, aber ich habe bisher noch keinen Gnom angetroffen. Man h�rt, sie w�ren den Zwergen nicht un�hnlich, aber ob das stimmt, kann ich nicht sagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Goblin");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("In my youth my mother used to tell me lurid tales about these little creatures. I would advice to stay away from them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Goblin");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("In meiner Jugend hat meine Mutter mir immer Horrorgeschichten von den Goblins erz�hlt. Mein Rat w�re, sich von ihnen fern zu halten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zerarisa");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("A very nice lizardwoman living at Cape Farewell. She works as a fisherwoman.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zerarisa");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Eine sehr nette Echsenfrau, die am Kap des Abschiedes lebt. Sie ist eine Fischerin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fronita");
talkEntry:addTrigger("Emery");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She is the dwarven glass artisan of Runewick. A really good lass with the best bottles in town.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fronita");
talkEntry:addTrigger("Emery");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Sie ist die zwergische Glask�nstlerin von Runewick. Ein wirklich sympatisches M�del, die die besten Flaschen der Stadt bl��t.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nana");
talkEntry:addTrigger("Winterbutter");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Nana is a good friend of mine. Normally you can find her at the fields in Yewdale.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nana");
talkEntry:addTrigger("Winterbutter");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Nana ist eine gute Freundin von mir. Man kann sie meistens bei den Feldern im Eibenthal finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("family");
talkEntry:addResponse("I am living together with my wife and child in Runewick. A peaceful place to be.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Familie");
talkEntry:addResponse("Ich lebe zusammen mit meiner Frau und meinem Kind in Runewick. Es ist ein sehr friedvoller Ort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wife");
talkEntry:addResponse("My wife is called Rose and she is the most beautiful women you will ever see!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frau");
talkEntry:addResponse("Meine Frau hei�t Rose und sie ist die sch�nste Frau, welche ihr je zu Gesicht bekommen werdet!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("child");
talkEntry:addResponse("I have a small daughter of three years and she is the sunshine of my life.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kind");
talkEntry:addResponse("Ich habe eine kleine Tochter von drei Jahren und sie ist der Sonnenschein in meinem Leben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sell");
talkEntry:addResponse("Sorry, I don't sell anything. I am trying to get this stupid mule to move. So, get out of my way if you don't want to help me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("verkauf");
talkEntry:addResponse("Entschuldigt, aber ich verkaufe nichts. Ich versuche diesen dummen Esel in Bewegung zu setzten. Also, geht mir aus dem Weg, wenn ihr mir nicht helfen wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Nun komm schon, du st�rrischer alter Esel!", "Come on, you stubborn old mule!");
talkingNPC:addCycleText("#me zieht verzweifelt am Halfter des Esels.", "#me desperately pulls at the headcollar of the mule.");
talkingNPC:addCycleText("#me versucht dem Esel gut zuzureden.", "#me tries to cajole the mule.");
talkingNPC:addCycleText("Jetzt beweg dich endlich, du Mistviech von einem Esel!", "Now move, you bastard of a mule!");
talkingNPC:addCycleText("Ich verspreche dir, ich mach aus dir Eselswurst, wenn du dich nicht auf der Stelle in Bewegung setzt.", "I promise I will turn you into mule sausage if you do not move right away.");
talkingNPC:addCycleText("Soll dich doch Cherga ins Reich der Toten holen, du faules St�ck!", "May Cherga take you into the realm of the dead, you numbskull!");
talkingNPC:addCycleText("#me schl�gt mit dem Stock nach dem Esel.", "#me hits the mule with a stick.");
talkingNPC:addCycleText("Auf der Ponderosa-Ranch w��te man mit einem Esel wie dir umzugehen!", "They would know how to deal with with a mule like you on the Ponderosa Ranch!");
talkingNPC:addCycleText("Bei den Haaren meiner F��e, ich trete dir gleich in den Hintern!", "By the hairs on my feet, I will kick you in the butt!");
talkingNPC:addCycleText("Wegen dir kommen wir zu sp�t zum Essen, du dickk�pfige Kreatur!", "Because of you we will be late for dinner, you bullheaded creature!");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist der Kr�uterkundige Milo Deepdelver.", "This NPC is the herbalist Milo Deepdelver.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 810);
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