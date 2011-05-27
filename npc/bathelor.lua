--------------------------------------------------------------------------------
-- NPC Name: Bathelor                                                    None --
-- NPC Job:  High priest                                                      --
--                                                                            --
-- NPC Race: human                      NPC Position:  519, 128, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                                            --
-- Last parsing: May 27, 2011                            easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 519, 128, 0, 4, 'Bathelor', 'npc.bathelor', 0, 4, 5, 129, 29, 29, 255, 162, 122);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("npc.bathelor", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(113, ">", 7));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Error] Something went wrong, please inform a developer."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Bathelor the highpriest of Br�gon. Keyphrases: Hello, Br�gon, Quest, Priest, Temple."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Bathelor der Hohepriester Br�gons. Schl�sselw�rter: Hallo, Br�gon, Quest, Priester, Tempel."));
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
talkEntry:addResponse("Your pilgrimage has come to an end. You have found the temple of the Five.");
talkEntry:addResponse("Be greeted in the name of Br�gon.");
talkEntry:addResponse("Hail Br�gon! What is it, my child?");
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
talkEntry:addResponse("Eure Pilgerfahrt hat eine Ende. Ihr habt den Tempel der F�nf gefunden.");
talkEntry:addResponse("Seid gegr��t im Namen Br�gons.");
talkEntry:addResponse("Was gibt es, mein Kind?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Your pilgrimage has come to an end. You have found the temple of the Five.");
talkEntry:addResponse("Be greeted in the name of Br�gon.");
talkEntry:addResponse("Hail Br�gon! What is it, my child?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Eure Pilgerfahrt hat eine Ende. Ihr habt den Tempel der F�nf gefunden.");
talkEntry:addResponse("Seid gegr��t im Namen Br�gons.");
talkEntry:addResponse("Was gibt es, mein Kind?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("May Br�gon speed you into the flames");
talkEntry:addResponse("May the fire in you never be extinguished!");
talkEntry:addResponse("Go with Br�gon's blessing.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Gehet hin in Flammen.");
talkEntry:addResponse("Und m�ge das Feuer in euch niemals erl�schen.");
talkEntry:addResponse("Gehet mit Br�gons Segen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("May Br�gon speed you into the flames");
talkEntry:addResponse("May the fire in you never be extinguished!");
talkEntry:addResponse("Go with Br�gon's blessing.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Gehet hin in Flammen.");
talkEntry:addResponse("Und m�ge das Feuer in euch niemals erl�schen.");
talkEntry:addResponse("Gehet mit Br�gons Segen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I feel enlightened.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Ich f�hle mich erleuchtet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Bathelor, high<space>priest of Br�gon. Praise Br�gon!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Bathelor, Hohepriester Br�gons. Lobet Br�gon!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A spark to a flame I"));
talkEntry:addResponse("Very well. To prove that you are a truly devout servant of the Five, I want you to pay hommage to them. Visit each of the shrines of the Five in the temple and honour them.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Feuer und Flamme I"));
talkEntry:addResponse("Sehr gut. Um zu beweisen, dass ihr ein frommer Diener der F�nf seid, m�chte ich, dass ihr ihnen huldigt. Besucht jeden der Schreine der F�nf und ehret sie.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A spark to a flame I"));
talkEntry:addResponse("Very well. To prove that you are a truly devout servant of the Five, I want you to pay hommage to them. Visit each of the shrines of the Five in the temple and honour them.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Feuer und Flamme I"));
talkEntry:addResponse("Sehr gut. Um zu beweisen, dass ihr ein frommer Diener der F�nf seid, m�chte ich, dass ihr ihnen huldigt. Besucht jeden der Schreine der F�nf und ehret sie.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded five candles."));
talkEntry:addResponse("Praise the Five, hail Br�gon! Here, take these candles, <remove - for> they will guide you through the darkest nights.");
talkEntry:addConsequence(npc.base.consequence.item.item(43, 5, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst f�nf Kerzen."));
talkEntry:addResponse("Lobet die F�nf, gepriesen sei Br�gon! Hier, nehmt diese Kerzen, sie werden euch ein Licht in der Dunkelheit sein.");
talkEntry:addConsequence(npc.base.consequence.item.item(43, 5, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I said you should prove your honour to the Five at their shrines. Go!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 1));
talkEntry:addResponse("Ich habe gesagt, ihr sollt den F�nf die Ehre an ihren Schreinen erweisen. Los!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 1));
talkEntry:addResponse("I said you should prove your honour to the Five at their shrines. Go!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 1));
talkEntry:addResponse("Ich habe gesagt, ihr sollt den F�nf die Ehre an ihren Schreinen erweisen. Los!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A spark to a flame II"));
talkEntry:addResponse("I appreciate your devotion. Rituals in honour of Br�gon all have one thing in common: Something has to be burnt! As a believer, will you please go out and fetch me ten logs of naldor wood?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 3));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Feuer und Flamme II"));
talkEntry:addResponse("Ich w�rdige eure Hingabe. Rituale in Ehren an Br�gon haben alle eines gemeinsam: Etwas muss verbrannt werden! Als Gl�ubiger, w�rdet ihr bitte losziehen und mir zehn Scheite Naldorholz besorgen?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 3));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A spark to a flame II"));
talkEntry:addResponse("I appreciate your devotion. Rituals in honour of Br�gon all have one thing in common: Something has to be burnt! As a believer, will you please go out and fetch me ten logs of naldor wood?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 3));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Feuer und Flamme II"));
talkEntry:addResponse("Ich w�rdige eure Hingabe. Rituale in Ehren an Br�gon haben alle eines gemeinsam: Etwas muss verbrannt werden! Als Gl�ubiger, w�rdet ihr bitte losziehen und mir zehn Scheite Naldorholz besorgen?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(544, "all", ">", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a ruby ring."));
talkEntry:addResponse("Ah, the next ritual to honour Br�gon can take place thanks to you. Take this ring as a sign of your faith.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(544, 10));
talkEntry:addConsequence(npc.base.consequence.item.item(68, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(544, "all", ">", 9));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen Rubinring."));
talkEntry:addResponse("Ah, das n�chste Ritual zu Ehren Br�gons kann dank euch stattfinden. Nehmt diesen Ring als Zeichen eures Glaubens.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(544, 10));
talkEntry:addConsequence(npc.base.consequence.item.item(68, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Naldor wood burns best and a Br�gon ritual needs a lot of it to be burnt. Br�gon will reward you for your dedication.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 4));
talkEntry:addResponse("Naldorholz brennt am besten und bei einem Br�gonritual wird zumeist eine Menge verbrannt. Br�gon wird euch f�r eure Hingabe entlohnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 4));
talkEntry:addResponse("Naldor wood burns best and a Br�gon ritual needs a lot of it to be burnt. Br�gon will reward you for your dedication.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 4));
talkEntry:addResponse("Naldorholz brennt am besten und bei einem Br�gonritual wird zumeist eine Menge verbrannt. Br�gon wird euch f�r eure Hingabe entlohnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A spark to a flame III"));
talkEntry:addResponse("I see you are really serious in your faith in Br�gon. I think you are worthy to become a devotee of Br�gon. Enter his shrine and sacrifice what is already his and then come back to me to receive my blessings.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 5));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Feuer und Flamme III"));
talkEntry:addResponse("Ich sehe, ihr meint es wirklich ernst mit dem Glauben an Br�gon. Ich denke, ihr seid w�rdig, einer seiner Anh�nger zu werden. Gehet zu seinem Schrein und opfert, was ohnehin sein ist. Kommt dann zu mir zur�ck, um meinen Segen zu empfangen.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 5));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A spark to a flame III"));
talkEntry:addResponse("I see you are really serious in your faith in Br�gon. I think you are worthy to become a devotee of Br�gon. Enter his shrine and sacrifice what is already his and then come back to me to receive my blessings.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 5));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Feuer und Flamme III"));
talkEntry:addResponse("Ich sehe, ihr meint es wirklich ernst mit dem Glauben an Br�gon. Ich denke, ihr seid w�rdig, einer seiner Anh�nger zu werden. Gehet zu seinem Schrein und opfert, was ohnehin sein ist. Kommt dann zu mir zur�ck, um meinen Segen zu empfangen.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(401, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a red priest robe."));
talkEntry:addResponse("#me raises his hands and chants: 'Be blessed in the name of Br�gon! Go forth and accomplish deeds in his name.'");
talkEntry:addConsequence(npc.base.consequence.item.item(2419, 1, 799, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 6));
talkEntry:addCondition(npc.base.condition.quest.quest(401, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst eine rote Priesterrobe."));
talkEntry:addResponse("#me hebt seine H�nde und singt: 'Seid gesegnet in Br�gons Namen! Gehet hin und vollbringt Taten in seinem Namen.'");
talkEntry:addConsequence(npc.base.consequence.item.item(2419, 1, 799, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(113, "=", 7));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("You hesitate to sacrifice your worldly possessions to Br�gon? It will go up in flames one day anyway, trust me!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 6));
talkEntry:addResponse("Z�gert ihr, euren weltlichen Besitz Br�gon zu opfern? Er wird sowieso eines Tages in Flammen aufgehen, glaubt es mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 6));
talkEntry:addResponse("You hesitate to sacrifice your worldly possessions to Br�gon? It will go up in flames one day anyway, trust me!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 6));
talkEntry:addResponse("Z�gert ihr, euren weltlichen Besitz Br�gon zu opfern? Er wird sowieso eines Tages in Flammen aufgehen, glaubt es mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(401, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I see your faith in Br�gon is still strong. Renounce him and he will renounce you. He will care little, but you will probably end up scorched.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(401, "=", 2));
talkEntry:addResponse("Wie ich sehe, ist euer Glaube an Br�gon noch immer stark. Entsagt ihm und er entsagt euch. Ihn k�mmert es wenig, aber ihr werdet wohl versengt werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(401, "=", 2));
talkEntry:addResponse("I see your faith in Br�gon is still strong. Renounce him and he will renounce you. He will care little, but you will probably end up scorched.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 7));
talkEntry:addCondition(npc.base.condition.quest.quest(401, "=", 2));
talkEntry:addResponse("Wie ich sehe, ist euer Glaube an Br�gon noch immer stark. Entsagt ihm und er entsagt euch. Ihn k�mmert es wenig, aber ihr werdet wohl versengt werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Out of my sight, you traitor! Blasphemer! Infidel!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 7));
talkEntry:addResponse("Aus meinen Augen, ihr Verr�ter! Gottesl�sterer! Ungl�ubiger!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 7));
talkEntry:addResponse("Out of my sight, you traitor! Blasphemer! Infidel!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(113, "=", 7));
talkEntry:addResponse("Aus meinen Augen, ihr Verr�ter! Gottesl�sterer! Ungl�ubiger!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am the high priest of Br�gon in these lands. Any gifts or sacrifices to Br�gon should be given to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin der Hohepriester Br�gons in diesen L�ndereien. Jedweder Spenden oder Opfer an Br�gon solltet ihr mir geben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am the high priest of Br�gon in these lands. Any gifts or sacrifices to Br�gon should be given to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin der Hohepriester Br�gons in diesen L�ndereien. Jedweder Spenden oder Opfer an Br�gon solltet ihr mir geben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The land of Gobaith is burnt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Gobaithland ist abgebrannt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("So, are you a devout follower of Br�gon, the eternal flame, the spark of life?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Seid ihr ein frommer Anh�nger Br�gons, der ewigen Flamme, des Lebensfunkens?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("priest");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am the high priest of Br�gon. He speaks through my voice and acts with my hands. Ally with me and you ally with the Lord of Fire!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("temple");
talkEntry:addResponse("This is the temple of the Five. If you even dare to ask who the Five are, I will burn your body and feed the charred remains to the crows. Marvel at their magnificence!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("five");
talkEntry:addTrigger("old");
talkEntry:addResponse("Eldan is the spirit, Ushara is the body, Tanora is the blood and Findari is the breath, but Br�gon is the heart!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("eleven");
talkEntry:addTrigger("young");
talkEntry:addResponse("Imposters! they are all frauds! Call themselves gods, they are nothing but servants and serfs!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fire");
talkEntry:addResponse("Blazing flames will consume everything that is not just when the days end approaches. Ask the refugees of Gobaith how this looks!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("donation");
talkEntry:addTrigger("sacrifi");
talkEntry:addResponse("If you really want to perform acts on behalf of Br�gon, ask me for a task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Priest");
talkEntry:addResponse("Ich bin der Hohenpriester Br�gons. Er spricht durch meine Stimme und handelt mit meinen H�nden. Legt euch mit mir an und ihr legt euch mit dem Herren des Feuers an.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tempel");
talkEntry:addResponse("Dies ist der Tempel der F�nf. Wenn ihr es auch nur wagt, zu fragen, wer die F�nf sind, werde ich euren K�rper verbrennen und die verkohlten �berreste an die Kr�hen verf�ttern. Bestaunt ihre Pracht!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("F�nf");
talkEntry:addTrigger("alt");
talkEntry:addResponse("Eldan ist der Geist, Ushara der Leib, Tanora das Blut und Findari ist der Atem. Doch Br�gon ist das Herz!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elf");
talkEntry:addTrigger("jung");
talkEntry:addResponse("Betr�ger! Sie alle sind Betr�ger! Nennen sich selbst G�tter. Sie sind nichts als Diener, Leibeigene!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("feuer");
talkEntry:addResponse("Lodernde Flammen werden all das vertilgen, was nicht gerecht ist, wenn das Ende der Tage naht. Fragt die Fl�chtlinge von Gobaith, wie so etwas aussieht!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Opfer");
talkEntry:addTrigger("Spende");
talkEntry:addResponse("Wenn ihr wirklich Taten im Namen Br�gons vollbringen wollt, fragt mich nach einem Auftrag.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("What is his name again? Elvaine? What a stupid name for an infidel.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Wie hie� er noch gleich? Elvaine? Was f�r ein d�mlicher Name, selbst f�r einen Ungl�ubigen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("What is his name again? Elvaine? What a stupid name for an infidel.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Wie hie� er noch gleich? Elvaine? Was f�r ein d�mlicher Name, selbst f�r einen Ungl�ubigen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Runewick, Runewick, Runewick. You mean to be wise, but instead of being a crusader in the spirit of Eldan, you half heartedly idolise Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick, Runewick, Runewick. Sie meinen, weise zu sein, aber statt Kreuzritter im Geiste Eldans zu sein, verg�ttern sie halbherzig Elara.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The unbelievers will burn!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Der Ungl�ubige soll verbrennen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Galmair is a godless place. The gods do not give a damn about this cesspool of sin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair ist ein gottloser Ort, denn die G�tter scheren sich einen Dreck um diesen S�ndenpfuhl.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("I must admit I do not quite understand the ways of 'her majesty'. On the one hand, it is no secret that she revered Br�gon with all her heart, but on the other hand she preaches faith in Malach�n.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Ich muss gestehen, dass ich die Wege 'ihrer Majest�t' nicht ganz nachvollziehen kann. Einerseits ist es kein Geheimnis, dass sie Br�gon mit ganzem Herzen verehrt, andererseits aber predigt sie den Glauben an Malach�n.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I must admit I do not quite understand the ways of 'her majesty'. On the one hand, it is no secret that she revered Br�gon with all her heart, but on the other hand she preaches faith in Malach�n.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ich muss gestehen, dass ich die Wege 'ihrer Majest�t' nicht ganz nachvollziehen kann. Einerseits ist es kein Geheimnis, dass sie Br�gon mit ganzem Herzen verehrt, andererseits aber predigt sie den Glauben an Malach�n.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Br�gon is well respected in Cadomyr, so I respect Cadomyr. The scorching sun shines each day to remind them of the omnipresence of Br�gon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Br�gon wird in Cadomyr geachtet, also achte ich Cadomyr. Die sengende Sonne scheint sie jeden Tag an die Allgegenw�rtigkeit Br�gons zu erinnern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ah, we talk now about a far away country? One can think what they want about the Albarians: At least they are religious!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Ah, reden wir jetzt �ber Weitwegland? Man kann �ber die Albarier denken, was man will: Wenigstens sind sie fromm!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("One day, Gynk will go up in flames, whether it be through an experiment with white gnomish liquids or be it the wrath of Br�gon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Eines Tages wird Gynk in Flammen aufgehen. Sei es durch ein gnomisches Experiment mit wei�en Fl�ssigkeiten oder sei es durch den Zorn Br�gons.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Never trust nor believe a Salkamaerian. Respect them for what they do but put no faith in them repeating those deeds.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Glaubt oder traut niemals einem Salkamaeriern. Respektiert sie, f�r das, was sie tun, aber legt keinen Glauben darein, dass sich ihre Taten wiederholen werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("There are five Gods: Br�gon, Eldan, Findari, Tanora and Ushara. If you did not know that before, please fall to your death now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Es gibt f�nf G�tter: Br�gon, Eldan, Findari, Tanora und Ushara. Wenn ihr das nicht wu�tet, fallt bitte tot um.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Br�gon is the heart; whatever we do, we do it because he commands our heart. Be it good, be it evil, Br�gon is in all we do. He is the spark that makes our life worth living.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Br�gon ist das Herz; was auch immer wir tun, er tun es, weil es unser Herz gebietet. Sei es gut, sei es b�se, Br�gon ist in allem, was wir tun. Er ist Funke, der unser Leben lebenswert macht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Eldan is the spirit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Eldan ist der Geist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Findari is the breath.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Findari ist der Atem.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Tanora is the blood.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Tanora ist das Blut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ushara is the body.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Ushara ist der Leib.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Burn you!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Verbrennt euch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("I am happy to tell you about the Five and in particular Br�gon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Gerne erz�hle ich euch von den F�nf und Br�gon im Besonderen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bathelor");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("My name is not that important, you can call me your 'Highness' or 'Excellency'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bathelor");
talkEntry:addResponse("Mein Name ist nicht so wichtig, ihr k�nnt mich auch 'Durchlaucht' oder 'Exzellenz' nennen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Blessed be Br�gon!");
talkEntry:addResponse("Praise Br�gon!");
talkEntry:addResponse("Honour Br�gon!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Gelobet sei Br�gon!");
talkEntry:addResponse("Lobet Br�gon!");
talkEntry:addResponse("Ehret Br�gon!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Blessed be Br�gon!");
talkEntry:addResponse("Praise Br�gon!");
talkEntry:addResponse("Honour Br�gon!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Gelobet sei Br�gon!");
talkEntry:addResponse("Lobet Br�gon!");
talkEntry:addResponse("Ehret Br�gon!");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Ich bin Bathelor!", "I am Bathelor!");
talkingNPC:addCycleText("Lobet Br�gon!", "Praise Br�gon!");
talkingNPC:addCycleText("Wir brauchen hier kein Wasser, lasst das Feuer brennen.", "We need no water, let the fire burn.");
talkingNPC:addCycleText("Wir haben das Feuer nicht entfacht, es hat schon immer gebrannt, seitdem sich die Welt bewegt.", "We have not sparked the fire, it has always burned, since then the world has turned.");
talkingNPC:addCycleText("Ihr hattet genug Zeit zu rasten, diese ist nun abgelaufen.", "You<remove - 've> had enough time to rest, this has now expired.");
talkingNPC:addCycleText("Feuer!", "Fire!");
talkingNPC:addCycleText("Es brennt!", "It burns!");
talkingNPC:addCycleText("Gelobt sei Br�gon!", "Blessed be Br�gon!");
talkingNPC:addCycleText("Tr�ume ich oder ist dieses Feuer die ewige Flamme?", "Am I only dreaming or is this fire, the eternal flame?");
talkingNPC:addCycleText("Vollbringt Taten im Namen Br�gons.", "Complete ambitious actions in the name of Br�gon.");
talkingNPC:addCycleText("Ich diene dem Gott des Feuers. Und er bringt euch... Feuer!", "I serve the God of Fire. And he will bring you... fire!");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Bathelor der Hohepriester Br�gons.", "This NPC is Bathelor the high priest of Br�gon.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 358);
mainNPC:setEquipment(3, 818);
mainNPC:setEquipment(11, 2419);
mainNPC:setEquipment(5, 2783);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 2295);
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