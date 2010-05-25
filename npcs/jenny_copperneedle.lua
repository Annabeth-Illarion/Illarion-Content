--Name:        Jenny Copperneedle
--Race:        Halbling
--Town:        Newbie Insel
--Function:    Schneidern beibringen
--Position:    x=-76 y=-101 z=0
--Facing:      south
--Last Update: 05/07/2008
--Update by:   pharse


require("npcs.base.autonpcfunctions")

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

    InitTalkLists()

    thisNPC:increaseSkill(1,"common language",100);

	-- ********* START DYNAMIC PART ********

    -- Small talk
    --
    AddTraderTrigger("hello","Hello my friend! I am "..thisNPC.name..", the best tailor of this island. If you want, I show you how to become a good tailor.");
    AddAdditionalTrigger("greet");
    AddCondition("state","=",0);
    AddTraderTrigger("hallo","Hallo mein Freund! Ich bin "..thisNPC.name..", die beste Schneiderin auf der Insel. Wenn du m�chtest zeige ich dir, wie du ein guter Schneider wirst.");
    AddAdditionalTrigger("gr[�u][s�]");
    AddCondition("state","=",0);
    AddAdditionalTrigger("greet");
    AddAdditionalTrigger("gr[�u][s�]");
    AddTraderTrigger("who you","I am "..thisNPC.name..", the best tailor of this island. If you want, I show you how to become a good tailor.");
    AddAdditionalTrigger("what you");
    AddTraderTrigger("wer du","Hallo mein Freund! Ich bin "..thisNPC.name..", die beste Schneiderin auf der Insel. Wenn du m�chtest zeige ich dir, wie du ein guter Schneider wirst.");
    AddAdditionalTrigger("wer ihr");
    AddAdditionalTrigger("was du");
    AddAdditionalTrigger("was ihr");
    AddTraderTrigger("dank","Bitte sehr.");
    AddTraderTrigger("thank","You're welcome");
    AddTraderTrigger("bye","Bye, bye.");
    AddAdditionalTrigger("farewell");
    AddAdditionalTrigger("be well");
    AddAdditionalText("Be well, my friend!");
    AddAdditionalText("Farewell, until we meet again.");
    AddTraderTrigger("tsch[�u][�s]","Auf Wiedersehen, mein Freund!");
    AddAdditionalTrigger("tschue[s�]");
    AddAdditionalTrigger("leb wohl");
    AddAdditionalTrigger("wiederseh");
    AddAdditionalTrigger("auf bald");
    AddAdditionalTrigger("bis bald");
    AddAdditionalText("Tsch�ss auch.");
    AddAdditionalText("Leb wohl, bis zum n�chsten Mal.");
    AddTraderTrigger("hilf","Wenn du m�chtest kann ich dir zeigen, wie man schneidert. M�chtest du?");
    AddCondition("lang","german");
    AddCondition("state","<",10);
    AddConsequence("state","=",1);
    AddTraderTrigger("help","If you want, I can show you how to tailor. Want you?");
    AddCondition("lang","english");
    AddCondition("state","<",10);
    AddConsequence("state","=",1);
    AddTraderTrigger("reset","Status reset!");
    AddConsequence("state","=",0);

    -- Status: 0 - 1 (start teaching)
    --
    AddTraderTrigger("tailor","You want to learn how to tailor? I am very pleased to hear that. Want to start right away?");
    AddAdditionalTrigger("craft");
    AddAdditionalTrigger("teach");
    AddAdditionalTrigger("learn");
    AddAdditionalTrigger("show");
    AddCondition("state","=",0);
    AddCondition("lang","english");
    AddConsequence("state","=",1);
    AddTraderTrigger("schneider","Du m�chtest also lernen, wie man schneidert? Das freut mich sehr. Wollen wir gleich anfangen?");
    AddAdditionalTrigger("handwerk");
    AddAdditionalTrigger("lern");
    AddAdditionalTrigger("lehr");
    AddAdditionalTrigger("zeig");
    AddCondition("state","=",0);
    AddCondition("lang","german");
    AddConsequence("state","=",1);

    -- Starthilfe
    --
    AddTraderTrigger(".+","Sag \"Hilfe\" wenn du nicht weiter wei�t.");
    AddCondition("lang","german");
    AddCondition("state","=",0);
    AddTraderTrigger(".+","Say \"help\" if you don't know, what to do.");
    AddCondition("lang","english");
    AddCondition("state","=",0);

    -- Status: 1 -> 10 (Schere zum Wolle holen)
    --
    AddTraderTrigger("yes","Excellent. Firstly, we need some wool. There are some sheeps over there. Stay directly in front of a sheep and 'use' the scissors. Come again when you have have at least 15 pieces of wool.");
    AddCondition("state","=",1);
    AddConsequence("state","=",10);
    AddConsequence("item",6,1,999,0);
    AddTraderTrigger("ja","Hervorragend! Als erstes brauchen wir Wolle. Da vorne grasen ein paar Schafe. Du musst dich direkt vor eines der Schafe stellen und die Schere 'benutzen'. Komm wieder wenn du mindestens 15 Einheiten Wolle hast.");
    AddCondition("state","=",1);
    AddConsequence("state","=",10);
    AddConsequence("item",6,1,999,0);
    AddTraderTrigger("no","It's a pity, but maybe later. You can come back whenever you want.");
    AddCondition("state","=",1);
    AddConsequence("state","=",0);
    AddTraderTrigger("nein","Schade, aber vielleicht sp�ter. Komm zur�ck wann immer du willst.");
    AddCondition("state","=",1);
    AddConsequence("state","=",0);

    -- Status: 1 (eine andere Anwort)
    --
    AddTraderTrigger(".+","I ask you if I should teach you tailoring. Just say \"yes\" or \"no\".");
    AddCondition("lang","english");
    AddCondition("state","=",1);
    AddTraderTrigger(".+","Ich habe dich gefragt, ob ich dir das Schneidern beibringen soll...sag einfach \"ja\", oder \"nein\".");
    AddCondition("lang","german");
    AddCondition("state","=",1);

    -- Status: 10 (Hilfe)
    --
    AddTraderTrigger("help","Does it not work? You must stay facing the sheep and then 'use' the scissors. This needs much dexterity from time to time, because the sheeps move, but with a bit training it works fine. Otherwise I can give you some wool. Want you?");
    AddCondition("state","=",10);
    AddConsequence("state","=",11);
    AddTraderTrigger("hilf","Klappt etwas nicht? Du musst dich direkt neben das Schaf stellen und dann die Schere 'benutzen. Das erfordert manchmal viel geschickt, weil die Schafe sich bewegen, aber mit etwas �bung wirst du es sicher schaffen. Ich kann dir aber auch einfach etwas Wolle geben. M�chtest du das?");
    AddCondition("state","=",10);
    AddConsequence("state","=",11);

    -- Status: 11 (Auf Wunsch wird Wolle gegeben)
    --
    AddTraderTrigger("yes","Here you go. This should be enough for now. Should we continue?");
    AddCondition("state","=",11);
    AddConsequence("state","=",2);
    AddConsequence("item",170,15,999,0);
    AddTraderTrigger("ja","Hier, bitte sehr. Das sollte erstmal reichen. Wollen wir dann weitermachen?");
    AddCondition("state","=",11);
    AddConsequence("state","=",2);
    AddConsequence("item",170,15,999,0);
    AddTraderTrigger("no","Yes, retry it. That is the right way.");
    AddCondition("state","=",11);
    AddConsequence("state","=",10);
    AddTraderTrigger("nein","Ja, versuch es ruhig selbst nochmal. Das ist der richtige Weg.");
    AddCondition("state","=",11);
    AddConsequence("state","=",10);

    -- Status: >=1 (Eine neue Schere)
    --
    AddTraderTrigger("scissors","Did you need a new scissors? Here you have one.");
    AddCondition("state",">=",1);
    AddCondition("item",6,"all","=",0);
    AddConsequence("item",6,1,999,0);
    AddTraderTrigger("schere","Brauchst du eine neue Schere? Hier hast du eine.");
    AddCondition("state",">=",1);
    AddCondition("item",6,"all","=",0);
    AddConsequence("item",6,1,999,0);

    -- Status: >=1 (Keine Schafe mehr da)
    --
    AddTraderTrigger("schaf","Es sind keine Schafe mehr da? Warte einfach einen Augenblick, es kommen bestimmt gleich neue.");
    AddCondition("state",">=",1);
    AddTraderTrigger("sheep","There are no more sheeps arround? Just wait a minute, I'm sure, that they come some new soon.");
    AddCondition("state",">=",1);

    -- Status: 10 (Noch zu wenig Wolle)
    --
    AddTraderTrigger(".+","You still have to little wool. Come back, when you have at least 15 pieces of wool.");
    AddCondition("lang","english");
    AddCondition("state","=",10);
    AddCondition("item",170,"all","<",15);
    AddTraderTrigger(".+","Du hast noch zu wenig Wolle. Komm wieder, wenn du mindestens 15 Einheiten hast.");
    AddCondition("lang","german");
    AddCondition("state","=",10);
    AddCondition("item",170,"all","<",15);

    -- Status: 10 -> 2 (Die Wolle ist da - weitermachen?)
    --
    AddTraderTrigger(".+","Great! You did it! One more hint: It is possible to get wool when you kill sheep , but it's much more productive when you just shear the living sheep. Well, next I will explain to you how you can work up wool to a ball of wool. Ready?");
    AddCondition("state","=",10);
    AddCondition("item",170,"all",">",14);
    AddCondition("lang","english");
    AddConsequence("state","=",2);
    AddTraderTrigger(".+","Gro�artig! Du hast's geschafft! Ein Hinweis noch: Du bekommst auch Wolle, wenn du die Schafe angreifst und t�test. Aber es ist viel effektiver das lebende Schaf zu scheren. Gut, als n�chstes erkl�re ich dir, wie du die Wolle zu einem Wollkn�uel verarbeiten kannst. Bereit?");
    AddCondition("state","=",10);
    AddCondition("item",170,"all",">",14);
    AddCondition("lang","german");
    AddConsequence("state","=",2);

    -- Status: 2 -> 20 (Wolle spinnen)
    --
    AddTraderTrigger("yes","Fine. The next is to spin the wool. You see that spinning wheel over there? Take the scissors in your hand, the wool at your belt and go in front of it. When you 'use' the spinning weel you start automatically to spin. Come back, when you have spun all your wool to balls.");
    AddCondition("state","=",2);
    AddConsequence("state","=",20);
    AddTraderTrigger("ja","Fein! Als n�chstes muss die Wolle gesponnen werden. Siehst du das Spinnrad da vorne? Nimm die Schere in die Hand und die Wolle an den G�rtel und stell dich davor. Wenn du nun das Spinnrad 'benutzt' beginnst du zu spinnen. Komm zur�ck, wenn du all deine Wolle zu Wollkn�ulen versponnen hast.");
    AddCondition("state","=",2);
    AddConsequence("state","=",20);
    AddTraderTrigger("no","It's a pity, but maybe later. You can come back whenever you want.");
    AddCondition("state","=",2);
    AddTraderTrigger("nein","Schade, aber vielleicht sp�ter. Komm zur�ck wann immer du willst.");
    AddCondition("state","=",2);

    -- Status: 20 (Hilfe)
    --
    AddTraderTrigger("help","Does it not work? You must hold the scissors in your hand and the wool 'in' your belt. Stay directly in front of the spinning weel and 'use' it. Otherwise I can give you some balls of wool. Want you?");
    AddCondition("state","=",20);
    AddConsequence("state","=",21);
    AddTraderTrigger("hilf","Klappt etwas nicht? Du must die Schere in der Hand halten und die Wolle 'im' G�rtel haben. Stell dich direkt vor das Spinnrad und 'benute' das Spinnrad. Ich kann dir aber auch einfach etwas Wolle geben. M�chtest du das?");
    AddCondition("state","=",20);
    AddConsequence("state","=",21);

    -- Status: 21 (Auf Wunsch werden Wollkn�ule gegeben)
    --
    AddTraderTrigger("yes","Here you go. This should be enough for now. Should we continue?");
    AddCondition("state","=",21);
    AddConsequence("state","=",3);
    AddConsequence("item",168,15,999,0);
    AddTraderTrigger("ja","Hier, bitte sehr. Das sollte erstmal reichen. Wollen wir dann weitermachen?");
    AddCondition("state","=",21);
    AddConsequence("state","=",3);
    AddConsequence("item",168,15,999,0);
    AddTraderTrigger("no","Yes, retry it. That is the right way.");
    AddCondition("state","=",21);
    AddConsequence("state","=",20);
    AddTraderTrigger("nein","Ja, versuch es ruhig selbst noch einmal. Das ist der richtige Weg.");
    AddCondition("state","=",21);
    AddConsequence("state","=",20);

    -- Status: 20 (Noch zu wenig Wolle)
    --
    AddTraderTrigger(".+","You still have to little balls of wool. Come back, when you have at least 15 pieces.");
    AddCondition("lang","english");
    AddCondition("state","=",20);
    AddCondition("item",168,"all","<",15);
    AddTraderTrigger(".+","Du hast noch zu wenig Wollkn�ule. Komm wieder, wenn du mindestens 15 St�ck hast.");
    AddCondition("lang","german");
    AddCondition("state","=",20);
    AddCondition("item",168,"all","<",15);

    -- Status: 20 -> 3 (Die Wollkn�ule ist da - weitermachen?)
    --
    AddTraderTrigger(".+","Great! Now I show you how to produce cloth with this balls of wool. Ready?");
    AddCondition("state","=",20);
    AddCondition("item",168,"all",">",14);
    AddCondition("lang","english");
    AddConsequence("state","=",3);
    AddTraderTrigger(".+","Gro�artig! Dann zeig ich dir jetzt, wie du aus den Wollkn�ulen Stoffe herstellen kannst. Bist du soweit?");
    AddCondition("state","=",20);
    AddCondition("item",168,"all",">",14);
    AddCondition("lang","german");
    AddConsequence("state","=",3);

    -- Status: 3 -> 30 (Wollkn�ule weben)
    --
    AddTraderTrigger("yes","With a loom you can weave the ball of wools to cloth. For this, stay in front of the loom and 'use' it. You should have the scissors in your hand and the balls of wool 'in' your belt for this. Come back, when you have finished.");
    AddCondition("state","=",3);
    AddCondition("lang","english");
    AddConsequence("state","=",30);
    AddTraderTrigger("ja","Mit einem Webstuhl kannst du nun die Wollkn�ule zu Stoff weben. Stell dich einfach vor den Webstuhl und 'benutze' ihn. Du solltest daf�r die Schere in der Hand und die Wollkn�ule 'im' G�rtel haben. Wenn du fertig bist, dann komm wieder.");
    AddCondition("state","=",3);
    AddCondition("lang","german");
    AddConsequence("state","=",30);
    AddTraderTrigger("no","It's a pity, but maybe later. You can come back whenever you want.");
    AddCondition("state","=",3);
    AddTraderTrigger("nein","Schade, aber vielleicht sp�ter. Komm zur�ck wann immer du willst.");
    AddCondition("state","=",3);

    -- Status: 30 (Hilfe)
    --
    AddTraderTrigger("help","Does it not work? You must hold the scissors in your hand and the balls of wool 'in' your belt. Stay directly in front of the loom weel and 'use' it. Otherwise I can give you some cloth. Want you?");
    AddCondition("state","=",30);
    AddConsequence("state","=",31);
    AddTraderTrigger("hilf","Klappt etwas nicht? Du must die Schere in der Hand halten und die Wollkn�ule 'im' G�rtel haben. Stell dich direkt vor den Webstuhl und 'benute' den Webstuhl. Ich kann dir aber auch einfach etwas Stoff geben. M�chtest du das?");
    AddCondition("state","=",30);
    AddConsequence("state","=",31);

    -- Status: 	31 (Auf Wunsch wird grauer Stoff gegeben)
    --
    AddTraderTrigger("yes","Here you go. This should be enough for now. Should we continue?");
    AddCondition("state","=",31);
    AddConsequence("state","=",4);
    AddConsequence("item",176,5,999,0);
    AddTraderTrigger("ja","Hier, bitte sehr. Das sollte erstmal reichen. Wollen wir dann weitermachen?");
    AddCondition("state","=",31);
    AddConsequence("state","=",4);
    AddConsequence("item",176,5,999,0);
    AddTraderTrigger("no","Yes, retry it. That is the right way.");
    AddCondition("state","=",31);
    AddConsequence("state","=",30);
    AddTraderTrigger("nein","Ja, versuch es ruhig selbst noch einmal. Das ist der richtige Weg.");
    AddCondition("state","=",31);
    AddConsequence("state","=",30);

    -- Status: 30 (Noch kein Stoff da)
    --
    AddTraderTrigger(".+","Before we can continue you need some cloth. Tell me, if you need help.");
    AddCondition("lang","english");
    AddCondition("state","=",30);
    AddCondition("item",176,"all","=",0);
    AddTraderTrigger(".+","Bevor wir weitermachen brauchst du erst Stoff. Wenn du hilfe brauchst, dann sag mir einfach bescheid.");
    AddCondition("lang","german");
    AddCondition("state","=",30);
    AddCondition("item",176,"all","=",0);

    -- Status: 30 -> 4 (Grauer Stoff ist da - weitermachen?)
    --
    AddTraderTrigger(".+","Excellent work! Now we can continue with the next step. Ready?");
    AddCondition("state","=",30);
    AddCondition("item",176,"all",">",0);
    AddCondition("lang","english");
    AddConsequence("state","=",4);
    AddTraderTrigger(".+","Gro�artig! Jetzt k�nnen wir mit dem n�chsten Schritt weitermachen. Bist du soweit?");
    AddCondition("state","=",30);
    AddCondition("item",176,"all",">",0);
    AddCondition("lang","german");
    AddConsequence("state","=",4);

    -- Status: 4 -> 40 (Garn herstellen)
    --
    AddTraderTrigger("yes","For tailoring you need among cloth some thread. You can produce it by yourself, when you work up the entrails of animals with a scissors. The best is to try it: Kill one of the animals around, put the entrails 'into' your belt and 'use' the scissors.");
    AddCondition("state","=",4);
    AddConsequence("state","=",40);
    AddTraderTrigger("ja","Zum schneidern brauchst du neben Stoff auch noch Garn. Das kannst du einfach selbst herstellen, indem du die Eingeweide von Tieren mit einer Schere bearbeitest. Versuche es doch am besten gleich einmal selbst. T�te eines der Tiere, die hier herumlaufen, lege die Eingeweide 'in' deinen G�rtel und benutze die Schere.");
    AddCondition("state","=",4);
    AddConsequence("state","=",40);
    AddTraderTrigger("no","It's a pity, but maybe later. You can come back whenever you want.");
    AddCondition("state","=",4);
    AddTraderTrigger("nein","Schade, aber vielleicht sp�ter. Komm zur�ck wann immer du willst.");
    AddCondition("state","=",4);

    -- Status: 40 (Hilfe)
    --
    AddTraderTrigger("help","Does it not work? You must hold the scissors in your hand and the entrails in' your belt. Then just 'use' the scissors. Otherwise I can give you some thread. Want you?");
    AddCondition("state","=",40);
    AddConsequence("state","=",41);
    AddTraderTrigger("hilf","Klappt etwas nicht? Du must die Schere in der Hand halten und die Eingeweide 'im' G�rtel haben. Dann einfach die Schere 'benutzen'. Ich kann dir aber auch einfach etwas Stoff geben. M�chtest du das?");
    AddCondition("state","=",40);
    AddConsequence("state","=",41);

  -- Status: 41 (Auf Wunsch wird Garn gegeben)
  --
    AddTraderTrigger("yes","Here you go. This should be enough for now. Should we continue?");
    AddCondition("state","=",41);
    AddConsequence("state","=",5);
    AddConsequence("item",50,5,999,0);
    AddTraderTrigger("ja","Hier, bitte sehr. Das sollte erstmal reichen. Wollen wir dann weitermachen?");
    AddCondition("state","=",41);
    AddConsequence("state","=",5);
    AddConsequence("item",50,5,999,0);
    AddTraderTrigger("no","Yes, retry it. That is the right way.");
    AddCondition("state","=",41);
    AddConsequence("state","=",40);
    AddTraderTrigger("nein","Ja, versuch es ruhig selbst noch einmal. Das ist der richtige Weg.");
    AddCondition("state","=",41);
    AddConsequence("state","=",40);

    -- Status 40 (Noch kein Garn da)
    --
    AddTraderTrigger(".+","Before we can continue you need some thread. Tell me, if you need help.");
    AddCondition("lang","english");
    AddCondition("state","=",40);
    AddCondition("item",50,"all","=",0);
    AddTraderTrigger(".+","Bevor wir weitermachen brauchst du erst Garn. Wenn du hilfe brauchst, dann sag mir einfach bescheid.");
    AddCondition("lang","german");
    AddCondition("state","=",40);
    AddCondition("item",50,"all","=",0);

    -- Status: 40 (Garn ist da - weitermachen?)
    --
    AddTraderTrigger(".+","Excellent work! Now we can start with tailoring cloth. Ready?");
    AddCondition("state","=",40);
    AddCondition("item",50,"all",">",0);
    AddCondition("lang","english");
    AddConsequence("state","=",5);
    AddTraderTrigger(".+","Gro�artig! Jetzt k�nnen wir anfangen mit dem n�hen von Kleidung. Bist du soweit?");
    AddCondition("state","=",40);
    AddCondition("item",50,"all",">",0);
    AddCondition("lang","german");
    AddConsequence("state","=",5);


    -- Status: 5 -> 50 (Schneidern)
    --
    AddTraderTrigger("yes","Here, take this needle. You should have all for tailoring you need for tailor your first clothing. If you need more cloth or thread just ask me. I give you more. Take the needle in your hand and the cloth and the thread 'in' your belt. Stay in front of the tailor table and 'use' the scissors. A menu open, where you can choose what do you want tailor. Please choose the \"grey coat\".");
    AddCondition("state","=",5);
    AddConsequence("item",47,1,999,0);
    AddConsequence("state","=",50);
    AddTraderTrigger("ja","Hier, nimm diese Nadel. Du solltest nun alles haben, was du brauchst um dein erstes Kleidungsst�ck zu n�hen. Wenn du noch mehr Stoff oder Garn brauchst, dann sag mir einfach bescheid. Ich kann dir auch noch was davon geben. Nimm die Nadel in die Hand und den Stoff und das Garn 'in' den G�rtel. Stell dich dann vor den Schneidertisch und 'benutze' die Nadel. In dem Men�, welches sich dann �ffnet kannst du ausw�hlen, was du n�hen willst. W�hle bitte den \"grauen Mantel.\"");
    AddCondition("state","=",5);
    AddConsequence("item",47,1,999,0);
    AddConsequence("state","=",50);
    AddTraderTrigger("no","It's a pity, but maybe later. You can come back whenever you want.");
    AddCondition("state","=",5);
    AddTraderTrigger("nein","Schade, aber vielleicht sp�ter. Komm zur�ck wann immer du willst.");
    AddCondition("state","=",5);

    -- Status: 50 (Mehr Garn)
    --
    AddTraderTrigger("garn","Du brauchst mehr Garn, richtig? Hier bitte sehr.");
    AddCondition("state",">=",50);
    AddCondition("item",50,"all","<",2);
    AddConsequence("item",50,5,333,0);
    AddTraderTrigger("thread","You need more thread, right? Here you are.");
    AddCondition("state",">=",50);
    AddCondition("item",50,"all","<",2);
    AddConsequence("item",50,5,333,0);

    -- Status: 50 (Mehr Stoff)
    --
    AddTraderTrigger("stoff","Du brauchst mehr grauen Stoff, richtig? Hier bitte sehr.");
    AddCondition("state",">=",50);
    AddCondition("item",176,"all","<",2);
    AddConsequence("item",176,5,333,0);
    AddTraderTrigger("cloth","You need more grey cloth, right? Here you are.");
    AddCondition("state",">=",50);
    AddCondition("item",176,"all","<",2);
    AddConsequence("item",176,5,333,0);

    -- Status: 50 (Neue Nadel)
    --
    AddTraderTrigger("needle","Did you need an new needle? Here you have one.");
    AddCondition("state",">=",50);
    AddCondition("item",47,"all","=",0);
    AddConsequence("item",47,1,999,0);
    AddTraderTrigger("nadel","Brauchst du eine neue Nadel? Hier hast du eine.");
    AddCondition("state",">=",50);
    AddCondition("item",47,"all","=",0);
    AddConsequence("item",47,1,999,0);

    -- Status: 50 (Hilfe)
    --
    AddTraderTrigger("help","Does it not work? You must hold the needle in your hand and the grey cloth and the thread  in' your belt. Then 'use' the needle to open the main menu. The red shirt is the symbol for clothing. Klick on the shirt to open the clothing-menu. In this menu choose the \"grey coat\".");
    AddCondition("state",">=",50);
    AddCondition("state","<",52);
    AddTraderTrigger("hilf","Klappt etwas nicht? Du must die Nadel in der Hand halten und den Stoff und das Garn am G�rtel tragen. Dann 'benutze' die Nadel um das Haupmen� zu �ffnen. Das rote Hemd ist das Symbol f�r Kleidung. Klick darauf um das Kleidungsmen� zu �ffnen. In diesem Men� w�hle dann \"Grauer Mantel\".");
    AddCondition("state",">=",50);
    AddCondition("state","<",52);

    -- Status: 50 (Kein Mantel da)
    --
    AddTraderTrigger(".+","Go to the tailor table and produce a grey coat. Come back, when you have finished.");
    AddCondition("lang","english");
    AddCondition("state","=",50);
    AddCondition("item",196,"all","=",0);
    AddTraderTrigger(".+","Geh zum Schneidertisch und n�he einen grauen Mantel. Komm wieder, wenn du fertig bist.");
    AddCondition("lang","german");
    AddCondition("state","=",50);
    AddCondition("item",196,"all","=",0);

    -- Status 51 (Mantel ist unfertig)
    --
    AddTraderTrigger(".+","Oh...this coat isn't finished. If you want to continue the work on an unfinished article of clothing good, just 'use' the needle with that clothing, having it placed at the belt of course.");
    AddCondition("state","=",51);
    AddCondition("lang","english");
    AddConsequence("state","=",50);
    AddTraderTrigger(".+","Oh...dieser Mantel ist noch nicht fertig. Wenn du die Arbeit an einem unfertigen Kleidungsst�ck weiterf�hren willst, dann 'benutze' die Nadel mit diesem Kleidungsst�ck, das du nat�rlich am G�rtel tr�gst.");
    AddCondition("state","=",51);
    AddCondition("lang","german");
    AddConsequence("state","=",50);

    -- Status: 52 (Mantel ist fertig)
    --
    AddTraderTrigger(".+","Great! This coat looks fantastic. Now you know all you must to know about tailoring. For some clothings you need dyed clothes. If you want to know how to dye cloth ask my sister Penny. She is over there by the barrel. I wish you good luck. Farewell!");
    AddCondition("state","=",52);
    AddCondition("lang","english");
    AddConsequence("state","=",0);
    AddTraderTrigger(".+","Gro�artig! Der Mantel ist wirklich sch�n geworden. Du wei�t nun alles, was man �ber das Schneidern wissen muss. F�r viele Kleidungsst�cke wirst du farbige Stoffe brauchen. Wenn du wissen willst, wie man Stoffe f�rbt, dann frag am besten meine Schwester Penny. Sie steht dort dr�ben neben dem Fass. Ich w�nsche dir viel Erfolg. Leb wohl!");
    AddCondition("state","=",52);
    AddCondition("lang","german");
    AddConsequence("state","=",0);

    -- Status: >10 (Unterricht wurde unterbrochen und wird nun fortgesetzt)
    --
    AddTraderTrigger(".+","Should we continue? Just say \"yes\" or \"no\".");
    AddCondition("lang","english");
    AddCondition("state","<",10);
    AddTraderTrigger(".+","Sollen wir weitermachen? Sag einfach \"ja\" oder \"nein\".");
    AddCondition("lang","german");
    AddCondition("state","<",10);





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


    increaseLangSkill(TradSpeakLang);
    thisNPC.activeLanguage=TradStdLang;
end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if BasicNPCChecks(originator,2) then
        if LangOK(originator,TradSpeakLang) then
             local state = NPCStatus[originator.id];
             if (state == 50) or (state == 51) then
                 if CountItemsWithQuality(originator,196,100,-1) > 0 then
                     NPCStatus[originator.id] = 51;		-- unfinished
                 elseif CountItemsWithQuality(originator,196,99,1) > 0 then
                     NPCStatus[originator.id] = 52;		-- finished
		 else
		     NPCStatus[originator.id] = 50;
                 end
            end
            TellSmallTalk(message,originator);
    	else
            Confused(
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




