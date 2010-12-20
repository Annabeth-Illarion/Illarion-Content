--------------------------------------------------------------------------------
-- NPC Name: Horatio Milenus                                          Cadomyr --
-- NPC Job:  Guard                                                            --
--                                                                            --
-- NPC Race: human                      NPC Position:  114, 635, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Kawan Baxter, translation by Estralis Seborian                   --
--                                                                            --
-- Last parsing: December 19, 2010                       easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 114, 635, 0, 4, 'Horatio Milenus', 'npc.horatio_milenus', 0, 2, 0, 0, 0, 0, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
require("npc.base.guards_static")
module("npc.horatio_milenus", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Horatio Milenus the gate guardian. Keyphrases: Hello, Quest, Where, Who, Guard."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Horatio Milenus der Torw�chter. Schl�sselw�rter: Hallo, TRIGGER2, TRIGGER3, TRIGGER4, TRIGGER5."));
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
talkEntry:addResponse("What?");
talkEntry:addResponse("Welcome to Cadomyr.");
talkEntry:addResponse("This is Cadomyr, home of beautiful and infinitely wise Queen Rosaline.");
talkEntry:addResponse("Hello.");
talkEntry:addResponse("#me just gives a brief nod.");
talkEntry:addResponse("Greetings to you.");
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
talkEntry:addResponse("Was?");
talkEntry:addResponse("Willkommen in Cadomyr.");
talkEntry:addResponse("Dies ist Cadomyr, Heimat der sch�nen und unglaublich weisen K�nigin Rosaline.");
talkEntry:addResponse("Hallo.");
talkEntry:addResponse("#me nickt nur kurz.");
talkEntry:addResponse("Seid gegr��t.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("What?");
talkEntry:addResponse("Welcome to Cadomyr.");
talkEntry:addResponse("This is Cadomyr, home of beautiful and infinitely wise Queen Rosaline.");
talkEntry:addResponse("Hello.");
talkEntry:addResponse("#me just gives a brief nod.");
talkEntry:addResponse("Greetings to you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Was?");
talkEntry:addResponse("Willkommen in Cadomyr.");
talkEntry:addResponse("Dies ist Cadomyr, Heimat der sch�nen und unglaublich weisen K�nigin Rosaline.");
talkEntry:addResponse("Hallo.");
talkEntry:addResponse("#me nickt nur kurz.");
talkEntry:addResponse("Seid gegr��t.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Care, the desert can be quite unforgiving.");
talkEntry:addResponse("Care, make no trouble.");
talkEntry:addResponse("Care.");
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("Good bye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Nehmt euch in Acht, die W�ste kann unerbitterlich sein.");
talkEntry:addResponse("Nehmt euch in Acht und macht keinen �rger.");
talkEntry:addResponse("Nehmt euch in Acht.");
talkEntry:addResponse("Auf Wiedersehen.");
talkEntry:addResponse("Bis zum n�chsten Mal.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Care, the desert can be quite unforgiving.");
talkEntry:addResponse("Care, make no trouble.");
talkEntry:addResponse("Care.");
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("Good bye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Nehmt euch in Acht, die W�ste kann unerbitterlich sein.");
talkEntry:addResponse("Nehmt euch in Acht und macht keinen �rger.");
talkEntry:addResponse("Nehmt euch in Acht.");
talkEntry:addResponse("Auf Wiedersehen.");
talkEntry:addResponse("Bis zum n�chsten Mal.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Don't ask me such silly questions.");
talkEntry:addResponse("Don't ask me such silly qu- Actually today is a pretty good day.");
talkEntry:addResponse("I guard, I don't feel.");
talkEntry:addResponse("I'm on duty. How should I feel?.");
talkEntry:addResponse("Everyday it's the same anyway.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Fragt nicht so ein dummes Zeug.");
talkEntry:addResponse("Fragt nicht so ein dummes - also genau genommen geht es mir heute recht gut.");
talkEntry:addResponse("Ich bin ein W�chter, ich habe keine Gef�hle.");
talkEntry:addResponse("Ich bin im Dienst. Wie soll es mir da gehen?.");
talkEntry:addResponse("Ist jeden Tag sowieso immer dasselbe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Horatio Milenus, guard of this realm.");
talkEntry:addResponse("I am Horatio Milenus protector of Cadomyr.");
talkEntry:addResponse("This is Cadomyr. I am Cadomyr.");
talkEntry:addResponse("My name is Horatio Milenus. I am guarding this town entrance.");
talkEntry:addResponse("I am Horatio Milenus, town guard of Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Horatio Milenus, W�chter des Reiches.");
talkEntry:addResponse("Ich bin Horation Milenus, der Besch�tzer Cadomyrs.");
talkEntry:addResponse("Dies ist Cadomyr. Ich bin Cadomyr.");
talkEntry:addResponse("Mein  Name ist Horatio Milenus. Ich bewache diesen Eingang Stadt.");
talkEntry:addResponse("Ich bin Horatio Milenus, Stadtwache von Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Well, it is my mission to guard this gate. I do not know what your mission is; apart from serving her majesty, of course.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Nun, meine Aufgabe ist es, dieses Tor zu bewachen. Was eure Aufgabe ist, wei� ich nicht, Hauptsache, ihr dient ihrer Majest�t.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Well, it is my mission to guard this gate. I do not know what your mission is; apart from serving her majesty, of course.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Nun, meine Aufgabe ist es, dieses Tor zu bewachen. Was eure Aufgabe ist, wei� ich nicht, Hauptsache, ihr dient ihrer Majest�t.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am Guard of Cadomyr.");
talkEntry:addResponse("I serve this realm.");
talkEntry:addResponse("I serve this mighty city.");
talkEntry:addResponse("I am a town guard of Cadomyr.");
talkEntry:addResponse("I serve the noble Queen as a town guard.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin ein W�chter Cadomyrs.");
talkEntry:addResponse("Ich diene dem Reich.");
talkEntry:addResponse("Ich diene dieser m�chtigen Stadt.");
talkEntry:addResponse("Ich bin ein Stadtw�chter von Cadomyr.");
talkEntry:addResponse("Ich diene der edlen K�nigin als ein Stadtw�chter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am Guard of Cadomyr.");
talkEntry:addResponse("I serve this realm.");
talkEntry:addResponse("I serve this mighty city.");
talkEntry:addResponse("I am a town guard of Cadomyr.");
talkEntry:addResponse("I serve the noble Queen as a town guard.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin ein W�chter Cadomyrs.");
talkEntry:addResponse("Ich diene dem Reich.");
talkEntry:addResponse("Ich diene dieser m�chtigen Stadt.");
talkEntry:addResponse("Ich bin ein Stadtw�chter von Cadomyr.");
talkEntry:addResponse("Ich diene der edlen K�nigin als ein Stadtw�chter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Gob... what?");
talkEntry:addResponse("I don't know no Gobaith.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Gob... was?");
talkEntry:addResponse("Ich kenne kein Gobaith.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Nice to meet you. Pass along.");
talkEntry:addResponse("Very well.");
talkEntry:addResponse("Pass along.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Freut mich euch kennenzulernen. Weitergehen.");
talkEntry:addResponse("Na wunderbar.");
talkEntry:addResponse("Weitergehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("He's quite a merry fellow.");
talkEntry:addResponse("The towers the archmage of Runewick built must be easy to defend.");
talkEntry:addResponse("The archmage of Runewick; I better keep my mouth shut now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Er ist ein ziemlich freundlicher Kerl.");
talkEntry:addResponse("Die T�rme, die der Erzmagier von Runewick hat bauen lassen, sind wohl recht einfach zu verteidigen.");
talkEntry:addResponse("Der Erzmagier von Runewick; ich sag jetzt besser nichts mehr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He's quite a merry fellow.");
talkEntry:addResponse("The towers the archmage of Runewick built must be easy to defend.");
talkEntry:addResponse("The archmage of Runewick; I better keep my mouth shut now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Er ist ein ziemlich freundlicher Kerl.");
talkEntry:addResponse("Die T�rme, die der Erzmagier von Runewick hat bauen lassen, sind wohl recht einfach zu verteidigen.");
talkEntry:addResponse("Der Erzmagier von Runewick; ich sag jetzt besser nichts mehr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Runewick is a stronghold of magicians, consisting of four magnificent towers, built in the ocean.");
talkEntry:addResponse("Runewick is a strong city, but the inhabitants have no honour. They do whatever it takes to get what they want.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick ist eine Feste der Magie, vier m�chtige T�rme, die in das Meer gebaut wurden.");
talkEntry:addResponse("Runewick ist eine beeindruckende Stadt, aber ihre Einwohner sind ehrlos. Sie tun, was immer n�tig ist, um ihre Ziele zu erreichen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I overheard the crest of the Don is a pig. That fits!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Ich habe geh�rt, dass Wappen des Dons zeigt ein Schwein. Wie passend!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Galmair is a dirty town where money washes hands clean from any sin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair ist eine dreckige Stadt wo Gold eines jeden H�nde von den S�nden reinw�scht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("If Cadomyr is my heart then Queen Rosaline is my soul.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Wenn Cadomyr mein Herz ist, dann ist K�nigin Rosaline mein Herz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("If Cadomyr is my heart then Queen Rosaline is my soul.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Wenn Cadomyr mein Herz ist, dann ist K�nigin Rosaline mein Herz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("My home and my heart: Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Mein ein und alles: Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gate");
talkEntry:addResponse("Anyone or anything that passes between these walls are under my eyes. Remember that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tor");
talkEntry:addResponse("Nichts und niemand, der durch dieses Tor geht, entgeht meinen Augen. Denkt immer daran.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("Baron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I swear, on the day that the gods decide, that man's head will be fell by my blade.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("Baron");
talkEntry:addResponse("Ich schw�re, dass so wahr mir die G�tter helfen, eines Tages wird der Kopf dieses Mannes durch mein Schwert rollen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Desert");
talkEntry:addResponse("I am but this realm's second greatest protector, the sand is it's first.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("W�ste");
talkEntry:addResponse("Ich bin nur der zweitgr��te Besch�tzer dieses Reiches, die W�ste ist der wichtigste.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tomb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The resting place of the greatest of our people is the tomb.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gruft");
talkEntry:addResponse("Die letzte Ruhest�tte der gr��ten Helden unseres Volkes ist die Gruft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Family");
talkEntry:addResponse("Mind your business.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Familie");
talkEntry:addResponse("Das geht euch nichts an.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Palace");
talkEntry:addResponse("If you have no business at the palace, stay away from there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Palast");
talkEntry:addResponse("Wenn ihr im Palast nichts zu suchen habt, dann haltet euch fern von ihm.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("King");
talkEntry:addResponse("Reginald, the greatest king of the last generation. All honest men in Cadomyr aspire to be like him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nig");
talkEntry:addResponse("Reginald, der gro�artigste K�nig der Vergangenheit. Alle ehrbaren M�nner Cadomyrs wollen wie er sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Reginald");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Reginald, he greatest king of the last generation. All honest men in Cadomyr aspire to be like him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Reginals");
talkEntry:addResponse("Reginald, der gro�artigste K�nig der Vergangenheit. Alle ehrbaren M�nner Cadomyrs wollen wie er sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Guard");
talkEntry:addResponse("I guard the gate of this city. That it is the mission the queen assigned to me and I am proud to fulfill.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wache");
talkEntry:addResponse("Ich bewache das Tor dieser Stadt. Das ist die Aufgabe, die die K�nigin mir �bertragen hat und es erf�llt mich mit Stolz, sie zu erf�llen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am Albarian, yes.");
talkEntry:addResponse("You aren't in Albar. Look with your eyes.");
talkEntry:addResponse("Please do not disturb me. I am at work.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Ich bin in der Tat Albarier.");
talkEntry:addResponse("Ihr seid nicht in Albar, schaut euch doch mal um.");
talkEntry:addResponse("St�rt mich bitte nicht, ich bin im Dienst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I hear on occasion that they are a foul nation, but one can never fully trust the words of outsiders.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Ich h�rte einst, dass sie ein Volk von Verruchten sind, aber was kann man schon auf das Wort eines Fremden geben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I have never been in Salkamar. I know nothing of them.");
talkEntry:addResponse("Salkamar does not concern my attention.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Ich war nie in Salkamar, also wei� ich auch nichts dar�ber.");
talkEntry:addResponse("Salkamar interessiert mich nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gods");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The ones I serve are Adron, Malachin and Zhambra.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Ich diene den G�ttern Adron, Malach�n und Zhambra.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("My queen loves Adron, the god of festivities.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Meine K�nigin verehrt Adron, den Gott der Festgelage.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I respect Br�gon. But there is too much fire in this world.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Ich respektiere Br�gon, aber gibt es nicht schon genug Feuer in dieser Welt?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I will not meet Cherga, but through the fulfillment of my duty.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Ich werde Cherga nur gegen�bertreten, wenn ich in Erf�llung meiner Pflicht falle. ");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Elara is not cared for much in this country. I have never sought her guidance.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Man schert sich in diesem Reich nicht sonderlich um Elara. Auch ich habe sie nie um Beistand angebetet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Eldan is the father of Elara and hence, as useless as her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Eldan ist Elaras Vater und daher genauso nutzlos wie sie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Findari brings rain, but also sand storms. That is all I have to say of her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Findari bringt zwar den Regen, aber auch Sandst�rme. Das ist, was ich �ber sie zu sagen habe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Irmorom was never kind to my mother. I live well, but have no lo- Stop asking me questions and move along.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Irmorom hat es nicht gut mit meiner Mutter gemeint. Mir ist es gut ergangen, aber... Fragt mich nicht nach sowas und geht weiter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Malach�n, the god of battle has saved my life on many occasions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Malach�n, der Gott der Schlachten, hat mein Leben schon so einige male verschont.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Quiet now! Or I shall remove your tongue?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Seid still! Oder muss ich euch die Zunge herausschneiden?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I do not serve this god.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Ich diene diesem Gott nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oldra has forsaken us. It is through our own hands that we grow food in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Oldra hat uns im Stich gelassen. Die Nahrung, die wir zu uns nehmen, ist die Ernte unserer H�nde.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("You can serve Ronagan and end up a lowly thief or you can serve a just god and end up like me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ihr k�nnt euch Ronagan verschreiben und endet als erb�rmlicher Gauner oder ihr verschreibt euch einem gerechten Gott und ihr werdet wie ich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("We do not serve Sirani here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Wir dienen hier nicht der Sirani.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("We don't see Tanora often in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Sonderlich h�ufig haben wir Tanora noch nicht in Cadomyr begr��en d�rfen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ushara is one of the five. That's it for now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Ushara ist eine der F�nf. Das muss nun gen�gen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("It is through Zhambra that I am able to serve Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Zhambra erm�glicht es mir, Cadomyr zu dienen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I buy only the safety of the realm and I sell only the crushing of Cadomyr's enemies.");
talkEntry:addResponse("I am no trader.");
talkEntry:addResponse("If you are looking for a trader, go to the market place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich erkaufe lediglich die Sicherheit des Reiches und biete die Niederschlagung der Feinde Cadomyrs an.");
talkEntry:addResponse("Ich bin kein H�ndler.");
talkEntry:addResponse("Wenn Ihr einen H�ndler sucht, dann geht zum Marktplatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Always carry double the water you think you'll need.");
talkEntry:addResponse("I'm on duty and I am not paid for small talk.");
talkEntry:addResponse("I am a town guard, not a story teller.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Nehmt immer genau die zweifache Menge an Wasser mit, die ihr meint, zu brauchen.");
talkEntry:addResponse("Ich bin im Dienst und werde nicht f�r eine nette Plauderei bezahlt.");
talkEntry:addResponse("Ich bin eine Stadtwache und kein Geschichtenerz�hler.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("private");
talkEntry:addResponse("I am not a private anymore! The queen promoted me, haha!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gefreite");
talkEntry:addResponse("Ich bin kein Gefreiter mehr! Die K�nigin hat mich bef�rdert, haha!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Yes to what?");
talkEntry:addResponse("Pardon?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Ja?");
talkEntry:addResponse("Pardon?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Leave me now or suffer to be arrested.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Geht nun oder ich werde euch unter Arrest stellen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("I am the merely a guard of Cadomyr.");
talkEntry:addResponse("Tell that somebody else.");
talkEntry:addResponse("Move along.");
talkEntry:addResponse("Pass along");
talkEntry:addResponse("Do not loiter!");
talkEntry:addResponse("In or out?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("Ich bin in erster Linie der W�chter Cadomyrs.");
talkEntry:addResponse("Erz�hlt das jemanden anderes.");
talkEntry:addResponse("Geht weiter.");
talkEntry:addResponse("Weitergehen.");
talkEntry:addResponse("Lungert hier nicht herum.");
talkEntry:addResponse("Rein oder raus?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Horatio");
talkEntry:addTrigger("Milenus");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("That is I. State your business.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Horatio");
talkEntry:addTrigger("Milenus");
talkEntry:addResponse("Das bin ich. Was ist euer Begehr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me zieht einen beeindruckenden Krumms�bel aus einer Lederscheide.", "#me unsheathes his giant scimitar.");
talkingNPC:addCycleText("#me sch�rft seinen gro�en Krumms�bel. ", "#me sharpens his giant scimitar.");
talkingNPC:addCycleText("#me l�sst seinen furchteinfl��enden Krumms�bel zur�ck in seine Lederscheide gleiten.", "#me resheathes his giant scimitar.");
talkingNPC:addCycleText("Weitergehen.", "Pass along.");
talkingNPC:addCycleText("Macht keinen �rger.", "Cause no trouble.");
talkingNPC:addCycleText("Willkommen in Cadomyr.", "Welcome to Cadomyr.");
talkingNPC:addCycleText("Sucht Schutz in der Stadt.", "Take shelter in the town.");
talkingNPC:addCycleText("Was wollt ihr?", "What do you want?");
talkingNPC:addCycleText("Das ist meine einzige Warnung. Lungert hier nicht herum, auch nicht dort dr�ben. Entweder, ihr geht durch das Tor oder zur�ck in die W�ste.", "This is your one and only warning. Do not loiter here, do not loiter there. Either come pass this gate or go back into the desert.");
talkingNPC:addCycleText("Diese widerlichen Magier mit ihren B�chern, Ritualen und Zauberspr�chen!", "Disgusting mages with their books, incantations and spells!");
talkingNPC:addCycleText("Dieser verdammte Don! Ich wei� nichts �ber die Tugenden eines echten Mannes. Er kennt keinen Respekt.", "Blasted Don! He knows nothing about man's toil of real struggle. He knows nothing of proper respect.");
talkingNPC:addCycleText("Don Valerio, pah! Wenn es das Gesetz zulie�e, w�rde ich seinen Kopf abschlagen und seinen K�rper an die Schweine verf�ttern.", "Don Valerio, pah! If Cadomyrian law allowed, I would sever his head and feed his body to the pigs.");
talkingNPC:addCycleText("Galmair, Galmair, Galmair! Reden die anderen V�lker �ber nichts anderes mehr? Warum sollte ich mich um eine Stadt voller Tunichtgute scheren?", "Galmair, Galmair, Galmair! Do outsiders ever talk about anything else? Why would I care about a city full of incompetents?");
talkingNPC:addCycleText("Wer zur K�nigin will, muss zun�chst ein den Palast, wer in den Palast will, muss erst in die Stadt und wer in die Stadt will, muss an mir vorbei.", "Those who wish to see the queen must first be allowed into the palace, those allowed into the palace must first enter the city, those entering the city must first speak to me.");
talkingNPC:addCycleText("Dies ist Cadomyr und der Palast der Edwards. Die derzeitige Regentin der k�niglichen albarischen Blutlinie ist die weise und wundersch�ne K�nigin Rosaline.", "This is Cadomyr and the palace of the Edwards. The current regent of the Abarian royal Edward's bloodline is Queen Rosaline Edwards, a Queen who is both wise and beautiful.");
talkingNPC:addCycleText("Rosaline, ihr seid mein Herz und meine Seele.", "Rosaline, you're my heart, you're my soul, I keep it shining everywhere I go.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Horatio Milenus der Torw�chter, ein gro�er Mann, eingeh�llt in eine schwere R�stung.", "This NPC is Horatio Milenus the gate guardian, a tall man encombered in heavy armor.");
mainNPC:setUseMessage("Zur�ck!", "Back up!");
mainNPC:setConfusedMessage("#me schaut verwirrt umher.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 2359);
mainNPC:setEquipment(11, 195);
mainNPC:setEquipment(5, 2731);
mainNPC:setEquipment(6, 95);
mainNPC:setEquipment(4, 530);
mainNPC:setEquipment(9, 367);
mainNPC:setEquipment(10, 771);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(texttype, message, speaker)
	npc.base.guards_static.CheckAdminCommand(thisNPC,speaker,message);
	mainNPC:receiveText(speaker, message);
	
end;
function nextCycle()
	mainNPC:nextCycle();
	if not guards_init then
		-- init after 10 cycles
		guards_init = 10;
		gCount = 0;
	end
	if guards_init == 0 then
		guards_init = -1;
		npc.base.guards_static.Init(thisNPC, 1, position(114, 639, 0), 3, position(114, 634, 0));
	elseif guards_init > 0 then
		guards_init = guards_init - 1;
	end
	if gCount == 4 and guards_init == 0 then
		gCount = 0;
		npc.base.guards_static.CheckForEnemies(thisNPC);
	else
		gCount = gCount + 1;
	end
end;
function lookAtNpc(char, mode) mainNPC:lookAt(char, mode); end;
function useNPC(char, counter, param) mainNPC:use(char); end;
initNpc();
initNpc = nil;
-- END