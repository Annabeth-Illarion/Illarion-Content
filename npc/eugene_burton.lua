--------------------------------------------------------------------------------
-- NPC Name: Eugene Burton                                               None --
-- NPC Job:  none                                                             --
--                                                                            --
-- NPC Race: human                      NPC Position:  20, 1, 0               --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   not set                                                          --
--                                                                            --
-- Last parsing: August 09, 2010                         easyNPC Parser v1.00 --
--------------------------------------------------------------------------------

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.queststatus")
require("npc.base.talk")
module("npc.eugene_burton", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("set 0");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Debugging] Quest status set to 0"));
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 33));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Error] Something went wrong, please inform a developer."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This is NPC is the poacher Eugene Burton. Keyphrases: Hello, quest, poacher, animals."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist der Wilderer Eugene Burton. Schl�sselw�rter: Hallo, Quest, Wilderer, Tiere."));
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
talkEntry:addResponse("Shh! Not so loud! You'll scare away my game!");
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
talkEntry:addResponse("Psst, nicht so laut, ihr verscheucht ja das ganze Wild.");
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
talkEntry:addResponse("Shh! Not so loud! You'll scare away my game!");
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
talkEntry:addResponse("Psst, nicht so laut, ihr verscheucht ja das ganze Wild.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Good bye");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare thee well");
talkEntry:addResponse("Go forth with Malachin's blessing. May you never starve.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehabt euch wohl");
talkEntry:addResponse("Geht mit Malachins Segen. Auf dass ihr nie Hunger leiden m��t.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Go forth with Malachin's blessing. May you never starve");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addResponse("Geht mit Malachins Segen. Auf dass ihr nie Hunger leiden m��t.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I'd feel much better if you could help me a bit, hunting.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Ich w�rde mich weit besser f�hlen, wenn ihr mir bei der Jagd helfen k�nntet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Eugene Burton; father to four hungry mouths. Feeding those mouths has become so difficult these days...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Eugene Burton, Vater von vier hungrigen M�ulern. Diese zu stopfen ist dieser Tage wirklich schwierig geworden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("If I had something for trading, I'd sell everything to feed my family, I swear.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("H�tte ich etwas zum handeln, so w�rde ich alles ver�u�ern, um meine Familie zu ern�hren. Das schw�re ich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("I don't have the time to chat with you; my family is starving. Perhaps you can help me with a task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Ich habe nicht die Zeit, mit euch zu plaudern; meine Familie ist am Verhungern. Vielleicht k�nnt ihr mir bei einer Aufgabe helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("poacher");
talkEntry:addTrigger("hunter");
talkEntry:addResponse("People call me a poacher, because they don't like what I do. But what do I do? I take only what my family needs!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wilderer");
talkEntry:addTrigger("j�ger");
talkEntry:addResponse("Manche nennen mich einen Wilderer, denn ihnen misf�llt, was ich tue. Aber was mache ich schon - ich nehme nur so viel, wie meine Familie ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("People call me a poacher, because they don't like what I do. But what do I do? I take only what my family needs!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Manche nennen mich einen Wilderer, denn ihnen misf�llt, was ich tue. Aber was mache ich schon - ich nehme nur so viel, wie meine Familie ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("People call me a poacher, because they don't like what I do. But what do I do? I take only what my family needs!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Manche nennen mich einen Wilderer, denn ihnen misf�llt, was ich tue. Aber was mache ich schon - ich nehme nur so viel, wie meine Familie ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("valandil");
talkEntry:addTrigger("elensar");
talkEntry:addTrigger("elf");
talkEntry:addTrigger("elfen");
talkEntry:addTrigger("elves");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Wicked elves! They think that the life of an animal is worth much more than the life of my four children. Valandil Elensar, the self proclaimed guardian of the Elstree forest, is the worst!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("valandil");
talkEntry:addTrigger("elensar");
talkEntry:addTrigger("elf");
talkEntry:addTrigger("elfen");
talkEntry:addTrigger("elves");
talkEntry:addResponse("Vermaledeite Elfen! Sie sch�tzen das Leben eines Tieres mehr als das Leben meiner vier Kinder. Valandial Elensar, der selbsternannte H�ter des Elsbaumwaldes, ist der schlimmste von allen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("law");
talkEntry:addResponse("Legal, illegal... I give a damn!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gesetz");
talkEntry:addResponse("Legal, illegal... Schei�egal!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("animal");
talkEntry:addTrigger("game");
talkEntry:addResponse("There are countless animals in the Elstree forest, waiting for me and my bow: rabbits, deers and, sadly, even wolves.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tier");
talkEntry:addTrigger("Beute");
talkEntry:addResponse("Es gibt im Elsbaumwald unz�hlige Tiere, die nur auf mich und meinen Bogen warten: Hasen, Rehe und leider auch W�lfe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("forest");
talkEntry:addTrigger("woods");
talkEntry:addTrigger("Elstree");
talkEntry:addResponse("The Elstree forest is a good place to hunt; unfortunately wolves know that too. I still wonder what an Elstree is, actually.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wald");
talkEntry:addTrigger("Elsbaum");
talkEntry:addResponse("Der Elsbaumwald ist ein gutes Jagdgebiet. Leider haben das auch schon die W�lfe begriffen. Ich frag mich allerdings schon l�nger, was eigentlich genau ein Elsbaum sein soll.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rabbit");
talkEntry:addTrigger("bunny");
talkEntry:addResponse("Catching those rabbits is more difficult than you might think. They are damn fast!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hase");
talkEntry:addTrigger("H��chen");
talkEntry:addTrigger("Kaninchen");
talkEntry:addResponse("Hasen zu fangen ist schwerer, als man denkt; sie sind verdammt schnell!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Reh");
talkEntry:addTrigger("Hirsch");
talkEntry:addTrigger("Wild");
talkEntry:addResponse("Es gibt immer weniger Dammhirsche im Elsbaumwald. Ich frage mich nur, warum...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Stag");
talkEntry:addTrigger("Deer");
talkEntry:addResponse("Fewer and fewer deer can be found in the Elstree forest. I wonder why...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wolf");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Wolves! They prey on what feeds my children. Just to feed their blasted cubs!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wolf");
talkEntry:addResponse("W�lfe! Sie machen Jagd auf das, was meine Kinder am Leben erh�lt. Und das nur, um ihre eigene Brut zu f�ttern!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wolves");
talkEntry:addResponse("Wolves! They prey on what feeds my children. Just to feed their blasted cubs!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("W�lfe");
talkEntry:addTrigger("Woelfe");
talkEntry:addResponse("W�lfe! Sie machen Jagd auf das, was meine Kinder am Leben erh�lt. Und das nur, um ihre eigene Brut zu f�ttern!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Father");
talkEntry:addTrigger("children");
talkEntry:addTrigger("family");
talkEntry:addResponse("My family starves, and all I can do is to hunt. However, these insane elves prefer to see humans die, rather than animals.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Vater");
talkEntry:addTrigger("Kinder");
talkEntry:addTrigger("Familie");
talkEntry:addResponse("Meine Familie ist am verhungern und alles, was ich tun kann, ist zu Jagen. Aber diese vermaledeiten Elfen haben es lieber wenn Menschen statt Tiere sterben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fur");
talkEntry:addResponse("Hush! I do not hunt to get fur... but if I end the life of an animal to feed my family, do you expect me to leave behind what yields good coin?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("fell");
talkEntry:addResponse("Pah! Ich jage nicht der Felle wegen... nunja, wenn ich schon das Leben eines Tieres beenden muss, um meine Famlilie zu ern�hren, sollte ich das zur�cklassen, womit man ordentlich abkassieren kann?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The mages always dictated what's going on in Runewick. I fear this is never going to change. They don't give a damn about the needs of the common people.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Immer schon haben die Magier in Runewick den Ton angegeben. Ich f�rchte, dies wird sich nie �ndern; die Bed�rfnisse der einfachen Leute sind denen egal.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Runewick, ha! The self proclaimed protectors of everything. They'd better protect themselves from my arrows!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick, ha! Die selbsternannten H�ter von allem m�glichen. Die sollten sich besser vor meinen Pfeilen h�ten!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The Don of Galmair scares me. I prefer to stay out of his sight.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Der Don von Galmair macht mir Angst. Ich gehe im lieber aus dem Weg.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oh, Galmair, a good place to sell fur for a good coin. Uhm, to buy food... of course.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Oh, Galmair, das ist ein guter Ort, um ordentlich f�r Felle abzukassieren. �h, um Essen zu kaufen... meine ich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She is... hot. I swear, I love my wife, but I can't fight my dreams.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Sie ist... hei�. Ich schw�re, dass ich meine Frau liebe, aber f�r seine Tr�ume kann man nichts.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Cadomyr is a bad place for hunters. Not much to hunt there, except sand and scorpions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr ist kein guter Ort f�r die Jagd. Man kann dort nicht viel jagen, au�er nach Sand und Skorpionen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I heard a lot about Albar and I wait eagerly for the day I can travel there. But I doubt this day will ever come; too poor I am.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Ich habe schon eine Menge �ber Albar geh�rt und ich warte sehns�chtig auf den Tag, an dem ich dort hinreisen kann. Aber ich glaube nicht, dass dieser Tage jemals kommt, so arm bin ich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Gynk is a pool of sins. But aren't we all sinnners one day?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Gynk ist ein S�ndenpfuhl. Aber s�ndigen wir nicht alle einmal?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Noble folk are living there; but also poor people. And nobody really cares about them!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Hochwohlgeborenes Volk lebt dort; aber auch arme Leute wie ich. Und niemanden schert es, wie es denen ergeht!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Praise Malachin, the god of all hunters. May he guide my bow.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addResponse("Lobet Malachin, den Gott der Jagd. M�ge er meinen Bogen f�hren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Poacher I"));
talkEntry:addResponse("My family is starving and without food, we won't survive the next winter. Please, will you head for Elstree forest, hunt half a dozen rabbits and bring me their meat?");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der Wilderer I"));
talkEntry:addResponse("Meine Familie ist am verhungern und ohne etwas zu essen �berleben wir den Winter nicht. Bitte, k�nntet ihr bitte in den Elsbaumwald gehen, ein halbes Dutzend Hasen jagen und mir ihr Fleische bringen?");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Poacher I"));
talkEntry:addResponse("My family is starving and without food, we won't survive the next winter. Please, will you head for Elstree forest, hunt half a dozen rabbits and bring me their meat?");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 0));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der Wilderer I"));
talkEntry:addResponse("Meine Familie ist am verhungern und ohne etwas zu essen �berleben wir den Winter nicht. Bitte, k�nntet ihr bitte in den Elsbaumwald gehen, ein halbes Dutzend Hasen jagen und mir ihr Fleisch bringen?");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oh, please, will you hunt half a dozen rabbits in the Elstree forest? My children beg for food, every day, and I have to disappoint them over and over again.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 7));
talkEntry:addResponse("Oh, w�rdet ihr bitte ein halbes Dutzend Hasen im Elsbaumwald jagen gehen? Meine Kinder flehen um etwas zu essen und jeden Tag muss ich sie aufs Neue entt�uschen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 7));
talkEntry:addResponse("Oh, please, will you hunt half a dozen rabbits in the Elstree forest? My children beg for food, every day, and I have to disappoint them over and over again.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 7));
talkEntry:addResponse("Oh, w�rdet ihr bitte ein halbes Dutzend Hasen im Elsbaumwald jagen gehen? Meine Kinder flehen um etwas zu essen und jeden Tag muss ich sie aufs Neue entt�uschen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(553, "all", "<", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Did you perhaps forget the rabbit meat in the forest? Please, quick, fetch it. My children will thank you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(553, "all", "<", 6));
talkEntry:addResponse("Habt ihr etwa das Fleisch der Hasen im Wald vergessen? Bitte, lauft, und holt es! Meine Kinder werden es euch danken.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(553, "all", "<", 6));
talkEntry:addResponse("Did you perhaps forget the rabbit meat in the forest? Please, quick, fetch it. My children will thank you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(553, "all", "<", 6));
talkEntry:addResponse("Habt ihr etwa das Fleisch der Hasen im Wald vergessen? Bitte, lauft, und holt es! Meine Kinder werden es euch danken.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(553, "all", ">", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 250 arrows."));
talkEntry:addResponse("Thank you very, very much for the food. Rabbit meat will silence the bellies of my children, at least for some days. Take this quiver of arrows, it will help you hunting.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(553, 6));
talkEntry:addConsequence(npc.base.consequence.item.item(64, 250, 333, 0));
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(553, "all", ">", 5));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 250 Pfeile."));
talkEntry:addResponse("Vielen, vielen Dank. Dieses Hasenfleisch wird das Magenknurren meiner Kinder wenigstens f�r ein paar Tage bes�nftigen. Hier, nehmt diesen K�cher voll Pfeile, sie werden euch auf der Jagd gute Dienste erweisen.");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(553, 6));
talkEntry:addConsequence(npc.base.consequence.item.item(64, 250, 333, 0));
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 8));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Poacher II"));
talkEntry:addResponse("Well, to survive the winter, it takes more than a slice of meat. I assume the meat of a dozen fallow deer from Elstree forest will make my children survive. Will you save their lives?");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 8));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der Wilderer II"));
talkEntry:addResponse("Um den Winter zu �berleben braucht man mehr als ein St�ck Fleisch. Ich sch�tze, dass das Fleisch von einem Dutzend Dammhirschen aus dem Elsbaumwald wenigstens meine Kinder am Leben halten wird. Werdet ihr ihre Leben retten?");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 8));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Poacher II"));
talkEntry:addResponse("Well, to survive the winter, it takes more than a slice of meat. I assume the meat of a dozen fallow deer from Elstree forest will make my children survive. Will you save their lives?");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 8));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der Wilderer II"));
talkEntry:addResponse("Um den Winter zu �berleben braucht man mehr als ein St�ck Fleisch. Ich sch�tze, dass das Fleisch von einem Dutzend Dammhirschen aus dem Elsbaumwald wenigstens meine Kinder am Leben halten wird. Werdet ihr ihre Leben retten?");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 9));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 8));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("You can find fallow deer in Elstree forest. Please, save my family from starvation.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 8));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 21));
talkEntry:addResponse("Ihr k�nnt Dammhirsche im Elsbaumwald finden. Bitte, rettet meine Familie vor dem Verhungern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 8));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 21));
talkEntry:addResponse("You can find fallow deer in Elstree forest. Please, save my family from starvation.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 8));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 21));
talkEntry:addResponse("Ihr k�nnt Dammhirsche im Elsbaumwald finden. Bitte, rettet meine Familie vor dem Verhungern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 21));
talkEntry:addCondition(npc.base.condition.item.item(552, "all", "<", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Slaying animals and leaving the meat for the carrion crows? How you dare! I beg you, on behalf of my children, every piece of meat can save a human's life.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 21));
talkEntry:addCondition(npc.base.condition.item.item(552, "all", "<", 12));
talkEntry:addResponse("Viele Tiere get�tet, aber das Fleisch den Kr�hen �berlassen? Ist dem so! Ich flehe euch an, im Namen meiner Kinder, jeder Bissen Fleisch kann ein Menschenleben retten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 21));
talkEntry:addCondition(npc.base.condition.item.item(552, "all", "<", 12));
talkEntry:addResponse("Slaying animals and leaving the meat for the carrion crows? How you dare! I beg you, on behalf of my children, every piece of meat can save a human's life.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 21));
talkEntry:addCondition(npc.base.condition.item.item(552, "all", "<", 12));
talkEntry:addResponse("Viele Tiere get�tet, aber das Fleisch den Kr�hen �berlassen? Ist dem so! Ich flehe euch an, im Namen meiner Kinder, jeder Bissen Fleisch kann ein Menschenleben retten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 21));
talkEntry:addCondition(npc.base.condition.item.item(552, "all", ">", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a golden ring, a copper goblet, an emerald amulet and 200 copper coins."));
talkEntry:addResponse("How great! You brought enough meat for my whole family. Here, I... found a bag with precious things. You can have it as reward.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(552, 12));
talkEntry:addConsequence(npc.base.consequence.item.item(235, 1, 666, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(1840, 1, 666, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(62, 1, 666, 0));
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 22));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 21));
talkEntry:addCondition(npc.base.condition.item.item(552, "all", ">", 11));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen goldenen Ring, einen Kupferkelch, ein Smaragdamulet und 200 Kupferst�cke."));
talkEntry:addResponse("Gro�artig! Ihr habt genug Fleisch f�r meine ganze Familie mitgebracht. Hier, ich habe diesen Beutel mit kostbaren Dingen... gefunden. Nehmt ihn als Belohnung.");
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(552, 12));
talkEntry:addConsequence(npc.base.consequence.item.item(235, 1, 666, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(1840, 1, 666, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(62, 1, 666, 0));
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 22));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 22));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Poacher III"));
talkEntry:addResponse("Recently, a pack of wolves entered Elstree forest. They hunt all the fallow deer I need to feed my children. Will you stop the pack? There are at least half a dozen of them.");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 23));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 22));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der Wilderer III"));
talkEntry:addResponse("Seit kurzem treibt ein Wolfsudel sein Unwesen im Elsbaumwald. Die W�lfe rei�en all die Dammhirsche, die ich brauche, um meine Kinder zu ern�hren. Werdet ihr das Rudel niederstrecken? Ich habe mindestens ein halbes Dutzend von ihnen gesehen.");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 23));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 22));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Poacher III"));
talkEntry:addResponse("Recently, a pack of wolves entered Elstree forest. They hunt all the fallow deer I need to feed my children. Will you stop the pack? There are at least half a dozen of them.");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 23));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 22));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der Wilderer III"));
talkEntry:addResponse("Seit kurzem treibt ein Wolfsudel sein Unwesen im Elsbaumwald. Die W�lfe rei�en all die Dammhirsche, die ich brauche, um meine Kinder zu ern�hren. Werdet ihr das Rudel niederstrecken? Ich habe mindestens ein halbes Dutzend von ihnen gesehen.");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 23));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 22));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 29));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("The wolf pack still roams the Elstree forest. Please, slay them all to save my childrens' futures.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 22));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 29));
talkEntry:addResponse("Das Wolfsrudel treibt noch immer sein Unwesen im Elsbaumwald. Bitte streckt sie alle nieder um die Zukunft meiner Kinder zu sichern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 22));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 29));
talkEntry:addResponse("The wolf pack still roams the Elstree forest. Please, slay them all to save my children's futures.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 22));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 29));
talkEntry:addResponse("Das Wolfsrudel treibt noch immer sein Unwesen im Elsbaumwald. Bitte streckt sie alle nieder um die Zukunft meiner Kinder zu sichern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 29));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a long bow and 100 poisoned arrows."));
talkEntry:addResponse("Words cannot express how grateful I am. Take my very own bow, now that the wolves are gone, I can rely on my spear again.");
talkEntry:addConsequence(npc.base.consequence.item.item(2708, 1, 777, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(549, 100, 333, 0));
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 30));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 29));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen Langbogen und 100 vergiftete Pfeile."));
talkEntry:addResponse("Worte k�nnen nicht beschreiben, wie dankbar ich bin. Nehmt meine Bogen, nun, da die W�lfe fort sind, kann ich mich wieder auf meinen Speer verlassen.");
talkEntry:addConsequence(npc.base.consequence.item.item(2708, 1, 777, 0));
talkEntry:addConsequence(npc.base.consequence.item.item(549, 100, 333, 0));
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 30));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 30));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Poacher IV"));
talkEntry:addResponse("You may wonder why I didn't set out to hunt on my own. The self proclaimed guardians of the forest do not appreciate my deeds. I'd welcome if you'd make the elven guardian... disappear.");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 31));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der Wilderer IV"));
talkEntry:addResponse("Ihr m�gt euch fragen, warum ich noch nicht selbst zur Jagd ausgezogen bin. Die selbsternannten W�chter des Waldes hei�en nicht gut, was ich tue. Ich w�rde es begr��en, wenn ihr die Elfenwache... verschwinden lassen w�rdet.");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 31));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] The Poacher IV"));
talkEntry:addResponse("You may wonder why I didn't set out to hunt on my own. The self proclaimed guardians of the forest do not appreciate my deeds. I'd welcome if you'd make the elven guardian... disappear.");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 31));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 30));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Der Wilderer IV"));
talkEntry:addResponse("Ihr m�gt euch fragen, warum ich noch nicht selbst zur Jagd ausgezogen bin. Die selbsternannten W�chter des Waldes hei�en nicht gut, was ich tue. Ich w�rde es begr��en, wenn ihr die Elfenwache... verschwinden lassen w�rdet.");
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 31));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 30));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 32));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("There are still a pair of keen eyes in the Elstree forest that won't let me hunt what I need. Please, could you... shut those eyes?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 30));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 32));
talkEntry:addResponse("Es gibt immernoch ein Paar aufmerksamer Augen im Elsbaumwald, welches mich nicht das jagen l�sst, was ich brauche. K�nntet ihr bitte diese Augen... f�r immer schlie�en?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 30));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 32));
talkEntry:addResponse("There are still a pair of keen eyes in the Elstree forest that won't let me hunt what I need. Please, could you... shut those eyes?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, ">", 30));
talkEntry:addCondition(npc.base.condition.quest.quest(4, "<", 32));
talkEntry:addResponse("Es gibt immernoch ein Paar aufmerksamer Augen im Elsbaumwald, welches mich nicht das jagen l�sst, was ich brauche. K�nntet ihr bitte diese Augen... f�r immer schlie�en?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 32));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded magical ruby ring."));
talkEntry:addResponse("Hooray! No elven rapscallion will keep me from hunting anymore! Of course, just to feed my children... However, take this ring, it helped me evading those wicked elves long enough.");
talkEntry:addConsequence(npc.base.consequence.item.item(68, 1, 888, 21));
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 33));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".+");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 32));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen magischen Rubinring."));
talkEntry:addResponse("Hurra! Kein elfischer Halunke wird sich mir nun noch in den Weg stellen, wenn ich jagen gehen... nat�rlich, um meine Kinder zu ern�hren, versteht sich. Hier, nehmt diesen Ring, er hat mir lange genug geholfen, mich diesen verdammten Elfen zu entziehen.");
talkEntry:addConsequence(npc.base.consequence.item.item(68, 1, 888, 21));
talkEntry:addConsequence(npc.base.consequence.queststatus.queststatus(4, "=", 33));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 33));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("My friend, you helped me and my family more than enough. Thank you and may Malachin bless you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 33));
talkEntry:addResponse("Mein Freund, ihr habt mir und meiner Familie mehr als genug geholfen. Habt dank und m�ge Malachin euch segnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 33));
talkEntry:addResponse("My friend, you helped me and my family more than enough. Thank you and may Malachin bless you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addCondition(npc.base.condition.quest.quest(4, "=", 33));
talkEntry:addResponse("Mein Freund, ihr habt mir und meiner Familie mehr als genug geholfen. Habt dank und m�ge Malachin euch segnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("easter");
talkEntry:addTrigger("egg");
talkEntry:addResponse("I once found a strange egg in the Elstree forest. It was huge! But I left it where it was, who knows what hatches from such eggs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("osterei");
talkEntry:addResponse("Einst habe ich ein merkw�rdiges Ei im Elsbaumwald gefunden. Es war riesig! Aber ich habe es zur�ckgelassen, wo es war, wer wei�, was aus solchen Eiern alles schl�pfen kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Indeed?");
talkEntry:addResponse("So, what?");
talkEntry:addResponse("#me shakes his head slightly: 'Sorry, can you rephrase that?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Ist dem so?");
talkEntry:addResponse("Gut, und nun?");
talkEntry:addResponse("#me sch�ttelt seinen Kopf: 'Entschuldigt, k�nnt ihr das anders ausdr�cken?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("I don't quite understand, sorry.");
talkEntry:addResponse("Pardon me?");
talkEntry:addResponse("What?!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Ich verstehe nicht recht...");
talkEntry:addResponse("Entschuldigt?");
talkEntry:addResponse("Was?!");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me sch�rft sein Messer.", "#me sharpens his knife.");
talkingNPC:addCycleText("#me murmelt: 'Verdammte W�lfe!'", "#me mumbles: 'Damned wolves!'");
talkingNPC:addCycleText("#me hustet.", "#me coughs.");
talkingNPC:addCycleText("#me nie�t.", "#me sneezes.");
talkingNPC:addCycleText("#me sortiert einige Felle, offensichtlich bedacht, dies nicht allzu auff�llig zu tun.", "#me sorts some fur, obviously trying to hide them.");
talkingNPC:addCycleText("#me z�hlt die Pfeile in einem fein bestickten K�cher.", "#me counts arrows in a decorated quiver.");
talkingNPC:addCycleText("#me spitzt einen langen Stock mit einem Messer an.", "#me carves a long stick with a knife.");
talkingNPC:addCycleText("Psst, wollt ihr bestes Fell... oh! Ich habe nichts gesagt.", "Shh, want to have best fur... uh, nevermind!");
talkingNPC:addCycleText("#me steckt grinsend einen Stock in eine sofort zuschnappende Falle.", "#me sticks a stick into a snapping trap, grinning.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Das ist ein NPC dessen Entwickler zu faul war eine Beschreibung einzutragen.", "This is a NPC who's developer was too lazy to type in a description.");
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