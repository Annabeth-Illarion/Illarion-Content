--------------------------------------------------------------------------------
-- NPC Name: Myrthe Mildthorn                                            None --
-- NPC Job:  none                                                             --
--                                                                            --
-- NPC Race: halfling                   NPC Position:  784, 772, 0            --
-- NPC Sex:  female                     NPC Direction: south                  --
--                                                                            --
-- Author:   not set                                                          --
--                                                                            --
-- Last parsing: November 13, 2010                       easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (2, 784, 772, 0, 4, 'Myrthe Mildthorn', 'npc.myrthe_mildthorn', 1, 0, 0, 255, 255, 255, 255, 255, 255);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
module("npc.myrthe_mildthorn", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is the washer-woman Myrthe Mildthorn. Keyphrases: Hello, laundry, cave, quest."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist das Waschweib Myrthe Mildthorn. Schl�sselw�rter: Hallo, W�sche, H�hle, Quest."));
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
talkEntry:addResponse("Oh, hello, got laundry? Excuse me, I thought you're one of my customers.");
talkEntry:addResponse("#me looks up from her washing board and replies: 'Hiho! Didn't I see you yesterday at the Anthil brook?");
talkEntry:addResponse("Hiho! How can I help you?");
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
talkEntry:addResponse("Oh, hallo, habt ihr Schmutzw�sche? Entschuldigt, ich dachte, ihr seid einer meiner Kunden.");
talkEntry:addResponse("#me schaut von ihrem Waschbrett auf und erwidert: 'Hiho! Hab ich euch nicht gestern erst am Bach Anthil gesehen?");
talkEntry:addResponse("Hiho! Wie kann ich euch helfen?");
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
talkEntry:addResponse("Oh, hello, got laundry? Excuse me, I thought you're one of my customers.");
talkEntry:addResponse("#me looks up from her washing board and replies: 'Hiho! Didn't I see you yesterday at the Anthil brook?");
talkEntry:addResponse("Hiho! How can I help you?");
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
talkEntry:addResponse("Oh, hallo, habt ihr Schmutzw�sche? Entschuldigt, ich dachte, ihr seid einer meiner Kunden.");
talkEntry:addResponse("#me schaut von ihrem Waschbrett auf und erwidert: 'Hiho! Hab ich euch nicht gestern erst am Bach Anthil gesehen?");
talkEntry:addResponse("Hiho! Wie kann ich euch helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("Farewell! If your clothes get dirty, just come back to me, will you?");
talkEntry:addResponse("Oh, you have to leave? I do not feel comfortable here, all alone.");
talkEntry:addResponse("Ah, I look forward to meet you again.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Gehabt euch wohl! Wenn eure Kleidung dreckig wird, kommt einfach zu mir zur�ck, ja?");
talkEntry:addResponse("Oh, ihr m��t gehen? Ich f�hl mich gar nicht wohl, so ganz alleine.");
talkEntry:addResponse("Ah, ich freu mich schon darauf, euch wiederzusehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Farewell! If your clothes get dirty, just come back to me, will you?");
talkEntry:addResponse("Oh, you have to leave? I do not feel comfortable here, all alone.");
talkEntry:addResponse("Ah, I look forward to meet you again.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Gehabt euch wohl! Wenn eure Kleidung dreckig wird, kommt einfach zu mir zur�ck, ja?");
talkEntry:addResponse("Oh, ihr m��t gehen? Ich f�hl mich gar nicht wohl, so ganz alleine.");
talkEntry:addResponse("Ah, ich freu mich schon darauf, euch wiederzusehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I feel... clean!");
talkEntry:addResponse("Oh, I am so worried, maybe you can help me.");
talkEntry:addResponse("Afraid!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Mir geht es... sauber!");
talkEntry:addResponse("Oh, ich bin so besorgt, vielleicht k�nnt ihr mir ja helfen.");
talkEntry:addResponse("Ich hab Angst!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Myrthe. Hello!");
talkEntry:addResponse("Myrthe Mildthorn, at your service.");
talkEntry:addResponse("Wasch-woman Myrthe Mildthorn reports for duty!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin die Myrthe. Hallo!");
talkEntry:addResponse("Myrthe Mildthorn, stets zu Diensten.");
talkEntry:addResponse("Waschweib Myrthe Mildthorn meldet sich zur Stelle!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I can wash your laundry, but I do not trade with goods.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich kann eure Schmutzw�sche waschen, aber ich handele nicht mit Waren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("First, you have to soak the laundry. Wait an hour, but not more. Then, wash it! And do not forget to rinse it twice.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Zun�chst m��t ihr die W�sche einweichen. Wartet eine Stunde, aber nicht mehr. Dann wascht sie! Vergesst nicht, sie hinterher zweimal zu sp�len.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wash");
talkEntry:addTrigger("laundry");
talkEntry:addResponse("Doing the laundry is very important. Otherwise, all the mages and nobles wouldn't have clean robes. How would that look like!");
talkEntry:addResponse("As a washer-woman, I am an important member of the society. I make people look noble!");
talkEntry:addResponse("Oh, you have some laundry I should wash? Wait a bit, please, I am not done with today's batch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wasch");
talkEntry:addTrigger("W�sche");
talkEntry:addResponse("W�sche waschen ist sehr wichtig. Denn ansonsten h�tten all die Magier und Edelleute keine sauberen Roben. Wir w�rde das denn aussehen!");
talkEntry:addResponse("Als Waschweib bin ich ein wichtiges Mitglied der Gesellschaft. Ich sorge erst daf�r, dass Leute so herrschaftlich aussehen k�nnen!");
talkEntry:addResponse("Oh, ihr habt etwas W�sche, die ich waschen soll? Wartet noch ein wenig, ich bin noch nicht mit dem Stapel f�r heute fertig.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I'm a washer-woman. I earn my money with honest labour and I feel proud of it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin ein Waschweib. Ich verdiene mein Geld mit ehrlicher Arbeit, worauf ich stolz bin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I'm a washer-woman. I earn my money with honest labour and I feel proud of it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin ein Waschweib. Ich verdiene mein Geld mit ehrlicher Arbeit, worauf ich stolz bin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yewdale");
talkEntry:addResponse("Oh, Yewdale is not far away. Just follow the road, you cannot miss it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nana");
talkEntry:addTrigger("Winterbutter");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Nana... she lives in Yewdale, am I not right? She cooks the finest soups, indeed.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wolf");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("In the night, I hear them howling! They even attacked Yewdale once!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wolves");
talkEntry:addResponse("In the night, I hear them howling! They even attacked Yewdale once!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("panther");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Panthers are mean... predators! I don't want them to hunt me, I just want to wash my laundry in peace!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spider");
talkEntry:addResponse("Eeek! I once saw the web of a giant spider between two trees in the north. That was so scary!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("cave");
talkEntry:addResponse("To the north, there is an abandoned bear cave. Now wolves, panthers and even terrible spiders dwell there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("bear");
talkEntry:addResponse("A bear used to protect us from all the beast; he guarded his cave and no wolf nor panther dared to come close to the Anthil brook.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Anthil");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Anthil's water is perfect for doing laundry. It could be a bit warmer, though.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("brook");
talkEntry:addTrigger("river");
talkEntry:addResponse("This brook here is the called the Anthil, didn't you know? The water is pure and clean, just as my laundry.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Eibenthal");
talkEntry:addResponse("Oh, Eibenthal ist nicht weit von hier. Geht einfach die Stra�e entlang, ihr k�nnte es nicht verfehlen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nana");
talkEntry:addTrigger("Winterbutter");
talkEntry:addResponse("Nana... Sie lebt in Eibenthal, nicht wahr? Sie kocht die besten Suppen, ohja.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wolf");
talkEntry:addTrigger("W�lfe");
talkEntry:addResponse("In der Nacht h�re ich ihr Gejaule. Und sie haben sogar schon Yewdale heimgesucht!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Panther");
talkEntry:addResponse("Panthers sind ganz gemeine Raubtiere. Ich will nicht, dass sie nach mir jagen, ich will doch nur meine W�sche in Frieden waschen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spinne");
talkEntry:addResponse("Eeek! Ich habe letztens ein riesiges Spinnennetz zwischen zwei B�umen im Norden gesehen. Das war so schrecklich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("H�hle");
talkEntry:addResponse("Im Norden gibt es eine alte B�renh�hle. Jetzt hausen dort W�lfe, Panther und schreckliche Spinnen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("B�r");
talkEntry:addResponse("Ein B�r hat uns fr�her vor den wilden Tieren besch�tzt; er bewachte seine H�hle und kein Wolf oder Panther wagte es, hier zum Anthil zu kommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Anthil");
talkEntry:addResponse("Das Wasser des Anthils ist perfekt, um W�sche darin zu waschen. Es k�nnte nur ein wenig w�rmer sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bach");
talkEntry:addTrigger("Fluss");
talkEntry:addTrigger("Flu�");
talkEntry:addResponse("Dieser Bach hier ist der Anthil, wu�tet ihr das nicht? Das Wasser ist sauber und klar, genauso wie meine W�sche.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The archmage trusts me - and only me! to wash his robes. I feel so honoured!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Der Erzmagier traut nur mir die W�sche seiner Roben an. Ich f�hle mich so geehrt!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Runewick is that magnificient town to the east. I wash the laundry of the citizens! Isn't that great?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick ist diese gro�artige Stadt im Osten. Ich wasche die W�sche der B�rger! Ist das nicht toll?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oh, isn't that a cook from the north who cooks noodles of semolina?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Oh, ist das nicht ein Koch aus dem Norden, der Nudeln aus Hartweizengrie� kocht?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Once, a dwarf from Galmair called Miggs came to me. He demanded money from me, but then my old friend, the bear came and the dwarf ran!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Einst kam ein Zwerg namens Miggs aus Galmair zu mir. Er verlangte Geld, doch dann kam mein alter Freund der B�r und der Zwerg rannte davon!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ui, the queen of Cadomyr? I wish I'd be a queen, too.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ui, die K�nigin von Cadomyr? Ich w�nschte, ich w�re auch eine K�nigin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me points to the west: 'There is Cadomyr! I've never been there, but I heard it is a barren place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("#me deutet nach Westen: 'Dort liegt Cadomyr. Ich war noch nie dort, aber ich habe geh�rt, es ist ein staubtrockener Ort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Albar... I am a simple washer-woman. How should I know about such things?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Albar... ich bin nur ein einfaches Waschweib. Warum sollte ich mich mit solchen Dingen auskennen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Gynk, that sounds funny, what is that?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Gynk, das klingt witzig, was ist denn das?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I think the archmage of Runewick is from... Salamander?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Ich glaube, der Erzmagier von Runewick kommt aus... Salamander?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I pray to Tanora every morning for leaving the water of the Anthil brook as clear as it is now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanora");
talkEntry:addTrigger("Zelphia");
talkEntry:addResponse("Ich bete jeden Morgen zu Tanora, auf dass das Wasser der Anthils immer so klar bleibt wie jetzt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A Cave in the Woods I"));
talkEntry:addResponse("Since my old friend the bear is no more, wolves scare me every night. Could you go north to their cave and... tame them... for good?");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Eine H�hle im Wald I"));
talkEntry:addResponse("Seitdem mein alter Freund der B�r nicht mehr ist, f�rchte ich mich jede Nacht vor den W�lfen. K�nntet ihr bitte nach Norden ziehen und sie... f�r immer... z�hmen?");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A Cave in the Woods I"));
talkEntry:addResponse("Since my old friend the bear is no more, wolves scare me every night. Could you go north to their cave and... tame them... for good?");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Eine H�hle im Wald I"));
talkEntry:addResponse("Seitdem mein alter Freund der B�r nicht mehr ist, f�rchte ich mich jede Nacht vor den W�lfen. K�nntet ihr bitte nach Norden ziehen und sie... f�r immer... z�hmen?");
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There is still a pack of wolves in the north. Can't you hear them howling?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 11));
talkEntry:addResponse("Immernoch treibt ein Rudel W�lfe sein Unwesen im Norden. H�rt ihr nicht ihr Gejaule?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 11));
talkEntry:addResponse("There is still a pack of wolves in the north. Can't you hear them howling?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 11));
talkEntry:addResponse("Immernoch treibt ein Rudel W�lfe sein Unwesen im Norden. H�rt ihr nicht ihr Gejaule?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins. You advance in Archmage Elvaine Morgan's favour."));
talkEntry:addResponse("Oh, how great! Now I can sleep without the wolves scaring me. Take mm loan of this week, do not refuse it, please. Another adventure awaits you.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 12));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Runewick", "+", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins."));
talkEntry:addResponse("Oh, how great! Now I can sleep without the wolves scaring me. Take my loan of this week, do not refuse it, please. Another adventure awaits you.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 11));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke. Dein Ansehen bei Erzmagier Elvaine Morgan steigt."));
talkEntry:addResponse("Oh, wie fein! Jetzt kann ich die Nacht ohne Angst vor den W�lfen durchschlafen. Hier, nehmt meinen Wochenlohn, lehnt ihn bitte nicht ab. Ein weiteres Abenteuer wartet auf euch.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 12));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Runewick", "+", 5));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 11));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke."));
talkEntry:addResponse("Oh, wie fein! Jetzt kann ich die Nacht ohne Angst vor den W�lfen durchschlafen. Hier, nehmt meinen Wochenlohn, lehnt ihn bitte nicht ab. Ein weiteres Abenteuer wartet auf euch.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 12));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A Cave in the Woods II"));
talkEntry:addResponse("You are a true hero. The panthers are hunting everything, even halflings. Please, will you... tame them, too?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 12));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Eine H�hle im Wald II"));
talkEntry:addResponse("Ihr seid wahrhaftig ein Held. Die Panther jagen alles und jeden, sogar Halblinge. Bitte, k�nntet ihr sie auch... ruhigstellen?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 12));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A Cave in the Woods II"));
talkEntry:addResponse("You are a true hero. The panthers are hunting everything, even halflings. Please, will you... tame them, too?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 12));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Eine H�hle im Wald II"));
talkEntry:addResponse("Ihr seid wahrhaftig ein Held. Die Panther jagen alles und jeden, sogar Halblinge. Bitte, k�nntet ihr sie auch... ruhigstellen?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 18));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I saw a black shadow again! Are there still mean panthers around?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 18));
talkEntry:addResponse("Ich habe erneut einen schwarzen Schatten gesehen! Sind etwa noch Panther in der Gegend?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 18));
talkEntry:addResponse("I saw a black shadow again! Are there still mean panthers around?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 18));
talkEntry:addResponse("Ich habe erneut einen schwarzen Schatten gesehen! Sind etwa noch Panther in der Gegend?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 18));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins and a yellow robe. You advance in Archmage Elvaine Morgan's favour."));
talkEntry:addResponse("Wonder, wonderful! The panthers were so mean. Here, a customer forgot to pick up a robe, it is yours now.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.item.item(195, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 19));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Runewick", "+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 18));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 100 copper coins and a yellow robe."));
talkEntry:addResponse("Wonder, wonderful! The panthers were so mean. Here, a customer forgot to pick up a robe, it is yours now.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.item.item(195, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 19));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 18));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke und eine gelbe Robe. Dein Ansehen bei Erzmagier Elvaine Morgan steigt."));
talkEntry:addResponse("Wunder, wunderbar! Die Panther waren so b�se! Hier, ein Kunde verga� eine Robe bei mir abzuholen, sie sei nun eure.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.item.item(195, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 19));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Runewick", "+", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 18));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 100 Kupferst�cke und eine gelbe Robe."));
talkEntry:addResponse("Wunder, wunderbar! Die Panther waren so b�se! Hier, ein Kunde verga� eine Robe bei mir abzuholen, sie sei nun eure.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 100));
talkEntry:addConsequence(npc.base.consequence.item.item(195, 1, 599, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 19));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 19));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A Cave in the Woods III"));
talkEntry:addResponse("Did you see that web? That giant web in the woods? It has to belong to a giant spider! Just imagine such a beast would come here. Can you... prevent this?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 19));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Eine H�hle im Wald III"));
talkEntry:addResponse("Habt ihr dieses Netz gesehen? Dieses riesen Netz im Wald? Es muss einer riesigen Spinne geh�ren. Stellt euch nur vor, so ein Biest w�rde hierher kommen! K�nnt ihr das... verhindern?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 19));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] A Cave in the Woods III"));
talkEntry:addResponse("Did you see that web? That giant web in the woods? It has to belong to a giant spider! Just imagine such a beast would come here. Can you... prevent this?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 19));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Eine H�hle im Wald III"));
talkEntry:addResponse("Habt ihr dieses Netz gesehen? Dieses riesen Netz im Wald? Es muss einer riesigen Spinne geh�ren. Stellt euch nur vor, so ein Biest w�rde hierher kommen! K�nnt ihr das... verhindern?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("A giant spider built a giant web in the woods! I fear for my life!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 21));
talkEntry:addResponse("Eine riesige Spinne hat ein riesiges Netz im Wald gebaut! Ich f�rchte um mein Leben!.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 21));
talkEntry:addResponse("A giant spider built a giant web in the woods! I fear for my life!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(79, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(79, "<", 21));
talkEntry:addResponse("Eine riesige Spinne hat ein riesiges Netz im Wald gebaut! Ich f�rchte um mein Leben!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a novice robe. You advance in Archmage Elvaine Morgan's favour."));
talkEntry:addResponse("Hooray! Now the woods are peaceful again and I can continue washing the laundry in peace. An apprentice of Runewick left her robe with me; I think her name was Zaida. Have it!");
talkEntry:addConsequence(npc.base.consequence.item.item(547, 1, 799, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 22));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Runewick", "+", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a novice robe."));
talkEntry:addResponse("Hooray! Now the woods are peaceful again and I can continue washing the laundry in peace. An apprentice of Runewick left her robe with me; I think her name was Zaida. Have it!");
talkEntry:addConsequence(npc.base.consequence.item.item(547, 1, 799, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 22));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 21));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst eine Novizenrobe. Dein Ansehen bei Erzmagier Elvaine Morgan steigt."));
talkEntry:addResponse("Hurra! Nun, da der Wald wieder friedlich ist, kann ich ungest�rt meine W�sche waschen. Eine Novizin aus Runewick hat ihre Robe hier bei mir vergessen; ich glaube, ihr Name war Zaida. Hier!");
talkEntry:addConsequence(npc.base.consequence.item.item(547, 1, 799, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 22));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Runewick", "+", 20));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 21));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst eine Novizenrobe."));
talkEntry:addResponse("Hurra! Nun, da der Wald wieder friedlich ist, kann ich ungest�rt meine W�sche waschen. Eine Novizin aus Runewick hat ihre Robe hier bei mir vergessen; ich glaube, ihr Name war Zaida. Hier!");
talkEntry:addConsequence(npc.base.consequence.item.item(547, 1, 799, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(79, "=", 22));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 22));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oh, you did so much for me, the woods and the laundry. You can bring me your laundry whenever you want - I'll wash it for free!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 22));
talkEntry:addResponse("Oh, ihr habt schon so viel f�r mich, den Wald und die W�sche getan. Ihr k�nnt mir eure Schmutzw�sche jederzeit bringen, ich wasche sie kostenlos.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 22));
talkEntry:addResponse("Oh, you did so much for me, the woods and the laundry. You can bring me your laundry whenever you want - I'll wash it for free!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(79, "=", 22));
talkEntry:addResponse("Oh, ihr habt schon so viel f�r mich, den Wald und die W�sche getan. Ihr k�nnt mir eure Schmutzw�sche jederzeit bringen, ich wasche sie kostenlos.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("moan");
talkEntry:addResponse("I do not moan! I just... notice things.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("maulen");
talkEntry:addResponse("Ich maule nicht... Ich mache nur Anmerkungen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ariel");
talkEntry:addTrigger("Sunil");
talkEntry:addTrigger("Persil");
talkEntry:addTrigger("Tandil");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I prefer soap.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ariel");
talkEntry:addTrigger("Sunil");
talkEntry:addTrigger("Persil");
talkEntry:addTrigger("Tandil");
talkEntry:addResponse("Ich nehme lieber Seife.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Yes, no.");
talkEntry:addResponse("Sure, clear.");
talkEntry:addResponse("Everything is wonderful!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Ja, ne.");
talkEntry:addResponse("Sicherlich, klar.");
talkEntry:addResponse("Alles wunderbar!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Nothing is clear.");
talkEntry:addResponse("Who is Regor?");
talkEntry:addResponse("Who the heck?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Nichts ist klar.");
talkEntry:addResponse("Wer ist Regor?");
talkEntry:addResponse("Wer verdammt nochmal?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Ohje, ohje.", "Ohje, ohje.");
talkingNPC:addCycleText("#me schrubbt emsig ihre W�sche sauber.", "#me scrubs her laundry clean.");
talkingNPC:addCycleText("#me beobachtet mit vertr�umten Gesichtsausdruck eine Forelle im Wasser.", "#me stares at a trout, passing by.");
talkingNPC:addCycleText("#me summt vor sich hin.", "#me hums to herself.");
talkingNPC:addCycleText("#me w�scht W�sche.", "#me washes laundry clean.");
talkingNPC:addCycleText("#me faltet ein Laken zusammen.", "#me folds a blanket.");
talkingNPC:addCycleText("#me inspiziert ein Loch in einem Umhang und steckt kichernd ihren Finger hindurch.", "#me inspects a hole in a coat and sticks her finger through it, giggling.");
talkingNPC:addCycleText("Ah, nicht nur sauber, sondern rein muss es sein.", "Ah, not just clean but pure it should be.");
talkingNPC:addCycleText("Willst du viel, sp�l' im Anthil.", "Want a lot, rinse in a pot.");
talkingNPC:addCycleText("#me reinigt ihr Waschbrett.", "#me cleans her wash board.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Das ist ein NPC dessen Entwickler zu faul war eine Beschreibung einzutragen.", "This is a NPC who's developer was too lazy to type in a description.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(texttype, message, speaker) mainNPC:receiveText(speaker, message); end;
function nextCycle()
	nextCycle = nextCycle2;
	nextCycle2 = nil;
	initNpc();
	initNpc = nil;
end;
function nextCycle2() mainNPC:nextCycle(); end;
function lookAtNpc(char, mode) mainNPC:lookAt(char, mode); end;
function useNPC(char, counter, param) mainNPC:use(char); end;
-- END