--------------------------------------------------------------------------------
-- NPC Name: Zssarkes                                                    None --
-- NPC Job:  none                                                             --
--                                                                            --
-- NPC Race: lizardman                  NPC Position:  131, 585, 200          --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Author:   not set                                                          --
--                                                                            --
-- Last parsing: May 23, 2011                            easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (5, 131, 585, 200, 6, 'Zssarkes', 'npc.zssarkes', 0, 2, 5, 123, 62, 9, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.skill")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.consequence.skill")
require("npc.base.talk")
module("npc.zssarkes", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("help");
talkEntry:addResponse("[Game Help] This NPC is a palace guard, he might be able to teach you a thing or two. Keywords: Litios, training, fight");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hilfe");
talkEntry:addResponse("[Spielhilfe] Dieser NPC ist eine Palastwache und k�nnte dir vielleicht das ein oder andere beibringen. Schl�sselw�rter: Litios, Traning, Kampf");
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
talkEntry:addResponse("Greetingss ssstranger");
talkEntry:addResponse("Zsss.. Greetingss");
talkEntry:addResponse("Good day ssstranger");
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
talkEntry:addResponse("Gr�ssse Fremder");
talkEntry:addResponse("Zsss.. Gr�ssse");
talkEntry:addResponse("Guten Tag Fremder");
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
talkEntry:addResponse("Greetingss ssstranger");
talkEntry:addResponse("Zsss.. Greetingss");
talkEntry:addResponse("Good day ssstranger");
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
talkEntry:addResponse("Gr�ssse Fremder");
talkEntry:addResponse("Zsss.. Gr�ssse");
talkEntry:addResponse("Guten Tag Fremder");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("May the great motherss guide your waysss!");
talkEntry:addResponse("Zzelphia with you!");
talkEntry:addResponse("Farewellsss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("M�ge die grosssse Mutter euch auf euren Wegen besssch�tzen!");
talkEntry:addResponse("Zzelphia mit euch!");
talkEntry:addResponse("Auf baldsss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("May the great motherss guide your waysss!");
talkEntry:addResponse("Zzelphia with you!");
talkEntry:addResponse("Farewellsss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("M�ge die grosssse Mutter euch auf euren Wegen besssch�tzen!");
talkEntry:addResponse("Zzelphia mit euch!");
talkEntry:addResponse("Auf baldsss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Goodss, thankss you");
talkEntry:addResponse("I feelss well und you?");
talkEntry:addResponse("I do wellsss, thankss you");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Gut, dankess");
talkEntry:addResponse("I f�hless mich gutss und duss?");
talkEntry:addResponse("Mir gehtss gut, dankess");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Zzss.. I'm Zssarkes");
talkEntry:addResponse("Zssarkes at yoursss service");
talkEntry:addResponse("Zssarkes, pleasuress to meetss youss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich binss Zssarkes");
talkEntry:addResponse("Zssarkes zu dienstenss");
talkEntry:addResponse("Zssarkes, eine Freude euch kennenss zzu lernenss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Zzss.. I'm not a trader");
talkEntry:addResponse("I'm a guard notss a merchant");
talkEntry:addResponse("I do not tradess");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich binss kein H�ndler");
talkEntry:addResponse("Ich handelss nicht");
talkEntry:addResponse("Ich bin kein H�ndlerss, sssondern eine Wache");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("I'm not goodss in telling ssstoriess");
talkEntry:addResponse("I have no timess to tell sstoriess");
talkEntry:addResponse("Zzss.. I'm a guardss not a ssstoryteller");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Ich bin nichtss gut im Geschichten erz�hlenss");
talkEntry:addResponse("Ich habe keiness Zeit um Geschichtenss zu erz�hlenss");
talkEntry:addResponse("Zzss.. Ich bin eine Wache, kein Geschichtenerz�hler");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Litios");
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oh you knowss Litioss? He leftss the dormitory a whiless back. Ssaid he wantedss to go to tavernss for a drinkss");
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Litios");
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Oh ihr kenntss Litioss? Er hatss den Sschlafssaal vor einer Weile verlassssen. Sssagte er wollte in die Taverne f�r einen Drinkss");
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("training");
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Youss too weak to train withss me, but I canss teach youss something about fightingss. What weapon type do you wantss to know more aboutss?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("training");
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Du zu sschwach um mit mir zzu trainierenss, aber ich kann dirss etwass beibringenss �ber Kampf. �berss welchen Waffentyp willssst du mehr wisssen?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fight");
talkEntry:addTrigger("combat");
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 1));
talkEntry:addResponse("You are a fighter? Let Zssarkes teach youss something about weapons, alright? What weapon type you wantss to know more aboutss?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("kampf");
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 1));
talkEntry:addResponse("Ihr sseid K�mpfer? Lass dir von Zssarkes noch etwass �ber Waffenss beibringenss, in Ordnungss? �berss welchen Waffentyp willssst du mehr wissen?");
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("learn puncture");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "puncture weapons", "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("You have the feeling that you've learnt a lot today."));
talkEntry:addResponse("#me rattles on about daggers and other puncture weapons and how to use them. ");
talkEntry:addConsequence(npc.base.consequence.skill.skill(5, "puncture weapons", "+", 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("stichwaffen lernen");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "puncture weapons", "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Du hast das Gef�hl als h�ttest du heute viel gelernt."));
talkEntry:addResponse("#me erkl�rt viel �ber Dolche und andere Stichwaffen und wie man diese benutzt.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(5, "puncture weapons", "+", 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("learn slashing");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "slashing weapons", "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("You have the feeling that you've learnt a lot today."));
talkEntry:addResponse("#me rattles on about sowrds and waraxes and how to use them.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(5, "slashing weapons", "+", 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hiebwaffen lernen");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "slashing weapons", "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Du hast das Gef�hl als h�ttest du heute viel gelernt."));
talkEntry:addResponse("#me erkl�rt viel �ber Schwerter und Kriegs�xte und wie man diese benutzt.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(5, "slashing weapons", "+", 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("learn concussion");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "concussion weapons", "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("You have the feeling that you've learnt a lot today."));
talkEntry:addResponse("#me rattles on about maces and warhammer and how to use them.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(5, "concussion weapons", "+", 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("schlagwaffen lernen");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "concussion weapons", "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Du hast das Gef�hl als h�ttest du heute viel gelernt."));
talkEntry:addResponse("#me erkl�rt viel �ber Streitkolben und Kriegsh�mmer und wie man diese benutzt. ");
talkEntry:addConsequence(npc.base.consequence.skill.skill(5, "concussion weapons", "+", 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("learn distance");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "distance weapons", "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("You have the feeling that you've learnt a lot today."));
talkEntry:addResponse("#me rattles on about bows and slings and how to use them. ");
talkEntry:addConsequence(npc.base.consequence.skill.skill(5, "distance weapons", "+", 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("schusswaffen lernen");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "distance weapons", "=<", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("Du hast das Gef�hl als h�ttest du heute viel gelernt."));
talkEntry:addResponse("#me erkl�rt viel �ber B�gen und Schlingen und wie man diese benutzt.");
talkEntry:addConsequence(npc.base.consequence.skill.skill(5, "distance weapons", "+", 5));
talkEntry:addConsequence(npc.base.consequence.quest.quest(444, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("learn puncture");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "puncture weapons", ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addResponse("You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("stichwaffen lernen");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "puncture weapons", ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addResponse("Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("learn slashing");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "slashing weapons", ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addResponse("You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hiebwaffen lernen");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "slashing weapons", ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addResponse("Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("learn concussion");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "concussion weapons", ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addResponse("You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("schlagwaffen lernen");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "concussion weapons", ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addResponse("Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("learn distance");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "distance weapons", ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addResponse("You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("schusswaffen lernen");
talkEntry:addCondition(npc.base.condition.skill.skill(5, "distance weapons", ">", 20));
talkEntry:addCondition(npc.base.condition.quest.quest(444, "=", 2));
talkEntry:addResponse("Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("weapon type");
talkEntry:addResponse("There are four typesss of weaponss: Puncture, slashing, concussion and distance.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("waffentyp");
talkEntry:addResponse("Esss gibt vier versschiedene Typenss von Waffenss: Stich- , Hieb- , Schlag-  und Schusswaffenss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("puncture");
talkEntry:addResponse("Daggersss are the mossst famouss memberss of the puncture weaponsss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("stichwaffen");
talkEntry:addTrigger("stich");
talkEntry:addTrigger("stichwaffe");
talkEntry:addResponse("Dolche ssind die ber�hmtesssten Mitgliederss der Sstichwaffensss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("slashing");
talkEntry:addResponse("Swordss and waraxess are exampless for slashing weaponss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hiebwaffen");
talkEntry:addTrigger("hieb");
talkEntry:addTrigger("hiebwaffe");
talkEntry:addResponse("Sschwerterss und Kriegss�xtess sind Beispieless f�r Hiebwaffenss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("concussion");
talkEntry:addResponse("Macesss and warhammer count asss concussion weaponss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("schlagwaffen");
talkEntry:addTrigger("schlag");
talkEntry:addTrigger("schlagwaffe");
talkEntry:addResponse("Streitkolbenss und Kriegssh�mmer zz�hlen als Schlagwaffenss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("distance");
talkEntry:addResponse("Distance weaponss are normally bowss and slingss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("schusswaffen");
talkEntry:addTrigger("schuss");
talkEntry:addTrigger("schusswaffe");
talkEntry:addResponse("Schusswaffenss sind normalss B�genss und Schleudernss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Cadomyr iss my hometown and I protectsss it with my life. That'ss why I joined the guardss to give somethingss back to town. Our queen is good to uss and we do what she wantss");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Cadomyr issst meine Heimat und ich bessch�tze ssie mit meinem Lebenss. Desswegen bin ich auch der Wache beigetretensss, um der Stadt etwass zur�ckzugeben. Unsere K�nigin isst gut zzu unss und wir machen, wass ssie will.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Runewick? Sss.. the town has some nice waterss and meadowss as far as I know, but knowledge is more worth than honorss there. Is dangerousss...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("runewick");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Runewick? Sss.. die Stadt hat sch�ness Wasser und Weideland soweit ich wei�ss, aber Wissen isst mehr Wert alss Ehre dort. Das ist gef�hrlichss...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Banditsss, robberss and villainss. That'ss where money and liess are the mosst important goodss. I don't like that place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("galmair");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Banditen, R�uberss und Schufte. Dort sind Geld und L�gen die wichtigsten Warenss. Ich mag den Ortss nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("queen");
talkEntry:addTrigger("rosaline edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Queen Rosaline is good to uss and I feelss honored to be member of her palaceguardss. The good god mother Zelphia watchess over her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("rosaline edwards");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("K�nigin Rosaline ist gut zu uns und ich f�hle mich geehrt dasss ich Mitglied ihrer Palassstwache bin. Die gute Gottmutter Zelphia wacht �ber ihrss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Elvaine Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Archmage Morgan isss the leader of Runewick. He is studying much and gatherss knowledge about everything. Wise men he iss but weakss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erzmagier");
talkEntry:addTrigger("Elvaine Morgan");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Erzmagier Morgan issst der Anf�hrer von Runewick. Er studiert viel und ssammelt Wisssen �ber alless. Ein weiser Mann er issst aber schwach.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio Guilianni");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Guilianni is scum, nothing more. He hasss no honor and he'll neverss come to great sea of mother Zelphia.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio Guilianni");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Guilianni ist Abschaumss, mehr nicht. Er hat keiness Ehre und er wird niemalss zu gro�em Meer von Mutter Zelphia kommenss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me tr�pfelt ein paar Tropfen Politur auf einen Lappen und f�ngt an sein Schwert damit einzureiben", "#me drips some polish onto a cloth and starts to rub his sword in");
talkingNPC:addCycleText("#me sortiert ein paar R�stungsteile in seine Truhe", "#me sorts some armor into his chest");
talkingNPC:addCycleText("#me l�sst seinen Schwanz hin und her schnalzen", "#me flicks his tail");
talkingNPC:addCycleText("#me zischelt leise vor sich hin, w�hrend er eine neue Sehne an einem Bogen befestigt", "#me hisses quietly to himself, while he attaches a new fiber on a bow");
talkingNPC:addCycleText("#me macht ein paar flinke Bewegungen mit einem Dolch, anscheinend aus Trainingszwecken.", "#me makes some quick movements with a dagger, seemgl as training");
talkingNPC:addCycleText("#me schaut sich leise zischelnd in dem Raum um", "#me quietly hisses and looks around in the room");
mainNPC:addLanguage(0);
mainNPC:addLanguage(4);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Eine Echse in stattlicher R�stung.", "A lizardman with an impressive armor.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 181);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 34);
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