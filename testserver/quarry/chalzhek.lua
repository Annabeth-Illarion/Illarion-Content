--------------------------------------------------------------------------------
-- NPC Name: Chalzhek                                                Runewick --
-- NPC Job:  Watersage                                                        --
--                                                                            --
-- NPC Race: lizardman                  NPC Position:  790, 818, 0            --
-- NPC Sex:  female                     NPC Direction: south                  --
--                                                                            --
-- Authors:  Regallo                                                          --
--           ...with a little help of Estralis Seborian                       --
--                                                       easyNPC Parser v1.21 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (5, 790, 818, 0, 4, 'Chalzhek', 'npc.chalzhek', 1, 2, 5, 123, 62, 9, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.chalzhek", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Chalzhek the Watersage. Keywords: Warsage, Water, God, Hero, Ice."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Chalzhek die Wassermagierrin. Schl�sselw�rter: Kampfmagier, Wasser, Gott, Held, Eis."));
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
talkEntry:addResponse("Welcome to our temple.");
talkEntry:addResponse("Great morning isnt it?");
talkEntry:addResponse("Hey! How may I help you?");
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
talkEntry:addResponse("Willkommen in unserem Tempel.");
talkEntry:addResponse("Gro�artiger Morgen, nicht wahr?");
talkEntry:addResponse("Hey! Wie kann ich euch helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Welcome to our temple.");
talkEntry:addResponse("Great morning isnt it?");
talkEntry:addResponse("Hey! How may I help you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Willkommen in unserem Tempel.");
talkEntry:addResponse("Gro�artiger Morgen, nicht wahr?");
talkEntry:addResponse("Hey! Wie kann ich euch helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Have a good day.");
talkEntry:addResponse("If you ever need something I will be here.");
talkEntry:addResponse("I will see you later, ok.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Sch�nen Tag noch.");
talkEntry:addResponse("Wenn du wieder etwas brauchst, ich werde hier sein.");
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
talkEntry:addResponse("Have a good day.");
talkEntry:addResponse("If you ever need something I will be here.");
talkEntry:addResponse("I will see you later, ok.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Sch�nen Tag noch.");
talkEntry:addResponse("Wenn du wieder etwas brauchst, ich werde hier sein.");
talkEntry:addResponse("Bis bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Even in my old age. I can feel energy all around me. I feel Great.");
talkEntry:addResponse("I truly am happy.");
talkEntry:addResponse("Very bored at the moment.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Selbst in meinem hohen Alter kann ich die Energie um mich herum sp�ren.");
talkEntry:addResponse("Ich bin wahrlich gl�cklich.");
talkEntry:addResponse("Recht gelangweilt derzeit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Chazhek.");
talkEntry:addResponse("Chal The Aquasage.");
talkEntry:addResponse("I am Chal of the Reed 13, former Hero and leader of Paltaka Village.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Chezhek.");
talkEntry:addResponse("Chal der Wassermagier.");
talkEntry:addResponse("Ich bin Chal, Mitglied der Schilf 13, ehemaliger Held und Anf�hrer des Dorfes Paltaka.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am one of the seven Warsages.");
talkEntry:addResponse("I am a Warsage and part time adventurer, yes even now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin einer der sieben Kampfmagier.");
talkEntry:addResponse("Ich bin Kampfmagier und Teilzeitabenteurer, ja selbst gerade eben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I am one of the seven Warsages.");
talkEntry:addResponse("I am a Warsage and part time adventurer, yes even now.");
talkEntry:addResponse("I am the Aquasage, A Warsage that uses aqua magic and the tagik fighting style, a most explosive combination if I do say so myself.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin einer der sieben Kampfmagier.");
talkEntry:addResponse("Ich bin Kampfmagier und Teilzeitabenteurer, ja selbst gerade eben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Warsage");
talkEntry:addResponse("We are the most elite fighting force in Runewick and possibly all of Illarion.");
talkEntry:addResponse("We are the gaurdians of Runewick, order and justice.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Water");
talkEntry:addResponse("It's so versatile it can be used for anything.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ice");
talkEntry:addResponse("Use this when you really want to make a point.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hero");
talkEntry:addResponse("Back in my prime. I saved my village from the evil Bandit Keith. It was all thanks to the many teachers I met along the way.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Skysage");
talkEntry:addResponse("Once the skysage challenged me and Fondura to a batttle. He wanted us to fight together even knowing that when the flame and aquasage fight toghether we are stronger than any two fighters. Needless to say, we handed him his arse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kampfmagier");
talkEntry:addResponse("Wir sind die gr��te elite Kampfeinheit in Runewick, wahrscheinlich sogar in ganz Illarion.");
talkEntry:addResponse("Wir sind die Wache von Runewick, die Ordnung und das Recht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wasser");
talkEntry:addResponse("Es ist so vielseitig, es kann f�r alles benutzt werden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eis");
talkEntry:addResponse("Benutz Eis wenn du wirklich gro�en Wert darauf legst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Held");
talkEntry:addResponse("In meiner Bl�tezeit rettet ich mein Dorf von dem gemeinen Banditen Keith. Ich hab es meinen vielen Lehrern zu verdanken die ich auf meinem Weg antraf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Himmelsmagier");
talkEntry:addResponse("Einst forderte der Himmelsmagier mich und Fondura zu einem Kampf heraus. Er wollte das wir zusammen k�mpfen obwohl er wusste, dass wenn Feuer- und Wassermagier zusammen k�mpfen, sie st�rker als jedes andere Paar sind. Unn�tig zu erw�hnen, dass wir ihn besiegt haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Magic was created by the Gods");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Magie wurde von den G�ttern erschaffen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("If only that island had a hero.");
talkEntry:addResponse("I wish we could have saved it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Wenn diese Insel nur einen Helden gehabt h�tte.");
talkEntry:addResponse("Ich w�nschte wir h�tten es retten k�nnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Chal Pal");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Chal Pal");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Chal");
talkEntry:addTrigger("Pal");
talkEntry:addResponse("Yes, Here I am, Do you need me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Chal");
talkEntry:addTrigger("Pal");
talkEntry:addResponse("Ja, da bin ich, brauchst du mich?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("So langwelig. Ich w�rde lieber drausen sein.", "So bored. I'd rather be outside.");
talkingNPC:addCycleText("Ich wette du kannst nicht schneller als ich schwimmen.", "I bet you can't swim faster than me.");
talkingNPC:addCycleText("Ja ich bin wahrscheinlich die t�dlichste Gro�mutter die existiert.", "Yes, I am probably the deadliest grandma in existance.");
talkingNPC:addCycleText("Hahahahahahahaha", "Hahahahahahahaha.");
talkingNPC:addCycleText("Ich liebe es den Lautespielern zuzuh�ren wie sie die Melodien meiner vergangenen Heldentage spielen.", "I love to hear the lute players strum the tunes of my past hero days.");
talkingNPC:addCycleText("Ich bin so hungrig. Fleisch, gib mir Fleisch!", "I'm so hungry. Meat, give me meat");
talkingNPC:addCycleText("Fondura sollte sich sozialer verhalten. Sie bringt Orks in Verruf, hahahaha.", "Fondura needs to be more social. She gives orcs a bad name, hahahaha.");
talkingNPC:addCycleText("Ich werde bald sterben. Ich mach nur Spa�. Ich bin kein Mensch, hahahaha.", "I'm going to die soon. I'm just kidding, I'm not human, hahahaha.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(4);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Chalzhek der Wassermagier.", "This NPC is Chalzhek the Watersage.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 181);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 34);
mainNPC:setEquipment(10, 53);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END