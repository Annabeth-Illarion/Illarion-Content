--------------------------------------------------------------------------------
-- NPC Name: Lothar Piero                                                None --
-- NPC Job:  trader                                                           --
--                                                                            --
-- NPC Race: halfling                   NPC Position:  896, 816, 1            --
-- NPC Sex:  male                       NPC Direction: east                   --
--                                                                            --
-- Author:   not set                                                          --
--                                                                            --
-- Last parsing: September 12, 2010                      easyNPC Parser v1.01 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (2, 896, 816, 1, 2, 'Lothar Piero', 'npc.lothar_piero', 0, 0, 0, 255, 255, 255, 255, 255, 255);
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
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is <Insert Name> the <insert profession/function>. Keyphrases: TRIGGER1, TRIGGER2, TRIGGER3, TRIGGER4, TRIGGER5."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist <Name hier> der <Beruf/Funktion>. Schl�sselw�rter: TRIGGER1, TRIGGER2, TRIGGER3, TRIGGER4, TRIGGER5."));
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
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
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
talkEntry:addTrigger("Greebas");
talkEntry:addTrigger("Greebs");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
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
talkEntry:addResponse("Das ist durchwegs salopp gesagt, aber ich bin nicht kleinlich. Seid gegr��t.");
talkEntry:addResponse("Ehre den G�ttern, wollt ihr Bretter kaufen?");
talkEntry:addResponse("Guten Tag. Im Namen aller H�ndler will ich Euch willkommen hei�en.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Auf Wiedersehen. M�ge Oldra Eure G�rten und F�lder h�ten.");
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
talkEntry:addTrigger("See you");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addTrigger("See you");
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
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Ausgezeichnet. Ja-ja, Oldra blickt wohlwollend auf mich herab.");
talkEntry:addResponse("Auch wenn hier und dort eine Wolke die Sonne verdecken mag, ich weis das sie trozdem jeden neuen Tag am Himmel stehen wird.");
talkEntry:addResponse("So Finster Euch manche Nacht erscheinen kann, die Sonne wird erwachen und alles Finstere vertreiben.");
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
talkEntry:addResponse("Ich hei�e Lothar Piero. Seid mir Wilkommen am Markt von Runewick.");
talkEntry:addResponse("Ich bin Lothar Piero und handle mit allerlei h�lzernen Gut.");
talkEntry:addResponse("Bretter, Schilde, B�gen, was wollt Ihr wohl m�gen? Ich bin Lothar Piero und handle mit Holz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("St�be, Pfeifen, Bolzen, bei Lothar werdet's ihr finden, solang es ist aus Holzen.");
talkEntry:addResponse("Seid ihr Schreiner? Lasst Euch sagen, bei mir, hat es Euch an den rechten Ort verschlagen.");
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
talkEntry:addTrigger("profession");
talkEntry:addResponse("ANSWER1 wood is good");
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
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("ANSWER1");
talkEntry:addResponse("ANSWER2");
talkEntry:addResponse("ANSWER3");
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
talkEntry:addTrigger("Gobaith");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ANSWER1");
talkEntry:addResponse("ANSWER2");
talkEntry:addResponse("ANSWER3");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Gobaith, ist das nicht eine dieser winzigen Inseln im Splittermeer?");
talkEntry:addResponse("Gobaith ist viel zu unwichtig, um die Aufmerksamkeit Runewicks Wert zu sein.");
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
talkEntry:addResponse("Sehr erfreut - sehr erfreut. Sch�n Euch kennen zu lernen.");
talkEntry:addResponse("So, so? Das werde ich mir gut merken.");
talkEntry:addResponse("Seid gegr��t, und lasst Euch sagen, Lothar hat noch keinen Kunden �bers Ohr geschlagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lothar");
talkEntry:addTrigger("Piero");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
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
talkEntry:addTrigger("Pennymill");
talkEntry:addResponse("ENGLISH1");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Pfennigm�hle");
talkEntry:addResponse("In Pfennigm�hle, ich will es Euch erz�hlen - kontrolliert die Miliz alle Tavernen und Gasth�user des Hafenviertels. So braucht sich kein Halbling, niemals vor Unruhestiftern und Grobianen f�rchten.");
talkEntry:addResponse("Die Stra�en in Pfennigm�hle werden stehts mit dicken �lkerzen beleuchtet. Wenn man Abends nach Hause geht, gibt es kein schattiges Pl�tzchen wo sich Unholde verkreichen k�nnten.");
talkEntry:addResponse("Nachts sind die Tore innerhalb von Pfennigm�hle geschlossen. Man kann sich so nur innerhalb der verschiedenen Viertel bewegen. So ist alles viel Sicherer und kontrollierbar.");
talkEntry:addResponse("Ich m�chte nicht prahlen, doch in Pfennigm�hle gibt es die saftigsten und riesigsten Melonen, K�rbisse und Tomaten, Illarions!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Poesie");
talkEntry:addResponse("Poesie, Poesie. Das Sch�nste was ein Schreiner zu schaffen vermag, ist zweifelsfrei eine Harfe. Sehe ich einem Meister beim schnitzen zu, glaube ich oft eine Melodie zu h�ren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("poetry");
talkEntry:addResponse("ENGLISH1");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("trader");
talkEntry:addTrigger("merchant");
talkEntry:addTrigger("collegue");
talkEntry:addTrigger("vendor");
talkEntry:addTrigger("market");
talkEntry:addResponse("OTHER NPCs1");
talkEntry:addResponse("OTHER NPCs2");
talkEntry:addResponse("OTHER NPCs3");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("h�ndler");
talkEntry:addTrigger("kollege");
talkEntry:addTrigger("h�ker");
talkEntry:addTrigger("markt");
talkEntry:addResponse("Wir H�ndler Runewicks geben uns M�he, ein m�glichst gro�es Angebot an Wahren und G�ter f�r die Stadt bereitzustellen.");
talkEntry:addResponse("Der Erzmagier pers�nlich hat uns H�ndlern aufgetragen, ausschlie�lich die n�tigsten G�ter zu importieren. Alles andere sind G�ter aus Runewick.");
talkEntry:addResponse("Hiho! Die H�ndler Runewicks stehen zusammen. Und der Erzmagier hinter uns.");
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
talkEntry:addResponse("Niemals w�rde ich unserem Erzmagier widersprechen. Ist doch jedem hier bewusst, das sein Plan niemals fehlt.");
talkEntry:addResponse("Erzmagier Morgan, ihm geb�hrt mein Vertrauen und all meine Hoffnungen. Die Zukunft Runewicks liegt in seinen f�higen H�nden!");
talkEntry:addResponse("Der Erzmagier ist der Wei�este von uns. Wie k�nnte ich jemals an seinen Worten zweifeln?");
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
talkEntry:addResponse("Elara m�ge Runewick bewahren. Die vier T�rme sollen den G�ttern schmeicheln und benachbraten St�dten unsere Macht demonstrieren.");
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
talkEntry:addResponse("Ein wahrer Dickkopf, habe ich mir sagen lassen. Ihm ist nur daran gelegen Gold zu h�ufen. Es ist nur eine Frage der Zeit bis einer Seiner Konkruenten das Ruder Galmairs aus seinen H�nden rei�t.");
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
talkEntry:addResponse("Wir H�ndler haben ein Sprichwort: Traue Galmair nicht, dort sch�tzt man nur das Gold, von Gewicht. Doch willst du Weisheit tragen, sollt Ihr die B�cher befragen.");
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
talkEntry:addResponse("K�nigin Rosaline herrscht aufgrund der G�tter Gnade. Malachin und Zhambra, doch sie schneken der Weisheit keinen Wert. Ist es Weise eine Stadt mit Schwert und Schlachtenehre zu regieren?");
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
talkEntry:addResponse("Cadomyr ist eine Sandgrube, voller Barbaren die zu viel Sonne bekommen haben. Wer im Zweikampf obliegt, erf�hrt Ehre und Recht. Der Verlierer lebt in Schande.");
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
talkEntry:addResponse("Albar ist ein schrecklicher Ort. Seid froh, das ihr Euren Weg nach Runewick gefunden habt.");
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
talkEntry:addResponse("Ich h�rte  Valerio Guilianni sei einst aus Gynk nach Galmair gekommen. Mit sich brachte er, alle vermeintlichen Tugenden aus seinem absch�ulichen Land. Denn mit dem Don ist auch die Stadt in den bergen verkommen.");
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
talkEntry:addResponse("Elara, leite Erzmagier Morgan, damit er die Wiesesten Entscheidungen treffen mag.");
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
talkEntry:addResponse("Es tut mir Leid, ich habe keine Arbeit f�r Euch.");
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
talkEntry:addResponse("Es tut mir Leid, ich habe keine Arbeit f�r Euch.");
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
talkEntry:addResponse("Ja, das ist mir auch Recht.");
talkEntry:addResponse("Bestimmt, das denke ich auch.");
talkEntry:addResponse("Wie fantastisch, wir sind einer Meinung.");
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
talkEntry:addResponse("Sodar ihr das f�r Weise haltet.");
talkEntry:addResponse("Das meine ich wie ich es sagte.");
talkEntry:addResponse("Nein? Vielleicht sollten wir uns an Elaras Altar beratschlagen.");
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
talkEntry:addResponse("Oldras segen, �ber Eure G�rten.");
talkEntry:addResponse("Elaras Weisheit sei mit Euch.");
talkEntry:addResponse("Hiho, das gef�llt mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me greift sich mit beiden H�nden in die wuscheligen braunen Haare und l�chelt.", "ENGLISH.");
talkingNPC:addCycleText("#me poliert mit einem �ligen Laken einen gefinkelt verzeirten Gehstock.", "ENGLISH.");
talkingNPC:addCycleText("#me klimpert mit seinen spr�den Fingern auf einer zierlichen Laute.", "ENGLISH.");
talkingNPC:addCycleText("#me hohlt tief Luft und seufzt liese. 'H-hm! Tannenh�lz!'", "ENGLISH.");
talkingNPC:addCycleText("#me l�chelt sanft und sein faltiges Gesicht wirkt dabei wie eine gro�e Rosine.", "ENGLISH.");
talkingNPC:addCycleText("#me streicht mit der Hand �ber verschiedene h�lzerne Dinge welche ihn umgeben.", "ENGLISH.");
talkingNPC:addCycleText("Rosen sind Rot, Veilchen sind Blau, ich mag den Himmel, und meine Frau. - Hab mein Holz, was braucht ein Halbling mehr? Darauf bin ich stolz.", "ENGLISH.");
talkingNPC:addCycleText("#me ver�ngt mit einem L�cheln die Augen und mustert seine Umgebung.", "ENGLISH.");
talkingNPC:addCycleText("#me lehnt sich zufrieden l�chelnd zur�ck.", "ENGLISH.");
talkingNPC:addCycleText("#me steckt seine Hand in die Tasche neben dem Stuhl und zieht ein Br�tchen heraus. Dann beginnt er daran zu knabbern.", "ENGLISH.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein beliebter Halbling mit faltigem Gesicht und braunen wuscheligen Haaren.", "ENGLISH");
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