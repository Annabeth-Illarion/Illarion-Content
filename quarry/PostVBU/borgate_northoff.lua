--------------------------------------------------------------------------------
-- NPC Name: Borgate Northoff                                            None --
-- NPC Job:  Bar-keeper                                                       --
--                                                                            --
-- NPC Race: dwarf                      NPC Position:  710, 313, 0            --
-- NPC Sex:  male                       NPC Direction: southwest              --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                                            --
-- Last parsing: May 14, 2011                            easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (1, 710, 313, 0, 5, 'Borgate Northoff', 'npc.borgate_northoff', 0, 1, 1, 126, 75, 30, 217, 154, 123);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.borgate_northoff", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Borgate Northoff the innkeeper of The Hemp Necktie Inn . Keyphrases: Gods, Bragon, Adron"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Borgate Northoff der Wirt vom Gasthof zur Hanfschlinge. Schl�sselw�rter: G�tter, Bragon, Adron"));
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
talkEntry:addResponse("Aahr! Be greeted in 'The Hemp Necktie Inn'. What do you want to drink?");
talkEntry:addResponse("Hello. What do I have to make you?");
talkEntry:addResponse("ENGLISH3.");
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
talkEntry:addResponse("Willkommen im Gasthof zur Hanfschlinge, willst du etwas zu trinken?.");
talkEntry:addResponse("Guten Tag. Was soll ich Dir machen?");
talkEntry:addResponse("Tach, was darf's sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Willkommen im Gasthof zur Hanfschlinge, willst du etwas zu trinken?.");
talkEntry:addResponse("Guten Tag. Was soll ich Dir machen?");
talkEntry:addResponse("Tach, was darf's sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("Aye. Come back whenever you are thirsty.");
talkEntry:addResponse("Good day!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Sch�nen Tag noch.");
talkEntry:addResponse("Bis bald.");
talkEntry:addResponse("Aye. Komm wieder, wann immer du durstig bist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Sch�nen Tag noch.");
talkEntry:addResponse("Bis bald.");
talkEntry:addResponse("Aye. Komm wieder, wann immer du durstig bist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Great. I am Borgate Northoff, the barkeeper. Do you want something to drink?");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Borgate Northoff und das ist mein Tresen. Ich schenke Bier aus. Willst du eines?");
talkEntry:addResponse("Ich bin Borgate Northoff. Willst du was trinken?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Nee, ich habe keine Arbeit f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Nee, ich habe keine Arbeit f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("What do you think I have to do here? What a stupid question. Aaarh! Drink or eat something or leave!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin Schankwirt. Und ausschenken tue ich Bier. - Meistens...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin Schankwirt. Und ausschenken tue ich Bier. - Meistens...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Wenn du mich fragst finde ich, dass ein Zwerg nicht in der Vergangenheit leben sollte. - Ich jedenfalls habe immer nach vorn geblickt. Auch schon damals als ich noch im Fluffy Sheep gearbeitet habe.");
talkEntry:addResponse("Auf Gobaith war's sch�n. Aber jetzt wo ich hier bin, wei� ich nicht warum ich so lange dort geblieben bin.");
talkEntry:addResponse("Auf Gobaith hie� es immer - 'Egal was passiert, Borgate macht sein Ding.' - und das habe ich dann auch gemacht als alle von der Insel weg sind. Aye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("I am");
talkEntry:addTrigger("my name");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ich bin");
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Aha..?");
talkEntry:addResponse("Arr!");
talkEntry:addResponse("Aha...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Borgate");
talkEntry:addTrigger("barkeeper");
talkEntry:addTrigger("innkeeper");
talkEntry:addTrigger("Northoff");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH3.");
talkEntry:addResponse("ENGLISH3.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fluffy");
talkEntry:addTrigger("Sheep");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sil[vb]erbran[dt]");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gowan");
talkEntry:addTrigger("Sam");
talkEntry:addTrigger("brute");
talkEntry:addTrigger("Booze");
talkEntry:addTrigger("hook");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("half-hung");
talkEntry:addTrigger("bryan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Borgate");
talkEntry:addTrigger("wirt");
talkEntry:addTrigger("Northoff");
talkEntry:addResponse("Genau, ich bin hier der Wirt. Was willst Du trinken?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Fluffy");
talkEntry:addTrigger("Sheep");
talkEntry:addTrigger("schaf");
talkEntry:addTrigger("flausch");
talkEntry:addTrigger("flauschige");
talkEntry:addResponse("Das Fluffy Sheep war eine Taverne. Dort habe ich fr�her, f�r den K�nig Silberbrands gearbeitet. Aber das ist schon lange her...");
talkEntry:addResponse("Als ich noch ein Zwerg im besten Alter war, arbeitete ich in der Fluffy Sheep Taverne. Aye?");
talkEntry:addResponse("Die Fluffy Sheep Taverne hat man nach einem Schaf benannt das sie Fluffy nannten. Und irgendwann - dann haben sie's einfach gegessen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sil[vb]erbran[dt]");
talkEntry:addResponse("In Silberbrand gabs eine Menge K�nige, aber ich will meinen, K�nig Tialdin von Silberbrand ist der Bedeutendste.");
talkEntry:addResponse("Silberbrand - Die Zwergenstadt unter dem Thron Irmoroms, im Herzen des Kupfergebierges. M�gen wir ihr Andenken in Ehren halten.");
talkEntry:addResponse("Silberbrand nahm damals jeden Zwerg auf. Und sogar des Nachts soll der Hammerklang der Schmiede h�rbar gewesen sein. Eine wirklich m�chtige Stadt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gowan");
talkEntry:addTrigger("Sam");
talkEntry:addTrigger("brute");
talkEntry:addTrigger("Booze");
talkEntry:addTrigger("hook");
talkEntry:addResponse("Als ich hier her kam, stellte keiner Fragen, und ich fragte auch nichts. Der Eine oder Andere spricht trozdem manchmal �ber sich. Aber es ist Half-hung Bryans Gesetz. 'Es werden keine Fragen gestellt.'");
talkEntry:addResponse("Eigentlich wei� ich alles, aber ich erz�hl nichts davon...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("half-hung");
talkEntry:addTrigger("bryan");
talkEntry:addResponse("Bryan ist der Besitzer vom Gasthof zur Hanfschlinge. Und hier z�hlt nur sein Gesetz. Am Besten fragt ihr ihn selbst dannach.");
talkEntry:addResponse("Eigentlich wei� ich alles, aber ich erz�hl nichts davon...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Der alte Borgate weis Sachen, da w�rdest du kein Auge mehr zu tun. Aber ich kann meinen Mund halten. Kannst du das auch? Ich denke nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Der alte Borgate weis Sachen, da w�rdest du kein Auge mehr zu tun. Aber ich kann meinen Mund halten. Kannst du das auch? Ich denke nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Ob Cadomyr, Galmair oder auch Runewick... die nehmen sich alle viel zu wichtig. Hier im Gasthof zu Hanfschlinge behandeln wir alle gleich.");
talkEntry:addResponse("Ob Cadomyr, Galmair oder auch Runewick... hier in der Mitte der Wildniss ist ein Zwerg einfach nur ein Zwerg. Jeder ist sich selbst der N�chste.");
talkEntry:addResponse("Ob Cadomyr, Galmair oder auch Runewick... die bek�mmern einen alten Zwerg wie ich einer bin nur noch peripher.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Der alte Borgate weis Sachen, da w�rdest du kein Auge mehr zu tun. Aber ich kann meinen Mund halten. Kannst du das auch? Ich denke nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Ob Cadomyr, Galmair oder auch Runewick... die nehmen sich alle viel zu wichtig. Hier im Gasthof zu Hanfschlinge behandeln wir alle gleich.");
talkEntry:addResponse("Ob Cadomyr, Galmair oder auch Runewick... hier in der Mitte der Wildniss ist ein Zwerg einfach nur ein Zwerg. Jeder ist sich selbst der N�chste.");
talkEntry:addResponse("Ob Cadomyr, Galmair oder auch Runewick... die bek�mmern einen alten Zwerg wie ich einer bin nur noch peripher.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Der alte Borgate weis Sachen, da w�rdest du kein Auge mehr zu tun. Aber ich kann meinen Mund halten. Kannst du das auch? Ich denke nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Der alte Borgate weis Sachen, da w�rdest du kein Auge mehr zu tun. Aber ich kann meinen Mund halten. Kannst du das auch? Ich denke nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Ob Cadomyr, Galmair oder auch Runewick... die nehmen sich alle viel zu wichtig. Hier im Gasthof zu Hanfschlinge behandeln wir alle gleich.");
talkEntry:addResponse("Ob Cadomyr, Galmair oder auch Runewick... hier in der Mitte der Wildniss ist ein Zwerg einfach nur ein Zwerg. Jeder ist sich selbst der N�chste.");
talkEntry:addResponse("Ob Cadomyr, Galmair oder auch Runewick... die bek�mmern einen alten Zwerg wie ich einer bin nur noch peripher.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Im Laufe meines Lebens wurde mir viel Erz�hlt. Das Mei�te, von Betrunkenen und die sagen eher die Wahrheit. Aber wollt ihr wirklich die verwaschene Meinung eines alten Zwerges H�ren?");
talkEntry:addResponse("Wenn mir die Leute anfangen �ber ihre Heimat, oder sonst etwas zu erz�hlen nicke ich eigentlich immer nur uns sage 'Aha..?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Im Laufe meines Lebens wurde mir viel Erz�hlt. Das Mei�te, von Betrunkenen und die sagen eher die Wahrheit. Aber wollt ihr wirklich die verwaschene Meinung eines alten Zwerges H�ren?");
talkEntry:addResponse("Wenn mir die Leute anfangen �ber ihre Heimat, oder sonst etwas zu erz�hlen nicke ich eigentlich immer nur uns sage 'Aha..?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Im Laufe meines Lebens wurde mir viel Erz�hlt. Das Mei�te, von Betrunkenen und die sagen eher die Wahrheit. Aber wollt ihr wirklich die verwaschene Meinung eines alten Zwerges H�ren?");
talkEntry:addResponse("Wenn mir die Leute anfangen �ber ihre Heimat, oder sonst etwas zu erz�hlen nicke ich eigentlich immer nur uns sage 'Aha..?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Ich bin ein aufrichtiger Zwerg und Irmorom hat einst vor vielen Jahren meine Sippe erschaffen. Sein Wille leitet und sch�tzt mein Volk von Anbeginn her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Als Schankwirt, kann ich dir nat�rlich viel �ber Adron erz�hlen. Er ist der Gott des Weines und der Feste. Und man erz�hlt sich, insbesondere bei den Halblingen, er tr�gt immerzu einen gro�en Weinkrug bei sich, der niemals leer wird.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Ein paar weniger Querk�pfe unter den Zwergen huldigen auch Bragon. Er ist der Gott des Feuers, ist sehr weise, stark, gebieterisch, edel, und stattlich. Aber im Grunde Sollten Zwerge zu Irmorom beten, denn er ist unser Sch�pfer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("IRMOROM! Der vater des Zwergenvolkes. Auf ewig wird mein Volk an ihn gebunden sein, und das erf�llt unser Herz mit Freude und Stolz. Er ist wahrlich der pr�chtigste und uns Zwergen in so vielf�ltiger Weise �hnlich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Der Gott der Ritter und Kriegerkaste. Fragt die nach ihm.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("�ber Ronagan wei� ich nicht viel, nur das ich Fuchs-wild werde wenn die Leute die Bierkr�ge nicht zur�ckbringen.");
talkEntry:addResponse("Hm-h... Fragt doch Gowan. Hat ja wohl nicht umsonst einen Haken als Hand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("It's a damned bar, what do you think I sell? But here, look at the list: drinks and more.");
talkEntry:addResponse("Drinks and more. What do you thought? It's a Bar. And now, tell me: What do you want?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich verkaufe alles, was das Herz begehrt, aber eigentlich nur Bier. Willst du Eines?");
talkEntry:addResponse("Das hier ist 'ne Kneipe, was glaubst du, was wir hier verkaufen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Arr, Where shall I begin? I could tell you lots of what is spoken in this tavern, but if I would do that, no one would come back. No, I am not a traitor to my guests. Sorry!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Ich h�re viel und weiss eigentlich fast alles. Ich erz�hl' dir aber nichts davon, das geht dich nunmal nichts an.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("<NPC first name>");
talkEntry:addTrigger("<NPC last name>");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("<NPC-Vorname>");
talkEntry:addTrigger("<NPC-Nachname>");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Arr-h!");
talkEntry:addResponse("So soll's sein!");
talkEntry:addResponse("Aye, das hab ich gern.");
talkEntry:addResponse("Wenn's unbedingt notwenig ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Arr-h?");
talkEntry:addResponse("Dann eben nicht.");
talkEntry:addResponse("Was wollt ihr dann von mir?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(50));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(50));
talkEntry:addResponse("#me nickt langsam. 'Aha...?'");
talkEntry:addResponse("#me legt den Kopf schief. 'Hmpf.'");
talkEntry:addResponse("#me greift sich mit den Fingern in den langen Bart und zieht sie hindurch. 'Ist das so?'");
talkEntry:addResponse("#me r�mpft seine gro�e felischige Nase. 'So etwas dachte ich mir schon.'");
talkEntry:addResponse("#me nimmt einen Schluck von seinem Bierkrug. '... unglaublich!'");
talkEntry:addResponse("Aye, so etwas �hnliches hab ich schonmal geh�rt. Das w�rde dich wundern.");
talkEntry:addResponse("Tats�chlich!? Ich bin erstaunt.");
talkEntry:addResponse("#me verschr�nkt die H�nde im Nacken. 'Hm-hm.'");
talkEntry:addResponse("Sodar es Irmoroms Wille ist...");
talkEntry:addResponse("#me zupft mit zwei Fingern an seinem Bart. 'Das ist seltsam. Findest du das nicht auch?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Arrr...", "Arrr...");
talkingNPC:addCycleText("Arrr!", "Arrr!");
talkingNPC:addCycleText("Arrr...?", "Arrr...?");
talkingNPC:addCycleText("#me trocknet einen Bierkrug ab", "#me wipes a beer mug clean");
talkingNPC:addCycleText("#me sieht sich gelangweilt um", "#me looks around bored");
talkingNPC:addCycleText("#me spielt mit einer Kupferm�nze", "#me plays with a copper coin");
talkingNPC:addCycleText("#me wischt �ber die Theke", "#me wipes over the bar");
talkingNPC:addCycleText("#me trinkt ein Bier", "#me gulps down a beer");
talkingNPC:addCycleText("#me wischt seine H�nde in die Hosen.", "ENGLISH.");
talkingNPC:addCycleText("#me brummt eine langsame Meldoie.", "ENGLISH.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(2);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein breit l�chelnder Zwergenwirt, dessen pr�chtiger Bart und Kleidung von Bierflecken �bers�t ist.", "A broadly smiling dwarfen barkeeper whose proud beard and clothes are covered with beer stains.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 101);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 2113);
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
