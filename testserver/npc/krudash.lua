--------------------------------------------------------------------------------
-- NPC Name: Krudash                                                  Galmair --
-- NPC Job:  trader                                                           --
--                                                                            --
-- NPC Race: orc                        NPC Position:  366, 272, 0            --
-- NPC Sex:  female                     NPC Direction: west                   --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                       easyNPC Parser v1.23 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (4, 366, 272, 0, 6, 'Krudash', 'npc.krudash', 1, 0, 0, 6, 18, 8, 137, 123, 60);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.consequence.trade")
require("npc.base.talk")
require("npc.base.trade")
module("npc.krudash", package.seeall)

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
talkEntry:addResponse("G�sh! I sell everything made in the forge. Sharpest axes! Mightiest armours! Best tools. Uh!");
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
talkEntry:addResponse("G�sh! Ich verkaufe alles was sie in der Schmiede zusammen bauen. Sch�rfste �xte! M�chtigste R�stungen! Und bestes Werkzeug. Uh!");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Krudash the arms dealer. Keywords: buy, sell, trade, Er'hja, Kroch'Gurak, Snaga, Alice, Tom"));
talkEntry:addResponse("Me, Krudash sell and buy lots of stuff! Taghta?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Krudash die Waffenh�ndlerin. Schl�sselw�rter: kaufe, verkaufe, Handel, Er'hja, Kroch'Gurak, Snaga, Alice, Tom"));
talkEntry:addResponse("Ich, Krudash verkaufe und kaufe viele Dinger! Taghta?");
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
talkEntry:addResponse("Greebas. Do you need sumthing?");
talkEntry:addResponse("Hurr! Be greeted.");
talkEntry:addResponse("Hurr. Me, Krudash sell all you need. For good hack'n sack trip! Hehe!");
talkEntry:addResponse("Latha math! Greetings-Greetings, mes mean.");
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
talkEntry:addResponse("Greebas. Brauchst du was, h�?");
talkEntry:addResponse("Hurr! Sei gegr��t.");
talkEntry:addResponse("Hurr. Ich, Krudash verkaufe alles, was 'ner wie du braucht f�r's hacken und pl�ndarn! Hehe!");
talkEntry:addResponse("Latha math! Gr��e-Gr��e, sag ich.");
talkEntry:addResponse("Sei willkommen, in 'Krudash's Hacken und Pl�ndern'!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greebas. Do you need sumthing?");
talkEntry:addResponse("Hurr! Be greeted.");
talkEntry:addResponse("Hurr. Me, Krudash sell all you need. For good hack'n sack trip! Hehe!");
talkEntry:addResponse("Latha math! Greetings-Greetings, mes mean.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greebas. Brauchst du was, h�?");
talkEntry:addResponse("Hurr! Sei gegr��t.");
talkEntry:addResponse("Hurr. Ich, Krudash verkaufe alles, was 'ner wie du braucht f�r's hacken und pl�ndarn! Hehe!");
talkEntry:addResponse("Latha math! Gr��e-Gr��e, sag ich.");
talkEntry:addResponse("Sei willkommen, in 'Krudash's Hacken und Pl�ndern'!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farebas. Have a good sackin'!");
talkEntry:addResponse("Sl�n leibhsl�n! Would say in the orcs tongue. Tagtha?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Farebas. Ne Gute Pl�nderung w�nsch ich noch!");
talkEntry:addResponse("Sl�n leibhsl�n! - So sagens wir Orks. Tagtha?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Farebas. Have a good sackin'!");
talkEntry:addResponse("Sl�n leibhsl�n! Would say the orcs tongue. Tagtha?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Farebas. Ne Gute Pl�nderung w�nsch ich noch!");
talkEntry:addResponse("Sl�n leibhsl�n! - So sagens wir Orks. Tagtha?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Hurr. Mes alrighty! Good shop, good husband, good whelps.");
talkEntry:addResponse("Uh! I'm a rich and mighty orc! Lot's of snagas are mine!");
talkEntry:addResponse("Hrmpf!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
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
talkEntry:addResponse("I am Krudash, and this my Shop 'Hack'n Sack', sellin all stuff you need for good hack'n sack trip.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Krudash Und dars ist mein Laden. 'Hack'n Sack' - Hacken und Pl�ndern! Verkaufe alles was du brauchst f�rr guttes Hackn und pl�ndarn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I... and my snagas... do all the work, so there is nothing for a maggot like you to do!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich handle... und meine Snagas machen alle Arbeit. Also gibt's nix zu tun f�r ne Made wie dich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I... and my snagas.. do all the work, so there is nothing for a maggot like you to do!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich handle... und meine Snagas machen alle Arbeit. Also gibt's nix zu tun f�r ne Made wie dich!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I'm the arms dealer in this town, and all those snagas follow my command! Groch!");
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
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I'm the arms dealer in this town, and all those snagas follow my command! Groch!");
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
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Hrmpf! What else is there to say?");
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
talkEntry:addTrigger("my name");
talkEntry:addResponse("Hurr, hurr. What do you buy?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Hurr, hurr. Was willst du kaufen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("er hja");
talkEntry:addTrigger("erhja");
talkEntry:addTrigger("er'hja");
talkEntry:addResponse("Oh-h! Er'hja will be my little orcling forever. *grunts happily* Yes, she's fiendishly clever. I will be her proud mommy, forever!");
talkEntry:addResponse("#me nods. 'Tagtha. Er'hja is my daughter. She have a sister also, yes, Ol'hja, strangers get them mixed up.'");
talkEntry:addResponse("#me laughs hoarsely. 'Ha-hr. Orclings like Er'hja 'nd Ol'hja cause much trouble for their mommies and daddies...'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("er hja");
talkEntry:addTrigger("erhja");
talkEntry:addTrigger("er'hja");
talkEntry:addResponse("Oh-h! Er'hja wird immer meine kleine Orkling bleiben. *grunzt gl�cklich* Sie ist ist ja so sehr schlau und gewifft. Ich werd immer ihre stolze Mami sein!");
talkEntry:addResponse("#me nickt. 'Tagtha. Er'hja ist meine Tochter. - Sie hat auch ne' Schwester, ja. Ol'hja, Fremde verwechseln die Beiden oft.'");
talkEntry:addResponse("#me lacht heiser. 'Ha-hr. Orklinge wie Er'hja 'nd Ol'hja machen Mamis und Papis viele Sorgen...'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("ali[czs]");
talkEntry:addTrigger("ali[czs]e");
talkEntry:addResponse("G�sh! Aliz' this weepy flimsy snaga! She complained again, huh? Listen! She's Krudash dirty snaga, so she has to follow Krudash's orders... and I'm Krudash!");
talkEntry:addResponse("Don't worry about the girl, she isn't worth it. She has to become strong and proud, do a good job. Ye-hs, but shes just going around crying like the puniest of orclings...");
talkEntry:addResponse("I bought her for a few coins, wasn't much money, no, but now she's snivelling and doesn't do a good job.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ali[czs]");
talkEntry:addTrigger("ali[czs]e");
talkEntry:addResponse("G�sh! Aliz' diese jammernde schwache Snaga! Hat sie sich wieder bei jemanden mitleidig gemacht, h�? H�r zu! Sie's Krudashs dreckige Snaga, also tut sie was Krudash sagt. Und ich bin Krudash!");
talkEntry:addResponse("K�mmert Euch nich um das M�dchen. Das hat sie sich n�mlich gar nicht verdient. Soll sie stark und stolz werden, ihre Arbeit gut tun! Ja-h. Aber sie flennt und h�ult nur! Wie die kleinsten Orkligne...");
talkEntry:addResponse("Ch-arr. Ich hab sie damals gekauft, war nicht viel Geld, nein. Aber jetzt ist sie weinerlich und tut ihre Arbeit nicht gut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hack");
talkEntry:addTrigger("sack");
talkEntry:addResponse("Hurr Hurr. Ciamar a'seibh! How goin?");
talkEntry:addResponse("Hurr Hurr. Do you need an axe, huh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hacken");
talkEntry:addTrigger("pl�ndern");
talkEntry:addResponse("Hurr Hurr. Ciamar a'seibh! Wie geht's?");
talkEntry:addResponse("Hurr Hurr. Brauchst ne Axt, h�?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("tom");
talkEntry:addTrigger("berry");
talkEntry:addTrigger("thomas");
talkEntry:addTrigger("berryard");
talkEntry:addResponse("Ha-ha! I caught this puny loudmouth on my own... now he has to work, although he's not happy about it. Thomas Berryard is my snaga now!");
talkEntry:addResponse("#me smashes her fist upon the table angrily. 'Scheschnak! That sneaky dirty swine Berryar'! Once he tried to mix broken glass into my food.'");
talkEntry:addResponse("Choar! That lousy halfer escaped one day and got lost in the mountains, now 'e hab to batter stones.");
talkEntry:addResponse("Garh! The dastardly halfer! Thoma' Berryar'! Watch his tiny fists! He'll try to smash them between your legs, whether you're a man or a woman.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tom");
talkEntry:addTrigger("berry");
talkEntry:addTrigger("thomas");
talkEntry:addTrigger("berryard");
talkEntry:addResponse("H�-h�! Ich hab das kleine Gro�maul selbst gefangen. Jetz muss er schuften, auch wenn ihm das nicht gef�llt. Thomas Berryard, er ist jetzt mein Snaga!");
talkEntry:addResponse("#me schl�gt ver�rgert mit der Faust auf den Tisch. 'Scheschnak! Dieser hinterlistige Dreckskerl Berryar', hat mir einmal Glasscherben ins Fleisch gemischt.'");
talkEntry:addResponse("Choar! Der miese Halbling ist 'nes Tags ausgebuchst und hat sich auf der Flucht in d'n Bergen verirrt. Jetzt muss er zur Strafe Steine kloppen.");
talkEntry:addResponse("Hurr, behalt seine kleinen F�ustchen im Aug! Sonst haut er sie dir zwischen die Beine, da ist's ihm egal ob Mann oder Weib.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("ol hja");
talkEntry:addTrigger("olhja");
talkEntry:addTrigger("ol'hja");
talkEntry:addResponse("Hurr, its difficult to get good job, but Ol'hja became a scout for a band of mercenaries. Kj'at, that's a good job for an orc!");
talkEntry:addResponse("Tagtha, have you met Ol'hja recently? She's a good orc, isn't she? All men want to become her husband, but she's very stubborn. A pighead, like a donkey! But her mommy is very proud, yes I am. Yes.");
talkEntry:addResponse("Me Krudash isn't very skillful in the wild far away from town. Where would a gynkesh learn it, anyway? Ol'hja was taught by Mo'rurt, he's a great hunter. I would bet the best. Taghta?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ol hja");
talkEntry:addTrigger("olhja");
talkEntry:addTrigger("ol'hja");
talkEntry:addResponse("Hurr, is schwer gute Arbeit zu finden. Aber Ol'hja is Sp�her geworden. F�r ne S�ldnertruppe. Kj'at, dass is ne gute Arbeit f�r ne Ork!");
talkEntry:addResponse("Taghta, hast du Ol'hja mal getroffen? Sie's eine gute Ork nich? Alle M�nner wolln sie zur Frau, aber sie hat'n sturen Kopf. Einen Dicksch�dl, wie'n Esel! Aber ihre Mamy is sehr stolz, ja das bin ich. Ja.");
talkEntry:addResponse("Ich, Krudash kenn mich nicht aus drau�en, wo die Stadt weit weg ist. Aber woher soll's eine Gynkesh auch lernen? Ol'hja hat alles was sie wei� von Mo'rurt gelernt, der is n' guter J�ger. Ich w�rd sagen der Beste. Taghta?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("kroch");
talkEntry:addTrigger("Gurak");
talkEntry:addTrigger("Kroch'Gurak");
talkEntry:addResponse("Kroch'Gurak isn't a town, actually, no, but in winter, uncounted orc tribes wander there. Then the whole of the west Norbuk Plateau lives in the giant caves there, and there's pig hunting and wrestling.");
talkEntry:addResponse("Mes dropped my daughters on isle Gobaith, and as soon as they were big enough, their father decided, they should live in Kroch'Gurak so they were able to grow up amongst other orcs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("kroch");
talkEntry:addTrigger("Gurak");
talkEntry:addTrigger("Kroch'Gurak");
talkEntry:addResponse("Kroch'Gurak is keine Stadt, w�rd ich sagen, nein. Aber im Winter lagern unz�hlige Orkst�mme dort. Das westliche Norbuk Plateou zieht dann in die gro�en H�hlen dort. Und es gibt Schweinshats und Ringk�mpfe.");
talkEntry:addResponse("Ich hab meine T�chter auf der Insel Gobaith geworfen. Und als sie gro� genug waren entschied ihr Vater, das sie nach Kroch'Gurak ziehen sollten. Damit sie unter Orks gro�wachsen k�nnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("snaga");
talkEntry:addResponse("Snagas! Those are monkeys... basically, and weak puny orcs who need to be told what to do! A mighty orc like me, Krudash has many snagas. G�sh! Not for nothing, I'm the smartest here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("snaga");
talkEntry:addResponse("Snagas! Das sind Affen... - eigentlich. Und schw�chliche Orks, denen man sagt was sie tun m�ssen! Eine m�chtige Ork wie ich, Krudash es bin hat viele Snagas. G�sh! Bin ja auch die Schlauste hier.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("where com");
talkEntry:addTrigger("krochgurak");
talkEntry:addResponse("Hrach. I come frome Khenserra, but most orcs come frome Kroch'gurak where the clans camp in winter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("where com");
talkEntry:addTrigger("krochgurak");
talkEntry:addResponse("Hrach. Ich komme aus Khenserra. Aber viele Orks sind aus Kroch'gurak. Dort'ists wo die Clans im Winter lagern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dwarf");
talkEntry:addTrigger("dwarv");
talkEntry:addResponse("Hurr Hurr. Do you need an axe, huh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("zwerg");
talkEntry:addResponse("Hurr Hurr. Brauchst ne Axt, h�?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Pfft! Astute wizard... Runewick rat!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Ch-h! Der listige Zauberer... Runewickratte!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Pfft! Astute wizard... Runewick rat!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Ch-h! Der listige Zauberer... Runewickratte!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Gnarh! Those are loathsome ...*grunt*... Scheschnaks! Maggots should eat them!");
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
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Glushd�sh! He is a damn dwarf, but he is good for business, not true, not true?");
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
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Why!? Gol-gol! There's a rich orcess that does whatever she wants and all snagas do what I say. Hurr.");
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
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Hroar! I heard the Queen's guards are nothing but monkeys wearing pants! Har!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Hroar! Ich hab geh�rt, der K�nigin Leibgarde sind ein paar Affen denen man Hosen angezogen hat! Har!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Hroar! I heard the Queen's guards are nothing but monkeys wearing pants! Har!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Hroar! Ich hab geh�rt, der K�nigin Leibgarde sind ein paar Affen denen man Hosen angezogen hat! Har!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("If pigs walked on two legs... even the Gods couldn't tell them apart from the Cadomyrians. Gosch!");
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
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Hurr. There are lots of snagas, but only the humans are allowed to order those snails. Grot.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Hurr. Dorts gibts ne Menge Snagas. Aber nur die dummen Menschenz d�rfen sie zur Schneke machen. Grot.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Apart from Kroch'Gurak, Gynk is the best place for people. *grunts*... Although the sun is hot there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Abgesehen von Kroch'Gurak, ist Gynk der beste Platz f�r die Leute. *grunzt*... Auch wenn die Sonne dort hei� ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Scheschnaks. Those are all dirty scheschnak-monkeys. Gosch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Scheschnaks. Das sind alles dreckige Scheschnak-Affen. Gosch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("The ancestors should praised, hail. Praise my fathers.");
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
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("moshran");
talkEntry:addTrigger("god");
talkEntry:addResponse("Gosh! Nub say tha name! Better talk to Shaman about tha Fatha.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("moshran");
talkEntry:addTrigger("god");
talkEntry:addResponse("Gosh! Du niemals sagst diesen Namen! Besser fragen Schamane �ber Vatha.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("cherga");
talkEntry:addTrigger("icy witch");
talkEntry:addTrigger("eis Hex");
talkEntry:addResponse("Hurr. Tha icy witch, be God ob ancestors, just ask Grimlug!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("cherga");
talkEntry:addTrigger("icy witch");
talkEntry:addTrigger("eis Hex");
talkEntry:addResponse("Hurr. Eisig Hexe, Gottin von Ahnen ist. Du fragst Grimlug!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("G�sh! I learned about dealing in Gynk! Yp-Yp.");
talkEntry:addResponse("Hrach! Do you know the blacksmith Frobenius? He sells swords, a horse farrier would be able to make them sharper.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("G�sh! Ich hab das Handeln in Gynk gelernt! Yp-Yp.");
talkEntry:addResponse("Hrach! Kennst' du den Schmied Frobenius? Er verkauft Schwerter, ein Hufschmied k�nnt sie sch�rfer machen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Krudash");
talkEntry:addResponse("Hurr Hurr. Ciamar a'seibh! How goin?");
talkEntry:addResponse("Hurr Hurr. Do you need an axe, huh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Krudash");
talkEntry:addResponse("Hurr Hurr. Ciamar a'seibh! Wie geht's?");
talkEntry:addResponse("Hurr Hurr. Brauchst ne Axt, h�?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Taghtha? Is good! Yes.");
talkEntry:addResponse("There we go. Alrighty-right.");
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
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Taghta!");
talkEntry:addResponse("Puny little maggot! What do you want?.");
talkEntry:addResponse("Uh-h?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Taghta!");
talkEntry:addResponse("Winzig kleine Made, was willst du?.");
talkEntry:addResponse("Uh-h?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me leckt sich kurz �ber die Lippen. Dann streckt sie die Zunge heraus und ber�hrt damit ihr h�bsches N�schen.", "#me licks her lips. Then she sticks out her tongue and taps her cute nose.");
talkingNPC:addCycleText("Hack'n Sack! Hier Kannst du alles kaufen. Was 'ner wie du braucht f�r ne gutte Pl�nderei!", "Hack'n sack! here you buy all stuff for good plundering.");
talkingNPC:addCycleText("Uh, ich bin so stolz auf meine kleine Ol'hja und meine kleine Er'hja!", "Uh, mes be so proud ob mes littl Ol'hja and mes littl Er'hja!");
talkingNPC:addCycleText("Gnahrr! Wo ist mein fauler Sack von Mann?", "Gnahrr! Where is my lazy husband?");
talkingNPC:addCycleText("#me stochert mit ihrem Finger an einem der beiden Kieferz�hnen herum. ", "#me digs with one of her fingers between her tusks.");
talkingNPC:addCycleText("#me schnaubt ein wenig.", "#me snorts quietly.");
talkingNPC:addCycleText("#me rubbelt mit den Fingern�geln an einem rostendem Eisenteil. Doch der Rost scheint sich hartn�ckig darauf zu halten.", "#me scratches at a rusty piece of iron without making any change in the rust.");
talkingNPC:addCycleText("#me kichert und nuschelt: 'Snu-snu...'", "#me chuckles and mumbles, 'Snu-Snu...'");
talkingNPC:addCycleText("#me krazt sich knurrend am Kopf.", "#me scratches her head with an annoyed snarl.");
talkingNPC:addCycleText("#me nimmt einen Schluck aus einer kleinen schmuddeligen Flasche. Scharfer alkoholischer Dunst steigt in die Luft.", "#me takes a gulp from a grubby little bottle. A strong stench of alcohol fills the air.");
talkingNPC:addCycleText("#me klappert in einem einfachen ansteckenden Rythmus auf dem Holztisch.", "#me taps out a simple, catchy rhythm on the wooden table.");
talkingNPC:addCycleText("Hurr, kauft die dicksten R�stungen von Krudash! Ich mach euch den besten Preis...", "Hurr, buy the thickest armor at Krudash! I make you the best price...");
talkingNPC:addCycleText("Schwerta! �xte! H�mmer! Hossa, kauft ihr alles bei mir! Krudash!", "Swords! Axes! Hammers! Hossa, buy everything at Krudash's shop!");
talkingNPC:addCycleText("Ich hab das reinste Erz! Und die besten Preise in ganz Galmair! Gosh!", "I hold the purest ore! And the best price in whole Galmair! Gosh!");
talkingNPC:addCycleText("Schmiede, Eisenbieger... mit Krudash's Werkzeug macht ihr die besten St�cke!", "Smiths, Iron workers... Krudash's tools make the best goods!");
talkingNPC:addCycleText("#me hebt den Kopf und br�llt zur Werkst�tte hin�ber. 'Alize du dreckige kleine Snaga! Du sollst die Esse sch�rn! Taghta?'", "#me turns her head and yells at the forge. 'Alize, 'uh dirty little Snaga! Fan the fires! Taghta?'");
tradingNPC:addItem(npc.base.trade.tradeNPCItem(23,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(23,"buyPrimary"));
tradingNPC:addNotEnoughMoneyMsg("Du kannst dir das nicht leisten!", "You can not afford that!");
tradingNPC:addDialogClosedMsg("Danke, komm bald wieder!", "Thanks, come again!");
tradingNPC:addDialogClosedNoTradeMsg("Auf Bald!", "Farewell!");
tradingNPC:addWrongItemMsg("Das kaufe ich nicht.", "I'm not buying this.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Eine sinnliche Orkfrau mit druchdringenden rotbraunen Augen. Sie hat ein s��es N�schen und kleine spitze Hauer. Achtsam �berblickt sie den Marktplatz.", "A voluptous orcess with red-brown eyes. She has a cute nose and small pointy tusks. She watches the marketplace observantly.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(3, 362);
mainNPC:setEquipment(5, 23);
mainNPC:setEquipment(9, 366);
mainNPC:setEquipment(10, 53);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, texttype, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END