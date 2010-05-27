--Name:        Nimbur Goldhand 
--Race:        Zwerg
--Town:        Newbie Insel
--Function:    Schmieden beibringen
--Position:    x=-107 y=-126 z=0
--Facing:      swest
--Last Update: 16/06/2008
--Update by:   Kadiya


require("npcs.base.autonpcfunctions")
module("npcs.nimbur_goldhand")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Bitte nicht anfassen");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Please don't touch.");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end
 
    npcs.base.autonpcfunctions.InitTalkLists()

    thisNPC:increaseSkill(1,"common language",100);

	-- ********* START DYNAMIC PART ********

    -- Small talk
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("#me","");
    npcs.base.autonpcfunctions.AddTraderTrigger("hello","Hey ho! I'm "..thisNPC.name..". The 'Goldhands' are the best goldsmiths, because runs in our family...hehe. You can count yourself lucky to meet the best one...me! But if you want, I can show you some things of my craft.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("greet");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("hallo","Hey ho! Ich bin "..thisNPC.name..". Wu�test du, dass aus der Familie Goldhand seit Generationen die besten Goldschmiede stammen? Aber der Allerbeste von ihnen bin ich! Wenn du willst zeige ich dir ein wenig �ber mein Handwerk.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("gr[�u][s�]");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddAdditionalTrigger("greet");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("gr[�u][s�]");
    npcs.base.autonpcfunctions.AddTraderTrigger("who you","I'm "..thisNPC.name..". The 'Goldhands' are the best goldsmiths arround, it runs in our family...hehe. And you can count yourself lucky to meet the best one...me! But if you want, I can show you some things of my craft.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("what you");
    npcs.base.autonpcfunctions.AddTraderTrigger("wer du","Ich bin "..thisNPC.name..". Wu�test du, dass aus der Familie Goldhand seit Generationen die besten Goldschmiede stammen? Und ich bin der Allerbeste von ihnen! Wenn du willst zeige ich dir ein wenig �ber mein Handwerk.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wer ihr");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("was du");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("was ihr");
    npcs.base.autonpcfunctions.AddTraderTrigger("dank","Bitte sehr.");
    npcs.base.autonpcfunctions.AddTraderTrigger("thank","You're welcome.");
    npcs.base.autonpcfunctions.AddTraderTrigger("bye","Arr...Bye.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("farewell");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("be well");
    npcs.base.autonpcfunctions.AddAdditionalText("Farewell");
    npcs.base.autonpcfunctions.AddAdditionalText("Farewell, until we meet again.");
    npcs.base.autonpcfunctions.AddTraderTrigger("tsch[�u][�s]","Mach's gut, bis zum n�chstn Mal.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("tschue[s�]");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("leb wohl");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wiederseh");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("auf bald");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("bis bald");
    npcs.base.autonpcfunctions.AddAdditionalText("Tsch�ss auch.");
    npcs.base.autonpcfunctions.AddAdditionalText("Wiedersehn!");
    npcs.base.autonpcfunctions.AddTraderTrigger("hilf","Aye! Ick kann dir die Grundlagen des Goldschmiedens beibringen...wat sagste?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("state","<",10);
    npcs.base.autonpcfunctions.AddConsequence("state","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("help","I can teach ye the basics of goldsmithing. What did ye' say??");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("state","<",10);
    npcs.base.autonpcfunctions.AddConsequence("state","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("reset","Status reset!");
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);

    -- Status: 0 - 1 (start teaching)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("smith","Arr...right. Listen to me, I tell you all about goldsmithing you must know. Are you ready?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("craft");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("teach");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("learn");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("show");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddConsequence("state","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("schmied","Arr...in Ordnung. H�r mich genau zu, ich kann dir alles �ber das goldschmieden beibringen, was du wissen must. Bist du bereit?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("handwerk");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("lern");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("lehr");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("zeig");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddConsequence("state","=",1);

    -- Starthilfe
    --
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Sag \"Hilfe\" wenn du nicht weiter wei�t.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Say \"help\" if you don't know, what to do.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);

    -- Status: 1 -> 10 (Schmelzzange, Eisen und Kohle geben. Schmelzen erkl�ren.)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("yes","Firstly I show you, how to smelt ore. Here you have a crucible-pincer and a hand full of coal and iron ore. Put the crucible-pincer in your hands and the coal and the ore 'in' your belt. Stay in front of the furnace and 'use' the furnace. Come back, wenn you have at least 10 iron ingots. If you already know how to smelt ore just say \"continue\".");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddConsequence("state","=",10);
    npcs.base.autonpcfunctions.AddConsequence("item",2751,1,999,0);
    npcs.base.autonpcfunctions.AddConsequence("item",21,10,333,0);
    npcs.base.autonpcfunctions.AddConsequence("item",22,10,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("ja","Als erstes zeig ich dir, wie man Erze einschmilzt. Hier hast du eine Tiegelzange und eine handvoll Kohle und Eisenerz. Nimm die Tiegelzange in die Hand und die Kohle und das Eisenerz 'in' den G�rtel. Dann stell dich vor die Esse dort und 'benutze' die Esse. Komm wieder, wenn du 10 Eisenbarren geschmolzen hast. Wenn du schon wei�t, wie man Eisenbarren einschmilzt sag \"Weiter\".");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddConsequence("state","=",10);
    npcs.base.autonpcfunctions.AddConsequence("item",2751,1,999,0);
    npcs.base.autonpcfunctions.AddConsequence("item",21,10,333,0);
    npcs.base.autonpcfunctions.AddConsequence("item",22,10,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("no","Arr...Allright. Come back whenever you want.");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("nein","Arr...In Ordnung. Komm zur�ck wann immer du willst.");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);

    -- Status: 1 (eine andere Anwort)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","I ask you if I should teach you smithing. Just say \"yes\" or \"no\".");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Ich habe dich gefragt, ob ich dir das Goldschmieden beibringen soll...sag einfach \"ja\", oder \"nein\".");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);

    -- Status: 10 (Weiter)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("continue","Arr...you know how to smelt ironore? Well, I can give you the iron ingots you need if you want. Agreed?");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddConsequence("state","=",11);
    npcs.base.autonpcfunctions.AddTraderTrigger("weiter","Arr...du wei� also schon, wie man Eisenbarren herstellt? Auch gut, ich geb dir einfach die Eisenbarren, die du f�r das Goldschmieden brauchst. Einverstanden?");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddConsequence("state","=",11);

    -- Status: 10 (Hilfe)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("help","Arr...does the furnace don't want like you want? Check, if you have the crucible-pincer really in your hands and the coal and the ore 'in' your belt. Stay directly in front of the furnace and 'use' the furnace to start smelting. If it still don't work, I can give you some iron ingots, so that we can continue. Did you want?");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddConsequence("state","=",11);
    npcs.base.autonpcfunctions.AddTraderTrigger("hilf","Arr...will die Esse nicht so wie du, mein Freund? �berpr�f nochmal, ob du wirklich die Tiegelzange in der Hand und Kohle sowie Eisenerz 'im' G�rtel hast. Dann einfach einmal die Esse 'benutzen' und schon sollte das Einschmelzen wie von selbst gehen. Wenns gar net klappen will, kann ich dir aber auch einfach ein paar Eisenbarren geben. Willste welche haben?");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddConsequence("state","=",11);

    -- Status: 11 (Auf Wunsch wird Eisenbarren gegeben)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("yes","Here you have some. Well...can we continue then?");
    npcs.base.autonpcfunctions.AddCondition("state","=",11);
    npcs.base.autonpcfunctions.AddConsequence("state","=",2);
    npcs.base.autonpcfunctions.AddConsequence("item",2535,10,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("ja","Hier, haste welche. Wie sieht's aus...wollen wir dann weitermachen?");
    npcs.base.autonpcfunctions.AddCondition("state","=",11);
    npcs.base.autonpcfunctions.AddConsequence("state","=",2);
    npcs.base.autonpcfunctions.AddConsequence("item",2535,10,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("no","Yes, retry it. That is the right way.");
    npcs.base.autonpcfunctions.AddCondition("state","=",11);
    npcs.base.autonpcfunctions.AddConsequence("state","=",10);
    npcs.base.autonpcfunctions.AddTraderTrigger("nein","Ja, versuch es ruhig selbst nochmal. Das ist der richtige Weg.");
    npcs.base.autonpcfunctions.AddCondition("state","=",11);
    npcs.base.autonpcfunctions.AddConsequence("state","=",10);

    -- Status: >=1 (Eine neue Tiegelzange)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("pincer","Did you need a new crucible-pincer ? Here you have one.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("crucible");
    npcs.base.autonpcfunctions.AddCondition("state",">=",10);
    npcs.base.autonpcfunctions.AddCondition("item",2751,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",2751,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("zange","Brauchst du eine neue Tiegelzange? Hier hast du eine.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("tiegel");
    npcs.base.autonpcfunctions.AddCondition("state",">=",10);
    npcs.base.autonpcfunctions.AddCondition("item",2751,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",2751,1,999,0);

    -- Status: 10 Mehr Eisenerz
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("eisen","Du brauchst mehr Eisenerz, richtig? Hier bitte sehr.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("erz");
    npcs.base.autonpcfunctions.AddCondition("state",">=",10);
    npcs.base.autonpcfunctions.AddCondition("item",22,"all","<",2);
    npcs.base.autonpcfunctions.AddConsequence("item",22,10,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("iron","You need more iron ore, right? Here you are.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ore");
    npcs.base.autonpcfunctions.AddCondition("state",">=",10);
    npcs.base.autonpcfunctions.AddCondition("item",22,"all","<",2);
    npcs.base.autonpcfunctions.AddConsequence("item",22,10,333,0);

    -- Status: 11 Mehr Kohle
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("kohle","Du brauchst mehr Kohle, richtig? Hier bitte sehr.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",10);
    npcs.base.autonpcfunctions.AddCondition("item",21,"all","<",2);
    npcs.base.autonpcfunctions.AddConsequence("item",21,10,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("coal","You need more coal, right? Here you are.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("ore");
    npcs.base.autonpcfunctions.AddCondition("state",">=",10);
    npcs.base.autonpcfunctions.AddCondition("item",21,"all","<",2);
    npcs.base.autonpcfunctions.AddConsequence("item",21,10,333,0);

    -- Status: 10 (Noch zu wenig Eisenbarren)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","You still have to little iron ingots. Come back, when you have smelt at least 10 ingots.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddCondition("item",2535,"all","<",10);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Du hast noch zu wenig Eisenbarren. Komm wieder, wenn du mindestens 10 Barren geschmolzen hast.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddCondition("item",2535,"all","<",10);
    
    -- Status: 10 -> 2 (Die Eisenbarren sind da - weitermachen?)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Great! Ye' did it! One more hint: It also possible to copper, gold and merinium ingots. But at first you need mostly iron ingots. The next step now is to smith the iron ingot. Are ye' ready to continue?");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddCondition("item",2535,"all",">",9);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddConsequence("state","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Gro�artig! Du hast's geschafft! Ein Hinweis noch: Es ist auch m�glich Kupfer-, Gold- oder Meriniumbarren zu schmelzen. Aber zu Beginn wirst du meistens Eisenbarren brauchen. Als n�chstes wird der Eisenbarren geschmiedet, bereit?");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddCondition("item",2535,"all",">",9);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddConsequence("state","=",2);

    -- Status: 2 -> 20 (Feinschmiedehammer geben - Kelch schmieden)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("yes","Arr, there ye' are. Smith out of this iron ingots a goblet and come back! Stay on front of the anvil and 'use' this finesmithing hammer. If you used the hammer, you can choose between several categories. The goblets are represented by a iron goblet! Choose this category and click on the goblet. Just try it out!");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddConsequence("state","=",20);
    npcs.base.autonpcfunctions.AddConsequence("item",122,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("ja","Jetzt solltest du erstmal zum Ambo� gehn. Stell dich davor und 'benutzte' diesen Feinschmiedehammer. Es �ffnet sich dann ein Men�, wo du ausw�hln kannst, in welcher Kategorie du etwas schmieden willst. Die Kelche werden durch den Eisenkelch representiert. W�hle diese Kategorie und dann anschlie�end den Kelch aus. Komm wieder wenn du einen Kelch geschmiedet hast!");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddConsequence("state","=",20);
    npcs.base.autonpcfunctions.AddConsequence("item",122,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("no","Arr...Allright. Come back whenever you want.");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("nein","Arr...In Ordnung. Komm zur�ck wann immer du willst.");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);

    -- Status: 20 (Hilfe)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("help","Arr...does the hammer don't want like you want? Check, if you have the finesmithing hammer really in your hands and the iron ingots 'in' your belt. Stay directly in front of the anvil and 'use' the hammer. Choose first the iron goblet and then the goblet to start smithing. If you need more iron ingots, just tell me.");
    npcs.base.autonpcfunctions.AddCondition("state","=",20);
    npcs.base.autonpcfunctions.AddTraderTrigger("hilf","Arr...will der Hammer nicht so wie du, mein Freund? �berpr�fe noch einmal, ob du den Hammer auch wirklich in der Hand und die Eisenbarren 'im' G�rtel hast. Stell dich direkt vor den Amboss und 'benutzen' den Hammer. W�hle in dem Men� zuerst den Eisenkelch und dann den Kelch aus. Wenn du noch mehr Eisenbarren brauchst, sag mir einfach Bescheid. Ich hab noch genug.");
    npcs.base.autonpcfunctions.AddCondition("state","=",20);

    -- Status: 20 (Mehr Eisenbarren)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("barren","Du brauchst mehr Eisenbarren, richtig? Hier bitte sehr.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",20);
    npcs.base.autonpcfunctions.AddCondition("item",2535,"all","<",2);
    npcs.base.autonpcfunctions.AddConsequence("item",2535,10,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("ingots","You need more iron ingots, right? Here you are.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",20);
    npcs.base.autonpcfunctions.AddCondition("item",2535,"all","<",2);
    npcs.base.autonpcfunctions.AddConsequence("item",2535,10,333,0);

    -- Status: 20 (Neuer Hammer)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger("hammer","Ye' need another hammer, aye?? Here ye' are.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",20);
    npcs.base.autonpcfunctions.AddCondition("item",122,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",122,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("nadel","Du brauchst 'nen neuen Hammer, aye? Hier haste einen.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",20);
    npcs.base.autonpcfunctions.AddCondition("item",122,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",122,1,999,0);

    -- Status: 20 (Zu wenig N�gel da)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Come again when ye have smithed at least 10 nails. If you need help or more ingots, ask me!");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("state","=",20);
    npcs.base.autonpcfunctions.AddCondition("item",1858,"all","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Komm wieder, wenn du mindestens 10 N�gel geschmiedet hast. Wenn du Hilfe oder mehr Eisenbarren brauchst, dann frag mich!");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("state","=",20);
    npcs.base.autonpcfunctions.AddCondition("item",1858,"all","=",0);

    -- Status: 52 (N�gel sind fertig)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Great! Ye' did it! One more hint: It may happen on other things that there are 'unfinished things' left, continue the work by 'using' the hammer with that 'things', having it placed at the belt of course. Now you know all about goldsmithing you must know. Farewell and good luck!");
    npcs.base.autonpcfunctions.AddCondition("state","=",20);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("item",1858,"all",">",0);
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Gro�artig! Du hast es geschafft! Ein Hinweis noch: Es kann passiern, dass 'unfertige Sachen' �brigbleiben, du kannst die Arbeit an ihnen fortsetzen, indem du den Hammer mit diesem Gegenstand, den du nat�rlich am G�rtel tr�gst, 'benutzt'. Du wei� nun alles, was man �ber das Goldschmieden wissen muss. Leb wohl und viel Erfolg!");
    npcs.base.autonpcfunctions.AddCondition("state","=",20);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("item",1858,"all",">",0);
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);

    -- Status: >10 (Unterricht wurde unterbrochen und wird nun fortgesetzt)
    --
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Should we continue? Just say \"yes\" or \"no\".");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("state","<",10);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Sollen wir weitermachen? Sag einfach \"ja\" oder \"nein\".");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("state","<",10);




	
        -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,1};
    TradStdLang=0;
    --common language=0
    --human language=1
    --dwarf language=2
    --elf language=3
    --lizard language=4
    --orc language=5
    --halfling language=6
    --fairy language=7
    --gnome language=8
    --goblin language=9
    --ancient language=10


    npcs.base.autonpcfunctions.increaseLangSkill(TradSpeakLang);
    thisNPC.activeLanguage=TradStdLang;
end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    npcs.base.autonpcfunctions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npcs.base.autonpcfunctions.BasicNPCChecks(originator,2) then
        if npcs.base.autonpcfunctions.LangOK(originator,TradSpeakLang) then
            local state = NPCStatus[originator.id];


            npcs.base.autonpcfunctions.TellSmallTalk(message,originator);
    	else
            npcs.base.autonpcfunctions.Confused(
            	"#me sieht dich leicht verwirrt an",
            	"#me looks at you a little confused"
            );
        end
    end
end

function CountItemsWithQuality( Character, ItemID, Quality, Compare )
    local count = 0;
    local i;
    local item;
    for i=0,17 do
        item = Character:getItemAt(i);
    	if item.id == ItemID then
    	    if Compare == 0 or Compare == nil then
    	        if item.quality == Quality then
    	            count = count+1;
    	        end
    	    elseif Compare == 1 then
    	        if item.quality > Quality then
    	            count = count+1;
    	        end
    	    elseif Compare == -1 then
    	        if item.quality < Quality then
    	            count = count+1;
    	        end
    	    end
    	end
    end
    local container = nil;
    container = Character:getBackPack();
    if container then
        local worked = false;
        for i=1,100 do
            worked, item = container:viewItemNr(i);
            if worked then
                if item.id == ItemID then
                    if Compare == 0 or Compare == nil then
                        if item.quality == Quality then
                            count = count+1;
                        end
                    elseif Compare == 1 then
                        if item.quality > Quality then
                            count = count+1;
                        end
                    elseif Compare == -1 then
                        if item.quality < Quality then
                            count = count+1;
                        end
                    end
                end
            else
                break;
            end
        end
    end
    return count;
end




