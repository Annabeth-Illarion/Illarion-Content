--------------------------------------------------------------------------------
-- NPC Name: Victor Tolenor                                              None --
-- NPC Job:  Insert profession here                                           --
--                                                                            --
-- NPC Race: halfling                   NPC Position:  0, 0, 0                --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Insert your name here                                            --
--                                                                            --
-- Last parsing: July 03, 2011                           easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (2, 0, 0, 0, 4, 'Victor Tolenor', 'npc.victor_tolenor', 0, 2, 5, 123, 62, 9, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.basestate")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.attribute")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.consequence.talkstate")
require("npc.base.talk")
module("npc.victor_tolenor", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Victor Tolenor a Cadomyr citizen. Keyphrases: Cadomyr."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Victor Tolenor ein B�rger Cadomyrs. Schl�sselw�rter: Cadomyr."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Victor Tolenor the henchman of Baron Hastings. Keyphrases: Quest, revolution, aunt."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Victor Tolenor der Handlanger Baron Hastings. Schl�sselw�rter: Aufgabe, Revolution, Tante."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greetings");
talkEntry:addTrigger("Be greeted");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "<", 2));
talkEntry:addCondition(npc.base.condition.basestate.basestate("idle"));
talkEntry:addResponse("Be brief, I am in a hurry.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("begin"));
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
talkEntry:addTrigger("mit dir");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "<", 2));
talkEntry:addCondition(npc.base.condition.basestate.basestate("idle"));
talkEntry:addResponse("Fasst euch kurz, ich bin in Eile.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("begin"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greebas");
talkEntry:addTrigger("Greebs");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "<", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.basestate.basestate("idle"));
talkEntry:addResponse("Be brief, I am in a hurry.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("begin"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greebas");
talkEntry:addTrigger("Greebs");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "<", 2));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.basestate.basestate("idle"));
talkEntry:addResponse("Fasst euch kurz, ich bin in Eile.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("begin"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.basestate.basestate("busy"));
talkEntry:addResponse("Oh no, even more people pestering me. Leave me alone!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.basestate.basestate("busy"));
talkEntry:addResponse("Oh nein, noch mehr Nervens�gen. Lasst mich in Ruhe!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "<", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("The man doesn't seem to like company."));
talkEntry:addResponse("Good, now leave me alone!");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "<", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Der Mann scheint keine Gesellschaft zu m�gen."));
talkEntry:addResponse("Gut, jetzt lasst mich in Ruhe!");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "<", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("The man doesn't seem to like company."));
talkEntry:addResponse("Good, now leave me alone!");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "<", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Der Mann scheint keine Gesellschaft zu m�gen."));
talkEntry:addResponse("Gut, jetzt lasst mich in Ruhe!");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "<", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Something's fishy about the man, he isn't willing to talk and you can't change his mind upon that."));
talkEntry:addResponse("I love Cadomyr! And now excuse me, I have things to do.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "<", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Der Mann kommt dir seltsam vor, er ist nicht bereit mit dir zu sprechen und l�sst sich nicht umstimmen."));
talkEntry:addResponse("Ich liebe Cadomyr! Und jetzt entschuldigt mich, ich habe zu tun.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Secret Handshake");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "=", 1));
talkEntry:addResponse("#w Shh! Lower your bloody voice! You support the baron? Good, good, we have much to do.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(999, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Geheimer Handschlag");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "=", 1));
talkEntry:addResponse("#w Shh! Sei gef�lligst leiser! Ihr unterst�tzt also den Baron? Gut gut, es gibt viel zu tun.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(999, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(80));
talkEntry:addConsequence(npc.base.consequence.inform.inform("The man doesn't seem to like company."));
talkEntry:addResponse("Leave me alone!");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(80));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Der Mann scheint keine Gesellschaft zu m�gen."));
talkEntry:addResponse("Lasst mich in Ruhe!");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Ouch! He bumped into you, better leave that man alone..."));
talkEntry:addResponse("I told you to leave me alone!");
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "-", 3000));
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "+", 1));
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(999, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Aua! Er hat dich angerempelt, du l�sst ihn besser in Ruhe..."));
talkEntry:addResponse("Ich sagte lass mich in Ruhe!'");
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "-", 3000));
talkEntry:addConsequence(npc.base.consequence.attribute.attribute("hitpoints", "+", 1));
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greetings");
talkEntry:addTrigger("Be greeted");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addCondition(npc.base.condition.basestate.basestate("idle"));
talkEntry:addResponse("#w Ah you're back. Do you bring new instructions?");
talkEntry:addResponse("You're back. And here I thought we made a mistake in trusting you.");
talkEntry:addResponse("A glorious day to you in the wonderful city of Cadomyr! Haha, yeah right.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("begin"));
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
talkEntry:addTrigger("mit dir");
talkEntry:addCondition(npc.base.condition.basestate.basestate("idle"));
talkEntry:addResponse("#w Ah ihr seid es wieder. Habt ihr neue Anweisungen?");
talkEntry:addResponse("Ihr seid zur�ck. Ich dachte schon wir h�tten uns in euch get�uscht.");
talkEntry:addResponse("Einen glorreichen Tag im wunderbaren Cadomyr w�nsche ich euch! Haha, ja genau.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("begin"));
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
talkEntry:addCondition(npc.base.condition.basestate.basestate("idle"));
talkEntry:addResponse("#w Ah you're back. Do you bring new instructions?");
talkEntry:addResponse("You're back. And here I thought we made a mistake in trusting you.");
talkEntry:addResponse("A glorious day to you in the wonderful city of Cadomyr! Haha, yeah right.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("begin"));
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
talkEntry:addCondition(npc.base.condition.basestate.basestate("idle"));
talkEntry:addResponse("#w Ah ihr seid es wieder. Habt ihr neue Anweisungen?");
talkEntry:addResponse("Ihr seid zur�ck. Ich dachte schon wir h�tten uns in euch get�uscht.");
talkEntry:addResponse("Einen glorreichen Tag im wunderbaren Cadomyr w�nsche ich euch! Haha, ja genau.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("begin"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("Tell my aunt I send her my dearest regards if you see her.");
talkEntry:addResponse("Don't forget to greet Baron Has...lints Barton Haslints in my name.");
talkEntry:addResponse("See you soon. I am counting on you, using both hands and feet.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Richtet meiner Tante sch�ne Gr��e aus wenn ihr sie seht.");
talkEntry:addResponse("Vergesst nicht Baron Has...lints, Barton Haslints von mir zu gr��en.");
talkEntry:addResponse("Bis bald. Ich z�hle auf euch. Mit beiden H�nden und F��en.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Tell my aunt I send her my dearest regards if you see her.");
talkEntry:addResponse("Don't forget to greet Baron Has...lints Barton Haslints in my name.");
talkEntry:addResponse("See you soon. I am counting on you, using both hands and feet.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Richtet meiner Tante sch�ne Gr��e aus wenn ihr sie seht.");
talkEntry:addResponse("Vergesst nicht Baron Has...lints. Barton Haslints von mir zu gr��en.");
talkEntry:addResponse("Bis bald. Ich verlasse mich auf euch.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I am fine. I bought new wares for my uh... sick aunt.");
talkEntry:addResponse("I am worried sick about my aunt Hastings... uhh Hastines! Do you bear news from her?");
talkEntry:addResponse("#w Cut that out and let's get down to buisiness. I think we're being watched.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Mir geht es gut. Ich habe neue Waren f�r meine uh... kranke Tante eingekauft.");
talkEntry:addResponse("Ich sorge mich sehr um meine Tante Hastings... �hh Hastines! Bringt ihr Neuigkeiten?");
talkEntry:addResponse("#w K�nnt ihr euch das sparen und zum Gesch�ftlichen kommen? Ich glaube wir werden beobachtet.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Victor Tolenor, proud citizen of Cadomyr!");
talkEntry:addResponse("Is that realy important? Tell me friend, what news do you bring of my aunt?");
talkEntry:addResponse("Victor Tolenor is my name, gods shave... uh, save the queen!");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Victor Tolenor, ein stolzer B�rger Cadomyrs!");
talkEntry:addResponse("Ist das wirklich so wichtig? Komm Freund, erz�hl mir lieber ob meine Tante wohlauf ist.");
talkEntry:addResponse("Victor Tolenor mein Name, die G�tter m�gen die K�nigin stutzen, �hh st�tzen.");
talkEntry:addConsequence(npc.base.consequence.talkstate.talkstate("end"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I buy a lot of things but the source has to be reliable, I won't buy from you!");
talkEntry:addResponse("I am responsible for the 'acquisition' of things to strenghten our cause.");
talkEntry:addResponse("I don't sell things. I buy them and accord them to our cause.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich kaufe so einiges, aber ich muss mich auf die Quelle verlassen k�nnen, von dir kauf ich nix!");
talkEntry:addResponse("Ich bin daf�r zust�ndig Dinge die unserer Sache nutzen zu 'akquirieren'.");
talkEntry:addResponse("Ich verkaufe nichts. Ich kaufe Vorr�te und lasse sie unserer Sache zukommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Soon, very soon I'll be living in a palace!");
talkEntry:addResponse("I'd rather you tell me some news about my aunt.");
talkEntry:addResponse("I think I have some nasty wounds from all this sand. Do you want to see my feet to check?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Bald, sehr bald werde ich in einem Palast wohnen!");
talkEntry:addResponse("Solltet ihr mir nicht etwas von meiner Tante erz�hlen?");
talkEntry:addResponse("Ich glaube ich habe vom vielen Sand offene Wunden an den F��en, wollt ihr sie sehen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I'm an honest, hard working citizen of Cadomyr. What I work as? Uhh...");
talkEntry:addResponse("My aunt sometimes sends me a coin or two.");
talkEntry:addResponse("#w What I do here? The same thing I do everyday. I'm trying to pave the roads for Baron Hastings big return!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin ein ehrlicher, hart arbeitender B�rger Cadomyrs. Was ich mache? �hh...");
talkEntry:addResponse("Meine Tante schickt mir manchmal die eine oder andere M�nze.");
talkEntry:addResponse("#w Was ich hier mache? Das selbe wie jeden Tag. Ich versuche den Weg f�r Baron Hastings zu ebnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I'm an honest, hard working citizen of Cadomyr. What I work as? Uhh...");
talkEntry:addResponse("My aunt sometimes sends me a coin or two.");
talkEntry:addResponse("#w What I do here? The same thing I do everyday. I'm trying to pave the roads for Baron Hastings big return!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin ein ehrlicher, hart arbeitender B�rger Cadomyrs. Was ich mache? �hh...");
talkEntry:addResponse("Meine Tante schickt mir manchmal die eine oder andere M�nze.");
talkEntry:addResponse("#w Was ich hier mache? Das selbe wie jeden Tag. Ich versuche den Weg f�r Baron Hastings zu ebnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Go bathe? My personal hygiene shouldn't be of your concern!");
talkEntry:addResponse("Gobaith? Oh right! Wasn't that the place where... together with... and afterwards... oh you had to be there, right?");
talkEntry:addResponse("At first we wanted to settle down there but oh boy that would've been a long swim back.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse(".");
talkEntry:addResponse("Geh baden? Meine K�rperhygiene geht nur mich etwas an!");
talkEntry:addResponse("Gobaith? Oh richtig! Ja das war doch diese... mit der... und dann... oh man h�tte dabei sein sollen nicht?");
talkEntry:addResponse("Zuerst wollten wir uns dort niederlassen aber Juuunge da w�ren wir sch�n baden gegangen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("I am");
talkEntry:addTrigger("my name");
talkEntry:addResponse("Don't bother, I'll forget that name straight away, it's for the better.");
talkEntry:addResponse("Oh yeah? Good, should they ever torture me atleast I have a name to give now.");
talkEntry:addResponse("Pleased to meet you. My aunt's friends are my friends.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ich bin");
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Bem�ht euch nicht, es ist besser ich vergesse ihn gleich wieder.");
talkEntry:addResponse("Oh wirklich? Sch�n, wenn sie mich jemals foltern kann ich jetzt wenigstens Namen nennen.");
talkEntry:addResponse("Freut mich eure Bekanntschaft zu machen. Freunde meiner Tante sind auch meine Freunde.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("our cause");
talkEntry:addResponse("The improvement of our living conditions in Cadomyr of course!");
talkEntry:addResponse("As if my aunt didn't tell you already.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("revolution");
talkEntry:addTrigger("rebellion");
talkEntry:addResponse("Yes. Sadly everyone seems happy to be at the mercy of a woman.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("aunt");
talkEntry:addResponse("My aunt could rule Cadomyr even better than the queen.");
talkEntry:addResponse("You know who I'm talking about.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("torture");
talkEntry:addTrigger("jail");
talkEntry:addResponse("You should've thought about that earlier.");
talkEntry:addResponse("#me shrugs passively: 'All I have to do is run faster than you once they come for us. And I will'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("baron");
talkEntry:addResponse("Yes, shout it out realy loud.");
talkEntry:addResponse("Hey there guards! This one's plotting against the queen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("reward");
talkEntry:addResponse("I'm a simple man with a simple taste. Gold, jewelry, a small fiefdom.");
talkEntry:addResponse("Once the garbage is removed those that were labourous will be rewarded!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("unsere Sache");
talkEntry:addResponse("Die Verbesserung unserer Lebensbedingungen in Cadomyr nat�rlich!");
talkEntry:addResponse("Als ob euch das meine Tante nicht schon gesagt h�tte.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Revolution");
talkEntry:addTrigger("rebellion");
talkEntry:addResponse("Ja. Leider scheinen alle zufrieden damit nach der Pfeife einer Frau zu tanzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tante");
talkEntry:addResponse("Meine Tante k�nnte Cadomyr noch besser regieren als die K�nigin.");
talkEntry:addResponse("Ihr wisst schon wen ich meine.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Folter");
talkEntry:addTrigger("Gef�ngnis");
talkEntry:addResponse("Dar�ber h�ttet ihr vorher nachdenken sollen.");
talkEntry:addResponse("#me zuckt teilnahmslos mit den Schultern: 'Ich renne schneller als ihr wenn sie uns holen.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("Baron");
talkEntry:addResponse("Ohja erw�hnt diesen Namen nur sch�n laut.");
talkEntry:addResponse("He da, Wache! Hier wird gegen die K�nigin konspiriert!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Belohnung");
talkEntry:addResponse("Ich bin ein einfacher Mann mit einem einfachen Geschmack. Gold, Schmuck, ein kleines Lehen.");
talkEntry:addResponse("Wenn hier erstmal aufger�umt wurde werden die t�chtigen belohnt, ohja!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I heard his robes are moving as if there's a light breeze at all times, even with no wind.");
talkEntry:addResponse("What a goof, but damn, I want to know where he gets his clothes tailored.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Angeblich sollen seine Roben immer wie in leichtem Wind wallen, auch wenn gar kein Wind weht.");
talkEntry:addResponse("Ein Armleuchter, aber verdammt ich m�chte wissen wo er seine Sachen schneidern l�sst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ironic how they think they're better than us. Did you see their slums?");
talkEntry:addResponse("Common people there are worse off than here. We know we're being oppressed, they're lied to.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Ironisch wie sie sich f�r was besseres halten. Habt ihr ihr Elendsviertel gesehen?");
talkEntry:addResponse("Dem P�bel dort geht es schlechter als hier. Hier wei� man, man wird ausgebeutet dort wird man belogen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Hah! Fearless man, I must admit.");
talkEntry:addResponse("Back when he proposed for Rosalines hand, hah! His face didn't even smirk, what a scaundrel!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Hah! Mut hat er das muss man ihm lassen.");
talkEntry:addResponse("Als er damals um Rosalines Hand angehalten hat, hah! Nichteinmal geschmunzelt, was f�r ein Schurke.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("If only we had their ores and weapons. Cadomyr would be ours in no time.");
talkEntry:addResponse("Not much more than a hole in a mountain. But a hole high quality ores and weapons come from..");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Wenn wir nur ihre Erze und Waffen h�tten. Cadomyr w�re im Handstreich unser.");
talkEntry:addResponse("Nicht viel mehr als ein Loch im Berg. Aber eines aus dem hochwertige Erze und Waffen kommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("My mother told me not to speak about certain things. Flatulence for example.");
talkEntry:addResponse("A spoiled princess who toys with us as one would with dolls!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Meine Mutter hat mir gesagt dass man �ber gewisse Dinge wie Bl�hungen nicht sprechen soll.");
talkEntry:addResponse("Eine verzogene Prinzessin die mit uns wie mit Puppen spielt!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("This town needs a man's touch in its ruling class!");
talkEntry:addResponse("Look at me! Who doesn't like to live in a pile of sand?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Was dieser Stadt fehlt ist die starke Hand eines m�nnlichen Herrschers!");
talkEntry:addResponse("Seht mich an! Wer lebt nicht gerne in einem Haufen Sand?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("If we were in Albar this queen nonsense would be over already.");
talkEntry:addResponse("#w Better try to be the biggest fish in the pond than some fish in the sea. We'll stay in Cadomyr instead.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("W�ren wir in Albar h�tte dieser K�niginnen Unfug schon l�ngst ein Ende.");
talkEntry:addResponse("#w Besser versuchen der gr��te Fisch im Teich zu sein als ein kleiner im Meer. Wir bleiben in Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("All in all I can be happy with my current job. Working in Gynka would be more dangerous.");
talkEntry:addResponse("Who knows? Maybe I'll start a buisiness there from the reward I will get.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Alles in allem ist mein jetziger Beruf sicherer als in Gynka zu arbeiten.");
talkEntry:addResponse("Wer wei�? Vielleicht bau ich mir von meiner Belohnung dort etwas auf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("They have great ideals, but the weak are being trampled upon same as everywhere.");
talkEntry:addResponse("Everyone has a say. Pah. It's your count that votes! Same as everywhere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ihre Ideale m�gen zwar sch�n klingen, aber Schw�chere werden hier wie dort ausgebeutet.");
talkEntry:addResponse("Jeder darf mitbestimmen. Jeder mit genug Geld und Titeln eher, so wie �berall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Ach gods. After everything that happened to me I can only believe in Nargun.");
talkEntry:addResponse("Hmm. If there's one important god influencing my life it's Nargun. Both for better or worse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Ach G�tter. Nach allem Geschick das mir widerfahren ist kann ich nurnoch an Nargun glauben.");
talkEntry:addResponse("Hmm. Wenn einer mein Leben bestimmt dann Nargun. Ob gut oder schlecht sei dahingestellt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("If you know what's good for your soul you'd better not say that again!");
talkEntry:addResponse("#w Fool! Do you want them to torture *and* burn us? Silence!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Wenn ihr wisst was gut f�r eure Seele ist w�rde ich das nicht nochmal sagen!");
talkEntry:addResponse("#w Narr! Sollen sie uns nicht nur Foltern sondern auch noch verbrennen? Schweigt!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Nargun is the only just god. He pulls his pranks on everyone.");
talkEntry:addResponse("Nobody can fight fate, no noble no beggar everyone is equal infront of Narguns dice.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Nargun ist der einzig gerechte Gott. Er treibt mit jedem seine Sp��e.");
talkEntry:addResponse("Niemand ist vor dem Schicksal gesch�tzt, ob Edelmann ob Bettler vor seinem W�rfel sind alle gleich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Of course this deity may have followers but I am not one of them.");
talkEntry:addResponse("Ohwell, I have tried to pray to this deity but I've never been answered.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Diese Gottheit hat sicher ihre Anh�nger, aber ich bin keiner davon.");
talkEntry:addResponse("Ach, ich habe versucht zu dieser Gottheit zu beten aber geh�rt wurde ich nie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Well infact there is something you could do.");
talkEntry:addResponse("Well as you asked, indeed I do have a task for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Nun es gibt da wirklich etwas was ihr tun k�nnt.");
talkEntry:addResponse("Wenn ihr so fragt, ja ich h�tte da eine Aufgabe f�r euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Well infact there is something you could do.");
talkEntry:addResponse("Well as you asked, indeed I do have a task for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Nun es gibt da wirklich etwas was ihr tun k�nnt.");
talkEntry:addResponse("Wenn ihr so fragt, ja ich h�tte da eine Aufgabe f�r euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("True! Uhm, what?");
talkEntry:addResponse("Correct! But what are you talking about?");
talkEntry:addResponse("Yes!? What!?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Genau! �hh, was?");
talkEntry:addResponse("Richtig! Aber... wovon sprichst du?");
talkEntry:addResponse("Ja!? Was!?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Oh look right there, doubts ahead.");
talkEntry:addResponse("No! Yes! To what?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Ach sieh an, da kommen die Zweifel.");
talkEntry:addResponse("Nein! Ja! Was eigentlich?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me klopft sich ver�rgert etwas Sand aus der Kleidung.", "#me pats some sand from his clothes with a frown.");
talkingNPC:addCycleText("#me wimmert und reibt sich die Augen: 'Sandk�rner... aua.'.", "#me wimpers and rubs his eyes: 'Sand... ouch.'");
talkingNPC:addCycleText("#me stolpert fast �ber einen Haufen Sand und flucht.", "#me nearly trips over a pile of sand and curses.");
talkingNPC:addCycleText("#me wischt sich �ber die Stirn und sieht sich um.", "#me wipes his forehead and looks around.");
talkingNPC:addCycleText("#me murmelt still zu sich selbst.", "#me mutters quietly towards himself.");
talkingNPC:addCycleText("Bald... sehr bald.", "Soon... very soon.");
talkingNPC:addCycleText("#me l�chelt gequ�lt: 'Wie sch�n es ist, einer Frau zu dienen!", "#me forces a smile: 'Oh what joy to serve a woman!'");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist <Name> der <Beruf/Funktion>.", "This NPC is <Name> the <profession/function>.");
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

function receiveText(texttype, message, speaker) mainNPC:receiveText(speaker, message); end;
function nextCycle() mainNPC:nextCycle(); end;
function lookAtNpc(char, mode) mainNPC:lookAt(char, mode); end;
function useNPC(char, counter, param) mainNPC:use(char); end;
initNpc();
initNpc = nil;
-- END