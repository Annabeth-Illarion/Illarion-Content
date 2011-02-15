--------------------------------------------------------------------------------
-- NPC Name: Graznok                                                     Free --
-- NPC Job:  explorer                                                         --
--                                                                            --
-- NPC Race: orc                        NPC Position:  672, 449, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                                            --
-- Last parsing: February 15, 2011                       easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (4, 672, 449, 0, 4, 'Graznok', 'npc.graznok', 0, 2, 0, 240, 50, 10, 248, 228, 95);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("npc.graznok", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 0");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Debugging] Quest status set to 0"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(3, ">", 21));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Error] Something went wrong, please inform a developer."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is the orcish explorer Graznok. Keyphrases: Hello, quest, profession, explorer, clan, darkness, cave."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist der orkische Kundschafter Graznok. Schl�sselw�rter: Hallo, Quest, Beruf, Kundschafter, Clan, Dunkelheit, H�hle."));
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
talkEntry:addResponse("Greebas! Yoos be lookin' like yoos could help mes in mes mission.");
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
talkEntry:addResponse("Greebas! Du sehen aus. Wie helfen mirr, bei Aufgabs meine.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Greebas! Yoos be lookin' like yoos could help mes in mes mission.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greebas! Du sehen aus. Wie helfen mirr, bei Aufgabs meine.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Go wid dat Moshi. And when come back, den bring lotsa shinies fer mes, hurr, hurr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Gehn mit Moschi. Und wenn komme zur�ck, du bringt viele Glitzazeug. Hurr, hurr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Go wid dat Moshi. And when come back, den bring lotsa shinies fer mes, hurr, hurr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Gehn mit Moschi. Und wenn komme zur�ck, du bringt viele Glitzazeug. Hurr, hurr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Mes be feelin' gud, mes be on important mission fer clan. Mes be radur sure yoos can do task fer mes.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Mir gutt! Mir Gutt. Mirr auf wichtige Mission. Yubba. F�r mein Klan! Fallleicht du machst Aufgabe, mirr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Mes be mighty Graznok, explorer op dem Clan op dem Bonegnawers. Dat mes.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Mirr m�chtig Graznok sein! Kundschafter von Klan d' Knochenbei�er. Mirr ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Craven Orc I"));
talkEntry:addResponse("Yoos gottur help mes. Mes want explore dat cave over dere, but nub hab torch fer light. Gimme torch so mes can find place fer clan fer dwellin'.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der feige Ork I"));
talkEntry:addResponse("Du mirr hilfst. Mirr wolle erkunden H�hle dr�ben dort. Aber nix hab Fackl f�r Licht. Gibst mirr Fackl. Mir findet Platz f�rr Klan. Bei�n Knochn.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Craven Orc I"));
talkEntry:addResponse("Yoos gottur help mes. Mes want explore dat cave over dere, but nub hab torch fer light. Gimme torch so mes can find place fer clan fer dwellin'.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der feige Ork I"));
talkEntry:addResponse("Du mirr hilfst. Mirr wolle erkunden H�hle dr�ben dort. Aber nix hab Fackl f�r Licht. Gibst mirr Fackl. Mir findet Platz f�rr Klan. Bei�n Knochn.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", "<", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Shuddup and bring mes torch! Hurr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 1));
talkEntry:addResponse("Maul halt und gibst mir Fackl! Hurr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 1));
talkEntry:addResponse("Shuddup and bring mes torch! Hurr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 1));
talkEntry:addResponse("Maul halt und gibst mir Fackl! Hurr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a piece of pork. Tasty..."));
talkEntry:addResponse("Hurr! Danks fer dat torch. Now mes can go explorin' again. Hab dat pork, dat be tasty.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(391, 1));
talkEntry:addConsequence(npc.base.consequence.item.item(307, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(391, "all", ">", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst ein St�ck Schweinefleich. Lecker..."));
talkEntry:addResponse("Hurr! Dancke f�r d' Fackl. Jetz mirr kann gehn, Erkundung. Du nimmst Fleisch, das lecker!");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(391, 1));
talkEntry:addConsequence(npc.base.consequence.item.item(307, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(392, "all", ">", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a piece of pork. Tasty..."));
talkEntry:addResponse("Hurr! Danks fer dat burnin' torch. Now mes can go explorin' again. Hab dat pork, dat be tasty.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(392, 1));
talkEntry:addConsequence(npc.base.consequence.item.item(307, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(392, "all", ">", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst ein St�ck Schweinefleich. Lecker..."));
talkEntry:addResponse("Hurr! Dancke f�r d' Fackl. Jetz mirr kann gehn, Erkundung. Du nimmst Fleisch, das lecker!");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(392, 1));
talkEntry:addConsequence(npc.base.consequence.item.item(307, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Craven Orc II"));
talkEntry:addResponse("Hurr! Last time mes hab been explorin' cave, dere be lotsa ragmen. Mes nub like dem ragmen, dey like be spook. Smash dem!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der feige Ork II"));
talkEntry:addResponse("Hurr. Letzte mal mir erkundet H�hle dort gewesen Lumpenmanns. Mirr nix mag, sie wie Spuk. Du zermatschn! Verjagn Lumpenmanns!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Craven Orc II"));
talkEntry:addResponse("Hurr! Last time mes hab been explorin' cave, dere be lotsa ragmen. Mes nub like dem ragmen, dey like be spook. Smash dem!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 2));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der feige Ork II"));
talkEntry:addResponse("Hurr. Letzte mal mir erkundet H�hle dort gewesen Lumpenmanns. Mirr nix mag, sie wie Spuk. Du zermatschn! Verjagn Lumpenmanns!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, ">", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(3, "<", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Smash more op dem ragmen. Smash one fer each op mes finger on mes rite hand, den cave be save mes be dinkin'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, ">", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(3, "<", 8));
talkEntry:addResponse("Du zerhaust mehr Lumpenmanns! Zerhaust einen f�r jede Finger auf mein rechte hand. Dann H�hle sicher ist mirr denkens.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(3, ">", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(3, "<", 8));
talkEntry:addResponse("Smash more op dem ragmen. Smash one fer each op mes finger on mes rite hand, den cave be save mes be dinkin'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(3, ">", 2));
talkEntry:addCondition(npc.base.condition.quest.quest(3, "<", 8));
talkEntry:addResponse("Du zerhaust mehr Lumpenmanns! Zerhaust einen f�r jede Finger auf mein rechte hand. Dann H�hle sicher ist mirr denkens.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a steak, a piece of leather and a horn. How useful..."));
talkEntry:addResponse("Yoos hab smash dem ragmen? Gud! Mes gib yoos stuff mes hab hunt in dat meantime, tasty and gud stuff.");
talkEntry:addConsequence(npc.base.consequence.item.item(2547, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(2940, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(333, 1, 533, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 8));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst ein Steak, ein St�ck Leder und ein Horn. Wie praktisch..."));
talkEntry:addResponse("Du zermatscht hast die Lumpenmanns? Gutt! Mir gibt dir Zeug, mir erbeutet hat. Lecker und gutt Zeug.");
talkEntry:addConsequence(npc.base.consequence.item.item(2547, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(2940, 1, 333, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(333, 1, 533, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 9));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Craven Orc III"));
talkEntry:addResponse("Cave be much more cozy widout ragmen. But dere sum bonemen, deep in cave. Nub want dwell in same cave as bonemen. Smash as many as yoos can count wid yoos hands!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 9));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der feige Ork III"));
talkEntry:addResponse("H�hle viel mehr gem�tlich, ohne Lumpenmanns. Aber dort Knochenmanns sind. Tief in H�hle. Mir nix nagn Knochen in selbe H�hle wie Knochnman. Du zerhaust Knochenmans, so viel zu abz�hlst auf dein H�nde.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 9));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Craven Orc III"));
talkEntry:addResponse("Cave be much more cozy widout ragmen. But dere sum bonemen, deep in cave. Nub want dwell in same cave as bonemen. Smash as many as yoos can count wid yoos hands!");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 9));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der feige Ork III"));
talkEntry:addResponse("H�hle viel mehr gem�tlich, ohne Lumpenmanns. Aber dort Knochenmanns sind. Tief in H�hle. Mir nix nagn Knochen in selbe H�hle wie Knochnman. Du zerhaust Knochenmans, so viel zu abz�hlst auf dein H�nde.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 10));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, ">", 9));
talkEntry:addCondition(npc.base.condition.quest.quest(3, "<", 20));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Smash dem bones, split dem skulls. One fer each finga op yoos hands. Den clan can move to dat cave, yubba!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, ">", 9));
talkEntry:addCondition(npc.base.condition.quest.quest(3, "<", 20));
talkEntry:addResponse("Zerschlagn da Knochns! Brechn sein Sch�dls. Eina f�r jeda Finger auf dein beide H�nde. Dann Klan zieht in d' H�hle, yubba!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(3, ">", 9));
talkEntry:addCondition(npc.base.condition.quest.quest(3, "<", 20));
talkEntry:addResponse("Smash dem bones, split dem skulls. One fer each finga op yoos hands. Den clan can move to dat cave, yubba!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(3, ">", 9));
talkEntry:addCondition(npc.base.condition.quest.quest(3, "<", 20));
talkEntry:addResponse("Zerschlagn da Knochns! Brechn sein Sch�dls. Eina f�r jeda Finger auf dein beide H�nde. Dann Klan zieht in d' H�hle, yubba!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 20));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a warhammer, an orc helmet and a full leather armour. Nice..."));
talkEntry:addResponse("Hurr! Victor-dingy! Clan be save now, yoos hab smash dem bonemen. In dat name op dat chief op dem bonegnawers, mes be makin' yoos friend op clan. Hab dat weapon and armour op clan, yoos deserve dat.");
talkEntry:addConsequence(npc.base.consequence.item.item(226, 1, 644, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(16, 1, 644, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(362, 1, 644, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 21));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 20));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen Kriegshammer, einen Orkhelm und eine volle Lederr�stung. Nett..."));
talkEntry:addResponse("Hurr! Sieg-ding! Klan sicher jetzt ist, du zerschlagn d' Knochenmanns. In Name von H�uptling von Knochenbei�er, mirr machen dich zu Freund. Von ganze Klan. Nimmst Waffe und R�sta von Klan, du verdienen es.");
talkEntry:addConsequence(npc.base.consequence.item.item(226, 1, 644, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(16, 1, 644, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(362, 1, 644, 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(3, "=", 21));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Nub can help mes, yoos. Hab done enuff. Mes gonna bring clan to cave, danks.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 21));
talkEntry:addResponse("Nix mehr helfn kannst. Getan genug, hast du! Jetz mirr zeigen Klan Weg zu H�hle. Dancke.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 21));
talkEntry:addResponse("Nub can help mes, yoos. Hab done enuff. Mes gonna bring clan to cave, danks.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(3, "=", 21));
talkEntry:addResponse("Nix mehr helfn kannst. Getan genug, hast du! Jetz mirr zeigen Klan Weg zu H�hle. Dancke.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("orc");
talkEntry:addResponse("Dem orcis be chief op all dings. Bedda predator den wolf, smarter den leafeater and more mighty den red stomper.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ork");
talkEntry:addResponse("Orks gro�e H�uptling von Alles. Besser J�ger als Wolf. Mehr klugg als Blattfressa und m�chtiga als rote Stampfer!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("Mes be explorer op clan op dem bonegnawers. Dem bonegnawers be searchin' fer new cave fer dwellin'. Dere be cave, but mes need help in mes mission.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Mirr ist Kundschafter. Von Klan d' Knochenbei�er. Knochenbei�er suchen, neu H�hle f�r bei�n Knochen! H�hle dort ist eine, aber mir Hilfe braucht... f�r Mission.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Mes be explorer op clan op dem bonegnawers. Dem bonegnawers be searchin' fer new cave fer dwellin'. Dere be cave, but mes need help in mes mission.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Mirr ist Kundschafter. Von Klan d' Knochenbei�er. Knochenbei�er suchen, neu H�hle f�r bei�n Knochen! H�hle dort ist eine, aber mir Hilfe braucht... f�r Mission.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tribe");
talkEntry:addResponse("Nub hab tribe, hab clan. Bonegnawers, dey mes clan. Clan mighty, but widout cave.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("clan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Mes clan be dat clan op dem bonegnawers. Gnawin' bone all day, hurr, hurr. Clan be searchin' fer new cave fer dwellin'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("bonegnaw");
talkEntry:addResponse("Dem bones, dey tasty. Gnaw dem, den yoos be knowin', yubba.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("cave");
talkEntry:addResponse("Mes be on important mission, yubba. Mes be searchin' new cave fer clan. Dere be cave; help mes wid dat mission!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ragmen");
talkEntry:addTrigger("ragman");
talkEntry:addResponse("Mes nub like dem ragmen. Dey all go like 'Brrraaaaiiiins!'. Nub know whub dem want from mes.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("bonemen");
talkEntry:addTrigger("boneman");
talkEntry:addResponse("Dem bonemen! Hurr! Dey like dead and still walkin'. Dat simply nub rite, dat be scary!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fear");
talkEntry:addTrigger("afraid");
talkEntry:addTrigger("scared");
talkEntry:addTrigger("frightened");
talkEntry:addTrigger("craven");
talkEntry:addResponse("Mes nub afraid op anyding! Mes just... cautious. Patient. Hurr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dark");
talkEntry:addTrigger("shadow");
talkEntry:addResponse("Stoopid sun, why nub shine all dat day? And why nub shine in cave?! Mes nub like dat dark, dat be dark and nub gud.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ghost");
talkEntry:addTrigger("spectre");
talkEntry:addTrigger("spook");
talkEntry:addResponse("Spook! Evil oomies and leafeaters make dat spook. Mes nub like spook, spook so... spooky!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dialect");
talkEntry:addTrigger("accent");
talkEntry:addTrigger("language");
talkEntry:addResponse("Nub hab dialect, groar! Mes be speakin' perfect common, yubba!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Stamm");
talkEntry:addResponse("Mirr nix Stamm hat. Hat Klan. Knochenbei�er, das mein Klan ist. M�chtig Klan aber nix H�hle haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Klan");
talkEntry:addResponse("Mirr Klan ist Klan 'd Knochenbei�er. Bei�n Knochn ganze Tag, hurr, hurr. Klan suchn neu H�hle. Zum bei�n Knochn!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Clan");
talkEntry:addResponse("Mirr Klan ist Klan 'd Knochenbei�er. Bei�n Knochn ganze Tag, hurr, hurr. Klan suchn neu H�hle. Zum bei�n Knochn!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Knochenbei");
talkEntry:addResponse("Knochen gutt! Schmeckt gutt. Du bei�t, nagen! Du siehst schmeckt gutt! Yubba.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("H�hle");
talkEntry:addResponse("Mirr on Mission, wichtig yubba. Mirr suchn neu H�hle, f�r Klan. H�hle dort ist, du hilfst mit Mission!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lump");
talkEntry:addResponse("Mirr nix mag Lumpenmann. Alle machen wie 'Geehiieerne!'... Kein Ahnung was wolle von mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Knochen");
talkEntry:addResponse("Dort Knochenmanns! Hurr! Sie tot. Aber laufen rum trotzdem. Nix richtig is. Unheimelig ist. Uh!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Furcht");
talkEntry:addTrigger("Angst");
talkEntry:addTrigger("�ngstlich");
talkEntry:addTrigger("erschreck");
talkEntry:addTrigger("feig");
talkEntry:addResponse("Mir nix Angst nix und nixmand. Mirr Geduld. Vorsichtig. Hurr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dunkel");
talkEntry:addTrigger("Schatten");
talkEntry:addResponse("Dummig Sonne. Warum nix scheint imma? Warum nix scheint in H�hle?! Mirr nix mag Dunkelheit. Dann es dunkel ist. Dunkel nix gutt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("geist");
talkEntry:addTrigger("Gespenst");
talkEntry:addTrigger("Spuk");
talkEntry:addResponse("Spuk und Geist. Hurr. B�� Menschz und Blattfressa machen Spukh. Mirr nix m�gen Spukh, Spukh ist uh... spukhig!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Dialekt");
talkEntry:addTrigger("Akzent");
talkEntry:addTrigger("Sprache");
talkEntry:addResponse("Mirr nix Akzent, groar! Mirr spricht gemeinsam Sprach perfekt, yubba!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salavesh");
talkEntry:addTrigger("cult");
talkEntry:addTrigger("kult");
talkEntry:addTrigger("silver dragon");
talkEntry:addTrigger("silberdrache");
talkEntry:addTrigger("crusade");
talkEntry:addTrigger("ritter");
talkEntry:addTrigger("dragon");
talkEntry:addTrigger("drache");
talkEntry:addTrigger("blutmagie");
talkEntry:addTrigger("blood magic");
talkEntry:addTrigger("blood mage");
talkEntry:addTrigger("necro");
talkEntry:addTrigger("totenbeschw�r");
talkEntry:addResponse("Whub?!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("explorer");
talkEntry:addResponse("Mes be explorer op clan op dem bonegnawers. Dem bonegnawers be searchin' fer new cave fer dwellin'. Dere be cave, but mes need help in mes mission.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kundschaft");
talkEntry:addResponse("Mirr ist Kundschafter. Von Klan d' Knochenbei�er. Knochenbei�er suchen, neu H�hle f�r bei�n Knochen! H�hle dort ist eine, aber mir Hilfe braucht... f�r Mission.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Stoopid majik oomie! Dat be makin' spook, mes be sure. Bedda smash, dat mes say.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Dummig Zauberleuts! Machen Spukh, mirr sein sicher. Zermatsch besser, die!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Stoopid majik oomie! Dat be makin' spook, mes be sure. Bedda smash, dat mes say.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Dummig Zauberleuts! Machen Spukh, mirr sein sicher. Zermatsch besser, die!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Bedda stay away from dat tree town wid lotsa tower. Nub gud dere, nub gud fer orcis fer dwellin'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Bleibs weg von Baumdorf mit lauters Turms. Nix gutt da, nix gutt f�r Orks.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Dat Don be mighty, rich and fat. Mes want become like dat Don, yubba!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Das Don m�chtig, reich und fett. Mirr wollen werden wie das Don, yubba!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Sum orcis hab say, dat dat be old tent op stumpies. Urgs! Neva gonna dwell in tent op stumpies.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Manchens Orks sagen, da alt Zelt von Stumpfies. Urgs! Nix wollen leben in Stumpfiezelt!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Dere be girl in dat dry land, dat be rulin' dere. Stoopid oomies, nub hab chief, hab chieftess, hurr, hurr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Da sein Weib in trocken Land, das da m�chtig. Dummig Leudz, nix H�uptling, hab H�uptlingline, hurr, hurr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Dere be girl in dat dry land, dat be rulin' dere. Stoopid oomies, nub hab chief, hab chieftess, hurr, hurr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Da sein Weib in trocken Land, das da m�chtig. Dummig Leudz, nix H�uptling, hab H�uptlingline, hurr, hurr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Dey nub like orcis dere in Cado-dingy. Hurr, dem like dem, but fer work and stuff.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Nix m�gen Orks in Cadom-dings. Hurr, die m�gen, aber f�r machen Arbeit und Zeugs!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("#me screams: 'Next time yoos be sayin' dat, mes nub listen! Dey treat orcis like orcis treat piggies!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("#me br�llt: 'Wenn du wieder sagst so, mir nix h�rt zu! Die behandlen Ork wie Ork behandelt Schweins!'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Dey hab gud heads dere in Gynk. Hab invent boom bottle. Toss at stumpies and dey burn!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Klug K�pfe dort in Gynk. Gebaut hat, erste Bumm-Flasch. Du werfen auf Stumpfie, dann sie brenn'n!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Blah, bleh, blubb. Dem oomies in dat Salka-dingy, dey nub can do anyding but talk. And dat nub even gud.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Blah, bleh, blubb. Diese Menschz in Salk-zeug. Sie nix mache als sprechen. Nix mal gutt sprechen.");
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
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Big Moshi, dat be mighty god. Moshi nub evil, Moshi power. Moshi gib mes power!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Gro�e Moschi, er m�chtig Gott. Nix b��, er Kraft! Moschi geben mirr Kraft!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Mala-dingy guide mes smasher. When hunt, den Mala-dingy bring gud game. Praise dat Mala-dingy!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addResponse("Mala-dings helfen mir matschn! Wenn jagen, Mala-dings machen gutt! Ehre f�rr Mala-dings!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Lemme dink... Nub want yoos stuff, nub hab stuff fer yoos. So get lost.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Uh?!... Nix wolle dein Zeug, nix hab Zeug f�r dirr. Zieh Leinen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Dere once was orci. And dere was dragon. Dat orci hab smash dat dragon! Gud story, eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Es gewesen Ork. Und gewesen Drache. Ork zermatscht Drache! Gutt Geschicht, eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("<NPC first name>");
talkEntry:addTrigger("<NPC last name>");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("ENGLISH1.");
talkEntry:addResponse("ENGLISH2.");
talkEntry:addResponse("ENGLISH3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("<NPC-Vorname>");
talkEntry:addTrigger("<NPC-Nachname>");
talkEntry:addResponse("GERMAN1.");
talkEntry:addResponse("GERMAN2.");
talkEntry:addResponse("GERMAN3.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addTrigger("yub");
talkEntry:addResponse("Whub want, yoos?");
talkEntry:addResponse("Whubeva.");
talkEntry:addResponse("Mes nub understand whub yoos be meanin'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Wat woll, yoos?");
talkEntry:addResponse("Watauchimma.");
talkEntry:addResponse("Mir nix versteh wat yoos meinen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addTrigger("nub");
talkEntry:addResponse("Nub?");
talkEntry:addResponse("Why nub?");
talkEntry:addResponse("Whubeva.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Nub?");
talkEntry:addResponse("Wieso nub?");
talkEntry:addResponse("Watauchimma.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Hurr!", "Hurr!");
talkingNPC:addCycleText("Maul halt! Mir nix Angst nix und nixmand!", "Shuddup! Mes nub fear anyding!");
talkingNPC:addCycleText("Gibst, gibst, gibst ne fackel bis nach Mitternacht.", "Gimme, gimme, gimme a torch aftur midnight!");
talkingNPC:addCycleText("Mirr nix fr�chtet nix Geist!", "Mes nub afraid op no ghost!");
talkingNPC:addCycleText("Mir nix Hilfe braucht. Verjagen Schatten allein!", "Want nubbody help mes chase dem shadows away!");
talkingNPC:addCycleText("Bringen mirr durch Dunkelheit, bis Tag kommt.", "Take mes thru dat darkness to dat break op dat day.");
talkingNPC:addCycleText("Dat Jagdgrund f�rr ne Fackl!", "A huntin' ground fer a torch!");
talkingNPC:addCycleText("#me schn�ffelt und rotzt auf den Boden.", "#me sniffes and spits on the ground.");
talkingNPC:addCycleText("#me knurrt und bleckt die Z�hne.", "#me growls and snarls.");
talkingNPC:addCycleText("#me schl�gt zwei Steine gegeneinander und flucht: 'Dat werd Licht!'", "#me strikes two stones together and curses: 'Let dere be light!'");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist der orkische Kundschafter Graznok.", "This NPC is the orcish explorer Graznok.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 7);
mainNPC:setEquipment(3, 362);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 2664);
mainNPC:setEquipment(6, 2445);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 2114);
mainNPC:setEquipment(10, 697);
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