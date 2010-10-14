--------------------------------------------------------------------------------
-- NPC Name: Ioannes Faber                                            Cadomyr --
-- NPC Job:  Big orders glassblowing & goldsmithing                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  123, 625, 0            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Author:   Estralis Seborian/Ardian                                         --
--                                                                            --
-- Last parsing: October 14, 2010                        easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 123, 625, 0, 6, 'Ioannes Faber', 'npc.ioannes_faber', 0, 0, 0, 255, 255, 255, 255, 255, 255);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.ioannes_faber", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("#w [Game Help] This NPC is the royal treasurere of Cadomyr, Ioannes Faber. Keyphrases: Be greeted, treasurer, 'Do you have any orders for me?', 'I want to see order <number>', 'I want to get order <number>'."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("#w [Spielhilfe] Dieser NPC ist der k�nigliche K�mmerer von Cadomyr, Ioannes Faber. Schl�sselw�rter: Seid gegr��t, K�mmerer, 'Habt ihr Auftr�ge f�r mich?', 'Ich m�chte Auftrag <Nummer> ansehen', 'Ich m�chte Auftrag <Nummer> annehmen'."));
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
talkEntry:addResponse("Hail and may Malach�n bless you. I assume you want to obey the orders of the queen.");
talkEntry:addResponse("Be greeted. We should get straight to the orders of her majesty.");
talkEntry:addResponse("You are just the person that needs an order, indeed.");
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
talkEntry:addResponse("Malach�n zum Gru�e. Ich nehme an, ihr wollt den Befehlen der K�nigin gehorchen.");
talkEntry:addResponse("Seid gegr��t. Wir sollten sofort �ber die Auftr�ge der K�nigin reden.");
talkEntry:addResponse("Ihr seid genau die Person, die einen Befehl ben�tigt.");
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
talkEntry:addResponse("Hail and may Malach�n bless you. I assume you want to obey the orders of the queen.");
talkEntry:addResponse("Be greeted. We should get straight to the orders of her majesty.");
talkEntry:addResponse("You are just the person that needs an order, indeed.");
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
talkEntry:addResponse("Malach�n zum Gru�e. Ich nehme an, ihr wollt den Befehlen der K�nigin gehorchen.");
talkEntry:addResponse("Seid gegr��t. Wir sollten sofort �ber die Auftr�ge der K�nigin reden.");
talkEntry:addResponse("Ihr seid genau die Person, die einen Befehl ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thy well");
talkEntry:addResponse("Go forth and do as the queen tells you.");
talkEntry:addResponse("Farewell and may your journey be a pleasant one.");
talkEntry:addResponse("Good bye and don't forget to come back.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Gehet hin und tut, wie die K�nigin euch gehei�t.");
talkEntry:addResponse("Gehabt euch wohl und m�ge eure Reise eine angenehme sein.");
talkEntry:addResponse("Auf wiedersehen und vergesst nicht, zur�ckzukehren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Go forth and do as the queen tells you.");
talkEntry:addResponse("Farewell and may your journey be a pleasant one.");
talkEntry:addResponse("Good bye and don't forget to come back.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Gehet hin und tut, wie die K�nigin euch gehei�t.");
talkEntry:addResponse("Gehabt euch wohl und m�ge eure Reise eine angenehme sein.");
talkEntry:addResponse("Auf wiedersehen und vergesst nicht, zur�ckzukehren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("The grin of the queen makes me spin, spinning within.");
talkEntry:addResponse("Every word of the queen is like caress.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Das L�cheln der K�nigin macht mich ganz wuschig im Inneren.");
talkEntry:addResponse("Jedes Wort der K�nigin ist wie eine Liebkosung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Faber. Ioannes Faber. I am the royal treasurer, do not underestimate my importance at the palace.");
talkEntry:addResponse("My name is Ioannes Faber, the royal treasurer of Cadomyr. The queen relies on me, indeed.");
talkEntry:addResponse("You don't know my name? Better write it down then: Ioannes Faber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Faber. Ioannes Faber. Ich bin der k�nigliche K�mmerer, ihr solltet meine Bedeutung am Hofe nicht untersch�tzen.");
talkEntry:addResponse("Mein Name ist Ioannes Faber, der k�nigliche K�mmerer von Cadomyr. Die K�nigin h�lt gro�e St�cke auf mich.");
talkEntry:addResponse("Ihr kennt meinen Namen nicht? Schreibt ihn euch besser auf: Ioannes Faber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I'm not a trader, I am the royal treasurere. If you obey the orders of the queen, you might get a reward.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich bin kein H�ndler, ich bin der k�nigliche K�mmerer. Wenn ihr den Befehlen der K�nigin gehorcht, dann werdet ihr vielleicht entlohnt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Let me tell you something: A whip can make people work. But a crown makes them obey.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Lasst euch das gesagt sein: Eine Peitsche bringt Leute zum arbeiten, aber eine Krohne bringt sie dazu, zu gehorchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("treasurer");
talkEntry:addTrigger("treasury");
talkEntry:addResponse("The office of treasurere requires loyality, integrity and meekness. And you won't find anyone of Cadomyr who suits the office better than Ioannes Faber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�mmerer");
talkEntry:addTrigger("Schatzkammer");
talkEntry:addResponse("Das Amt des K�mmerers erfordert Loyalit�t, Integrit�t und Demut. Es gibt niemanden in Cadomyr, der von all dem mehr aufwei�t als Ioannes Faber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am the royal treasurer. The queen entrusted me the wealth of Cadomyr; and I am not the one who will disappoint her. Will you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin der k�nigliche K�mmerer. Die K�nigin hat mir den Reichtum Cadomyrs anvertraut; und ich bin keiner von denen, die sie entt�uschen wird. Ihr etwa?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I am the royal treasurer. The queen entrusted me the wealth of Cadomyr; and I am not the one who will disappoint her. Will you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin der k�nigliche K�mmerer. Die K�nigin hat mir den Reichtum Cadomyrs anvertraut; und ich bin keiner von denen, die sie entt�uschen wird. Ihr etwa?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gold");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Gold is important for Cadomyr's wealth, but more important is our honour. For honour, you cannot buy but just sell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("jewels");
talkEntry:addResponse("Jewels, gems, diamonds, only the brightest ones for the crown of Cadomyr. Got some?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("glas");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The queen uses to have banquets with her nobley from time to time. Thus, finest tableware is needed frequently.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wealth");
talkEntry:addResponse("I hold the keys to the treasury. And there is nothing even Baron Hastings could offer me to betray my queen. I'd rather die... like my wife.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("honor");
talkEntry:addTrigger("honour");
talkEntry:addResponse("Honour is what shapes a man and crafted Cadomyr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("bribe");
talkEntry:addTrigger("corrupt");
talkEntry:addResponse("Hold your tongue!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wife");
talkEntry:addResponse("It is not a secret anymore; my wife was slain by henchmen of Baron Hastings in an attempt to blackmail me. But I did not surrender the treasury to them... Instead...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gold");
talkEntry:addResponse("Gold ist wichtig f�r Cadomyrs Reichtum, aber weit wichtiger noch ist die Ehre. Denn Ehre kann man nicht kaufen, sehr wohl aber verkaufen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Juwelen");
talkEntry:addResponse("Juwelen, Edelsteine, Diamanten, nur die funkelnsten f�r die Krone Cadomyrs. Habt ihr welche?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Glas");
talkEntry:addResponse("Die K�nigin h�lt des �fteren Banketts mit ihren Oberen ab. Hierf�r wird stets das beste Geschirr gebraucht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Reichtum");
talkEntry:addTrigger("Reicht�mer");
talkEntry:addResponse("Ich verwahre die Schl�ssel zur Schatzkammer und es gibt nichts, was mir nicht einmal Baron Hastings bieten k�nnte, um meine K�nigin zu verraten. Ich w�rde viel lieber sterben... wie meine Frau.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ehre");
talkEntry:addResponse("Ehre es, was einen Mann ausmacht und auf was Cadomyrs Fundament steht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bestech");
talkEntry:addTrigger("korrupt");
talkEntry:addResponse("Haltet den Schnabel!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frau");
talkEntry:addResponse("Es ist kein Geheimnis mehr; meine Frau wurde von Handlangern von Baron Hastings umgebracht, als er mich erpressen wollte. Doch ich �berlie� ihm nicht die Schatzkammer. Stattdessen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The archmage seems to be quite a charismatic person. I can't explain elsewise how such a honourless person gathered so many followers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Der Erzmagier scheint mir eine charismatische Pers�nlichkeit zu sein. Wie anders ist es zu erkl�ren, dass so eine ehrlose Person so viele Anh�nger um sich schart.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("What makes me wonder: Runewick is admittedly a magnificent town, but they don't really care about mudane wealth there. That... simply does not fit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Wor�ber ich mich wundere: Runewick ist zugegebenerma�en eine prunkvolle Stadt, aber sie scheren sich nicht um weltlichen Reichtum dort. Das... passt irgendwie nicht zusammen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There is a difference between me and the Don; he keeps all his wealth for himself, and I keep it for the queen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Was mich und den Don unterscheidet ist, dass der seinen ganzen Reichtum f�r sich selber hortet und ich den Reichtum Cadomyrs f�r die K�nigin verwahre.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I'd be king of Galmair if I claim all the treasury of Cadomyr for myself. But I am rather an honourable serf than a heinous lord.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich w�re K�nig von Galmair, wenn ich den Inhalt der Schatzkammer Cadomyrs an mich rei�en w�rde. Aber ich bin lieber ein ehrbarer Diener als ein ruchloser Herr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Since my wife died, queen Rosaline is the only woman in my life. I serve her with every fibre of my body.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Seitdem meine Frau nicht mehr ist, ist K�nigin Rosaline die einzige Frau in meinem Leben. Ich diene ihr mit jeder Faser meines K�rpers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Cadomyr is a glorious realm, founded by honourable men of albarian origin. Be proud to stand here!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Cadomyr ist ein glorreiches Reich, gegr�ndet von ehrbaren M�nnern albarischen Gebl�ts. Seid stolz, hier sein zu d�rfen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Albar, Albar, Albar. Cadomyr! I respect our ancestors, but Cadomyr is independent and even more honourable than Albar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Albar, Albar, Albar. Cadomyr! Ich ehre unsere Vorv�ter, aber Cadomyr ist eigenst�ndig und noch ehrbarer als Albar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("They are no people and no tribe. What are they, anyway - besides smugglers?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Sie sind kein Volk und kein Stamm. Was sind sie eigentlich - au�er Schmuggler?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Warmongers! Men cannot recall true peace between Salkamar and Albar. Why? Because of them!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Kriegstreiber! Die Menschheit kann sich an keinen dauerhaften Frieden zwischen Albar und Salkamar erinnern. Warum? Ihretwegen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Malach�n is the patron of Cadomyr. Never displease him nor the queen and you will have a long life.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Malach�n ist der Schutzgott von Cadomyr. Entt�uscht weder ihn noch die K�nigin und ihr werdet euch eines langen Lebens erfreuen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The dwarves pray to Irmorom to gain wealth; so far, so good. But I pray to Malach�n to help me guard the wealth of Cadomyr with my sword.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Die Zwerge beten zu Irmorom um Reicht�mer anzuh�ufen, soweit, so gut. Aber ich bete zu Malach�n, damit er mir hilft, die Reicht�mer Cadomyrs mit dem Schwert zu verteidigen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I do not issue quests. I issue orders of queen Rosaline. Obey them!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich biete keine Abenteuer an, ich verteile Befehle von K�nigin Rosaline. Gehorcht ihnen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("I do not issue quests. I issue orders of queen Rosaline. Obey them!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Ich biete keine Abenteuer an, ich verteile Befehle von K�nigin Rosaline. Gehorcht ihnen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Hoch lebe die K�nigin!", "Long live the queen!");
talkingNPC:addCycleText("F�r die Ehre von Cadomyr!", "For the glory of Cadomyr!");
talkingNPC:addCycleText("Cadomyr, oh Cadomyr, wie lieb ich dir!", "Cadomyr, O Cadomyr, you are my dear!");
talkingNPC:addCycleText("Rosaline und Cadomyr - Liebe geben sie uns, unsch�tzbar und unerreicht.", "Rosaline and Cadomyr - Love she gives us, passing measure.");
talkingNPC:addCycleText("Nur ein toter Hastings ist ein guter Hastings.", "Only a dead Hastings is a good Hastings.");
talkingNPC:addCycleText("Ein Hobbitgewicht in Gold f�r den Kopf von Baron Hastings!", "The weight of a hobbit in gold for the head of Baron Hastings!");
talkingNPC:addCycleText("Vor jedem verborgenen Feind, vor den Anschl�gen der M�rder, sch�tze Malach�n die K�nigin!", "From every latent foe, from the assassins blow, Malach�n save the queen!");
talkingNPC:addCycleText("Und wie ein rei�ender Strom losbrechen, um rebellische Hastings niederzuwerfen!", "And like a torrent rush, rebellious Hastings to crush.");
talkingNPC:addCycleText("Malach�n sch�tze die K�nigin!", "Malach�n save the queen!");
talkingNPC:addCycleText("Ihr da! Kommt her. Ich habe einen Auftrag der K�nigin.", "You! Come over here. I have orders of the queen.");
mainNPC:addLanguage(0);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist der k�nigliche K�mmerer von Cadomyr, Ioannes Faber.", "This NPC is the royal treasurere of Cadomyr, Ioannes Faber.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Don't you touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setAutoIntroduceMode(true);

-- Cycletext: Add as many random messages as possible

-- FURTHERMORE YOU CAN ALSO CHANGE THIS STANDARD BIG ORDER Phrases for each npc if you want:
myOrderNPC.textOrderSay = { {ger="Kommt her, ich habe einen Auftrag ihrer Majest�t, den es zu erf�llen gilt.",eng="Come over here. I have one order of her majesty that has to be fulfilled."},{ger="Kommt her, ich habe %d Auftr�ge ihrer Majest�t, die es zu erf�llen gilt.",eng="Come over here. I have %d orders of her majesty that have to be fulfilled."} };
myOrderNPC.timeOrderSay = {min=5,max=15};
myOrderNPC.timeOrderCycle = -1;
myOrderNPC.textFalseNPC.ger = "Lasst mich mit den Auftr�gen anderer in Frieden. Ich k�mmere mich nur um die Schatzkammer Cadomyrs.";
myOrderNPC.textFalseNPC.eng = "Leave me alone with orders of others. I only take care of the treasury of Cadomyr.";
myOrderNPC.textNoItems.ger = "Ihr kommt zu mir mit leeren H�nden. W�rdet ihr es wagen, so der K�nigin gegen�berzutreten?";
myOrderNPC.textNoItems.eng = "You come to me with bare hands. Would you dare to face the queen like this?";
myOrderNPC.textSomeItems.ger = "Steter Tropfen h�hlt den Stein - aber euer Auftrag ist noch nicht erledigt.";
myOrderNPC.textGetSomeItems.ger = "Ah, gut, die K�nigin wird erfreut sein. Aber nun hurtig, es fehlt noch etwas.";
myOrderNPC.textGetSomeItems.eng = "Ah, good, the queen will be pleased. But hurry now, some things are lacking.";
myOrderNPC.textSomeItems.eng = "Constant  dripping  wears  away  the  stone. But the order is not fulfilled yet.";
myOrderNPC.textQualityLess.ger = "Ihr wagt es, diese Schund anzuschleppen? Hier, nehmt %d Goldst�cke, %d Silberst�cke und %d Kupferst�cke. Aus meinen Augen!";
myOrderNPC.textQualityLess.eng = "You dare to bring this scrap to me? Here, have %d gold coins, %d silver coins and %d copper coins. Out of my sight!";
myOrderNPC.textTimeOver.ger = "Was wagt ihr es, bei einem Auftrag der K�nigin zu tr�deln! Ich kann euch bei solch flegelhaften Verhalten nur %d Goldst�cke, %d Silberst�cke und %d Kupferst�cke geben.";
myOrderNPC.textTimeOver.eng = "How dare you to dawdle during an order of the queen! With such a behaviour, I can only give you %d gold coins, %d silver coins and %d copper coins.";
myOrderNPC.textBoth.ger = "Ich bin au�er mir! Ihr bringt mir Schund, wohlm�glich noch aus Galmair, und das lange nachdem es der K�nigin recht w�re. Hier, %d Goldst�cke, %d Silberst�cke und %d Kupferst�cke und lasst euch hier nicht so bald wieder blicken.";
myOrderNPC.textBoth.eng = "I am furious! You bring gewgaw, probably from Galmair, and that later than the queen was demanding. Here, %d gold coins, %d silver coins and %d copper coins. Get lost!";
myOrderNPC.textNotOk.ger = "So recht zufrienstellen konntet ihr mich und die K�nigin nicht, aber kein Grund, euch nicht zu entlohnen.";
myOrderNPC.textNotOk.eng = "You could not quite please me and the queen, but that is not a reason not to reward you.";
myOrderNPC.textOk.ger = "Gro�artig! Die K�nigin wird erfreut sein. Ich kann euch gro�z�gig entlohnen.";
myOrderNPC.textOk.eng = "Great! The queen will be amused. I can reward you generously.";
myOrderNPC.textGetOrder.ger = "Nehmt diesen Befehl und beeilt euch mit dem Zusammentragen der Waren.";
myOrderNPC.textGetOrder.eng = "Take this order and hurry while gathering the goods.";
myOrderNPC.textRetentionPeriod.ger = "Mir wurde zugetragen, dass ihr nicht integer genug seit, um mit einem Auftrag ihrer Majest�t betraut zu werden."
myOrderNPC.textRetentionPeriod.eng = "I was told that your integrity is not sufficient to be entrusted with an order of her majesty.";
myOrderNPC.textNotThrustworthy.ger = "Schlechter Leumund eilt euch vorraus. Ich denke nicht, dass ich euch einen Auftrag der K�nigin anvertrauen kann.";
myOrderNPC.textNotThrustworthy.eng = "The bad reputation of yours came here in advance. I doubt I can entrust you an order of the queen.";
myOrderNPC.textBoni.ger = "Die K�nigin hat mich autorisiert, euch ein kleines Zubrot f�r ergebene Dienste zuzuteilen.";
myOrderNPC.textBoni.eng = "The queen authorised me to grant you a small extra income for your good services.";

myOrderNPC.triggerSeeOrder = { ".*[Aa]uftrag.+(%d+).+[Aa]nsehen.*",".*[Ss]ee.+[Oo]rder.+(%d+).*",".*[Aa]uftrag.+(%d+).+sehen.*",".*[Au]ftr[�a][ge][eg].*","[Oo]rder.*", };
myOrderNPC.triggerGetOrder = { ".*[Aa]uftrag.+(%d+).+[Aa]nnehmen.*",".*[Gg]et.+[Oo]rder.+(%d+).*", ".*[Aa]uftrag.+(%d+).+[Ll]iefern.*",".*[Dd]eliver.+[Oo]rder.+(%d+).*",".*[Aa]uftrag.+(%d+).+[Hh]aben.*",".*[Hh]ave.+[Oo]rder.+(%d+).*",".*[Aa]uftrag.+(%d+).+[Nn]ehmen.*",".*[Tt]ake.+[Oo]rder.+(%d+).*" };

mainNPC:initDone();
end;

function receiveText(texttype, message, speaker) mainNPC:receiveText(speaker, message); end;
function nextCycle() mainNPC:nextCycle(); end;
function lookAtNpc(char, mode) mainNPC:lookAt(char, mode); end;
function useNPC(char, counter, param) mainNPC:use(char); end;
initNpc();
initNpc = nil;
-- END