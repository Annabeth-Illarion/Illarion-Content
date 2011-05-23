--------------------------------------------------------------------------------
-- NPC Name: Elvaine Morgan                                          Runewick --
-- NPC Job:  Archmage                                                         --
--                                                                            --
-- NPC Race: elf                        NPC Position:  898, 775, 2            --
-- NPC Sex:  male                       NPC Direction: east                   --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                                            --
-- Last parsing: February 07, 2011                       easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (3, 898, 775, 2, 2, 'Elvaine Morgan', 'npc.elvaine_morgan', 0, 1, 0, 209, 197, 199, 250, 239, 237);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("npc.elvaine_morgan", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Archmage Elvaine Morgan the ruler of Runewick. Keyphrases: Runewick, quest, gods, tower, magic."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Erzmagier Elvaine Morgan, der Herrscher �ber Runewick. Schl�sselw�rter: Runewick, Quest, G�tter, T�rme, Magie."));
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
talkEntry:addResponse("ENGLISH1");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
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
talkEntry:addResponse("Elara sei mit Euch. Habt ihr ein Anliegen das Ihr vortragen wollt?");
talkEntry:addResponse("Seid gegr��t. Welches Anliegen f�hrt Euch zu mir?");
talkEntry:addResponse("Guten Tag. Wozu, wollt Ihr mit mir sprechen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
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
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Elara sei mit Euch. Habt ihr ein Anliegen das Ihr vortragen wollt?");
talkEntry:addResponse("Seid gegr��t. Welches Anliegen f�hrt Euch zu mir?");
talkEntry:addResponse("Guten Tag. Wozu, wollt Ihr mit mir sprechen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
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
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Gehabt Euch wohl. Ich hoffe, Ihr befandet diese Unterhaltung f�r zufrieden stellend.");
talkEntry:addResponse("Elara geleite Euch auf Euren Weg. M�ge er von Weisheit erleuchtet sein.");
talkEntry:addResponse("Bis bald, denn gewiss haben die G�tter unsere Schicksale miteinander verwoben. - Auch wenn es nur ein geringer und kleiner Faden ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
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
talkEntry:addResponse("Gehabt Euch wohl. Ich hoffe, Ihr befandet diese Unterhaltung f�r zufrieden stellend.");
talkEntry:addResponse("Elara geleite Euch auf Euren Weg. M�ge er von Weisheit erleuchtet sein.");
talkEntry:addResponse("Bis bald, denn gewiss haben die G�tter unsere Schicksale miteinander verwoben. - Auch wenn es nur ein geringer und kleiner Faden ist.");
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
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Im Gro�en und Ganzen gesehen, ist Eure Frage sehr h�flich aber nicht besonders wichtig.");
talkEntry:addResponse("Ich freue mich zu sehen, das ihr Euch um mein Wohlergehen sorgt. Dennoch m�chte ich Euch versichern, es gibt nur wenige Probleme die ein Mann meiner F�higkeiten nicht zu �berwinden vermag.");
talkEntry:addResponse("#me breitet in einer dramatischen Geste die Arme aus. 'Runewick ist mein Kind und es bereitet mir Sorge, so wie alle Kinder ihren Eltern Sorgen bereiten.'");
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
talkEntry:addResponse("Mein Name ist so alt wie die Sagen aus vergangenen Zeiten und in manchen wird er wohl auch genannt werden. 'Elvaine Morgan', Gr�nder und Herr dieser Stadt.");
talkEntry:addResponse("Morgan... Elvaine Morgen. Erzmagier der vier T�rme von Runewick. Wor�ber wollt Ihr mit mir sprechen?");
talkEntry:addResponse("Ich bin Erzmagier Morgan. - Ich hoffe Euer Anliegen ist es tats�chlich Wert beredet zu werden?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("message");
talkEntry:addTrigger("news");
talkEntry:addTrigger("letter");
talkEntry:addTrigger("scroll");
talkEntry:addTrigger("parchment");
talkEntry:addTrigger("despatch");
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest status] Delayed Mail V: You deliver the message from Hector Valerion to Archmage Elvaine Morgan."));
talkEntry:addResponse("#me opens the seal of the despatch and reads it: 'Interesting, Rosaline always surprises me. I guess I will decline, though.'");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("nachricht");
talkEntry:addTrigger("brief");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Schriftrolle");
talkEntry:addTrigger("Pergament");
talkEntry:addTrigger("depesche");
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Queststatus] Sp�te Post V: Du �berbringst Erzmagier Elvaine Morgan die Nachricht von Hector Valerion."));
talkEntry:addResponse("#me �ffnet das Siegel der Depesche und lie�t sie: 'Interessant, Rosaline �berrascht mich ein ums andere mal. Ich muss aber wohl ablehnen.'");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hector");
talkEntry:addTrigger("Valerion");
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest status] Delayed Mail V: You deliver the message from Hector Valerion to Archmage Elvaine Morgan."));
talkEntry:addResponse("#me opens the seal of the despatch and reads it: 'Interesting, Rosaline always surprises me. I guess I will decline, though.'");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hector");
talkEntry:addTrigger("Valerion");
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(108, "=", 12));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Queststatus] Sp�te Post V: Du �berbringst Erzmagier Elvaine Morgan die Nachricht von Hector Valerion."));
talkEntry:addResponse("#me �ffnet das Siegel der Depesche und lie�t sie: 'Interessant, Rosaline �berrascht mich ein ums andere mal. Ich muss aber wohl ablehnen.'");
talkEntry:addConsequence(npc.base.consequence.quest.quest(108, "=", 13));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich bedaure, zur Zeit m�chte ich keine meiner Aufgaben Euch anvertrauen.");
talkEntry:addResponse("Gewiss muss viel erledigt werden, aber an Euch werde ich im Moment nichts delegieren.");
talkEntry:addResponse("Selbstverst�ndlich habe ich eine Reihe an Aufgaben zu vergeben, aber zweifellos w�rdet Ihr an jeder einzellnen scheitern. Also muss ich mich pers�nlich damit befassen.");
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
talkEntry:addResponse("Ich bedaure, zur Zeit m�chte ich keine meiner Aufgaben Euch anvertrauen.");
talkEntry:addResponse("Gewiss muss viel erledigt werden, aber an Euch werde ich im Moment nichts delegieren.");
talkEntry:addResponse("Selbstverst�ndlich habe ich eine Reihe an Aufgaben zu vergeben, aber zweifellos w�rdet Ihr an jeder einzellnen scheitern. Also muss ich mich pers�nlich damit befassen.");
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
talkEntry:addResponse("Ich bin der Erzmagier. Also obliegt mir die Verantwortung �ber die T�rme Runewicks und deren Wirken. Nicht mehr, aber auch nicht weniger.");
talkEntry:addResponse("Es ist meine selbst auferlegte Pflicht, Runwick mit meinem bestem Rat und der einen oder anderen Tat zur Seite zu stehen.");
talkEntry:addResponse("Ich bin der Erzmagier hier, demnach sehr sehr besch�ftigt. Am Besten lasst ihr Euch das von einem Novizen erkl�ren.");
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
talkEntry:addResponse("Ich bin der Erzmagier. Also obliegt mir die Verantwortung �ber die T�rme Runewicks und deren Wirken. Nicht mehr, aber auch nicht weniger.");
talkEntry:addResponse("Es ist meine selbst auferlegte Pflicht, Runwick mit meinem bestem Rat und der einen oder anderen Tat zur Seite zu stehen.");
talkEntry:addResponse("Ich bin der Erzmagier hier, demnach sehr sehr besch�ftigt. Am Besten lasst ihr Euch das von einem Novizen erkl�ren.");
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
talkEntry:addResponse("In der Tat ist mir Gobaith nicht unbekannt. Aber lasst uns keine Worte dar�ber verlieren, denn sie sind wohl kaum von Wert.");
talkEntry:addResponse("Nat�rlich wei� ich von Gobaith. Eine kleinere Inselgruppe, weit entfert vom Festland. Aber sicher versteht ihr, dass es kaum von Interesse f�r mich ist.");
talkEntry:addResponse("Ich lie� mir sagen es gibt Leute hier, die einst auf Gobaith lebten. Ihr solltet sie suchen und befragen, wenn ihr so bem�ht seid mehr zu erfahren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("#me nickt etwas steif. 'Sehr erfreut. Wie kann ich Euch helfen?'");
talkEntry:addResponse("Ausgezeichnet. Ich dachte mir bereits das ihr Euch vorstellen wolltet.");
talkEntry:addResponse("#me schmunzelt: 'Das wei� ich nat�rlich, schlie�lich bin ich hier der Erzmagier.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("holy");
talkEntry:addTrigger("ancestors");
talkEntry:addTrigger("path");
talkEntry:addTrigger("seeker");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tower");
talkEntry:addTrigger("four");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mage");
talkEntry:addTrigger("magic");
talkEntry:addTrigger("wizard");
talkEntry:addTrigger("theurgy");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lor Angur");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
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
talkEntry:addResponse("Dies ist Runewick. Jeder der vier T�rme steht f�r ein Element. Erde. Wasser. Feuer. Luft. Hier ist die Weisheit der Leute Gut.");
talkEntry:addResponse("Runewick ist nicht nur eine Stadt, m�sst Ihr wissen. Runewick's Name steht f�r Weisheit und die Kraft des Geistes.");
talkEntry:addResponse("Ich danke Elara jeden Tag f�r die starke geistige Kraft die sie den B�rgern der vier T�rme verleiht. Denn die Weisheit selbst ist unser h�chstes Gut.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lor Angur");
talkEntry:addResponse("Ja, ihr habt Euch wohl bereits umgeh�rt, nicht wahr? Ich zog einst aus Lor Angur hier her und legte den Grundstein der vier T�rme.");
talkEntry:addResponse("In der Tat, vor langer Zeit lebte ich in Lor Angur. Aber diese Zeit ist fern und es gibt wenig Gr�nde meine Zeit damit zu vertun, dar�ber zu sinnieren.");
talkEntry:addResponse("Einst lebte ich in Lor Angur, ihr seid gut unterichtet. Aber es liegt mir fern mich mit Euch dar�ber zu unterhalten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Magie");
talkEntry:addTrigger("zauber");
talkEntry:addResponse("Nun, Runewick ist durchwirkt von Magie und viele Gelehrte meinen sie k�nnten das Prickeln in den Fingerspitzen f�hlen. *zwinkert*");
talkEntry:addResponse("Magie und Zauberei, darauf hat sich Runewick seit je her besonnen. Nun schlie�lich leitet nicht umsonst ein Erzmagier das Geschick der vier T�rme.");
talkEntry:addResponse("Magie ist hier in den T�rmen Runewicks allgegenw�rtig. Fasst nicht die falschen Dinge an, oder es mag sein, dass Ihr Euch eines Tages in einen Frosch verwandelt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("turm");
talkEntry:addTrigger("t�rme");
talkEntry:addTrigger("vier");
talkEntry:addResponse("Die vier T�rme Runewicks. Der Turm der Erde. Der Turm des Wassers. Der Turm des Feuers und der Turm der L�fte. Gemeinsam bilden sie eine m�chtige arkane Struktur und sind au�erdem auch noch sehr h�bsch anzusehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("heilig");
talkEntry:addTrigger("Urahnen");
talkEntry:addTrigger("suchenden");
talkEntry:addTrigger("pfad");
talkEntry:addResponse("Der traditionelle Glaube der Elfengemeinschaft. - Der Pfad der Suchenden.");
talkEntry:addResponse("Durch meditationsbedingter geistiger Klarheit und einem Leben das �ber viele Lebensspannen der Menschen hinaus geht sehen wir Elfen die Dinge und Geschehnisse oft aus einer anderen Sichtwei�e.");
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
talkEntry:addResponse("Es macht keinen Sinn vorzugeben ich h�tte keine Differenzen mit Valerio, aber n�heres geht Euch jetzt wirklich nicht's an.");
talkEntry:addResponse("Nun... ich denke, wenn ihr von diesen Dingen wissen solltet w�sstet Ihr es bereits. Also bin ich nicht bereit Ausk�nfte hier�ber zu verteilen.");
talkEntry:addResponse("Sicherlich seid Ihr Euch im klaren dar�ber, dass meine Meinung �ber Don Guilianni eine Sache ist, die ausschlie�lich mich und Don Guilianni selbst betrifft.");
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
talkEntry:addResponse("Das Metall und die Kohlen in den B�den Galmairs n�hren die Habgier seiner B�rger. Doch wenn die Minen ersch�pft sind wird man erkennen m�ssen, dass Weisheit das einzige erstrebenswerte Gut ist.");
talkEntry:addResponse("Galmair trachtet seit j�h her nach Wohlstand und Reichtum. Vernunft und Gem��igtheit sind ihnen fremd. Z�gellosigkeit und gierige Entscheidungen werden diese Stadt einmal zu Grunde richten.");
talkEntry:addResponse("Ich halte die B�rger Galmairs keinesweges f�r besinnunglo�e Leichtgeistige. Doch ihre Ziele und Pl�ne die stehts von Gier dominiert werden, sind nur wenig undurchschaubar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("K�nigin Rosaline, nun sie ist... eine Sphinx ohne Geheimnisse. Dabei ist es erstaunlich wie wenig diese Blutslinie aus den Fehlern ihrer Vorfahren gelernt hat.");
talkEntry:addResponse("Die kurzlebigkeit der Menschen mag ihre Welt beschr�nken. Allerdings finde ich es doch immer wieder erstaunlich wozu sie denoch f�hig sind.");
talkEntry:addResponse("Nun, ich errinere mich noch gut an Rosalines Gro�vater. Ein bemerkenswerter Mensch in mancherlei Hinsicht. So wie sein Sohn. Und nun, soll sich zeigen ob dessen Tochter ein �hnliches Schicksal erwartet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
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
talkEntry:addTrigger("edwards");
talkEntry:addResponse("K�nigin Rosaline, nun sie ist... eine Sphinx ohne Geheimnisse. Dabei ist es erstaunlich wie wenig diese Blutslinie aus den Fehlern ihrer Vorfahren gelernt hat.");
talkEntry:addResponse("Die kurzlebigkeit der Menschen mag ihre Welt beschr�nken. Allerdings finde ich es doch immer wieder erstaunlich wozu sie denoch f�hig sind.");
talkEntry:addResponse("Nun, ich errinere mich noch gut an Rosalines Gro�vater. Ein bemerkenswerter Mensch in mancherlei Hinsicht. So wie sein Sohn. Und nun, soll sich zeigen ob dessen Tochter ein �hnliches Schicksal erwartet.");
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
talkEntry:addResponse("Wenn ein Feind um jemandens ehrenhaften Kodex wei�, mag sich das f�r den dem die Ehre ein g�ttliches Gut ist, eventuell als gef�hrliches Hinderniss erweisen.");
talkEntry:addResponse("Cadomyrs Kodex der Ehre, macht es langsam und tr�ge - vorhersehbar. Stets, k�nnte ein kluger Mann die Pl�ne der Stadt ersinnen. Ver�nderung ereignen sich nur langsam, wenn sie nicht so und so versickern.");
talkEntry:addResponse("Cadomyr mag standhafte Streiter haben. Doch viel zu nah liegt der Unterschied zwischen Tapferkeit und Torheit. Der Adel Cadomyrs spaltet sich an der Weiblichkeit von Rosaline Edwards und Uneinigkeit schw�cht die Stadt.");
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
talkEntry:addResponse("Albar stand seit jeher gegen mich und meine �berzeugungen. Schon damals, als ich noch ein Magier Lor Angurs war.");
talkEntry:addResponse("Alles woran ich Glaube und all meine �berzeugungen scheinen in Albar mit F��en getreten zu werden. Denkt Ihr nicht?");
talkEntry:addResponse("Albar regiert gegen sein eigenes Volk. Nun der jetzige Hochk�nig scheint weniger strikt zu sein, aber Menschen sind Wankelm�tit und nichteinmal ich vermag zu sagen wie er sich entscheiden mag.");
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
talkEntry:addResponse("�ber ein heterogenes Volk wie das Gynks ist es schwer eine pregnante Aussage zu machen. Doch gerade aus diesem Grund bin ich der Meinung das in Gynk eine organisiertere Regierung nicht von Nachteil w�hre.");
talkEntry:addResponse("Auf Ersten Blick mag einem Gynk als chaotisches Unsystem erscheinen. N�her betrachtet - komplex. Ausf�hrlich studiert - als ein sich slebst frei entwickelndes und unreguliertes System.");
talkEntry:addResponse("Die Unvernunft und Triebhaftigkeit welche in Gynk �berwiegend vorherrscht, ist mir zu wider. Unaustehlich ist mir der Gedanke, dort zu leben.");
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
talkEntry:addResponse("Beinahe will ich so weit gehen und Salkamar als das erleuchtete Reich der Menschen zu bezeichnen. Es d�rfte Euch nicht �berraschen das Runewick einige Beziehungen zu jenen Landen pflegt.");
talkEntry:addResponse("Der Lichtblick unter den Reichen der Menschen. Die Werte Salkamars spiegeln zu vielen Teilen jene wieder die ich mir seit vielen Jarhunderten zu eigen gemacht habe.");
talkEntry:addResponse("Habt ihr die M�glichkeit eines Tages in die Stadt Salkamar selbst zu reisen, besucht die hie�ige Bibliothek. Sie ist weltbekannt und beherbergt ungez�hlte Schr�nke mit wertvollen B�chern.");
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
talkEntry:addResponse("Die G�tter der vier T�rme lassen sich schnell benennen. Elara schenkt uns stets Weisheit und so mancher findet Erleuchtung bei Siranis Altaren. Aber nat�rlich geben viele Halblinge Oldra den Vorzug.");
talkEntry:addResponse("Vielleicht werdet Ihr bemerken das die �lteren unter uns Elfen die jungen G�tter nicht als solche bezeichnen. Viel eher sind sie unsereins Heilige Urahnen.");
talkEntry:addResponse("Der Pfad der Suchenden ist ein Weg der Meditation, Spiritualit�t, geistiger Klarheit und Geduld.");
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
talkEntry:addResponse("Adron, fast schon die Hausgottheit aller Tavernen und Gastst�tten. Vor allem junge Leute lassen sich von seiner Art begeistern.");
talkEntry:addResponse("Viele junge Leute begeistern sich f�r Bragon und auch einige Barden. Aber viele �ndern ihre Meinung und ihren Glauben als Erwachsene.");
talkEntry:addResponse("Nun fragt euch selbst, liegt im Wein die Warheit?");
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
talkEntry:addResponse("Man sagt Br�gon sei der erste der G�tter gewesen die Illarion verlassen haben. Aber ovn zeit zu Zeit soll er dennoch unerkannt unter den Sterblichen wandeln.");
talkEntry:addResponse("Br�gon ist der Gott des Feuers. Manche Zwerge und Orks richten ihr Leben ihm zur Ehre. Dabei versuchen sie ihrem Gott in St�rke und Weisheit nach zu eifern.");
talkEntry:addResponse("Als Br�gon Illarion verlies �bergab er Malach�n die Macht �ber seine Anh�nger. Aber das ist mehr als drei Lebensspannen her und nun m�get ihr sodar es Euch bestimmt ist, wieder auf Anh�nger Br�gons begegnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addTrigger("Cheerga");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addTrigger("Cheerga");
talkEntry:addResponse("Einst schrieb man ihren Namen 'Cheerga', doch die Zeit vergeht und Illarion wandelt sich. Sie ist die G�ttin der Nachwelten und Toten.");
talkEntry:addResponse("Cherga hat nicht viele Anh�nger. Sie ist jene, welche die Toten begleitet und in ihre vorbestimmten Reiche f�hrt. Manche beten zu ihr, um den ruhelosen Geistern den ewigen Frieden zu bringen.");
talkEntry:addResponse("Viele Nekromanten sind Chergas Anh�nger und auch einige Wahrsager. Cherga selbst k�mmert es nicht, was die Sterblichen mit dem von ihr verliehenen Wissen anfangen, doch ihr Beistand hat einen hohen Preis...");
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
talkEntry:addResponse("Elara ist die G�ttin des Wissens und der Weisheit. Viele der Scholare innerhalb der vier T�rme beten zu ihr um zu lernen und um Wissen zu erlangen.");
talkEntry:addResponse("Die drei gro�en Fragen: Den Grund f�r die Gier, den Grund f�r Gewalt und den Grund f�r das Leiden. Es hei�t Gelehrte die der Antwort nahe kommen sind sehr friedvolle, rechtsschaffende und nachdenkliche Personen.");
talkEntry:addResponse("Wir Anh�nger Elaras glauben an die Macht der Weisheit. Alles folgt einem gro�en Plan und die g�ttin hilft uns all dies zu verstehen und zu lernen.");
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
talkEntry:addResponse("Eldan ist der Gott des Geistes. Seine Anh�nger sind meist Einsiedler oder Leute, die nicht nein zu einem Schluck Wein und einem langen, philosophischen Gespr�ch sagen.");
talkEntry:addResponse("Eldan einer der f�nf '�lteren' G�tter. Nur wenig ist �ber deren Ursprung in Erfahrung zu bringen. Sie selbst erz�hlen nur wenig und die mei�ten haben Illarion verlassen. Niemand mag sagen an welchen Tagen sie dennoch hier wandern.");
talkEntry:addResponse("Eldan hat sich nie pers�nlich um die Sterblichen gek�mmert und nur wenige beten zu ihm. Alle behaupten, ihn schon einmal pers�nlich getroffenen zu haben, doch in Wirklichkeit haben sie sich einer Illusion hingegeben.");
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
talkEntry:addResponse("Findaris Anh�nger waren immer wenige, da sie nicht viel Wert auf Tempel oder die Anbetung legt.");
talkEntry:addResponse("Ich lie� mir sagen manche Wahrsager und wandernde Prophetendie es zu Bekanntschaft brachten wurden von Findari ausgew�hlt.");
talkEntry:addResponse("Findari eine der f�nf '�lteren' G�ttheiten. Nur wenig ist �ber deren Ursprung in Erfahrung zu bringen. Sie selbst erz�hlen nur wenig und die mei�ten haben Illarion verlassen. Niemand mag sagen an welchen Tagen sie dennoch hier wandern.");
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
talkEntry:addResponse("Irmorom ist der Gott des Handwerks und des Handels. Sehr gespr�chig und gesellig, so wie die Mannen dieser Z�nfte.");
talkEntry:addResponse("Nicht nur Zwerge beten zu ihm. H�ndler, Handwerker im selben Ma�e. Doch strebt man stehts nach materiellen Wohlstand. - Im Leben wie dannach.");
talkEntry:addResponse("Mit Sicherheit werdet ihr hinter Galmairs Toren, eingeschlagen in den Berg einen Tempel Irmoroms finden.");
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
talkEntry:addResponse("Malach�n ist der Gott der Jagd. Und das Volk bittet ihn stets um Erfolg bei der Jagd.");
talkEntry:addResponse("Der Schutzpatron der Krieger und S�ldner. Oftmals h�rt man einen von ihnen Malach�n als den Schwarzen Wolf rufen, bevor ein schwerer Kampf ausbricht.");
talkEntry:addResponse("Viele folgen dem ehrenwerten Malach�n, Soldaten und Ritter beten zu ihm. Paladine und Kriegskleriker ziehen in seinen Namen aus um die d�monische Brut des Ungesagten zu bek�mpfen....");
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
talkEntry:addResponse("Die Weltordnung des Blutgottes ist gepr�gt von Gewalt und Schmerz. Er ist gewaltt�tig, m�chtig, blutr�stig und kriegsliebend.");
talkEntry:addResponse("Er ist der 'Blutgott' vieler wilder, blutr�nstiger Orkkriegsst�mme, die ihm zu Ehren Sterbliche opfern. Diese Altare sind blutgetr�nkte Zeugnisse seines Charakters und seine Anh�nger sind abgrundtief b�se Kreaturen.");
talkEntry:addResponse("Der Blutgott verf�gt �ber ungeahntes, verborgenes Wissen und hat eine eigene, sehr rauhe Art von Humor. Wenn Ihr geneigt seid das Humor zu nennen...");
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
talkEntry:addResponse("Intrigen, gemeine oder vermeintlich lustige Tricks sind Narg�ns Metier. Manchmal ist er hilfsbereit, manchmal zerst�rerisch, stets aber verursacht sein Verhalten gro�es Aufsehen.");
talkEntry:addResponse("Verr�ckte Propheten und Einsiedler, oder brabbelnde Idioten... dies sind diejenigen die Narg�n folgen. Gl�ckspieler... Verr�ckte - und so weiter.");
talkEntry:addResponse("Die Glaubensansichten von Narg�ns Anh�ngern sind v�llig uneinheitlich und verworren. Aber anders w�re es dem Gott des Chaos wohl nicht recht zu machen.");
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
talkEntry:addResponse("F�r eine gute Ernte oder f�r den Segen eines Neugeborenen. - Viele Halblinge beten zu Oldra, der G�ttin der Fruchtbarkeit und des Lebens.");
talkEntry:addResponse("Oldra verabscheut gierige und selbsts�chtige Leute. sViel mehr sch�tzt sie gutes Essen, liebt G�rten und Haustiere. Da wundert es nicht das viele Halblinge zu ihr beten.");
talkEntry:addResponse("Oldra - eine eher m�tterliche Gottheit. Und sehr weise. Alle Arten des Lebens liegen ihr am Herzen.");
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
talkEntry:addResponse("Ronagan ist der Schutzpatron all jener die im Schatten der menschlichen Gesellschaften leben. Diebe, Bettler, Dirnen... Landstreicher.");
talkEntry:addResponse("Ich kenne H�ndler die beten und opfern Ronagan Geld, um zu verhindern das sie ausgeraubt werden.");
talkEntry:addResponse("Auch wenn Ronagan so manche Obrikeit zum Narren h�lt, verabscheut er doch Vertrauensbruch oder Verrat im selben Ma�e wie staatliche Autorit�ten und Gesetze.");
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
talkEntry:addResponse("Oh, viele junge Frauen beten zu Sirani. Der Liebe wegen. - Und wegen anderer junger M�nner, versteht sich.");
talkEntry:addResponse("Die meisten Priester Siranis sind gute Heiler und glauben wie alle Ihre Anh�nger an ein Leben in Friede und Harmonie. In den Tempeln der G�ttin findet man stets Obdach.");
talkEntry:addResponse("Sirani mag rauschende Feste, Liebe, Spa� und das Leben selbst. Sie hasst die Missachtung von Frauen und kann sehr aufbrausend und w�tend werden, wenn ihnen nicht die n�tige Wertsch�tzung zuteil wird.");
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
talkEntry:addResponse("Tanora mag die unber�hrte Sch�nheit der Natur, deshalb ist sie auch die einzige der �ltern G�tter, welche nicht selten auf Illarion umherwandert.");
talkEntry:addResponse("Die Gesellschaft der Echsenmenschen wird sehr stark von den glauben an Tenora gepr�gt. Allerdings nennen sie Tanora, Zelphia.");
talkEntry:addResponse("Echsenmenschen, Fischer, Heiler, Seeleute. Das sind die Anh�nger Tanoras, der G�ttin des Wassers.");
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
talkEntry:addResponse("Als Ushara Illarion verlie�, ernannte sie Oldra zu ihrer Verteterin und so wird sie nun an Ihrer statt in neuen Tempeln verehrt.");
talkEntry:addResponse("Ushara, die Mutter - die Erde, auf der die vier T�rme Runewicks erbaut wurde. Wie mir selbst ist ihr die Verg�nglichkeit der Dinge besonders bewusst.");
talkEntry:addResponse("Ushara hat besonders wenige Anh�nger, die meisten sind weibliche alte Druiden oder Elfen. Und einige wenige von ihnen scheinen Ushara pers�nlich begegnet zu sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Zhambra der Brudergott. Freundschaft und Treue sind ihm das h�chste Gut. Die Ehre eines Mannes ist ihm teuer, niemals w�rde er hinterlistige Tricks gut hei�en.");
talkEntry:addResponse("Der Gott der Freundschaft und Treue - Zhambra. Mit sicherheit findet ihr einen seiner Tempel in Cadomyr.");
talkEntry:addResponse("Zhambras Anh�nger sind eher, nun - geradlinig. Ritter, H�flinge und Krieger. In der Schlacht ist die Freundschaft der Mitstreiter eine ungleich wertvolle Kraftquelle.");
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
talkEntry:addResponse("Bitte verzeiht, aber ich handle nicht mit Euch.");
talkEntry:addResponse("Eines Erzmagiers Gesch�fte sind, nun ja - Gesch�fte die nur f�r den Erzmagier von Revelanz sind.");
talkEntry:addResponse("Der Marktplatz befindet sich gleich vor den Portalen zur Stadt. Es sollte unm�glich sein daran vorbei zu laufen.");
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
talkEntry:addResponse("Die Zeichen, die ich bemerkte sind eindeutig und schon bald werden sie auch weithin zu sehen sein.");
talkEntry:addResponse("Nur der Narr ignoriert die unwahrscheinlichsten M�glichkeiten und versteift sich auf das was offensichtlich ist.");
talkEntry:addResponse("An manchen Tagen denke ich... - K�nnte das Menschenvolk Regenb�gen in einen K�fig sperren, w�rden sie es vermutlich tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Auf ein Wort?");
talkEntry:addResponse("Welches Anliegen f�hrt Euch zu mir?");
talkEntry:addResponse("Bitte fasst Euch kurz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
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
talkEntry:addResponse("Auf ein Wort?");
talkEntry:addResponse("Welches Anliegen f�hrt Euch zu mir?");
talkEntry:addResponse("Bitte fasst Euch kurz.");
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
talkEntry:addResponse("#me nickt sanft aber bestimmt.");
talkEntry:addResponse("War das alles?");
talkEntry:addResponse("Elaras Weisheit m�ge Euch erleuchten.");
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
talkEntry:addResponse("#me l�chelt ein wenig und schweigt.");
talkEntry:addResponse("Jene Dinge von denen einer glauben mag, er wolle sie, sind oft nicht die die einer braucht.");
talkEntry:addResponse("Warum nicht?");
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
talkEntry:addResponse("Wesshalb? Was ist der Grund daf�r?");
talkEntry:addResponse("Ich verstehe.");
talkEntry:addResponse("Wenn Ihr das auf diese Art ausdr�cken wollt...");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me's leuchtend graue Augen mustern achtsam die Umgebung.", "ENGLISH.");
talkingNPC:addCycleText("#me atmet langsam und leise aus, f�r einen Moment scheint er einem Gedanken nachzuh�ngen.", "ENGLISH.");
talkingNPC:addCycleText("#me streicht mit den Fingern �ber die Seiten seines Buches.", "ENGLISH.");
talkingNPC:addCycleText("#me's Augen �berfliegen einige Zeilen des Textes innerhalb seines Buches.", "ENGLISH.");
talkingNPC:addCycleText("#me f�hrt mit der Fingerspitze an eine bestimmte Stelle der Buchseiten und schl�gt diese auf.", "ENGLISH.");
talkingNPC:addCycleText("#me nickt sachte. Dann wirft er einen Blick zur Seite.", "ENGLISH.");
talkingNPC:addCycleText("#me greift sich kruz an den Kopf und seine Stirn legt sich in sanften Falten.", "ENGLISH.");
talkingNPC:addCycleText("#me reibt sich mit dem Zeigefigner an der Nase. Im n�chsten Moment schnippst er mit den Fingern und ruft 'Ich habs!'.", "ENGLISH.");
talkingNPC:addCycleText("#me's graue Augen scheinen f�r einen Moment hell auf zu leuchten.", "ENGLISH.");
talkingNPC:addCycleText("#me's l�chelt gutm�tig und f�r einen Augenblick ist ein merkw�rdiges Glitzern in seinen Pupillen zu sehen.", "ENGLISH.");
talkingNPC:addCycleText("#me dreht seinen Kopf ein wenig und f�r kurze Zeit scheinen seine Gedanken in der Ferne zu verweilen.", "ENGLISH.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(3);
mainNPC:addLanguage(10);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein galanter Elf, mit langem geflochtenen Haar und leuchtenden grauen Augen. Ihn umgibt eine Aura von Klarheit und Einsicht die jedem in seiner N�he mit zu rei�en scheint.  Sein Gesicht wirkt gelassen und gewandt erscheinen seine Bewegungen.", "translate!");
mainNPC:setUseMessage("Macht Euch doch keine M�he, ihr verletzt Euch noch selbst.", "TRANSLATE");
mainNPC:setConfusedMessage("#me schaut dich ausdruckslos an. 'Wie bitte?'", "#me looks at you motionless. 'Excuse me?'");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 807);
mainNPC:setEquipment(11, 558);
mainNPC:setEquipment(5, 209);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 823);
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
