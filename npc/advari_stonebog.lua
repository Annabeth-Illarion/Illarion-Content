--------------------------------------------------------------------------------
-- NPC Name: Advari Stonebog                                             None --
-- NPC Job:  trader                                                           --
--                                                                            --
-- NPC Race: dwarf                      NPC Position:  261, 250, 0            --
-- NPC Sex:  male                       NPC Direction: east                   --
--                                                                            --
-- Author:   not set                                                          --
--                                                                            --
-- Last parsing: August 27, 2010                         easyNPC Parser v1.01 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (1, 261,250,0, 2, 'Advari Stonebog', 'npc.advari_stonebog',  0, 1, 1, 189, 182, 164, 217, 154, 123);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.advari_stonebog", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Advari Stonebog the trader. Keyphrases: usual trading trigers."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Advari Stonebog der H�ndler. Schl�sselw�rter: die �blichen handels trigger."));
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
talkEntry:addResponse("Hiho, traveler.");
talkEntry:addResponse("Abundance and Wealth, my friend.");
talkEntry:addResponse("Hail Irmorom.");
talkEntry:addResponse("Gr'duzk.");
talkEntry:addResponse("H'druk g'har. This's my cottage. Do you like to buy something?");
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
talkEntry:addResponse("Hiho, Reisender.");
talkEntry:addResponse("Wohlstand und profitable Gesch�fte, mein Freund.");
talkEntry:addResponse("Heil Irmorom.");
talkEntry:addResponse("Gr'duzk.");
talkEntry:addResponse("H'druk g'har. Dies ist mein Schuppen. Wollt ihr was kaufen?");
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
talkEntry:addResponse("Hiho, traveler.");
talkEntry:addResponse("Abundance and Wealth, my friend.");
talkEntry:addResponse("Hail Irmorom.");
talkEntry:addResponse("Gr'duzk.");
talkEntry:addResponse("H'druk g'har. This's my cottage. Do you like to buy something?");
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
talkEntry:addResponse("Hiho, Reisender.");
talkEntry:addResponse("Wohlstand und profitable Gesch�fte, mein Freund.");
talkEntry:addResponse("Heil Irmorom.");
talkEntry:addResponse("Gr'duzk.");
talkEntry:addResponse("H'druk g'har. Dies ist mein Schuppen. Wollt ihr was kaufen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("Abundance and Wealth, my friend.");
talkEntry:addResponse("Arr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Gehabt Euch wohl.");
talkEntry:addResponse("Wohlstand und profitable Gesch�fte, mein Freund.");
talkEntry:addResponse("Arr.");
talkEntry:addResponse("G'hruk.");
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
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("Abundance and Wealth, my friend.");
talkEntry:addResponse("Arr.");
talkEntry:addResponse("G'hruk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Gehabt Euch wohl.");
talkEntry:addResponse("Wohlstand und profitable Gesch�fte, mein Freund.");
talkEntry:addResponse("Arr.");
talkEntry:addResponse("G'hruk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Aye, the business is well. And the Greennoses behave properly.");
talkEntry:addResponse("Arr, as soon as I'm able to leave my shop, I am going to drink beer at Hagar's Inn. He is a Longleg, but the stuff is brewed by us dwarves!");
talkEntry:addResponse("Gold. Tha'ts what a dwarf aspire. And I got a huge amount of it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Aye, das Gesch�ft geht gut, und die Gr�nschnauzen benehmen sich einigerma�en.");
talkEntry:addResponse("Arr, wenn ich einmal hier wegkomm, geh ich sofort zu Hagar! Der ist zwar ein Langbein, aber das Bier, das haben wir Zwerge ihm gebraut!");
talkEntry:addResponse("Gold. Das ist was ein Zwerg will. Und ich hab eine Menge davon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("ENGLISH1.");
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
talkEntry:addResponse("Arr, nur Weichzwerge verraten ihren wahren Namen. Wer wei� wem, einer wie du, ihn erz�hlen w�rde! Aber in der allgemeinen Sprache hei�e ich Advari Stonebog.");
talkEntry:addResponse("Advari Stonebog. Und mehr braucht einer wie du, nicht zu wissen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Ich verwalte das Saatgut von Galmair. Eine �u�erst wichtige Aufgabe. Die der Don, nur den f�higsten M�nnern anvertraut.");
talkEntry:addResponse("Arr. Ich pass auf das die Schweineschnauzen, hier am Markt, keinen Unsinn treiben! Sind ja so wie so nicht die kl�gsten, nicht wahr?");
talkEntry:addResponse("Gepriesen sei Irmorom, und gedankt sei's Ronagan. Die letzte Woche lief ausgezeichnet, und kein einziger Langfinger in der N�he. Arr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich handle mit Saatgut. Wenn du ein Bauer bist, bist du bei mir richtig. Ich verkauf dir alles was du brauchst. Aye. und au�erdem pass ich auf, dass die Gr�nschnauzen dort dr�ben keinen Unsinn treiben.");
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
talkEntry:addResponse("Ich handle mit Saatgut. Wenn du ein Bauer bist, bist du bei mir richtig. Ich verkauf dir alles was du brauchst. Aye. und au�erdem pass ich auf, dass die Gr�nschnauzen dort dr�ben keinen Unsinn treiben.");
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
talkEntry:addResponse("Gobaith? Drhg'hgin! So spricht niemand �ber meine Gro�mutter! Verzieh dich!");
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
talkEntry:addResponse("Aye, du Weichnase.");
talkEntry:addResponse("Sch�n f�r Euch. Aber ein ordentlicher Zwerg w�rde nie seinen wahren Namen verraten.");
talkEntry:addResponse("Sehr genehm. Werd ich mir merken! Wie Zwerge haben ein ausgezeichnetes Ged�chtniss. und ich werd's nicht vergessen wenn du versuchst mich �bers Ohr zu haun!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dwar[vf]");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("or[ck]");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("name");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hagar");
talkEntry:addTrigger("wernson");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gold");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beer");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.(the winged sow)");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("zwerg");
talkEntry:addResponse("Wir Zwergenvolk habens ganz dicke hinter den Ohren. Furchteinfl�sende Krieger! Meisterhafte Steinm�tze! Die gro�artigsten Schmiede! Die ber�hmtseten Poeten und Barden!");
talkEntry:addResponse("Hey Zwerge, hey Zwerge - hey Zwerge ho! Hey Zwerge, hey Zwerge go-go-go!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("or[ck]");
talkEntry:addResponse("Arr, der Don hat ganze zwei marktst�nde an die Schweineschnauzen verpachtet! Jetzt darf ich aufpassen, was sie treiben.");
talkEntry:addResponse("Siehste den Ork, gegen�ber? J'uk, der l�mmelt den ganzen Tag rum und s�uft die eigene Wahre weg. Das Bier schmeckt wie Pisse, frag mich nicht wo er das her hat. jedenfalls nicht von uns Zwergen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("name");
talkEntry:addResponse("N' ordentlicher Zwerg wie ich, isses nich so, der verr�t seinen wahren Namen keinem. Das sch�tzt uns Zwerge vor b�sem Zauber-Firlefanz. Und so Schnik-Schnak, verstehste?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hagar");
talkEntry:addTrigger("wernson");
talkEntry:addResponse("Arr, Hager hat ne gute Taverne. Gut f�r ein Langbein, nat�rlich. Er wird von uns Zwergen mit Getr�nken beliefert. Gl�ck f�r ihn, sonst w�rde wohl niemand beim ihm saufen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gold");
talkEntry:addResponse("#me f�ngt mit kehliger tiefer Stimme an zu singen: 'Gooold! Gold, Gold, Gold. Gold... Gold, Gold, Gold!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bier");
talkEntry:addResponse("Aye, das beste Bier in Galmair verkauft Hagar Wernson in der Taverne zur gefl�gelten Sau. Die Pisse die der Ork gegen�ber verkauft w�rd ich nicht mal trinken, wenns nen hielender Trunk w�r und mir ne Axt in der Schulter steckt!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
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
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Arr. Jeder Zwerg wei� nat�rlich, da� Magie gemeingef�hrlicher Firlefanz ist! Und dieser Elvaine Morgan t�te gut daran auf uns Zwerge zu h�ren!");
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
talkEntry:addResponse("Drhg'hgin! Ein S�ndenpfuhl wenn ihr mich fragt. Dort spielen sie mit Magie herum. Da versteh ich keien Scherze! Sollen sie sich selbst in die Luft sprengen, D'rkza...Narren.");
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
talkEntry:addResponse("Aye, der Don ist das Gesetz hier. Leg dich besser nicht mit ihm an. Er ist der reichste Zwerg hier... k�nnte das letzte sein was ihr getan habt.");
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
talkEntry:addResponse("Galmair, Galmair! So ist der Nam. Hier gibst die gr��ten Sch�tze im Boden. Und ein reicher Zwerg ist wohl angesehn. So l�st's sich leben. Gedankt seis Irmorom!");
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
talkEntry:addResponse("Kra'gstuck! Wir zwerge halten nichts vom 'blauen' Blut! Wohlstand ist's was Ansehen bringt. Ein gro�er reicher Clan, der hat bei uns das Sagen!");
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
talkEntry:addResponse("Cadomyr? Die werden doch von so einer verzogenen G�re regiert. Wenn ihr mich fragt, hat die keine Ahnung von Gesch�ften. Bei uns Zwergen, jaja, da haben nur die kl�gsten K�pfe was zu sagen!");
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
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("�ber Albar wollt ihr sprechen? Ich bitte Euch, ich bin ein angesehener Zwerg und hab dort tunlichst, nichts zu tun.");
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
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Gynk, jaja. Dort gibts Mienen! Nat�rlich nicht mit unseren zu vergleichen! Und alles voll mit Betr�gern, aber was soll man von den menschen schon besseres erwarten?");
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
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Sonniges, leuchtendes Salkamar. �berf�llt mit Magier-P�bel. Wenn ich nur dran denke, reibt's mir in den Augen. F�r so ein Land hat uns Irmorom nicht geschaffen. Nein.");
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
talkEntry:addResponse("Irmorom, der Vater der Zwerge und ihr Ronagan, sch�tzt mich vor langfingrigen Halblingen und betr�gerischen Menschen.");
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
talkEntry:addResponse("Hail Irmorom. Sch�tze meinen Clan, in seinen Hallen aus Stein. Weit sind sie weg, doch kann man uns niemals trennen.");
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
talkEntry:addResponse("Aye, ich opfere einen guten teil meiner Eink�nfte dem Schattengott. So sorgt er daf�r, das ich vom diebischen Gesindel verschont bleibe! Arr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Ich hab keine Arbeit f�r dich, frag lieber den Don. Aye?");
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
talkEntry:addResponse("Ich hab keine Arbeit f�r dich, frag lieber den Don. Aye?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Aye.");
talkEntry:addResponse("Arr.");
talkEntry:addResponse("Aargk... - tell me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Aye.");
talkEntry:addResponse("Arr.");
talkEntry:addResponse("Aargk... - sprich was ist's?");
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
talkEntry:addResponse("fein,fein.");
talkEntry:addResponse("Wenn's ihr so wollt.");
talkEntry:addResponse("Damit kann ich leben. Ich hoff, ihr auch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("Aye, ist das so? Das ist mir neu.");
talkEntry:addResponse("#me lacht kehlig und streicht sich �ber den bart. 'Na gut, ist ja gut.'");
talkEntry:addResponse("Arr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me singt mit kehliger Stimme: 'Hai-hie! Hai-hoh. Hai-hi! Hai-ho! Hai-ho-ho! Hai-hi! Hai-ho!'", "ENGLISH.");
talkingNPC:addCycleText("#me streicht sich zufrieden l�chelnd �ber den langen buschigen Bart.", "ENGLISH.");
talkingNPC:addCycleText("#me kaut auf seiner Pfeife herum. gelegentlich stopft er etwas Kraut nach.", "ENGLISH.");
talkingNPC:addCycleText("#me bl��t einen gro�en Rauchring in die Luft, und gluckst gl�cklich.", "ENGLISH.");
talkingNPC:addCycleText("Langfinger fressen die Galgenv�gel! Lasst's Euch sagen! Aye.", "ENGLISH.");
talkingNPC:addCycleText("#me knurrt etwas unverst�ndliches in seinen Bart, indessen funkelt er die Ork beim Schuppen mit ver�rgertem Blick an.", "ENGLISH.");
talkingNPC:addCycleText("Arr...", "Arr...");
talkingNPC:addCycleText("Ich verkauf die sch�nsten F�lle zu den besten Preisen!", "ENGLISH.");
talkingNPC:addCycleText("Frische Schafsmilch! Leute, kommt her und kauft bei mir ein!", "ENGLISH.");
talkingNPC:addCycleText("Dort, edle Dame! Kauft mir leckere Fr�chte ab! Die Besten Fr�chte Galmairs verkaufe ich.", "ENGLISH.");
talkingNPC:addCycleText("#me ver�ngt die Augen und betrachtet einen Moment lang misstrauisch den Ork gegen�ber.", "ENGLISH.");
talkingNPC:addCycleText("Ha'ak! Ga strak ja'ada! Arr.", "Ha'ak! Ga strak ja'ada! Arr.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(2);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein ergrauter Zwerg. In seinem Mundwinkel steckt eine verzierte Pfeife und kleine rauchw�lchen umgeben ihn.", "A grey dwarf. blabla  ENGLISH TRANSLATION PLZ!");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
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