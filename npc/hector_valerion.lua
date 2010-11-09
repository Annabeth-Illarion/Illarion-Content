--------------------------------------------------------------------------------
-- NPC Name: Hector Valerion                                          Cadomyr --
-- NPC Job:  Ambassador                                                       --
--                                                                            --
-- NPC Race: human                      NPC Position:  135, 552, 0            --
-- NPC Sex:  male                       NPC Direction: north                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                                            --
-- Last parsing: November 09, 2010                       easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 135, 552, 0, 0, 'Hector Valerion', 'npc.hector_valerion', 0, 0, 0, 255, 255, 255, 255, 255, 255);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
module("npc.hector_valerion", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 0");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Debugging] Quest status set to 0"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, ">", 14));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Error] Something went wrong, please inform a developer."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Hector Valerion the royal ambassador. Keyphrases: Ambassador, quest, TRIGGER3, TRIGGER4, TRIGGER5."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Hector Valerion der k�nigliche Botschafter. Schl�sselw�rter: Botschafter, Quest, TRIGGER3, TRIGGER4, TRIGGER5."));
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
talkEntry:addResponse("Be greeted. You interrupt me, so it has to be important.");
talkEntry:addResponse("#me closes a book and grumbles: 'What is it again?'");
talkEntry:addResponse("Speak or be quiet. The latter is preferred.");
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
talkEntry:addResponse("Seid mir gegr��t. Ihr unterbrecht mich beim Lesen, also muss es wichtig sein.");
talkEntry:addResponse("#me legt ein Buch beiseite und grummelt: 'Was ist denn jetzt schon wieder?'");
talkEntry:addResponse("Sprecht oder schweigt, letzteres w�re mir lieber.");
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
talkEntry:addResponse("Be greeted. You interrupt me, so it has to be important.");
talkEntry:addResponse("#me closes a book and grumbles: 'What is it again?'");
talkEntry:addResponse("Speak or be quiet. The latter is preferred.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greebas");
talkEntry:addTrigger("Greebs");
talkEntry:addResponse("Seid mir gegr��t. Ihr unterbrecht mich beim Lesen, also muss es wichtig sein.");
talkEntry:addResponse("#me legt ein Buch beiseite und grummelt: 'Was ist denn jetzt schon wieder?'");
talkEntry:addResponse("Sprecht oder schweigt, letzteres w�re mir lieber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("Can I continue reading now? Undisturbed? Thank you!");
talkEntry:addResponse("Go and don't come back too early.");
talkEntry:addResponse("There is the door.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Kann ich jetzt weiterlesen? Ungest�rt? Danke!");
talkEntry:addResponse("Auf wiedersehen und beehrt mich wieder. Aber nicht allzu bald.");
talkEntry:addResponse("Da ist die T�r.");
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
talkEntry:addResponse("Can I continue reading now? Undisturbed? Thank you!");
talkEntry:addResponse("Go and don't come back too early.");
talkEntry:addResponse("There is the door.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Kann ich jetzt weiterlesen? Ungest�rt? Danke!");
talkEntry:addResponse("Auf wiedersehen und beehrt mich wieder. Aber nicht allzu bald.");
talkEntry:addResponse("Da ist die T�r.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Just work! But what do I say, you look like somebody with lost of esteem. How about you fulfill a royal mission?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Immer diese Arbeit! Aber was sage ich, ihr seht aus, als wenn ihr voller Tatendrang w�ret. Werdet ihr auf eine k�nigliche Mission gehen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("My name is Hector, Hector Valerion. I am the royal ambassador and you are...?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Mein Name ist Hector, Hector Valerion. Ich bin der k�nigliche Botschafter und ihr seid...?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("The only thing I'd buy is my peace. Sometimes, I wish I'd be a less important man.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Das einzige, was ich erkaufen w�rde, w�re meine Ruhe. Ich w�nschte manchmal, ich w�re nicht so ein wichtiger Mann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Let's be honest, you disturb me and I am an important person. So, if you do a royal mission for me, both of us would be happy.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Mal ehrlich, ihr st�rt mich und ich bin eine wichtige Pers�nlichkeit. Also w�rdet ihr uns beide gl�cklich machen, wenn ihr euch auf eine Mission f�r die K�nigin begeben w�rdet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am the royal ambassador. That means I issue the orders of the queen and diplomatic despatches.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin der k�nigliche Botschafter. Das bedeutet, dass ich die Befehle und die diplomatischen Depeschen der K�nigin kund tue.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am the royal ambassador. That means I issue the orders of the queen and diplomatic despatches.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin der k�nigliche Botschafter. Das bedeutet, dass ich die Befehle und die diplomatischen Depeschen der K�nigin kund tue.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("You aren't from Gobaith, are you? If so, my condolescence.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Ihr seid nicht von Gobaith, richtig? Falls doch, mein Beileid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("I am");
talkEntry:addTrigger("my name");
talkEntry:addResponse("You are none of the officals, right? So, what do you require - orders?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ich bin");
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Ihr seid keine Amtsperson, richtig? Nun, was gibt es - braucht ihr Befehle?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ambassador");
talkEntry:addTrigger("embassador");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("lazy");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Order");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("despatch");
talkEntry:addTrigger("dispatch");
talkEntry:addResponse("");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("Baron");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Let me see... yes, I have orders for the Baron, it reads: 'Drop dead!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("diplomaty");
talkEntry:addTrigger("diplomatic");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Botschafter");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("faul");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Depesche");
talkEntry:addResponse("");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("Baron");
talkEntry:addResponse("Lasst mich mal nachsehen... ja, ich habe hier einen Befehl f�r den Baron: 'Stirb'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Diplomatie");
talkEntry:addTrigger("diplomatisch");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The archmage is, indeed, intelligent. But he has problems deriving the right deeds from his thoughts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Der Erzmagier ist f�rwahr intelligent. Allerdings f�llt es ihm schwer, aus seinen Gedanken die richtigen Taten abzuleiten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Runewick is far to the east. There is a secret passage under the mountains but it is a dangerous path. But the travel is worth it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick ist weit im Osten. Es gibt eine geheime Passage unter den Bergen hindurch, aber es ist ein gef�hrlicher Weg. Die Reise ist es jedoch wert.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
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
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Back in my youth, I once travelled in diplomatic mission to Albar. It was... I think we sent a host to there afterwards.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("W�hrend meiner Jugend bin ich einst in diplomatischer Mission nach Albar gereist. Es ging um... Ich meine, wir haben hinterher eine Streitmacht dorthin entsandt.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ronagan is the god of travellers, don't you know? So, why don't you travel a bit for me with Ronagan's blessing?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ronagan ist der Gott der Reisenden, wu�tet ihr das nicht? Nun, warum tut ihr nicht eine Reise f�r mich mit Ronagans Segen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am loyal, for Zhambra smiled upon me. I wouldn't do anything without an explicite, written order of her majesty.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Ich bin loyal, Zhambra meint es gut mit mir. Ich w�rde nichts ohne einen ausdr�cklichen und schriftlichen Befehl ihrer Majest�t tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] QUESTTITLE I"));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] QUESTTITEL I"));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] QUESTTITLE I"));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] QUESTTITEL I"));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", "<", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", "<", 5));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", "<", 5));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", "<", 5));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", ">", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 200 copper coins. You advance in TITLE THISFACTION LEADER's favour."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(391, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", ">", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 200 copper coins."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(391, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", ">", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 200 Kupferst�cke. Dein Ansehen bei TITEL THISFACTIONLEADER steigt."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(391, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 2));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", ">", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 200 Kupferst�cke."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(391, 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] QUESTTITLE II: You received a message for NPC."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] QUESTTITEL II: Du hast eine Nachricht f�r NPC erhalten."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] QUESTTITLE II: You received a message for NPC."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] QUESTTITEL II: Du hast eine Nachricht f�r NPC erhalten."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 3));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 50 copper coins and A ITEM. You advance in TITLE THISFACTION LEADER's favour."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 50));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 5));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 50 copper coins and A ITEM."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 50));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 50 Kupferst�cke und EIN ITEM. Dein Ansehen bei TITEL THISFACTIONLEADER steigt."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 50));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 5));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 4));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 50 Kupferst�cke und EIN ITEM."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 50));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] QUESTTITLE III: You received a message for NPC."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 5));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] QUESTTITEL III: Du hast eine Nachricht f�r NPC erhalten."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 5));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] QUESTTITLE III: You received a message for NPC."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 5));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] QUESTTITEL III: Du hast eine Nachricht f�r NPC erhalten."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 6));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 6));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 6));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 6));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded A NICE ITEM. You advance in TITLE THISFACTION LEADER's favour."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 699, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 8));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded A NICE ITEM."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 699, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 7));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst EIN NICE ITEM. Dein Ansehen bei TITEL THISFACTIONLEADER steigt."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 699, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 8));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 7));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst EIN NICE ITEM."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 699, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] QUESTTITLE IV_ You received a message for NPC."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 8));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] QUESTTITEL IV: Du hast eine Nachricht f�r NPC erhalten."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 8));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] QUESTTITLE IV: You received a message for NPC."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 8));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] QUESTTITEL IV: Du hast eine Nachricht f�r NPC erhalten."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 9));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 9));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 9));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 400 copper coins. You advance in TITLE THISFACTION LEADER's favour."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 400));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 11));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 10));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 400 copper coins."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 400));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 11));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 10));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 400 Kupferst�cke. Dein Ansehen bei TITEL THISFACTIONLEADER steigt."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 400));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 11));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 15));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 10));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 400 Kupferst�cke."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 400));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 11));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] QUESTTITLE V: You received a message for NPC."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 11));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] QUESTTITEL V: Du hast eine Nachricht f�r NPC erhalten."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 11));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] QUESTTITLE V: You received a message for NPC."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 11));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] QUESTTITEL V: Du hast eine Nachricht f�r NPC erhalten."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded AN UBER ITEM. You advance in TITLE THISFACTION LEADER's favour."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 999, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 14));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 13));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded AN UBER ITEM."));
talkEntry:addResponse("ENGLISH.");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 999, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 14));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 13));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst EIN UBER ITEM. Dein Ansehen bei TITEL THISFACTIONLEADER steigt."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 999, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 14));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 13));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst EIN UBER ITEM."));
talkEntry:addResponse("GERMAN.");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 999, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 14));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 14));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 14));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Task");
talkEntry:addTrigger("Adventure");
talkEntry:addTrigger("Message");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 14));
talkEntry:addResponse("ENGLISH.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Nachricht");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 14));
talkEntry:addResponse("GERMAN.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("YOURTRIGGER");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("DEINTRIGGER");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Ups, die Post ist da!", "Ups, I have mail.");
talkingNPC:addCycleText("#me g�hnt gelangweilt.", "#me yawns lazily.");
talkingNPC:addCycleText("#me bl�ttert in einem Buch.", "#me browses a book.");
talkingNPC:addCycleText("Ich hoffe nur, ich muss nicht schon wieder irgendwelche Depeschen �berbringen.", "I just hope I don't have to deliver any despatches.");
talkingNPC:addCycleText("Wann soll ich hier eigentlich mal ungest�rt zum Lesen kommen?", "When do I get to read my way?");
talkingNPC:addCycleText("Ob das Volk heute oder morgen seine Befehle bekommt, was macht das f�r einen Unterschied? Cadomyr wird es ewig geben!", "Does it make a difference whether the people get their orders today or tomorrow? Cadomyr will last forever!");
talkingNPC:addCycleText("Gut, gut, gut...", "Good, good, good...");
talkingNPC:addCycleText("Eindeutig zu viel Arbeit. Ich sollte erstmal ein wenig lesen, wahrscheinlich �berlegt sie es sich nochmal.", "Simply too much work. I should read a bit, most probably, she'll reconsider anyway.");
talkingNPC:addCycleText("Ich h�tte heiraten sollen als noch die Zeit daf�r war.", "I should have merried when I still had the time.");
talkingNPC:addCycleText("Wenn das Leben nicht so l�uft, wie man will, sollte man was dagegen tun.", "If life does not turn out how you'd like it to be one should do something about this.");
talkingNPC:addCycleText("Ruhe! Ich lese!", "Silence! I am reading!");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Hector Valerion der k�nigliche Botschafter.", "This NPC is Hector Valerion the royal ambassador.");
mainNPC:setUseMessage("Ihr werdet die Finger von einem Mann ihrere Majest�t lassen.", "You won't lay hand on a man of the queen, will you?");
mainNPC:setConfusedMessage("Pardon?", "Pardon?");
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