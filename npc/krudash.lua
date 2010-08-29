--------------------------------------------------------------------------------
-- NPC Name: Krudash                                                  Galmair --
-- NPC Job:  trader                                                           --
--                                                                            --
-- NPC Race: orc                        NPC Position:  368, 260, 0            --
-- NPC Sex:  female                     NPC Direction: north             --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                                            --
-- Last parsing: August 29, 2010                         easyNPC Parser v1.01 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (4, 368, 260, 0, 0, 'Krudash', 'npc.krudash', 1, 3, 0, 6, 18, 8, 137, 123, 60);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.state")
require("npc.base.talk")
module("npc.krudash", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hilfe");
talkEntry:addResponse("Ich, Krudash 'verkaufe' und 'kaufe' viele Dinger! Taghta?");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("helfen");
talkEntry:addResponse("Ich, Krudash 'verkaufe' und 'kaufe' viele Dinger! Taghta?");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("help");
talkEntry:addResponse("Me, Krudash 'sell' and 'buy' lots of stuff! Taghta?");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
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
talkEntry:addResponse("Greebas.");
talkEntry:addResponse("Hurr! Be greeted.");
talkEntry:addResponse("Hurr. Me, Krudash sell all you need. For good hack'n sack trip! Hehe!");
talkEntry:addResponse("Latha math! Greetings-Greetings, mes mean.");
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
talkEntry:addResponse("Greebas.");
talkEntry:addResponse("Hurr! Sei gegr��t.");
talkEntry:addResponse("Hurr. Ich, Krudash verkaufe alles, was 'ner wie du braucht f�r's hacken und pl�ndarn! Hehe!");
talkEntry:addResponse("Latha math! Gr��e-Gr��e, sag ich.");
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
talkEntry:addResponse("Greebas.");
talkEntry:addResponse("Hurr! Be greeted.");
talkEntry:addResponse("Hurr. Krudash sell all you need. For good hack'n sack trip! Hehe!");
talkEntry:addResponse("Latha math! Greetings-Greetings, mes mean.");
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
talkEntry:addResponse("Greebas.");
talkEntry:addResponse("Hurr! Sei gegr��t.");
talkEntry:addResponse("Hurr. Ich, Krudash verkaufe alles, was 'ner wie du braucht f�r's hacken und pl�ndarn! Hehe!");
talkEntry:addResponse("Latha math! Gr��e-Gr��e, sag ich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("Farebas. Have a good sackin'!");
talkEntry:addResponse("Sl�n leibhsl�n! - Would say the orcs tounge. Tagtha?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Farebas. Ne Gute Pl�nderung w�nsch ich noch!");
talkEntry:addResponse("Sl�n leibhsl�n! - So sagens wir Orks. Tagtha?");
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
talkEntry:addResponse("Farebas. Have a good sackin'!");
talkEntry:addResponse("Sl�n leibhsl�n! - Would say the orcs tounge. Tagtha?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farebas. Ne Gute Pl�nderung w�nsch ich noch!");
talkEntry:addResponse("Sl�n leibhsl�n! - So sagens wir Orks. Tagtha?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Hurr. Mes allrighty! Good shop. Good husband. Good whelps.");
talkEntry:addResponse("Uh! I'm a rich and migthy orc! Lot's of snagas are mine!");
talkEntry:addResponse("Hrmpf!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Hurr. Mirr gehts gut. Hab nen feinen Laden. N'guten Mann. Und gute welpen!");
talkEntry:addResponse("Hrmpf!");
talkEntry:addResponse("Uh! Ich bin ne reiche und m�chtige Ork. Und alle Snagas tun, was ich befehle.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Krudash. And this my Shop. 'Hack'n Sack', sellin all stuff you need for good hack'n sack trip.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin %Krudash Und dars ist mein Laden. 'Hack'n Sack' - Hacken und Pl�ndern! Verkaufe alles was du brauchst f�rr guttes Hackn und pl�ndarn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("G�sh! I learned the dealing in Gynk! Yp-Yp.");
talkEntry:addResponse("Hrach! Do you know the lizard Eliza? She sells swords, a horse farrier would be able to make them sharper.");
talkEntry:addResponse("Murgo is my husband! Er'hja and Ol'hja are us whelps. Taghta?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("G�sh! Ich hab das Handeln in Gynk gelernt! Yp-Yp.");
talkEntry:addResponse("Hrach! Kennst' die Echse Eliza? Sie verkauft Schwerter, ein Hufschmied k�nnt sie sch�rfer machen!");
talkEntry:addResponse("Murgo ist mein Mann! Er'hja und Ol'hja unsere Welpen. Taghta?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("G�sh! I sell everything, they maked in the forge. Sharpes Axes! Mightiest Armors! And best tools. Uh!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("G�sh! Ich verkaufe alles was sie in der Schmiede zusammen bauen. Sch�rfste �xte! M�chtigste R�stungen! Und bestes Werkzeug. Uh!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I'm the arms dealer in this town! And all those Snagas follow my command! Groch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin der Waffenh�ndler in dieser Stadt! Und alle diese Snagas tun, was ich sag! Groch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I'm the arms dealer in this town! And all those Snagas follow my command! Groch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin der Waffenh�ndler in dieser Stadt! Und alle diese Snagas tun, was ich sag! Groch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Hrmpf! What should I say about?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Hrmpf! Was gibts da zu sagn?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("I am");
talkEntry:addTrigger("my name");
talkEntry:addResponse("Hurr, hurr. What do you buy?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ich bin");
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Hurr, hurr. Was willst du kaufen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ch-h! Astute wizard... Runewick rat!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Ch-h! Der listige Zauberer... Runewickratte!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Gnarh! Those are loathsome ...*grunt*... Scheschnaks! Maggots shall eat their figgin!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Gnarh! Das sind widerliche ...*grunzt*... Scheschnaks! Maden sollen ihren Wabbel fressen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Glushd�sh! He is a damn dwarf! But they are good for trading, isn't it, isn't it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Glushd�sh! Er ist, 'n verdammter Zwerg! Aber mit denen ist gut handeln, nicht wahr, nicht wahr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Why!? Gol-gol! Here, a ritch orcess is allowed to do whatever she want to do! And all snagas do what I order. Hurr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Warrrum!? Gol-gol! Hier kann eine reiche Ork machen was sie will! Und alle Snagas tun was ich sage. Hurr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Hroar! I heared, the queens guards are mokeys, wich got trousers! Har!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Hroar! Ich hab geh�rt, der K�nigin Leibgarde sind ein paar Affen denen man Hosen angezogen hat! Har!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("They say, if pigs would able to walk on two legs... even the gods can't discern them from Cadomyrs folk. Gosch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Es hei�t, w�rden Schweine aufrecht gehen... k�nnten nichtmal die G�tter sie von den Cadomyrern unterscheiden. Gosch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Hurr. There are lots of Snagas. But only the humanz are allowed to order those Snails. Grot.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Hurr. Dorts gibts ne Menge Snagas. Aber nur die dummen Menschenz d�rfen sie zur Schneke machen. Grot.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Apart from Kroch'Gurak, Gynk is the best place for people. *grunts*... Altough the sun is hot there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Abgesehen von Kroch'Gurak, ist Gynk der beste Platz f�r die Leute. *grunzt*... Auch wenn die Sonne dort hei� ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Scheschnaks. Those are all dirty scheschnak-monkeys. Gosch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Scheschnaks. Das sind alles dreckige Scheschnak-Affen. Gosch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("The ancestors should praised, h�ll. Praise my fathers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Die Vorfahren sein gepriesen, h�ll. Ehre meinen V�tern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("moshran");
talkEntry:addTrigger("god");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Gosh! Du niemals sagst diesen Namen! Besser fragen Schamane �ber Vatha.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("moshran");
talkEntry:addTrigger("god");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Gosh! Nub say tha name! Better talk to Shaman about tha fatha.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("cherga");
talkEntry:addTrigger("icy witch");
talkEntry:addTrigger("eis Hex");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Hurr. Eisig Hexe, Gottin von Ahnen ist. Du fragst Grimlug!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("cherga");
talkEntry:addTrigger("icy witch");
talkEntry:addTrigger("eis Hex");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Hurr. Tha icy witch, be god ob ancestors. Ask Grimlug for!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("where com");
talkEntry:addTrigger("krochgurak");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Hrach. Ich komme aus Khenserra. Aber viele Orks sind aus Kroch'gurak. Dort'ists wo die Clans im Winter lagern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("where com");
talkEntry:addTrigger("krochgurak");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Hrach. I come frome Khenserra. But most orcs come frome Kroch'gurak. There is, where the Clans camp in winter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I trade... and my snagas do all the work. So there is nothing to do for a Maggot like you!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich handle... und meine Snagas machen alle Arbeit. Also gibt's nix zu tun f�r ne Made wie dich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("I trade... and my snagas do all the work. So there is nothing to do for a Maggot like you!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Ich handle... und meine Snagas machen alle Arbeit. Also gibt's nix zu tun f�r ne Made wie dich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Taghtha? Is good! Yes.");
talkEntry:addResponse("There we go. Allrighty-right.");
talkEntry:addResponse("Hurr, hurr. Wahtever you say.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Taghta? Iss gut! Ja-h.");
talkEntry:addResponse("So machen wir's!");
talkEntry:addResponse("Hurr, hurr. Alles was du sagst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Gr�th! Are you sure?");
talkEntry:addResponse("Then... no, isn't it?");
talkEntry:addResponse("#me chuckles. 'Is all right.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Gr�th! Bisst du sicher?");
talkEntry:addResponse("Dann nicht, nicht wahr?");
talkEntry:addResponse("#me kichert. 'Ist gut, is' gu-ht.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("Taghta!");
talkEntry:addResponse("Puny little Maggot.");
talkEntry:addResponse("Uh-h?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("Taghta!");
talkEntry:addResponse("Winzige kleine Made.");
talkEntry:addResponse("Uh-h?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me leckt sich kurz �ber die Lippen. Dann streckt sie die Zunge heraus und ber�hrt damit ihr h�bsches N�schen.", "#me licks her lips. Then she shows her tounge and taps her cute nose.");
talkingNPC:addCycleText("Hack'n Sack! Hier Kannst du alles kaufen. Was 'ner wie du braucht f�r ne gutte Pl�nderei!", "Hack'n sack! here you buy all stuff for well sack trip.");
talkingNPC:addCycleText("Uh, ich bin so stolz auf meine kleine Ol'hja und meine kleine Er'hja!", "Uh, mes be so proud ob mes littl Ol'hja and mes littl Er'hja!");
talkingNPC:addCycleText("Gnahrr! Wo ist mein fauler Sack von Mann?", "Gnahrr! Where my lazy husband be is?");
talkingNPC:addCycleText("#me stochert mit ihrem Finger an einem der beiden Kieferz�hnen herum. ", "#me digs with one of his fingers between her tusks.");
talkingNPC:addCycleText("#me schnaubt ein wenig.", "#me snorts quietly.");
talkingNPC:addCycleText("#me rubbelt mit den Fingern�geln an einem rostendem Eisenteil. Doch der Rost scheint sich hartn�ckig darauf zu halten.", "#me rubs with fingernails at a rusty pice of iron. But the rust hold it's stand.");
talkingNPC:addCycleText("#me kichert und nuschelt: 'Snu-snu...'", "#me chukles and mumbles: 'Snu-Snu...'");
talkingNPC:addCycleText("#me krazt sich knurrend am Kopf.", "#me scratches her head with a annoyed snarl.");
talkingNPC:addCycleText("#me nimmt einen Schluck aus einer kleinen schmuddeligen Flasche. Scharfer alkoholischer Dunst steigt in die Luft.", "#me takes a gulp from a grubby little bottle. A strong stench of alcohol fills the air.");
talkingNPC:addCycleText("#me klappert in einem einfachen ansteckenden Rythmus auf dem Holztisch.", "#me chatters with an simple catching rythm on the wooden table.");
talkingNPC:addCycleText("Hurr, kauft die dicksten R�stungen von Krudash! Ich mach euch den besten Preis...", "Hurr, buy the thickest armor at Krudash! I make you the best price...");
talkingNPC:addCycleText("Schwerta! �xte! H�mmer! Hossa, kauft ihr alles bei mir! Krudash!", "Sords! Axes! Hammers! Hossa, buy everything at Krudash's shop!");
talkingNPC:addCycleText("Ich hab das reinste Erz! Und die besten Preise in ganz Galmair! Gosh!", "I hold the purest ore! And the best price in whole Galmair! Gosh!");
talkingNPC:addCycleText("Schmiede, Eisenbieger... mit Krudash's Werkzeug macht ihr die besten St�cke!", "Smiths, Ironbender... Krudash's tools make the best goods!");
talkingNPC:addCycleText("#me hebt den Kopf und br�llt zur Werkst�tte hin�ber. 'Alize du dreckige kleine Snaga! Du sollst die Esse sch�rn! Taghta?'", "#me turns her head and yells at the forge. 'Alize, 'uh dirty little Snaga! Fan the fires! Taghta?'");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Eine sinnliche Orkfrau mit wilden schwarzen Haaren. Sie hat ein s��es N�schen und spitze kleine Hauer. Achtsam �berblickt sie den Marktplatz.", "A voluptous orcess qith wild black hair. She have a cute nose and pointy little tusks. Observantly she glances the marketplace.");
mainNPC:setUseMessage("Fass mich nicht an! Oder ich mach disch Kebab! Alda!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
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