-- INSERT INTO npc VALUES (nextval('npc_seq'),0,134,590,0,6,false,'Jacobus','npc_jacobus.lua',0);

require("npcs.base.autonpcfunctions")

function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Finger weg!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Don't you touch me!");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    InitTalkLists();

    -- ********* START DYNAMIC PART ********

    QuestID = 0;
    -- NPC by Estralis Seborian
    -- This NPC is supposed to trade (all goods are sold and bought, percentage indicates ratio of price bough/sold):
    -- 5% Tools (Miner): 24, 2763
    -- 10% Tools (Finesmith): 122, 2747
    -- 5% Tools (Gem grinder): 2140
    -- 10% Coal, Ores, Nuggets: 21, 22, 234, 2534, 2536
    -- 10% Gem powder: 446, 447, 448, 449, 450, 451, 452
    -- 10% Gems: 45, 46, 197, 198, 283, 284, 285
    -- 10% Gold goods: 224, 225, 336, 465
    -- 10% Jewellery: 62, 67, 71, 79, 82, 83, 222
    -- 10% Rings: 68, 235, 277, 278, 279, 280, 281, 282
    -- 10% Copper goods: 92, 393, 397, 399, 1001, 1840, 2031
    -- 5% Raw gems: 251, 252, 253, 254, 255, 256, 257
    -- Help 
    AddTraderTrigger("Help","");
    AddConsequence("inform","[Game Help] This NPC is the jeweller Jacobus. Keyphrases: Hello, jewellery.");
    AddTraderTrigger("Hilfe","");
    AddConsequence("inform","[Spielhilfe] Dieser NPC ist der Juwellier Jacobus. Schl�sselw�rter: Hallo, Juwelen.");
    -- General speech
    AddTraderTrigger("Hello","Welcome to Cadomyr.");
    AddAdditionalTrigger("Greetings");
    AddAdditionalTrigger("Be greeted");
    AddAdditionalTrigger("Hail");
    AddAdditionalTrigger("Good day");
    AddAdditionalTrigger("Good morning");
    AddAdditionalTrigger("Good evening");
    AddAdditionalText("Be greeted.");
    AddAdditionalText("Hello, do you need a ruby necklace?");
    AddTraderTrigger("Gr��e","Willkommen in Cadomyr.");
    AddAdditionalTrigger("Gru�");
    AddAdditionalTrigger("Seid gegr��t");
    AddAdditionalTrigger("Guten Tag");
    AddAdditionalTrigger("Guten Abend");
    AddAdditionalTrigger("Mahlzeit");
    AddAdditionalTrigger("Tach");
    AddAdditionalTrigger("Moin");
    AddAdditionalText("Seid gegr��t.");
    AddAdditionalText("Hallo, braucht ihr eine Rubinkette?");
    AddTraderTrigger("Hiho","Welcome to Cadomyr.");
    AddAdditionalTrigger("Hallo");
    AddAdditionalTrigger("Hey");
    AddAdditionalTrigger("Greebas");
    AddAdditionalTrigger("Greebs");
    AddCondition("lang","english");
    AddAdditionalText("Be greeted.");
    AddAdditionalText("Hello, do you need a ruby necklace?");
    AddTraderTrigger("Hiho","Willkommen in Cadomyr.");
    AddAdditionalTrigger("Hallo");
    AddAdditionalTrigger("Hey");
    AddAdditionalTrigger("Greebas");
    AddAdditionalTrigger("Greebs");
    AddCondition("lang","german");
    AddAdditionalText("Seid gegr��t.");
    AddAdditionalText("Hallo, braucht ihr eine Rubinkette?");
    AddTraderTrigger("Farewell","I hope you'll recommend my goods.");
    AddAdditionalTrigger("Good bye");
    AddAdditionalTrigger("Bye");
    AddAdditionalTrigger("Fare thy well");
    AddAdditionalText("Good bye.");
    AddAdditionalText("Have a nice day.");
    AddTraderTrigger("Tsch��","Ich hoffe, ihr werdet meine Waren weiterempfehlen.");
    AddAdditionalTrigger("Tsch�ss");
    AddAdditionalTrigger("Wiedersehen");
    AddAdditionalTrigger("Gehabt euch wohl");
    AddAdditionalText("Auf wiedersehen.");
    AddAdditionalText("Einen sch�nen Tag noch.");
    AddTraderTrigger("Ciao","I hope you'll recommend my goods.");
    AddAdditionalTrigger("Adieu");
    AddAdditionalTrigger("Au revoir");
    AddCondition("lang","english");
    AddAdditionalText("Good bye.");
    AddAdditionalText("Have a nice day.");
    AddTraderTrigger("Ciao","Ich hoffe, ihr werdet meine Waren weiterempfehlen.");
    AddAdditionalTrigger("Adieu");
    AddAdditionalTrigger("Au revoir");
    AddCondition("lang","german");
    AddAdditionalText("Auf wiedersehen.");
    AddAdditionalText("Einen sch�nen Tag noch.");
    AddTraderTrigger("How are you","I feel like selling gems.");
    AddAdditionalTrigger("How feel");
    AddAdditionalTrigger("How do you do");
    AddTraderTrigger("Wie geht","Mir ist danach, Edelsteine zu verkaufen.");
    AddAdditionalTrigger("Wie f�hlst");
    AddAdditionalTrigger("Wie ist es ergangen");
    AddTraderTrigger("your name","I am Jacobus, the jeweller.");
    AddAdditionalTrigger("who are you");
    AddAdditionalTrigger("who art thou");
    AddAdditionalText("Jacobus.");
    AddAdditionalText("Jacobus. And do not call me Jack.");
    AddTraderTrigger("dein name","Ich bin Jacobus der Juwelier.");
    AddAdditionalTrigger("wer bist du");
    AddAdditionalTrigger("wer seid ihr");
    AddAdditionalTrigger("wie hei�t");
    AddAdditionalText("Jacobus.");
    AddAdditionalText("Jacobus. Und nennt mich nicht Jack.");
    -- Catching typical NPC phrases 
    AddTraderTrigger("what sell","I sell any kind of jewellery.");
    AddAdditionalTrigger("what buy");
    AddAdditionalTrigger("list wares");
    AddAdditionalTrigger("price of");
    AddAdditionalText("Things of gold, of copper, of gems... What do you need?");
    AddTraderTrigger("was verkauf","Ich handele mit allerlei Juwelen.");
    AddAdditionalTrigger("was kauf");
    AddAdditionalTrigger("warenliste");
    AddAdditionalTrigger("preis von");
    AddAdditionalText("Dinge aus Gold, aus Kupfer, aus Edelsteinen... was braucht ihr?");
    AddTraderTrigger("tell something","I cannot tell you any interesting stories, sorry.");
    AddTraderTrigger("erz�hl was","Ich habe keine interessanten Geschichten zu erz�hlen.");
    AddAdditionalTrigger("erz�hl etwas");
    -- Small talk: The talk here should focus on possible questions. Feel free to add more!
    AddTraderTrigger("profession","I am a jeweller. I also search for gems, but it is a hard job.");
    AddTraderTrigger("beruf","Ich bin ein Juwellier, manchmal suche ich auch nach Edelsteinen. Aber das ist ein Knochenjob.");
    AddTraderTrigger("job","Ich bin ein Juwellier, manchmal suche ich auch nach Edelsteinen. Aber das ist ein Knochenjob.");
    AddCondition("lang","german");
    AddTraderTrigger("job","I am a jeweller. I also search for gems, but it is a hard job.");
    AddCondition("lang","english");
    AddTraderTrigger("jewel","My jewels are the best you can get within a thousand miles. And I never travelled beyond.");
    AddAdditionalText("I can sell you any kinds of jewels, if you have any gems, I'll gladly purchase them.");
    AddTraderTrigger("Juwel","Meine Juwelen sind die besten, die man innerhalb von tausend Meilen bekommen kann. Und ich war noch nie weiter weg.");
    AddAdditionalText("Ich kann euch allerlei Juwelen anbieten. Wenn ihr Edelsteine habt, so w�rde ich sie gerne erwerben.");
    AddTraderTrigger("trader","Fish, glass goods, swords - everything you desire you can find here on the marketplace.");
    AddAdditionalTrigger("merchant");
    AddAdditionalTrigger("collegue");
    AddAdditionalTrigger("vendor");
    AddAdditionalTrigger("market");
    AddTraderTrigger("h�ndler","Fische, Glaswaren, Schwerter - alles was das Herz begehrt kann man hier auf dem Marktplatz finden.");
    AddAdditionalTrigger("kollege");
    AddAdditionalTrigger("h�ker");
    AddAdditionalTrigger("markt");
    -- More small talk; add at least five triggers
    AddTraderTrigger("Dieb","Diebe sind eine schreckliche Plage.");
    AddTraderTrigger("Thief","Thieves are a horrible pain for society.");
    AddTraderTrigger("Gold","Gold ist ein faszinierendes Material. Es ist zwar recht weich, aber es verrottet in tausend Jahren nicht.");
    AddCondition("lang","german");
    AddTraderTrigger("Gold","Gold is a fascinating material. It is soft though, but it does not corrode in a thousand years.");
    AddCondition("lang","english");
    -- Faction stuff
    AddTraderTrigger("Elvaine","The Archmage hides behind his books instead of ruling Runewick. I am so glad we have our queen.");
    AddAdditionalTrigger("Morgan");
    AddAdditionalTrigger("archmage");
    AddAdditionalTrigger("Erzmagier");
    AddCondition("lang","english");
    AddTraderTrigger("Elvaine","Der Erzmagier versteckt sich lieber hinter seinen B�chern als Runewick zu f�hren. Ich bin so gl�cklich, dass wir unsere K�nigin haben.");
    AddAdditionalTrigger("Morgan");
    AddAdditionalTrigger("archmage");
    AddAdditionalTrigger("Erzmagier");
    AddCondition("lang","german");
    AddTraderTrigger("Runewick","Runewick is far to the east. You have to walk through a dense forest.");
    AddCondition("lang","english");
    AddTraderTrigger("Runewick","Runewick ist weit im Osten. Ihr m��t durch einen tiefen Wald gehen, um dorthin zu gelangen.");
    AddCondition("lang","german");
    AddTraderTrigger("Valerio","I once had to craft a ring for the Don. It was such a horrifying experience to give to this filthy man.");
    AddAdditionalTrigger("Guilianni");
    AddAdditionalTrigger("Don");
    AddCondition("lang","english");
    AddTraderTrigger("Valerio","Ich musste einst einen Ring f�r den Don fertigen. Es war ein schreckliches Erlebnis, den Ring diesem dreckigem Kerl zu �berlassen.");
    AddAdditionalTrigger("Guilianni");
    AddAdditionalTrigger("Don");
    AddCondition("lang","german");
    AddTraderTrigger("Galmair","Galmair is far to the north, but better don't go there with too much money.");
    AddCondition("lang","english");
    AddTraderTrigger("Galmair","Galmair ist weit im Norden, aber nehmt besser nicht zuviel Geld mit, wenn ihr dorthin geht.");
    AddCondition("lang","german");
    AddTraderTrigger("rosaline","All of us like queen Rosaline, she rules Cadomyr like nobody else could.");
    AddAdditionalTrigger("K�nigin");
    AddAdditionalTrigger("queen");
    AddAdditionalTrigger("edwards");
    AddCondition("lang","english");
    AddTraderTrigger("rosaline","Jederman liebt die K�nigin Rosaline, sie regiert Cadomyr wie es niemand sonst k�nnte.");
    AddAdditionalTrigger("k�nigin");
    AddAdditionalTrigger("queen");
    AddAdditionalTrigger("edwards");
    AddCondition("lang","german");
    AddTraderTrigger("Cadomyr","This is our home: Cadomyr. Do you smell the sea? Do you feel the honour?");
    AddCondition("lang","english");
    AddTraderTrigger("Cadomyr","Dies ist unsere Heimat: Cadomyr. Riecht ihr die See? Sp�rt ihr das Ehrgef�hl?");
    AddCondition("lang","german");
    -- Main land factions
    AddTraderTrigger("albar","I heard all the best about Albar, but I have never been there.");
    AddCondition("lang","english");
    AddTraderTrigger("albar","Ich h�re nur das beste �ber Albar, aber ich war noch nie selbst dort.");
    AddCondition("lang","german");
    AddTraderTrigger("gynk","Something is wrong with Gynk. If they just steal from each other, how do you they replace broken things?");
    AddAdditionalTrigger("gync");
    AddCondition("lang","english");
    AddAdditionalText("Gynk is a filthy place.");
    AddAdditionalText("If you go to Gynk, well, do not exspect to return with any gold.");
    AddTraderTrigger("gync","Irgendwas ist doch falsch in Gynk. Wenn die nur voneinander stehlen, wie ersetzen sie dann Zerbrochenes?");
    AddAdditionalTrigger("gynk");
    AddCondition("lang","german");
    AddAdditionalText("Gynk ist ein dreckiger Ort.");
    AddAdditionalText("Wenn ihr nach Gynk geht, nun, denkt nicht, ihr kommt mit Gold zur�ck.");
    AddTraderTrigger("salkama","I heard all the worst about Salkamar, but I have never been there.");
    AddCondition("lang","english");
    AddTraderTrigger("salkama","Ich h�re nur schlimme Dinge �ber Salkamar, aber ich war noch nie selbst dort.");
    AddCondition("lang","german");
    -- Gods; each NPC should at react on at least one god, being a follower of said god
    AddTraderTrigger("Ronagan","Oh, Ronagan! Well, he likes gems as much as I do and he guarantees that people buy new ones... still, I do not honour a god who promotes crimes.");
    AddCondition("lang","english");
    AddTraderTrigger("Ronagan","Oh, Ronagan! Nun, er mag Edelsteine genauso gerne wie ich und er sorgt daf�r, dass die Leute auch immerwieder neue kaufen... dennoch kann ich keinem Gott huldigen, der Diebstahl f�rdert.");
    AddCondition("lang","german");
    AddTraderTrigger("Zhambra","Zhambra is the god of friendship. And the best token of friendship is a ring. I have a special offer for you...");
    AddCondition("lang","english");
    AddTraderTrigger("Zhambra","Zhambra ist der Gott der Freundschaft. Und was ist besser geeignet, um Freundschaft zu besiegeln, als ein Ring? Ich h�tte da gerade einen im Angebot...");
    AddCondition("lang","german");
    -- Catching quest triggers
    AddTraderTrigger("quest","I don't have a quest for you, sorry.");
    AddAdditionalTrigger("mission");
    AddCondition("lang","english");
    AddTraderTrigger("quest","Ich habe keinen Auftrag f�r dich.");
    AddAdditionalTrigger("mission");
    AddCondition("lang","german");
    AddTraderTrigger("task","I don't have a quest for you, sorry.");
    AddAdditionalTrigger("adventure");
    AddTraderTrigger("Auftrag","Ich habe keinen Auftrag f�r dich.");
    AddAdditionalTrigger("Aufgabe");
    AddAdditionalTrigger("Abenteuer");
    -- Last catch: Think about keyphrases the player might say and that are not caught until here
    AddTraderTrigger("Yes","Yes?");
    AddAdditionalText("Indeed.");
    AddAdditionalText("Interesting.");
    AddAdditionalText("Huh?");
    AddAdditionalText("But why?");
    AddTraderTrigger("Ja","Ja?");
    AddAdditionalText("In der Tat.");
    AddAdditionalText("Interessant.");
    AddAdditionalText("Huh?");
    AddAdditionalText("Aber wieso?");
    AddTraderTrigger("No","Not?");
    AddAdditionalText("How comes?");
    AddAdditionalText("But why not?");
    AddTraderTrigger("Nein","Nicht?");
    AddAdditionalText("Warum das?");
    AddAdditionalText("Aber warum nicht?");
    -- Cycletext: Please add at least(!) five cycletext messages. The more, the better. You can use emotes (#me is green), too. 
    AddCycleText("Feinste Juwelen!","Finest jewellery!");
    AddCycleText("Habt ihr eure Frau entt�uscht? Kauft ihr einen Diamantring!","Did you offend your wife? Buy her a diamond ring!");
    AddCycleText("Diamanten sind der beste Freund des Mannes.","Diamonds are a man's best friend.");
    AddCycleText("Funkelnde Edelsteine im Angebot!","Sparkling gems as special offer!");
    AddCycleText("Goldener Schmuck, genau das richtige f�r einen Damenhals.","Golden jewellery, the right thing for a maiden's neck.");
    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,1};
    TradStdLang=0;

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
            TellSmallTalk(message,originator);
        else
            Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end