--------------------------------------------------------------------------------
-- NPC Name: Philipp Molitor                                          Cadomyr --
-- NPC Job:  Caravan master                                                   --
--                                                                            --
-- NPC Race: human                      NPC Position:  103, 588, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                                            --
-- Last parsing: September 28, 2012                      easyNPC Parser v1.21 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 103, 588, 0, 4, 'Philipp Molitor', 'npc.philipp_molitor', 0, 1, 3, 140, 70, 20, 205, 133, 63);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
module("npc.philipp_molitor", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Philipp Molitor the caravan master. Keywords: Hello, caravan, order, Cadomyr."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Philipp Molitor der Karawanenmeister. Schl�sselw�rter: Hallo, Karawane, Auftrag, Cadomyr."));
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
talkEntry:addResponse("Ah, hello. You came here for an order, right?");
talkEntry:addResponse("What is it? Business, I hope!");
talkEntry:addResponse("Be greeted. We should get straight to the orders of her majesty.");
talkEntry:addResponse("You are just the person that needs an order, indeed.");
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
talkEntry:addResponse("Ah, hallo. Ihr seid hier wegen eines Auftrages, richtig?");
talkEntry:addResponse("Was gibt es? Ich hoffe, es geht ums Gesch�ft.");
talkEntry:addResponse("Seid gegr��t. Wir sollten sofort �ber die Auftr�ge der K�nigin reden.");
talkEntry:addResponse("Ihr seid genau die Person, die einen Auftrag ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Ah, hello. You came here for an order, right?");
talkEntry:addResponse("What is it? Business, I hope!");
talkEntry:addResponse("Be greeted. We should get straight to the orders of her majesty.");
talkEntry:addResponse("You are just the person that needs an order, indeed.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Ah, hallo. Ihr seid hier wegen eines Auftrages, richtig?");
talkEntry:addResponse("Was gibt es? Ich hoffe, es geht ums Gesch�ft.");
talkEntry:addResponse("Seid gegr��t. Wir sollten sofort �ber die Auftr�ge der K�nigin reden.");
talkEntry:addResponse("Ihr seid genau die Person, die einen Auftrag ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Don't swallow too much sand.");
talkEntry:addResponse("I hope you come back.");
talkEntry:addResponse("Good travels.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Schluckt mir nicht zu viel Sand.");
talkEntry:addResponse("Ich hoffe, ihr kommt zur�ck.");
talkEntry:addResponse("Gute Reise.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Don't swallow too much sand.");
talkEntry:addResponse("I hope you come back.");
talkEntry:addResponse("Good travels.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Schluckt mir nicht zu viel Sand.");
talkEntry:addResponse("Ich hoffe, ihr kommt zur�ck.");
talkEntry:addResponse("Gute Reise.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("That is none of your business.");
talkEntry:addResponse("That does not concern you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Das steht hier nicht zur Debatte.");
talkEntry:addResponse("Das tut hier nichts zur Sache.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Philipp Molitor, the caravan master.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Philipp Molitor, der Karawanenmeister.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Farewell and my best 'regards' to your Don.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Hinfort mit euch und meine besten 'Gr��e' an euren Don.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Farewell and my best 'regards' to your Don.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Hinfort mit euch und meine besten 'Gr��e' an euren Don.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("When you get back to Runewick, could you greet Elvaine Morgan? Tell him he should reconsider the offer I gave him twelve years ago.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Wenn ihr wieder nach Runewick kommt, so gr��t doch Elvaine Morgan von mir. Er m�ge nochmal �ber mein Angebot nachdenken, dass ich im vor zw�lf Jahren machte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addTrigger("order");
talkEntry:addResponse("When you get back to Runewick, could you greet Elvaine Morgan? Tell him he should reconsider the offer I gave him twelve years ago.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Wenn ihr wieder nach Runewick kommt, so gr��t doch Elvaine Morgan von mir. Er m�ge nochmal �ber mein Angebot nachdenken, dass ich im vor zw�lf Jahren machte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(5.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(151, "=", 1));
talkEntry:addResponse("Your mission today: The queen desires sweet fruit and I will not dissapoint her. Bring me five strawberries as fast as possible and I'll mention your name infront of her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(5.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(151, "=", 1));
talkEntry:addResponse("Eure heutige Mission: Die K�nigin verlang nach s��en Fr�chten und ich werde sie nicht entt�uschen. Bringt mir f�nf Erdbeeren und ich werde euren Namen ihr gegen�ber lobend erw�hnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(5.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(151, "=", 1));
talkEntry:addResponse("Your mission today: The queen desires sweet fruit and I will not dissapoint her. Bring five strawberries as fast as possible and I'll mention your name infront of her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(5.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(151, "=", 1));
talkEntry:addResponse("Eure heutige Mission: Die K�nigin verlang nach s��en Fr�chten und ich werde sie nicht entt�uschen. Bringt mir f�nf Erdbeeren und ich werde euren Namen ihr gegen�ber lobend erw�hnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded twenty coppercoins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 20));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(151, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(151, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 5));
talkEntry:addResponse("Very good. I am authorised to grant you a small reward. The queen will enjoy these fruits!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zwanzig Kupferst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 20));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(151, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(151, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("Cadomyr", "+", 5));
talkEntry:addResponse("Sehr gut. Ich bin berechtigt, euch eine kleine Belohnung zu zahlen. Die K�nigin wird sich �ber diese Fr�chte sicher freuen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I told you to bring five strawberries. Her majesty has to rule a whole realm and you fail in such a simple task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich habe euch befohlen, f�nf Erdbeeren zu beschaffen. Ihre Majest�t regiert ein ganzes Reich und ihr versagt bei so einer einfachen Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I told you to bring five strawberries. Her majesty has to rule a whole realm and you fail in such a simple task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich habe euch befohlen, f�nf Erdbeeren zu beschaffen. Ihre Majest�t regiert ein ganzes Reich und ihr versagt bei so einer einfachen Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("You can help me by... staying. Stay a little longer, that's all I ask for. Please!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ihr k�nntet mir helfen... indem ihr noch eine Weile bleibt. Leistet mir noch etwas Gesellschaft, das ist alles, worum ich bitte!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("You can help me by... staying. Stay a little longer, that's all I ask for. Please!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(151, "=", 3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ihr k�nntet mir helfen... indem ihr noch eine Weile bleibt. Leistet mir noch etwas Gesellschaft, das ist alles, worum ich bitte!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am the caravan master of Cadomyr. How comes people forget about this?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin der Karawanenmeister Cadomyrs. Wie kann man sowas nur vergessen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I am the caravan master of Cadomyr. How comes people forget about this?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin der Karawanenmeister Cadomyrs. Wie kann man sowas nur vergessen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Ask me about an order. I was not born for chatting.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Fragt mich nach einem Auftrag. Ich bin nicht zum Labern geboren worden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("caravan");
talkEntry:addTrigger("business");
talkEntry:addResponse("If you want to contribute to the next caravan, ask me for an order.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Karawane");
talkEntry:addTrigger("Gesch�ft");
talkEntry:addResponse("Wenn ihr etwas zur n�chsten Karawane beitragen m�chtet, frag mich nach einem Auftrag.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Most caravan personal prays to Irmorom, but there might be another god they worship...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Die meisten Krawanenleute beten zu Irmorom, aber einige verehren noch einen anderen Gott...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Most caravan personal prays to Irmorom, but there might be another god they worship...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Die meisten Krawanenleute beten zu Irmorom, aber einige verehren noch einen anderen Gott...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("In secret, some caravan leaders pray to Ronagan, who is not just the god of robbers, but also the god of travellers. And they pray to him not to let both groups meet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Manche Karawanenf�hrer beten heimlich zu Ronagan, der nicht nur der Gott der R�uber sondern auch der Reisenden ist. Sie erflehen von ihm, dass sich diese beiden Gruppen niemals treffen m�gen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Her majesty encouraged me to use donkeys as beasts of burden for caravans, mainly. I wonder why...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Ihre Majest�t hat mich dazu bewogen, vor allem Esel als Lasttiere f�r die Karawanen einzusetzen. Ich frag mich nur, warum...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Her majesty encouraged me to use donkeys as beasts of burden for caravans, mainly. I wonder why...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ihre Majest�t hat mich dazu bewogen, vor allem Esel als Lasttiere f�r die Karawanen einzusetzen. Ich frag mich nur, warum...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Did you ever notice how lovely the word Cadomyr sounds? I do my best to make it prosper as caravan master.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Ist euch mal aufgefallen, wie sch�n das Wort Cadomyr klingt? Ich tu mein bestes, um Cadomyr als Karawanenmeister zu dienen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("It is not a secret that most of our goods are exported to Albar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Es ist kein Geheimnis, dass die meisten unserer G�ter f�r Albar bestimmt sind.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Philipp");
talkEntry:addTrigger("Molitor");
talkEntry:addResponse("I am the caravan master.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Philipp");
talkEntry:addTrigger("Molitor");
talkEntry:addResponse("Ich bin hier der Karawanenmeister.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Die letzte Karawane ist vor einer Stunde abgereist.", "The last caravan left an hour ago.");
talkingNPC:addCycleText("Geht ihr zum Palast?", "Bound of the palace?");
talkingNPC:addCycleText("Auftr�ge f�r die Ehre Cadomyrs!", "Orders for the glory of Cadomyr!");
talkingNPC:addCycleText("Ich sollte mal wieder einen trinken gehen.", "I should get a drink anytime soon.");
talkingNPC:addCycleText("Dazu sage ich nichts.", "I am not going to comment on that.");
talkingNPC:addCycleText("Ist das Hassans Stimme?", "Was that Hassan's voice?");
talkingNPC:addCycleText("Kommt her, ich habe bestimmt einen Autrag f�r euch.", "Come here, I think I have an order for you.");
talkingNPC:addCycleText("Ich bin nicht aus albarischen Geschlecht. Ich bin aus einem Geschlecht Cadomyrs!", "I am not of albarian birth. I am of cadomyrian birth!");
talkingNPC:addCycleText("#me studiert eine lange Liste.", "#me browses a long list.");
talkingNPC:addCycleText("#me nickt zufrieden.", "#me nods happily.");
talkingNPC:addCycleText("Ihr da! Kommt her. Ich habe einen Auftrag der K�nigin.", "You! Come over here. I have orders of the queen.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Philipp Molitor der Karawanenmeister.", "This NPC is Philipp Molitor the caravan master.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 2367);
mainNPC:setEquipment(11, 2380);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 207);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 2114);
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