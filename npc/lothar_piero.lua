--------------------------------------------------------------------------------
-- NPC Name: Lothar Piero                                                None --
-- NPC Job:  trader                                                           --
--                                                                            --
-- NPC Race: halfling                   NPC Position:  896, 816, 1            --
-- NPC Sex:  male                       NPC Direction: east                   --
--                                                                            --
-- Authors:  Rincewind                                                        --
--           Estralis Seborian                                                --
--                                                                            --
-- Last parsing: July 26, 2011                           easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (2, 896, 816, 1, 2, 'Lothar Piero', 'npc.lothar_piero', 0, 1, 0, 192, 107, 5, 232, 188, 146);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
module("npc.lothar_piero", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Lothar Piero the timber merchant. Keyphrases: TRIGGER1, TRIGGER2, TRIGGER3, TRIGGER4, TRIGGER5."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Lothar Piero der Holzh�ndler. Schl�sselw�rter: TRIGGER1, TRIGGER2, TRIGGER3, TRIGGER4, TRIGGER5."));
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
talkEntry:addResponse("May Oldra bless you. Do you need... wood?");
talkEntry:addResponse("#me nods slowly: 'Wisdom and patience. How can I help you?'");
talkEntry:addResponse("Hiho! How can I help you?");
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
talkEntry:addResponse("Oldra mit Euch. Ben�tigt Ihr h�lzernes Gut?");
talkEntry:addResponse("#me neigt seinen Kopf: 'Weisheit und Ausgeglichenheit. Wie darf ich Euch behilfich sein?'");
talkEntry:addResponse("Hiho! Womit kann ich dienlich sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("May Oldra bless you. Do you need... wood?");
talkEntry:addResponse("#me nods slowly: 'Wisdom and patience. How can I help you?'");
talkEntry:addResponse("Hiho! How can I help you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Das ist durchwegs salopp gesagt, aber ich bin nicht kleinlich. Seid gegr��t.");
talkEntry:addResponse("Ehre den G�ttern, wollt ihr Bretter kaufen?");
talkEntry:addResponse("Guten Tag. Im Namen aller H�ndler will ich Euch willkommen hei�en.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Sounds sloppy, but I'm not picky. Be greeted.");
talkEntry:addResponse("Honour the gods, do you need boards?");
talkEntry:addResponse("Good day. I welcome you on behalf of all my collegues.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Auf Wiedersehen. M�ge Oldra Eure G�rten und Felder h�ten.");
talkEntry:addResponse("Gehabt Euch wohl. Bis Bald.");
talkEntry:addResponse("Adieu! Besucht mich wieder einmal.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Good bye. May Oldra bless your gardens and fields.");
talkEntry:addResponse("Farewell and see you soon.");
talkEntry:addResponse("Adieu! Come back anytime soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Auf Wiedersehen. M�ge Oldra Eure G�rten und F�lder h�ten.");
talkEntry:addResponse("Gehabt Euch wohl. Bis Bald.");
talkEntry:addResponse("Adieu! Besucht mich wieder einmal.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Wonderful! Indeed, Oldra smiles upon me.");
talkEntry:addResponse("Even if a cloud covers the sun, I know that it shines on my every day.");
talkEntry:addResponse("A dark night is defeated by the sunrise.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Ausgezeichnet. Ja, Oldra blickt wohlwollend auf mich herab.");
talkEntry:addResponse("Auch wenn hier und dort eine Wolke die Sonne verdecken mag, ich wei�, dass sie trotzdem jeden neuen Tag am Himmel stehen wird.");
talkEntry:addResponse("So finster Euch manche Nacht erscheinen kann, die Sonne wird erwachen und alles Finstere vertreiben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("My name is Lothar Piero. Welcome to the market of Runewick.");
talkEntry:addResponse("I am Lothar Piero and I trade... wood.");
talkEntry:addResponse("Boards, shields, bows, what do you desire? I am Lothar Piero and I got wood!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich hei�e Lothar Piero. Seid mir willkommen am Markt von Runewick.");
talkEntry:addResponse("Ich bin Lothar Piero und handle mit allerlei h�lzernen Gut.");
talkEntry:addResponse("Bretter, Schilde, B�gen, was wollt Ihr wohl m�gen? Ich bin Lothar Piero und handle mit Holz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Sorry, I have no job for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Es tut mir Leid, ich habe keine Arbeit f�r Euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Sorry, I have no job for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Es tut mir Leid, ich habe keine Arbeit f�r Euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("Wood is good.");
talkEntry:addResponse("I am a trader and thus, I trade wood. My wood makes me proud, hihi.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin H�ndler. Drum handle ich mit Holz, das macht mich sehr stolz. Hihi!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Ich bin H�ndler. Drum handle ich mit Holz, das macht mich sehr stolz. Hihi!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Wood is good.");
talkEntry:addResponse("I am a trader and thus, I trade wood. My wood makes me proud, hihi.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Gobaith, isn't that a tiny a island in the ocean?");
talkEntry:addResponse("Gobaith isn't important enough to attract Runewick's attention.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Gobaith, ist das nicht eine dieser winzigen Inseln im Splittermeer?");
talkEntry:addResponse("Gobaith ist viel zu unwichtig, um die Aufmerksamkeit Runewicks Wert zu sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("I am delighted. A pleasure to meet you.");
talkEntry:addResponse("Well, I should remember that.");
talkEntry:addResponse("Be greeted and be told: I won't betray you with my wood.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Sehr erfreut - sehr erfreut. Sch�n Euch kennen zu lernen.");
talkEntry:addResponse("So, so? Das werde ich mir gut merken.");
talkEntry:addResponse("Seid gegr��t, und lasst Euch sagen, Lothar hat noch keinen Kunden �bers Ohr geschlagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Pennymill");
talkEntry:addResponse("The militia controls alls inns in Pennymill's harbour quarter. A halfling doesn't have to be afraid of ruffians and thugs there.");
talkEntry:addResponse("The streets of Pennymill are illuminated with thick candles. No shadow is cast where evil might lurk.");
talkEntry:addResponse("During the night, the gates of Pennymill are closed so you can only walk from quarter to quarter. That's much more save this way!");
talkEntry:addResponse("Pennymill's farmer's daughters have the most huge melons.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Pfennigm�hle");
talkEntry:addResponse("In Pfennigm�hle, ich will es Euch erz�hlen - kontrolliert die Miliz alle Tavernen und Gasth�user des Hafenviertels. So braucht sich ein Halbling niemals vor Unruhestiftern und Grobianen f�rchten.");
talkEntry:addResponse("Die Stra�en in Pfennigm�hle werden stehts mit dicken �lkerzen beleuchtet. Wenn man abends nach Hause geht, gibt es kein schattiges Pl�tzchen, wo sich Unholde verkreichen k�nnten.");
talkEntry:addResponse("Nachts sind die Tore von Pfennigm�hle geschlossen. Man kann sich so nur innerhalb der verschiedenen Viertel bewegen. So ist alles viel sicherer und kontrollierbar.");
talkEntry:addResponse("Ich m�chte nicht prahlen, doch in Pfennigm�hle gibt es die saftigsten und riesigsten Melonen, K�rbisse und Tomaten Illarions!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("poetry");
talkEntry:addResponse("Poetry, poetry. The carpenter's poetry's masterpiece is a harp. If you behold a true master carving the harp, you can almost hear the melody.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Poesie");
talkEntry:addResponse("Poesie, Poesie. Das Sch�nste was ein Schreiner zu schaffen vermag, ist zweifelsfrei eine Harfe. Sehe ich einem Meister beim Schnitzen zu, glaube ich oft eine Melodie zu h�ren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("trader");
talkEntry:addTrigger("merchant");
talkEntry:addTrigger("collegue");
talkEntry:addTrigger("vendor");
talkEntry:addTrigger("market");
talkEntry:addResponse("Us traders of Runewick always try to offer as many goods and wares as possible.");
talkEntry:addResponse("The archmage asked us to import as few items as possible and rely on domestic goods.");
talkEntry:addResponse("Hiho! The traders of Runewick stand united and the archmage backs us up.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("h�ndler");
talkEntry:addTrigger("kollege");
talkEntry:addTrigger("h�ker");
talkEntry:addTrigger("markt");
talkEntry:addResponse("Wir H�ndler Runewicks geben uns M�he, ein m�glichst gro�es Angebot an Waren und G�ter f�r die Stadt bereitzustellen.");
talkEntry:addResponse("Der Erzmagier pers�nlich hat uns H�ndlern aufgetragen, ausschlie�lich die n�tigsten G�ter zu importieren. Alles andere sind G�ter aus Runewick.");
talkEntry:addResponse("Hiho! Die H�ndler Runewicks stehen zusammen. Und der Erzmagier hinter uns.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("I'd never disagree with the archmage. Everyone knows he has the master plan!");
talkEntry:addResponse("I trust Archmage Morgan, he is my guide. His able hands will forge Runewick's future.");
talkEntry:addResponse("The archmage is the most wise person of all of us. Who dares to know it better?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Niemals w�rde ich unserem Erzmagier widersprechen. Ist doch jedem hier bewusst, dass sein Plan niemals fehlt.");
talkEntry:addResponse("Erzmagier Morgan, ihm geb�hrt mein Vertrauen und all meine Hoffnungen. Die Zukunft Runewicks liegt in seinen f�higen H�nden!");
talkEntry:addResponse("Der Erzmagier ist der Weiseste von uns. Wie k�nnte ich jemals an seinen Worten zweifeln?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I'd never disagree with the archmage. Everyone knows he has the master plan!");
talkEntry:addResponse("I trust Archmage Morgan, he is my guide. His able hands will forge Runewick's future.");
talkEntry:addResponse("The archmage is the most wise person of all of us. Who dares to know it better?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Niemals w�rde ich unserem Erzmagier widersprechen. Ist doch jedem hier bewusst, das sein Plan niemals fehlt.");
talkEntry:addResponse("Erzmagier Morgan, ihm geb�hrt mein Vertrauen und all meine Hoffnungen. Die Zukunft Runewicks liegt in seinen f�higen H�nden!");
talkEntry:addResponse("Der Erzmagier ist der Weiseste von uns. Wie k�nnte ich jemals an seinen Worten zweifeln?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("May Elara bless Runewick. The four towers are built to honour the gods and to demonstrate our might to our neighbours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Elara m�ge Runewick bewahren. Die vier T�rme sollen den G�ttern schmeicheln und benachbarten St�dten unsere Macht demonstrieren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He is stubborn I was told. All he cares for is gold. It is only a matter time until another thug overtakes Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Ein wahrer Dickkopf, habe ich mir sagen lassen. Ihm ist nur daran gelegen Gold zu h�ufen. Es ist nur eine Frage der Zeit bis einer seiner Konkurenten das Ruder Galmairs aus seinen H�nden rei�t.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Us trader have a proverb: Do not trust Galmair, gold opens the door of the stupid. But if you want to walk into the house of wisdom, you have to open a book instead.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Wir H�ndler haben ein Sprichwort: Traue Galmair nicht, dort sch�tzt man nur das Gold, von Gewicht. Doch willst du Weisheit tragen, sollt Ihr die B�cher befragen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Queen Rosaline rules on behalf of the gods Malach�n and Zhambra. They do not care about wisdom, but is it wise to rule a town by sword and battle?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("K�nigin Rosaline herrscht aufgrund der G�tter Gnade. Malach�n und Zhambra, doch sie schenken der Weisheit keinen Wert. Ist es weise eine Stadt mit Schwert und Schlachtenehre zu regieren?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Queen Rosaline rules on behalf of the gods Malach�n and Zhambra. They do not care about wisdom, but is it wise to rule a town by sword and battle?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("K�nigin Rosaline herrscht aufgrund der G�tter Gnade. Malach�n und Zhambra, doch sie schenken der Weisheit keinen Wert. Ist es weise eine Stadt mit Schwert und Schlachtenehre zu regieren?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Cadomyr is a sand pit, lots of barbarians that got too much sun on their heads. Who wins a duel takes it all, the loser standing small.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr ist eine Sandgrube, voller Barbaren die zu viel Sonne bekommen haben. Wer im Zweikampf obliegt, erf�hrt Ehre und Recht. Der Verlierer lebt in Schande.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Albar is a horrible place. Lucky you, you found Runewick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Albar ist ein schrecklicher Ort. Seid froh, das ihr Euren Weg nach Runewick gefunden habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I overheard Valerio Guilianni came from Gynk to Galmair. He brought strange customs from that spoiled land. With the arrival of the Don, the pearl of the mountains went down the sewers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Ich h�rte Valerio Guilianni sei einst aus Gynk nach Galmair gekommen. Mit sich brachte er alle vermeintlichen Tugenden aus seinem absch�ulichen Land. Denn mit dem Don ist auch die Stadt in den Bergen verkommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Salkamar, you flourishing garden of mankind! If only all humans could live like the paladins of Salkamar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Salkamar, du bl�hender Garten des Menschenvolkes! W�rden sich doch alle Menschen besinnen und leben wie die Paladine Salkamars.");
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
talkEntry:addResponse("Gepriesen sein Oldra und Elara. M�gen sie uns vor den �beln aus Galmair und Cadomyr bewahren.");
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
talkEntry:addResponse("Elara, leite Erzmagier Morgan, damit er die weisesten Entscheidungen treffen mag.");
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
talkEntry:addResponse("Oldra, ich danke f�r das Holz, deiner B�ume, die meine Schilder so stark und die Instrumente so wohlklingend machen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Staffs, pipes, bolts, Lothar has it all.");
talkEntry:addResponse("Are you a carpenter? Then you came to the right place.");
talkEntry:addResponse("Tall elves, small halflings, everyone buys his wood at Lothar's.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("St�be, Pfeifen, Bolzen, bei Lothar werdet's ihr finden, solang es ist aus Holzen.");
talkEntry:addResponse("Seid ihr Schreiner? Lasst Euch sagen, bei mir hat es Euch an den rechten Ort verschlagen.");
talkEntry:addResponse("Ob gro�er Elf, ob Halbling ganz klein, bei Lothar kauft jeder sein H�lzchen ein.");
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
talkEntry:addResponse("Ich liebe die Poesie. All zu gern lass ich mich davon bet�ren. Liebt ihr die sch�nen K�nste so sehr wie ich?");
talkEntry:addResponse("Meine Heimat liegt in Pfennigm�hle. Kennt Ihr meine Heimat?");
talkEntry:addResponse("Ich finde es im Allgemeinen sehr annehmlich, zusammen mit dem sch�nen Volk, Runewick zu bewohnen. Immerzu ungiebt uns alle, eine bet�rende und fantastische Magie, die ich nicht missen mag.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lothar");
talkEntry:addTrigger("Piero");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Hiho! What goods may I offer to you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lothar");
talkEntry:addTrigger("Piero");
talkEntry:addResponse("Hiho! Welche meiner G�ter verm�gen Euch zu begeistern?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Yes, very well.");
talkEntry:addResponse("Indeed, just what I wanted to say.");
talkEntry:addResponse("How marvellous, we have the same opinion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Ja, das ist mir auch Recht.");
talkEntry:addResponse("Bestimmt, das denke ich auch.");
talkEntry:addResponse("Wie fantastisch, wir sind einer Meinung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("If you think that's good...");
talkEntry:addResponse("I ment it the way I said it.");
talkEntry:addResponse("No? Maybe we should discuss that at Elara's shrine.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("So denn ihr das f�r weise haltet.");
talkEntry:addResponse("Das meine ich wie ich es sagte.");
talkEntry:addResponse("Nein? Vielleicht sollten wir uns an Elaras Altar beratschlagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("Oldra's blessing for your gardens.");
talkEntry:addResponse("Elara's wisdom may guide you.");
talkEntry:addResponse("Hiho, that's funny!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20));
talkEntry:addResponse("Oldras Segen �ber Eure G�rten.");
talkEntry:addResponse("Elaras Weisheit sei mit Euch.");
talkEntry:addResponse("Hiho, das gef�llt mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me greift sich mit beiden H�nden in die wuscheligen braunen Haare und l�chelt.", "#me combs his tousled hairs with his hands, smiling.");
talkingNPC:addCycleText("#me poliert mit einem �ligen Laken einen gefinkelt verzierten Gehstock.", "#me polishes a decorated walking cane with an oiled rag.");
talkingNPC:addCycleText("#me klimpert mit seinen spr�den Fingern auf einer zierlichen Laute.", "ENGLISH.");
talkingNPC:addCycleText("#me hohlt tief Luft und seufzt leise: 'H-hm! Tannenholz!'", "#me breathes deeply and sighs: 'Ahh, fir wood!'.");
talkingNPC:addCycleText("#me l�chelt sanft und sein faltiges Gesicht wirkt dabei wie eine gro�e Rosine.", "ENGLISH.");
talkingNPC:addCycleText("#me streicht mit der Hand �ber verschiedene h�lzerne Dinge welche ihn umgeben.", "ENGLISH.");
talkingNPC:addCycleText("Rosen sind Rot, Veilchen sind Blau, ich mag den Himmel, und meine Frau. - Hab mein Holz, was braucht ein Halbling mehr? Darauf bin ich stolz.", "ENGLISH.");
talkingNPC:addCycleText("#me ver�ngt mit einem L�cheln die Augen und mustert seine Umgebung.", "#me blinks with one eye and inspects his surrounding.");
talkingNPC:addCycleText("#me lehnt sich zufrieden l�chelnd zur�ck.", "#me leans back, smiling contently.");
talkingNPC:addCycleText("#me steckt seine Hand in die Tasche neben dem Stuhl und zieht ein Br�tchen heraus. Dann beginnt er daran zu knabbern.", "ENGLISH.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Lothar Piero der Holzh�ndler.", "This NPC is Lothar Piero the timber merchant.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 365);
mainNPC:setEquipment(11, 195);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 459);
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