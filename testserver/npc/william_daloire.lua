--------------------------------------------------------------------------------
-- NPC Name: William Daloire                                             None --
-- NPC Job:  herbalist                                                        --
--                                                                            --
-- NPC Race: human                      NPC Position:  897, 794, 1            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Miriam                                                           --
--                                                       easyNPC Parser v1.21 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 897, 794, 1, 4, 'William Daloire', 'npc.william_daloire', 0, 2, 5, 123, 62, 9, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.consequence.trade")
require("npc.base.talk")
require("npc.base.trade")
module("npc.william_daloire", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
local tradingNPC = npc.base.trade.tradeNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sell");
talkEntry:addTrigger("buy");
talkEntry:addTrigger("wares");
talkEntry:addTrigger("price");
talkEntry:addTrigger("trade");
talkEntry:addTrigger("purchase");
talkEntry:addResponse("Ah, so you are interested in my wares.");
talkEntry:addResponse("Take your time to look around.");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
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
talkEntry:addResponse("Ah, dann interessiert Ihr Euch also f�r meine Waren.");
talkEntry:addResponse("Schaut Euch ruhig in Ruhe um.");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help]This NPC is William Daloire the herbalist. Keywords: trade, buy, sell, greetings, profession, tell something."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist William Daloire der Kr�uterkundige. Schl�sselw�rter: Handel, kaufe, verkaufe, Gr��e, Beruf, erz�hl was."));
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
talkEntry:addResponse("Oldra.");
talkEntry:addResponse("Greetings.");
talkEntry:addResponse("Be greeted.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��e");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Guten Morgen");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Gute Nacht");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addTrigger("Mohltied");
talkEntry:addResponse("Oldra zum Gru�e.");
talkEntry:addResponse("Gr��e.");
talkEntry:addResponse("Seid gegr��t.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greetings.");
talkEntry:addResponse("Be greeted.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Gr��e.");
talkEntry:addResponse("Seid gegr��t.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farewell. May Oldra be with you.");
talkEntry:addResponse("Farewell. Please come again.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Lebt wohl! M�ge Oldra �ber Euch wachen!");
talkEntry:addResponse("Lebt wohl! Und schaut mal wieder vorbei.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Ad�!");
talkEntry:addResponse("A bient�t!");
talkEntry:addResponse("May Oldra be with you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Ad�!");
talkEntry:addResponse("A bient�t!");
talkEntry:addResponse("M�ge Oldra �ber Euch wachen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Thank you for asking. Since I stay away from smoking Sibanac I feel great!");
talkEntry:addResponse(" I drank some tea agains my headache, now I feel better.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Danke der Nachfrage. Seitdem ich kein Sibanac mehr rauche geht es mir ausgezeichnet!");
talkEntry:addResponse("I trank Tee gegen meine Kopfschmerzen, und nun  geht es mir wieder gut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I'm a merchant, I sell fresh herbs. I am called William Deloire.");
talkEntry:addResponse("I'm William Deloire, at you service.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin ein H�ndler der frische Kr�uter verkauft. Ich werde William Deloire genannt.");
talkEntry:addResponse("Ich hei�e William Deloire, was kann ich f�r Euch tun?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I don't sell that... Ehm, i wanted to say, I do not have any quest for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Soetwas verkaufe ich nicht. �hm...Ich wollte sagen, ich biete soetwas nicht an.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I don't sell that... Ehm, i wanted to say, I do not have any quest for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Soetwas verkaufe ich nicht. �hm...Ich wollte sagen, ich biete soetwas nicht an.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(317, "=", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".");
talkEntry:addResponse("Oh? ... A letter for me? ... Ah, I see. Please tell Miss Bragolin I'll send her a letter to answer her questions.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(317, "=", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(317, "=", 9));
talkEntry:addTrigger(".");
talkEntry:addResponse("Oh?... ein Brief f�r mich? ... Ah, ich verstehe. Bitte sagt Fr�ulein Bragolin ich werde ihr einen Brief schreiben um ihre Fragen zu beantworten.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(317, "=", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I'm a herbaslist, that means I sell herbs. Want to take a look?");
talkEntry:addResponse("I do not only sell herbs but also some very usefull tooles. Want to take a look?");
talkEntry:addResponse("I sell herbs ans some tools aswell, want to take a look?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin ein Kr�uterh�ndler, das hei�t ich handle mit Kr�utern. M�chtet Ihr das Angebot sehen?");
talkEntry:addResponse("I verkaufe nicht nur Kr�uter, sondern auch sehr n�tzliche Werkzeuge. M�chtet Ihr das Angebot sehen?");
talkEntry:addResponse("Ich verkaufe Kr�uter und einige Werkzeuge. M�chtet Ihr das Angebot sehen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I'm a herbaslist, that means I sell herbs. Want to take a look?");
talkEntry:addResponse("I do not only sell herbs but also some very usefull tooles. Want to take a look?");
talkEntry:addResponse("I sell herbs ans some tools aswell, want to take a look?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin ein Kr�uterh�ndler, das hei�t ich handle mit Kr�utern. M�chtet Ihr das Angebot sehen?");
talkEntry:addResponse("I verkaufe nicht nur Kr�uter, sondern auch sehr n�tzliche Werkzeuge. M�chtet Ihr das Angebot sehen?");
talkEntry:addResponse("Ich verkaufe Kr�uter und einige Werkzeuge.M�chtet Ihr das Angebot sehen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Smoking Sibanac is not good for your health.");
talkEntry:addResponse("There a some herbs wich you can only find ih the desert.");
talkEntry:addResponse("Herbs can have very diffent qualities, a Druid can tell you more about it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Sibanac zu rauchen ist nicht gesund.");
talkEntry:addResponse("Einige K�uter findet man nur in der W�ste.");
talkEntry:addResponse("Kr�uter k�nnen sehr unterschiedliche Eigenschaften haben, ein Druide kann euch dazu sicher mehr erz�hlen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("The elder gods gave their power to the new ones before they left this world.");
talkEntry:addResponse("The old gods aren't worshiped alot theses days.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Die alten G�tter gaben ihre Macht den jungen G�ttern, bevor sie diese Welt verlie�en.");
talkEntry:addResponse("Zu den alten G�ttern betet heutzutage kaum einer mehr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Adron");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Adron");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elara");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elara");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eldan");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Findari");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Findari");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("I do not pray to this evil god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Ich bete nicht zu diesem finsteren Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nargun");
talkEntry:addTrigger("Narg�n");
talkEntry:addTrigger("Narg�n");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Ushara is the godess of earth, while Oldra is the godess of life.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Ushara ist die G�ttin der Erde, w�hrend Oldra die G�ttin des Lebens ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Ushara is the godess of earth, while Oldra is the godess of life.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Ushara ist die G�ttin der Erde, w�hrend Oldra die G�ttin des Lebens ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("I do not pray to this god. Do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Ich bete nicht zu diesem Gott. Und Ihr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("What does a herbalist concern the archmage? Right, he dosen't.");
talkEntry:addResponse("I know nothing about that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Was hat ein Kr�uterh�ndler mit dem Erzmagier zu tun? Nichts.");
talkEntry:addResponse("Davon wei� ich nichts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("What does a herbalist concern Elvaine Morgan? Right, he dosen't.");
talkEntry:addResponse("I know nothing about that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Was hat ein Kr�uterh�ndler mit Elvaine Morgan zu tun? Nichts.");
talkEntry:addResponse("Davon wei� ich nichts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Even there you'll find herbs. Plants grow almost everywhere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Auch dort kann man Kr�uter finden. Pflanzen wachsen fast �berall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("The Don likes good whine better than tea made from herbs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Der Don sch�tzt guten Wein bmehr als Kr�utertee.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Even there you'll find herbs. Plants grow almost everywhere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Auch dort kann man Kr�uter finden. Pflanzen wachsen fast �berall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("What does a herbalist concern the queen? Right, he dosen't.");
talkEntry:addResponse("I know nothing about that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Was hat ein Kr�uterh�ndler mit der K�nigin zu tun? Nichts.");
talkEntry:addResponse("Davon wei� ich nichts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("What does a herbalist concern the queen? Right, he dosen't.");
talkEntry:addResponse("I know nothing about that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Was hat ein Kr�uterh�ndler mit dem Rosaline Edwards zu tun? Nichts.");
talkEntry:addResponse("Davon wei� ich nichts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Even there you'll find herbs. Plants grow almost everywhere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Auch dort kann man Kr�uter finden. Pflanzen wachsen fast �berall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Even there you'll find herbs. Plants grow almost everywhere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Auch dort kann man Kr�uter finden. Pflanzen wachsen fast �berall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Even there you'll find herbs. Plants grow almost everywhere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Auch dort kann man Kr�uter finden. Pflanzen wachsen fast �berall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Even there you'll find herbs. Plants grow almost everywhere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Auch dort kann man Kr�uter finden. Pflanzen wachsen fast �berall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Goba...Gobi-what?...What kind of herb is that?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Goba...Gobi-was? Was f�r ein Kraut ist das denn?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("A plesure to meet you,%CHARNAME.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Es ist eine Freude Eure Bekanntschaft zu machen, %CHARNAME.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("William");
talkEntry:addTrigger("Deloire");
talkEntry:addResponse("Yes,that's me. I am William Deloire, at you service.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("William");
talkEntry:addTrigger("Deloire");
talkEntry:addResponse("Ja, das bin ich. William Deloire, was kann ich f�r Euch tun?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("That's how I'd say it.");
talkEntry:addResponse("Well...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Das sehe ich genau so.");
talkEntry:addResponse("Nun...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Ah. I understand ...");
talkEntry:addResponse("Well...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Ah. Das verstehe ich ...");
talkEntry:addResponse("Nun...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("I fear, I didn't understand you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ich f�rchte, ich habe Euch nicht verstanden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me duftet nach Kr�utern.", "#me smells like herbs.");
talkingNPC:addCycleText("#me wischt ein paar alte Bl�tter vom Tisch.", "#me wipes some old leaves from the table");
talkingNPC:addCycleText("#me blickt nach drau�en.", "#me lookes outside.");
talkingNPC:addCycleText("#me zwinkert der Verk�uferin am anderen Tisch zu.", "#me winks at the merchant behind the other table.");
talkingNPC:addCycleText("#me pfeift eine vergn�gliche Melodie.", "#me wistles a happy melodie.");
talkingNPC:addCycleText("#me wiegt ein Beutelchen mit Kr�utern.", "#me weighs a small bag of herbs out.");
talkingNPC:addCycleText("Kr�uter! Frische Kr�uter mit bester Qualit�t!", "Herbs! Fresh Herbs wirh best Quality!");
tradingNPC:addItem(npc.base.trade.tradeNPCItem(58,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1008,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(429,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(126,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(43,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(391,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(52,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(753,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(754,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(755,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(756,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(757,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(758,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(759,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(760,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(761,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(762,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(763,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(764,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(765,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(766,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(767,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(768,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(769,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(133,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(134,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(135,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(136,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(137,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(138,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(140,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(141,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(142,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(143,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(144,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(145,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(146,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(148,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(152,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(153,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(154,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(155,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(156,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(157,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(431,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(463,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2745,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(158,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(159,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(160,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(161,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(162,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(163,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(58,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1008,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(429,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(126,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(43,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(391,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(52,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(753,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(754,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(755,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(756,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(757,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(758,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(759,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(760,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(761,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(762,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(763,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(764,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(765,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(766,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(767,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(768,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(769,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(133,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(134,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(135,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(136,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(137,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(138,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(140,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(141,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(142,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(143,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(144,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(145,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(146,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(148,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(152,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(153,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(154,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(155,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(156,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(157,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(431,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(463,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2745,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(158,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(159,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(160,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(161,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(162,"buyPrimary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(163,"buyPrimary"));
tradingNPC:addNotEnoughMoneyMsg("Oh, ich f�rchte Ihr k�nnt Euch das nicht leisten.", "Oh, I fear, you can not afford that.");
tradingNPC:addDialogClosedMsg("Vielen Dank, beehrt mich bald wieder!", "Thank you, please come again!");
tradingNPC:addDialogClosedNoTradeMsg("Auf Bald!", "Farewell!");
tradingNPC:addWrongItemMsg("Das kaufe ich nicht.", "I'm not buying this.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist William Daloire der Kr�uterkundige.", "This NPC is William Daloire the herbalist.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 831);
mainNPC:setEquipment(3, 363);
mainNPC:setEquipment(11, 196);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 183);
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