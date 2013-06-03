--------------------------------------------------------------------------------
-- NPC Name: Julio Canaille                                              None --
-- NPC Job:  quester                                                          --
--                                                                            --
-- NPC Race: human                      NPC Position:  29, 525, 0             --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                Illarion easyNPC Editor 1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 29, 525, 0, 6, 'Julio Canaille', 'npc.julio_canaille', 0, 0, 3, 255, 255, 255, 225, 218, 212);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.consequence.state")
require("npc.base.talk")
module("npc.julio_canaille", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Julio Canaille the ghost. Keywords: Peg Leg, Quest, Gods, Tell something."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("Ask me for my 'peg leg'! If you need other things, it's better to search a settlement and ask there. Landlubber!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Julio Canaille der Geist. Schl�sselw�rter: Holzbein, Quest, G�tter, Erz�hl was."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("Frag mich nach mein 'Holzbein'! Wenn du andere Dinge brauchst gehst du besser zu ner Siedlung, deswegen. Landratte!");
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
talkEntry:addResponse("Chhh.");
talkEntry:addResponse("Greets!");
talkEntry:addResponse("Aye!");
talkEntry:addResponse("Arr!");
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
talkEntry:addResponse("Chhh.");
talkEntry:addResponse("Gr�sse!");
talkEntry:addResponse("Aye!");
talkEntry:addResponse("Arr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Chhh.");
talkEntry:addResponse("Greets!");
talkEntry:addResponse("Aye!");
talkEntry:addResponse("Arr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Chhh.");
talkEntry:addResponse("Gr�sse!");
talkEntry:addResponse("Aye!");
talkEntry:addResponse("Arr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Arr! Don't get bitten by the seadogs!");
talkEntry:addResponse("Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Arr! lass dich nich von d'n Seehunden fressn!");
talkEntry:addResponse("Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Arr! Don't get bitten by the seadogs!");
talkEntry:addResponse("Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Arr! lass dich nich von d'n Seehunden fressn!");
talkEntry:addResponse("Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Aye, my missing leg hurts again!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Aye, men verlorenes Bein schmerzt wieder!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I'm Julio Canaille. Aye! But everyone yells Peg Leg Jack! And you landlubber, kindly call me Capt'n! Clear?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Julio Canaille. Aye! Aber alle nenn'n mich Holzfu�-Jack! Und du Landratte, gef�lligst K�pt`n! Klar?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(208, "all", "=>", 1, nil));
talkEntry:addTrigger("peg leg");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("money");
talkEntry:addTrigger("earn");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Even as the spirit is speaking these words, a rapier rises from the tomb; as you reach out it starts to glow but then the light disappears."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(208, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2675, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(283, 1, 333, {["gemLevel"] = "2"}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 5));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 15));
talkEntry:addResponse("Aye my peg leg! Here it is, ch! I'm so glad!. Thank you a thousand times, and may the wind blow your sails.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(208, "all", "=>", 1, nil));
talkEntry:addTrigger("Holz");
talkEntry:addTrigger("Holzbein");
talkEntry:addTrigger("bein");
talkEntry:addTrigger("verdienen");
talkEntry:addTrigger("aufgabe");
talkEntry:addTrigger("abenteuer");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Noch w�hrend der Geist diese Worte spricht, steigt ein Rapier aus seinem Grab empor, als du es mit den H�nden ber�hrst beginnt es sp�hrisch zu gl�hen. Dann erlischt das Licht."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(208, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2675, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(283, 1, 333, {["gemLevel"] = "2"}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 5));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 15));
talkEntry:addResponse("Aye Mein Holzbein! Dah isses Ja! Ch! Ich bin ja so froh dar�ber! Dir sei Gedankt! Tausende Male, m�ge der Wind immer in dein Segel blasen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(208, "all", "=>", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Even as the spirit is speaking these words, a rapier rises from the tomb; as you reach out it starts to glow but then the light disappears."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(208, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2675, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(283, 1, 333, {["gemLevel"] = "2"}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 5));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 15));
talkEntry:addResponse("Aye my Peg Leg! Here it is, ch! I'm so glad! Thank you a thousand times, and may the wind blow your sails.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(208, "all", "=>", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Noch w�hrend der Geist diese Worte spricht, steigt ein Rapier aus seinem Grab empor, als du es mit den H�nden ber�hrst beginnt es sp�hrisch zu gl�hen. Dann erlischt das Licht."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(208, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2675, 1, 999, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(283, 1, 333, {["gemLevel"] = "2"}));
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 5));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 15));
talkEntry:addResponse("Aye Mein Holzbein! Dah isses Ja! Ch! Ich bin ja so froh dar�ber! Dir sei Gedankt! Tausende Male, m�ge der Wind immer in dein Segel bla�en!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 4));
talkEntry:addTrigger("peg leg");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("money");
talkEntry:addTrigger("earn");
talkEntry:addResponse("Ch... I feel my peg leg, it's close. Don't you put it on your belt! Where have you got it? Expect to be richly rewarded, should you bring it to me! Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 4));
talkEntry:addTrigger("Holz");
talkEntry:addTrigger("Holzbein");
talkEntry:addTrigger("bein");
talkEntry:addTrigger("verdienen");
talkEntry:addTrigger("aufgabe");
talkEntry:addTrigger("abenteuer");
talkEntry:addResponse("Ch... Ich f�hl mein Holzbein ist hier irgendwo... aber du has'ts nicht in deinem G�rtel! Wo hast du es? Eh!? Du sollst reich belohnt werden, wenn du es mir bringst! Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addResponse("Ch... I feel my peg leg, it's close. Don't you put it on your belt! Where have you got it? Expect to be richly rewarded, should you bring it to me! Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addResponse("Ch... Ich f�hl mein Holzbein ist hier irgendwo... aber du has'ts nicht in deinem G�rtel! Wo hast du es? Eh!? Du sollst reich belohnt werden, wenn du es mir bringst! Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 5));
talkEntry:addTrigger("peg leg");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("money");
talkEntry:addTrigger("earn");
talkEntry:addResponse("Aye-ch. Have fun with the rapier, I hope you will become a great hero. Ch. Always remember, %CHARNAME, it doesn't matter if you win or lose, as long as you look really good doing it!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 5));
talkEntry:addTrigger("Holz");
talkEntry:addTrigger("Holzbein");
talkEntry:addTrigger("bein");
talkEntry:addTrigger("verdienen");
talkEntry:addTrigger("aufgabe");
talkEntry:addTrigger("abenteuer");
talkEntry:addResponse("Aye-ch. Viel Spass mit dem Rapier. Ich hoffe du wirst ein gro�er Held. Ch. Und denke immer daran, %CHARNAME: 'Es ist nicht wichtig ob man gewinnt oder verliert, solange das was man tut wirklich cool aussieht.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addResponse("Aye-ch. Have fun with the rapier, I hope you will become a great hero. Ch. Always remember, %CHARNAME, it doesn't matter if you win or lose, as long as you look really good doing it!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addResponse("Aye-ch. Viel Spa� mit dem Rapier. Ich hoffe du wirst ein gro�er Held. Ch. Und denke immer daran, %CHARNAME: 'Es ist nicht wichtig ob man gewinnt oder verliert, solange das was man tut wirklich cool aussieht.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=>", 2));
talkEntry:addCondition(npc.base.condition.item.item(208, "all", "=>", 1, nil));
talkEntry:addTrigger("peg leg");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("money");
talkEntry:addTrigger("earn");
talkEntry:addResponse("Arr! Do you try to fool me? This isn't my peg leg! Ch! Ch! Ch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=>", 2));
talkEntry:addCondition(npc.base.condition.item.item(208, "all", "=>", 1, nil));
talkEntry:addTrigger("Holz");
talkEntry:addTrigger("Holzbein");
talkEntry:addTrigger("bein");
talkEntry:addTrigger("verdienen");
talkEntry:addTrigger("aufgabe");
talkEntry:addTrigger("abenteuer");
talkEntry:addResponse("Arr! Willste mich verschei�ern!? Das is nich meen Holzbein! Ch! Ch! Ch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=>", 2));
talkEntry:addCondition(npc.base.condition.item.item(208, "all", "=>", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addResponse("Arr! Do you try to fool me? This isn't my peg leg! Ch! Ch! Ch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=>", 2));
talkEntry:addCondition(npc.base.condition.item.item(208, "all", "=>", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addResponse("Arr! Willste mich verschei�ern!? Das is nich meen Holzbein! Ch! Ch! Ch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=>", 1));
talkEntry:addTrigger("peg leg");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("money");
talkEntry:addTrigger("earn");
talkEntry:addResponse("Aye, aye, I can't rest, my old peg leg causes pain. That old Prandlin, damn - DAMN!... he must have stolen it. Arr! Curse you Prandlin! Hear that, Prandlin? CURSE on you! Eh landlubber, do me a favour and get my peg leg back!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=>", 1));
talkEntry:addTrigger("Holz");
talkEntry:addTrigger("Holzbein");
talkEntry:addTrigger("bein");
talkEntry:addTrigger("verdienen");
talkEntry:addTrigger("aufgabe");
talkEntry:addTrigger("abenteuer");
talkEntry:addResponse("Aye, aye. Ich kann nich Ruhn. Meen altes Holzbeen schmerzt! Der alte Prandlin hat's mir gestohln! Ver-VERFLUCHT! ...sei der alte Prandlin. Arr! Du - Landratte! Geh Prandlin suchen und bring meen Holzbein zur�ck!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=>", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addResponse("Aye, aye, I can't rest, my old peg leg causes pain. That old Prandlin, damn - DAMN!... he must have stolen it. Arr! Curse you Prandlin! Hear that, Prandlin? CURSE on you! Eh landubber, do me a favour and get my peg leg back!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(304, "=>", 1));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addResponse("Aye, aye. Ich kann nich Ruhn. Meen altes Holzbeen schmerzt! Der alte Prandlin hat's mir gestohln! Ver-VERFLUCHT! ...sei der alte Prandlin. Arr! Du - Landratte! Geh Prandlin suchen und bring meen Holzbein zur�ck!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("peg leg");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("money");
talkEntry:addTrigger("earn");
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 1));
talkEntry:addResponse("Aye, aye, I can't rest, my old peg leg causes pain. That old Prandlin, damn - DAMN!... he must have stolen it. Arr! Curse you Prandlin! Hear that, Prandlin? CURSE on you! Eh landlubber, do me a favour and get my peg leg back!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Holz");
talkEntry:addTrigger("Holzbein");
talkEntry:addTrigger("bein");
talkEntry:addTrigger("verdienen");
talkEntry:addTrigger("aufgabe");
talkEntry:addTrigger("abenteuer");
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 1));
talkEntry:addResponse("Aye, aye. Ich kann nich Ruhn. Meen altes Holzbeen schmerzt! Der alte Prandlin hat's mir gestohln! Ver-VERFLUCHT! ...sei der alte Prandlin. Arr! Du - Landratte! Geh Prandlin suchen und bring meen Holzbein zur�ck!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 1));
talkEntry:addResponse("Aye, aye, I can't rest, my old Peg Leg causes pain. That old Prandlin, damn - DAMN!... he must have stolen it. Arr! Curse you Prandlin! Hear that, Prandlin? CURSE on you! Eh landlubber, do me a favour and get my peg leg back!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("job");
talkEntry:addTrigger("problem");
talkEntry:addConsequence(npc.base.consequence.quest.quest(304, "=", 1));
talkEntry:addResponse("Aye, aye. Ich kann nich Ruhn. Meen altes Holzbeen schmerzt! Der alte Prandlin hat's mir gestohln! Ver-VERFLUCHT! ...sei der alte Prandlin. Arr! Du - Landratte! Geh Prandlin suchen und bring meen Holzbein zur�ck!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("Ch-h. I'm a ghost... Got no legs, got no arms.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ch-h. Ich bin ein Geist... was soll ich gro� arbeitn?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("Ch-h. I'm a ghost... Got no legs, got no arms.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ch-h. Ich bin ein Geist... was soll ich gro� arbeitn?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("I heard Gobaith had some trouble, whatever, it's backwater anyway.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Ich hab geh�rt um Gobaith stehts nicht gut. Naja. Iss sowieso n' Kaff. ");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Arr! Heroical doings requires a well sounding name!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Arr! Heldenhafte Taten erfordern wohl klingende Namen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Skipper");
talkEntry:addTrigger("Captn");
talkEntry:addTrigger("Captain");
talkEntry:addResponse("Aye-aye! Who doesn't know the famous tales of Peg Leg Jack? Ahoy, that's me! Even the gods said it was a shame when they tied me to gallows.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kaptn");
talkEntry:addTrigger("Kapit�n");
talkEntry:addTrigger("Kapiten");
talkEntry:addResponse("Aye-aye! Wer kenn nicht die Geschichtn vom ber�hmten Holzbein-Jack? Ahoi, das bin ich! Sogar die G�tter fandens �d, als sie mich dann doch an den Galgen gekn�pft haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("prandlin");
talkEntry:addResponse("Aye, old Prandlin lives somwhere in Runewick and awaits death while he's sleeping. Once he was a pirate hunter... but some day he grew too old. Before that though he managed to have me executed at gallows.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("prandlin");
talkEntry:addResponse("Aye, der alte Prandlin lebt irgendwo in Runewick und wartet darauf nicht mehr aufwachen zu m�ssen. Fr�her hatter Piratn gejagt... irgendwann ist er zu alt daf�r gewordn. Aye, aber davor hatte er noch Zeit mich an den Galgen zu bringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("The dead don't care about... politics.");
talkEntry:addResponse("A fat lot I care about that meatball. Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Die Toten interessiern sich nich f�r Politik.");
talkEntry:addResponse("Was k�mmern mich diese Fleischklopse? Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("The dead don't care about... politics.");
talkEntry:addResponse("A fat lot I care about that meatball. Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Die Toten interessiern sich nich f�r Politik.");
talkEntry:addResponse("Was k�mmern mich diese Fleischklopse? Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Some day, Runewick will just be a name, between thousands of others, in a dirty, scruffy old book.");
talkEntry:addResponse("#me rattles his bones. 'Runewick, Runewick, Runewick. Everyone there's an uptight couch potato.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Und irgendwann, ist auch Runewick nur noch 'n Name in einem staubigen Buch.");
talkEntry:addResponse("#me klappert mit den Knochen. 'Runewick, Runewick, Runewick. Das sind doch alles verklemmte Stubenhocker dort.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("The dead don't care about... politics.");
talkEntry:addResponse("A fat lot I care about that meatball. Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Die Toten interessiern sich nich f�r Politik.");
talkEntry:addResponse("Was k�mmern mich diese Fleischklopse? Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Some day, Galmair will just be a name, between thousands of others, in a dirty, scruffy old book.");
talkEntry:addResponse("#me rattles his bones. 'Galmair, Galmair, Galmair. Everyone there's a grasping cutthroat.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Und irgendwann, ist auch Galmair nur noch 'n Name in einem staubigen Buch.");
talkEntry:addResponse("#me klappert mit den Knochen. 'Galmair, Galmair, Galmair. Das sind doch alles geizige Halsabschneider dort.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("The dead don't care about... politics.");
talkEntry:addResponse("A fat lot I care about that meatball. Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Die Toten interessiern sich nich f�r Politik.");
talkEntry:addResponse("Was k�mmern mich diese Fleischklopse? Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("The dead don't care about... politics.");
talkEntry:addResponse("A fat lot I care about that meatball. Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Die Toten interessiern sich nich f�r Politik.");
talkEntry:addResponse("Was k�mmern mich diese Fleischklopse? Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Some day, Cadomyr will just be a name, beetween thousands of others, in a dirty, scruffy old book.");
talkEntry:addResponse("#me rattles his bones. 'Cadomyr, Cadomyr, Cadomyr. Everyone there's a dumb bull.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Und irgendwann, ist auch Cadomyr nur noch 'n Name in einem staubigen Buch.");
talkEntry:addResponse("#me klappert mit den Knochen. 'Cadomyr, Cadomyr, Cadomyr. Das sind doch alles dumme Stiere dort.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("A fat lot I care about those meatballs. Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Was k�mmern mich diese Fleischklopse? Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("A fat lot I care about those meatballs. Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Was k�mmern mich diese Fleischklopse? Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("A fat lot I care about those meatballs. Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Was k�mmern mich diese Fleischklopse? Ch-h!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Well I'm quite old, and therefore rather prudent. Ask me about each single one of them. Adron - Bragon - Cherga - Elara - Eldan - Findari - Irmorom - Malachin - Moshran - Nargun - Oldra - Ronagan - Sirani - Tanora - Ushara - Zhambra.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Bin verdammt alt, also sehr wei�e... nich whar? Frag mich �ber alle aus! Adron - Bragon - Cherga - Elara - Eldan - Findari - Irmorom - Malachin - Moshran - Nargun - Oldra - Ronagan - Sirani - Tanora - Ushara - Zhambra.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Once I drunk with Adron in person at The Grumbler's Head! Or was the guy called Anton? Ch-ch...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Ich w�rd dich bel�gen, wenn ich's nicht besser w�sste. Einst zechte ich mit Adron pers�nlich im The Grumbler's Head. Oder hie� der typ Anton? Ch-ch...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Bragon 'nd his dragons! Ch-ch. their fire isn't that funny you may think.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Bragon, und seine Drachen. Ch-ch. Mit Feuer ist nicht zu Spa�en.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Cherga! Why - WHY? Please take me with you - let me rest.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Cherga! Warum, warum nur? Warum lasst ihr mich hier versauern? Nehmt mich doch endlich mit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Condescension and arrogance were never much use to me. The Goddess of mages.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Besserwisserei und Klugschei�erei hab ich nie gebraucht. Die G�ttin der Magier.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("A clever, Old God, but do not question me about that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Eldan? So ein alter kluger Gott. Aber fragt mich nicht dar�ber aus.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Elven Goddess... I don't know. Cha-cha!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Elfeng�ttin. Wei� ich nichts, kenn mich nicht aus. Cha-cha!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("God of tightwads, feltmuzzles and fluffbeards.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Der Gott der Geizkragen, Flilzmaul und Flauschb�rte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("God of the retarded and pigheads.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Der Gott der Dummen und Starrk�pfigen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("The Bonelord. My advice? Keep your distance.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Der Knochenlord. Besser ist's man h�lt sich davon fern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Such a friendly fella! I think I won his last shirt, when playing cards... Or was the guy called Norbert? Ch-ch...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("So ein netter Kerl! Ich glaub, einst hab ich ihn beim Kartenspiel das letzte Hemd ausgezogen. Oder hie� der Tyb Norbert? Ch-ch...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Oldra makes the trees grow, at least that's what the halfers say. Ch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Oldra mach das die B�ume wachsen - behaupten zumindest die Halben. Ch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Aye, Ronagan always watched my back. I believe all these years he has guarded me well. Ch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Aye, Ronagan ist immer mit mir gewesen. Beinahe glaub ich, er hatte all die Jahre �ber ein Auge auf mich. Ch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Thie, hie! My first and third wives were priestesses of Sirani. They know where the hammer hangs to put it quite bluntly. Ch-ch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("H�, h�h�! Meine erste und dritte Frau waren Sirani Priesterinnen. Die wissen schon wo der Hammer h�ngt, wenn ich das ganz salopp sagen darf. Ch-ch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Tanora aye! Praise to the sea, praise Tanora... although she brought all these fish faces over us.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Tanora, aye! Gepriesen sei die See. Gepriesen sei Tanora... wenn nur diese ganzen Fischgesichter nicht w�hren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Another reason why I can't understand elves.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Wieder so eine Sache, warum ich die Elfen nicht verstehe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("God of brotherhood and friendship. On the ship we have to stand together.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Der Gott der Br�der. Aye. Auf der See m�ssen alle zusammenhalten!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Cha - no trading...");
talkEntry:addResponse("Ch... leave me alone!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich handle nich.");
talkEntry:addResponse("Ch... lass mich in Frieden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Aye... 'n a giant octopus ate my leg! It was so big it pulled the ship under the water! Arr, but I never give up. That I never have...");
talkEntry:addResponse("Aye, I swear! I had five mermaids in the bed.");
talkEntry:addResponse("A girl in every harbour, that's the sailor's life, aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Aye... 'n rie�iger Krake hat mein Bein gefressen. Er war so gro� das er das ganze Schiff in die See gezogen hat. Arr. Aber Ich hab nich aufgegeben. Das hab ich nie gemacht...");
talkEntry:addResponse("Aye, geschworen! Ich hatte schon f�nf Meerjungfrauen im Bett! Ch-ch...");
talkEntry:addResponse("In jedem hafn n' M�dl, jaja. Das ist das Seemannsleben!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Julio");
talkEntry:addTrigger("Canaille");
talkEntry:addResponse("Aye-aye! Who doesn't know the famous tales of Peg Leg Jack? Ahoy, that's me! Even the gods said it was a shame when they tied me to gallows.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Julio");
talkEntry:addTrigger("Canaille");
talkEntry:addResponse("Aye-aye! Wer kenn nicht die Geschichtn vom ber�hmten Holzbein-Jack? Ahoi, das bin ich! Sogar die G�tter fandens �d, als sie mich dann doch an den Galgen gekn�pft haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Ch-h!");
talkEntry:addResponse("Aye! Get ready to board! Thie-hi!");
talkEntry:addResponse("'Yes Captain!', you have to say... Got it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Ch-h!");
talkEntry:addResponse("Aye! Klar machen zum entern! H�-h�-h�...");
talkEntry:addResponse("Du sollst 'Ja, Kapit�n!' sagen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Bummer!");
talkEntry:addResponse("Well.. when I was alive the problems of the dead weren't mine either.");
talkEntry:addResponse("Argh-ha! Go 'nd blow a flute.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Sch-hade.");
talkEntry:addResponse("Ja.. mich hab'n die Sorgen der Toten auch nie gek�mmert.");
talkEntry:addResponse("Argh-ha! Geh doch Fl�te spielen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("The dead be dead, everywhere should it be that way.");
talkEntry:addResponse("Argh-ch...");
talkEntry:addResponse("...landlubber!");
talkEntry:addResponse("Har-har-har-ha!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Die Toten sin' tot. Das sollte �berall so sein.");
talkEntry:addResponse("Argh-ch...");
talkEntry:addResponse("...Landratte!");
talkEntry:addResponse("Har-har-har-ha!");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Aye, men verlorenes Bein schmerzt wieder!", "Aye, my missing leg hurts again!");
talkingNPC:addCycleText("Arr, verdammte Landratten!", "Arr, damn landlubbers!");
talkingNPC:addCycleText("Booo! Har, har, har!", "Booo! Har, har, har!");
talkingNPC:addCycleText("#me klappert mit seinen schemenhaft vorhandenen Knochen.", "#me clatters about with his apparitional bones.");
talkingNPC:addCycleText("#me pfeift eine schaurige Melodie.", "#me whistles a scary melody.");
talkingNPC:addCycleText("#me's Augen beginnen pl�tzlich in gruseligen sph�rischen Blau zu gl�hen.", "#me's eyes start to glow as eerie blue spheres.");
talkingNPC:addCycleText("Zeit mit den S�beln zu rasseln! Arr!", "Time to rattle the sabres! Arr!");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein modriger Geist, der unruhig �ber einem Grab schwebt.", "A mouldy ghost is floating above his tomb.");
mainNPC:setUseMessage("Ch-h! Fass mich nicht an!", "Ch-h! Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 185);
mainNPC:setEquipment(3, 0);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 47);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 823);
mainNPC:setEquipment(10, 0);
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