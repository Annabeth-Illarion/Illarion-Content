-- INSERT INTO npc VALUES (nextval('npc_seq'),0,119,601,0,0,false,'Robertus','npc_robertus.lua',0);

require("npc.base.autonpcfunctions")
module("npc.robertus")

function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Finger weg!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Don't you touch me!");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    npc.base.autonpcfunctions.InitTalkLists();

    -- ********* START DYNAMIC PART ********

    QuestID = 0;
    -- NPC by Estralis Seborian
    -- This NPC is supposed to trade (all goods are sold and bought, percentage indicates ratio of price bough/sold):
    -- 10% Tools (Digger): 24
    -- 5% Tools (Mason): 23, 737
    -- 5% Tools (Brick maker): 734
    -- 5% Bricks: 736, 2588
    -- 5% Stones: 733, 735, 1266
    -- 10% Clay: 26
    -- Help
    npc.base.autonpcfunctions.AddTraderTrigger("Help","");
    npc.base.autonpcfunctions.AddConsequence("inform","[Game Help] This NPC is the royal builder Robertus. Keyphrases: Hello, builder.");
    npc.base.autonpcfunctions.AddTraderTrigger("Hilfe","");
    npc.base.autonpcfunctions.AddConsequence("inform","[Spielhilfe] Dieser NPC ist der k�nigliche Baumeister Robertus. Schl�sselw�rter: Hallo, Baumeister.");
    -- General speech
    npc.base.autonpcfunctions.AddTraderTrigger("Hello","Ah, you must be the deliverer of marble. Put it just next to the stack of bricks.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greetings");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Be greeted");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hail");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good day");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good morning");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good evening");
    npc.base.autonpcfunctions.AddAdditionalText("Welcome, stranger. Do you have any building material for me?");
    npc.base.autonpcfunctions.AddAdditionalText("Be greeted, in the name of the queen.");
    npc.base.autonpcfunctions.AddTraderTrigger("Gr��e","Ah, ihr m��t der Marmorlieferant sein. Lagert es neben den Ziegelsteinen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Gru�");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Seid gegr��t");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guten Tag");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guten Abend");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Mahlzeit");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Tach");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Moin");
    npc.base.autonpcfunctions.AddAdditionalText("Willkommen, Fremdling. Habt ihr Baumaterial f�r mich?");
    npc.base.autonpcfunctions.AddAdditionalText("Seid im Namen der K�nigin gegr��t.");
    npc.base.autonpcfunctions.AddTraderTrigger("Hiho","Ah, you must be the deliverer of marble. Put it just next to the stack of bricks.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Welcome, stranger. Do you have any building material for me?");
    npc.base.autonpcfunctions.AddAdditionalText("Be greeted, in the name of the queen.");
    npc.base.autonpcfunctions.AddTraderTrigger("Hiho","Auf wiedersehen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Bis zum n�chsten mal.");
    npc.base.autonpcfunctions.AddAdditionalText("Gehet in Frieden.");
    npc.base.autonpcfunctions.AddTraderTrigger("Farewell","Farewell.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good bye");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Bye");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Fare thy well");
    npc.base.autonpcfunctions.AddAdditionalText("Good bye.");
    npc.base.autonpcfunctions.AddAdditionalText("Until next time.");
    npc.base.autonpcfunctions.AddTraderTrigger("Tsch��","Auf wiedersehen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Tsch�ss");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wiedersehen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Gehabt euch wohl");
    npc.base.autonpcfunctions.AddAdditionalText("Bis zum n�chsten mal.");
    npc.base.autonpcfunctions.AddAdditionalText("Gehet in Frieden.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ciao","Farewell.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Good bye.");
    npc.base.autonpcfunctions.AddAdditionalText("Until next time.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ciao","Auf wiedersehen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Bis zum n�chsten mal.");
    npc.base.autonpcfunctions.AddAdditionalText("Gehet in Frieden.");
    npc.base.autonpcfunctions.AddTraderTrigger("How are you","As long as the queen is content, I am happy. And I do anything to please her.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("How feel");
    npc.base.autonpcfunctions.AddAdditionalTrigger("How do you do");
    npc.base.autonpcfunctions.AddAdditionalText("I just need to finish this calculation, then we can talk.");
    npc.base.autonpcfunctions.AddAdditionalText("Every day is a day to serve queen Rosaline.");
    npc.base.autonpcfunctions.AddTraderTrigger("Wie geht","Solange die K�nigin zufrieden ist, bin ich es auch. Und ich werde alles tun, um sie zufrieden zu stellen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wie f�hlst");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wie ist es ergangen");
    npc.base.autonpcfunctions.AddAdditionalText("Ich muss nur noch grad diese Berechnung abschlie�en, dann k�nnen wir reden.");
    npc.base.autonpcfunctions.AddAdditionalText("Jeder Tag ist der richtige, um K�nigin Rosaline zu dienen.");
    npc.base.autonpcfunctions.AddTraderTrigger("your name","Robertus.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("who are you");
    npc.base.autonpcfunctions.AddAdditionalTrigger("who art thou");
    npc.base.autonpcfunctions.AddAdditionalText("My name is Robertus, I am the royal builder. I serve the queen with every fibre of my body.");
    npc.base.autonpcfunctions.AddAdditionalText("They call me Robertus. I'm the royal builder of Cadomyr, loyal to the queen.");
    npc.base.autonpcfunctions.AddTraderTrigger("dein name","Robertus.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer bist du");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer seid ihr");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wie hei�t");
    npc.base.autonpcfunctions.AddAdditionalText("Mein Name ist Robertus, ich bin der k�nigliche Baumeister. Ich diene der K�nigin mit jeder Faser meines K�rpers.");
    npc.base.autonpcfunctions.AddAdditionalText("Man nennt mich Robertus. Ich bin der k�nigliche Baumeister Cadomyrs, stets der K�nigin ergeben.");
    -- Catching typical NPC phrases
    npc.base.autonpcfunctions.AddTraderTrigger("what sell","I trade building materials. I'll purchase anything that can help building her majesty's... place of peaceful rest.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("what buy");
    npc.base.autonpcfunctions.AddAdditionalTrigger("list wares");
    npc.base.autonpcfunctions.AddAdditionalTrigger("price of");
    npc.base.autonpcfunctions.AddAdditionalText("Bricks, stone blocks, marble... I trade all the workers need.");
    npc.base.autonpcfunctions.AddAdditionalText("I can sell you the tools you need to serve the queen. On, on!");
    npc.base.autonpcfunctions.AddTraderTrigger("was verkauf","Ich handele mit Baumaterialien. Ich werde alles erwerben, was ben�tigt wird um f�r ihre Majest�t... einen Ort der letzten Ruhe zu bauen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("was kauf");
    npc.base.autonpcfunctions.AddAdditionalTrigger("warenliste");
    npc.base.autonpcfunctions.AddAdditionalTrigger("preis von");
    npc.base.autonpcfunctions.AddAdditionalText("Ziegelsteine, Steinbl�cke, Marmor... Ich handele mit allem, was die Arbeiter brauchen.");
    npc.base.autonpcfunctions.AddAdditionalText("Ich kann euch die Werkzeuge verkaufen, die ihr braucht, um K�nigin Rosaline zu dienen. Los, los!");
    npc.base.autonpcfunctions.AddTraderTrigger("tell something","Shh, don't speak about this in public, but we're actually building the queen's grave.");
    npc.base.autonpcfunctions.AddAdditionalText("I wonder where all the refugees came from. More hands for the queen!");
    npc.base.autonpcfunctions.AddAdditionalText("Never venture to the mountains alone. Dragons were reported to roam there.");
    npc.base.autonpcfunctions.AddTraderTrigger("erz�hl was","Shh, redet nicht davon in der �ffentlichkeit, aber wir bauen das Grab der K�nigin");
    npc.base.autonpcfunctions.AddAdditionalTrigger("erz�hl etwas");
    npc.base.autonpcfunctions.AddAdditionalText("Ich frage mich nur, wo die Fl�chtlinge alle herkamen. Ach, mehr H�nde f�r die K�nigin!");
    npc.base.autonpcfunctions.AddAdditionalText("Wagt es niemals, alleine in die Berge zu gehen. Angeblich treiben dort Drachen ihr Unwesen.");
    -- Easter eggs
    npc.base.autonpcfunctions.AddTraderTrigger("can we fix it","Yes, we can!");
    npc.base.autonpcfunctions.AddTraderTrigger("k�nnen wir das schaffen","Yo, wir schaffen das!");
    npc.base.autonpcfunctions.AddTraderTrigger("yes we can","So, can we fix it?");
    npc.base.autonpcfunctions.AddTraderTrigger("yo wir schaffen das","Also k�nnen wir das schaffen?");
    npc.base.autonpcfunctions.AddTraderTrigger("bob the builder","I prefer to be referred to as Robertus, please.");
    npc.base.autonpcfunctions.AddTraderTrigger("bob der baumeister","Ich ziehe den Namen Robertus vor, bitte sch�n.");
    -- Small talk: The talk here should focus on possible questions. Feel free to add more!
    npc.base.autonpcfunctions.AddTraderTrigger("profession","I am Robertus, the royal builder. The queen relies on me to build her a grave that will last for ages.");
    npc.base.autonpcfunctions.AddAdditionalText("Construction is my business. Behold the tavern: My work for the queen. I am not proud of it, but proud to serve queen Rosaline.");
    npc.base.autonpcfunctions.AddAdditionalText("I am the builder of Cadomyr.");
    npc.base.autonpcfunctions.AddTraderTrigger("job","Ich bin Robertus, der k�nigliche Baumeister. Die K�nigin vertraute mir an, ihr ein Grab zu bauen, welches die Zeiten �bersteht.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Bauwerke sind mein Gesch�ft. Seht euch die Taverne an: Meine Tat f�r die K�nigin. Ich bin nicht stolz auf die Taverne, ich bin stolz, der K�nigin zu dienen.");
    npc.base.autonpcfunctions.AddAdditionalText("Ich bin der Baumeister von Cadomyr.");
    npc.base.autonpcfunctions.AddTraderTrigger("job","I am Robertus, the royal builder. The queen relies on me to build her a grave that will last for ages.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Construction is my business. Behold the tavern: My work for the queen. I am not proud of it, but proud to serve queen Rosaline.");
    npc.base.autonpcfunctions.AddAdditionalText("I am the builder of Cadomyr.");
    npc.base.autonpcfunctions.AddTraderTrigger("builder","I am Robertus, the royal builder. The queen relies on me to build her a grave that will last for ages.");
    npc.base.autonpcfunctions.AddAdditionalText("Construction is my business. Behold the tavern: My work for the queen. I am not proud of it, but proud to serve queen Rosaline.");
    npc.base.autonpcfunctions.AddAdditionalText("I am the builder of Cadomyr.");
    npc.base.autonpcfunctions.AddTraderTrigger("baumeister","Ich bin Robertus, der k�nigliche Baumeister. Die K�nigin vertraute mir an, ihr ein Grab zu bauen, welches die Zeiten �bersteht.");
    npc.base.autonpcfunctions.AddAdditionalText("Bauwerke sind mein Gesch�ft. Seht euch die Taverne an: Meine Tat f�r die K�nigin. Ich bin nicht stolz auf die Taverne, ich bin stolz, der K�nigin zu dienen.");
    npc.base.autonpcfunctions.AddAdditionalText("Ich bin der Baumeister von Cadomyr.");
    npc.base.autonpcfunctions.AddTraderTrigger("trader","You can buy many goods here on the market place. Garments to dress for the next festival, weapons to repell Cadomyr's enemies and finest jewels.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("merchant");
    npc.base.autonpcfunctions.AddAdditionalTrigger("collegue");
    npc.base.autonpcfunctions.AddAdditionalTrigger("vendor");
    npc.base.autonpcfunctions.AddAdditionalTrigger("market");
    npc.base.autonpcfunctions.AddAdditionalText("This market has it all and Cadomyr is proud of it.");
    npc.base.autonpcfunctions.AddAdditionalText("The only thing you cannot buy on this market are slaves. But Cadomyr really needs hands.");
    npc.base.autonpcfunctions.AddTraderTrigger("h�ndler","Ihr k�nnt allerlei Dinge auf diesem Markt kaufen. Gew�nder f�r das n�chste Fest, Waffen um die Feinde Cadomyrs zur�ckzuschlagen oder feinste Juwelen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("kollege");
    npc.base.autonpcfunctions.AddAdditionalTrigger("h�ker");
    npc.base.autonpcfunctions.AddAdditionalTrigger("markt");
    npc.base.autonpcfunctions.AddAdditionalText("Auf diesem Markt bekommt ihr alles und Cadomyr ist stolz darauf.");
    npc.base.autonpcfunctions.AddAdditionalText("Das einzige, was ihr auf diesem Markt nicht bekommen werdet, das sind Sklaven. Cadomyr braucht aber dringend Arbeiter.");
    npc.base.autonpcfunctions.AddTraderTrigger("Gobaith","I never heard of this place before. Cadomyr is my home and I do everything to make it prosper.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Bless you.");
    npc.base.autonpcfunctions.AddAdditionalText("Pardon me?");
    npc.base.autonpcfunctions.AddTraderTrigger("Gobaith","Von diesem Ort habe ich noch nie geh�rt. Cadomyr ist meine Heimat und ich werde alles tun, um es gedeihen zu lassen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Gesundheit.");
    npc.base.autonpcfunctions.AddAdditionalText("Pardon?");
    -- More small talk; add at least five triggers
    npc.base.autonpcfunctions.AddTraderTrigger("queendom","Cadomyr is indeed a queendom. Never will the queen chose a husband, she serves her people, only.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("kingdom");
    npc.base.autonpcfunctions.AddTraderTrigger("k�niginreich","Cadomyr ist wirklich ein K�niginreich. Nie wird die K�nigin einen Gemahl nehmen, sie dient nur ihrem Volke.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("k�nigreich");
    npc.base.autonpcfunctions.AddTraderTrigger("grave","I am the one who's service for queen Rosaline will stand the test of time, for I build her grave.");
    npc.base.autonpcfunctions.AddAdditionalText("The grave is taking progress, we need more marble, though.");
    npc.base.autonpcfunctions.AddAdditionalText("I think I should let the workers clad the grave chamber of her majesty with gold.");
    npc.base.autonpcfunctions.AddTraderTrigger("grab","Ich bin derjenige, dessen Dienst f�r K�nigin Rosaline die Zeiten �berstehen wird, denn ich baue ihr Grab.");
    npc.base.autonpcfunctions.AddAdditionalText("Das Grab macht Fortschritte, wir brauchen nur mehr Marmor.");
    npc.base.autonpcfunctions.AddAdditionalText("Ich denke, ich sollte die Arbeiter anweisen, die Grabkammer ihrer Majest�t mit Gold auszukleiden.");
    npc.base.autonpcfunctions.AddTraderTrigger("pyramide","Eine Pyramide als Grabmal? Wer w�rde denn so etwas t�richtes tun?");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Die K�nigin bevorzugt einen Kubus, denke ich. Aber der Bauplan ist noch nicht fertig.");
    npc.base.autonpcfunctions.AddTraderTrigger("pyramide","A pyramide as grave? Who would do such a folish thing?");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("The queen prefers a cube, but the drawing is not done yet.");
    npc.base.autonpcfunctions.AddTraderTrigger("hastings","Baron Hastings? Ein Verr�ter ist er, jawohl.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Der Kopf des Barons wird bald auf einem Spie� stecken.");
    npc.base.autonpcfunctions.AddAdditionalText("Ein Unmensch ist er, der Baron Hastings! Doch die K�nigin wird �ber ihn richten.");
    npc.base.autonpcfunctions.AddTraderTrigger("hastings","Baron Hastings? A traitor, he is, indeed!");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("The head of the baron will soon throne on a pike!");
    npc.base.autonpcfunctions.AddAdditionalText("A bastard, he is, the baron Hastings! The queen will judge him.");
    npc.base.autonpcfunctions.AddTraderTrigger("cube","How creative our marvellous queen is! A cube as grave! How brilliant!");
    npc.base.autonpcfunctions.AddTraderTrigger("kubus","Wie kreativ unsere wunderbare K�nigin ist! Ein Kubus als Grab! Wie brilliant!");
    npc.base.autonpcfunctions.AddTraderTrigger("tavern","I build the tavern; well, I commanded the workers, sometimes, with the whip.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("taverne","Ich habe die Taverne erbaut; nun, ich habe die Arbeiter befehligt, manchmal auch mit der Peitsche.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("sklave","Sklaven, nun, ich bevorzugen den Begriff Arbeiter. Es ist doch eine Ehre, der K�nigin zu dienen.");
    npc.base.autonpcfunctions.AddAdditionalText("Eine Peitsche ist ein wichtiges Werkzeug. Ich verstehe wohl nie, warum einige Arbeiter nicht spuren. Es ist doch eine Ehre, f�r die K�nigin zu arbeiten.");
    npc.base.autonpcfunctions.AddTraderTrigger("slave","Slaves, well, I prefer the term workers. It is an honor to work for the queen afterall.");
    npc.base.autonpcfunctions.AddAdditionalText("A whip is an important tool. I'll never understand why some workers do not obey. It is an honor to work for the queen.");
    -- Faction stuff
    npc.base.autonpcfunctions.AddTraderTrigger("Elvaine","Archmage Morgan, he calls himself. He's a bastard of impure blood.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Morgan");
    npc.base.autonpcfunctions.AddAdditionalTrigger("archmage");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Erzmagier");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("He hides in his chamber, pretending to study. I assume he tends his whores there!");
    npc.base.autonpcfunctions.AddAdditionalText("An arrogant person, he is. Never trust a mage, I say.");
    npc.base.autonpcfunctions.AddTraderTrigger("Elvaine","Erzmagier Morgan, so nennt er sich. Er ist ein Bastard unreinen Blutes.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Morgan");
    npc.base.autonpcfunctions.AddAdditionalTrigger("archmage");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Erzmagier");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Er versteckt sich in seiner Kammer und tut so, als wenn er die Schriften studieren w�rde. Ich glaube, er k�mmert sich dort mehr um seine Huren!");
    npc.base.autonpcfunctions.AddAdditionalText("Eine solch arrogante Person. Traut niemals einem Magier, h�rt meine Worte.");
    npc.base.autonpcfunctions.AddTraderTrigger("Runewick","A wicked place! Witches and conjurers dwell there.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Runewick is a place of pure lameness and boredom... until the magicians are on the prowl.");
    npc.base.autonpcfunctions.AddAdditionalText("One should burn down Runewick better today than tomorrow. I think all those books burn quite well.");
    npc.base.autonpcfunctions.AddTraderTrigger("Runewick","Ein verwunschener Ort! Hexen und Beschw�rer reichen sich dort die H�nde.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Runewick ist ein �der und langweiliger Ort... Bis die Magier ihr Unwesen treiben.");
    npc.base.autonpcfunctions.AddAdditionalText("Man sollte Runewick lieber heute als morgen niederbrennen. Ich bin mir sicher, dass all diese B�cher gut brennen.");
    npc.base.autonpcfunctions.AddTraderTrigger("Valerio","One thing Don Guilianni is capable of: He knows how to control his minions.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guilianni");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Don");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Don Guilianni is a coward. But that is not a wonder, a son of a whore he is.");
    npc.base.autonpcfunctions.AddAdditionalText("I bet five copper the Don will be stabbed by one of his own men one day.");
    npc.base.autonpcfunctions.AddTraderTrigger("Valerio","Eines kann man Don Guilianni nicht abstreiten: Er hat seine M�nner im Griff.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guilianni");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Don");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Don Guilianni ist ein Feigling. Aber das ist nicht �berraschend bei einem solchen Hurensohn.");
    npc.base.autonpcfunctions.AddAdditionalText("Ich wette f�nf Kupferm�nzen, dass der Don eines Tage von einem seiner eigenen M�nner erdolcht wird.");
    npc.base.autonpcfunctions.AddTraderTrigger("Galmair","A pool of sins! Galmair knows no law, no habits, no customs!");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Galmair... never venture there alone, please. You might find a dagger in your back even before you enter the town.");
    npc.base.autonpcfunctions.AddAdditionalText("Galmair cannot be fixed. A lost case.");
    npc.base.autonpcfunctions.AddTraderTrigger("Galmair","Ein S�ndenpfuhl! Galmair kennt keine Gesetze, keine Sitten, keine Gebr�uche!");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Galmair... geht dort nie alleine hin. Ihr habt wohlm�glich einen Dolch in eurem R�cken, bevor ihr durch das Stadttor geht.");
    npc.base.autonpcfunctions.AddAdditionalText("Galmair kann man nicht mehr helfen. Eine verlorene Stadt.");
    npc.base.autonpcfunctions.AddTraderTrigger("rosaline","My queen. Speak her name with glee!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("K�nigin");
    npc.base.autonpcfunctions.AddAdditionalTrigger("queen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("edwards");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("One bad word about her majesty and you will find your tongue nailed on the gate of the palace.");
    npc.base.autonpcfunctions.AddAdditionalText("Hail queen Rosaline Edwards of Cadomyr!");
    npc.base.autonpcfunctions.AddTraderTrigger("rosaline","Meine K�nigin. Sprecht ihren Namen mit Freude aus!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("k�nigin");
    npc.base.autonpcfunctions.AddAdditionalTrigger("queen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("edwards");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Ein schlechtes Wort �ber ihre Majest�t und eure Zunge wird an das Palasttor genagelt.");
    npc.base.autonpcfunctions.AddAdditionalText("Hoch lebe K�nigin Rosaline Edwards von Cadomyr!");
    npc.base.autonpcfunctions.AddTraderTrigger("Cadomyr","Cadomyr is my home, my everything. And all of us must work together to make it prosper under the guidance of our queen.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Cadomyr rules!");
    npc.base.autonpcfunctions.AddAdditionalText("I swore an oath and I hope you will also do anything to serve Cadomyr and queen Rosaline.");
    npc.base.autonpcfunctions.AddTraderTrigger("Cadomyr","Cadomyr ist meine Heimat, mein ein und alles. Wir alle m�ssen zusammen arbeiten, um es gedeihen zu lassen, vereint unter der F�hrung unserer K�nigin.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Cadomyr ist stark!");
    npc.base.autonpcfunctions.AddAdditionalText("Ich habe einen Eid geschworen und ich hoffe, dass auch ihr alles tun werdet, um Cadomyr und K�nigin Rosaline zu dienen.");
    -- Main land factions
    npc.base.autonpcfunctions.AddTraderTrigger("albar","We remember our roots, our ancestors. Cadomyr stands alone, but this is not a reason to forget about the old customs.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Albar... ages ago, the people of Cadomyr set out from Albar.");
    npc.base.autonpcfunctions.AddAdditionalText("I wish I could visit an albarian slave market. There is so much work that need to be done.");
    npc.base.autonpcfunctions.AddTraderTrigger("albar","Wir halten unsere Wurzeln und Ahnen in Ehren. Cadomyr steht nun alleine dar, aber dies ist kein Grund, die alten Sitten zu vergessen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Albar... vor langer Zeit zog das Volk von Cadomyr aus, um Albar zu verlassen.");
    npc.base.autonpcfunctions.AddAdditionalText("Ich w�nschte, ich k�nnte einen albarischen Sklavenmarkt aufsuchen. So viel Arbeit ist hier zu tun.");
    npc.base.autonpcfunctions.AddTraderTrigger("gynk","#me spits on the ground.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("gync");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Gync?! A pool of sins! No habits! Just like Galmair... Coincidence?");
    npc.base.autonpcfunctions.AddTraderTrigger("gync","#me spuckt auf den Boden.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("gynk");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Gynk? Ein S�ndenpfuhl! Keine Sitten! Fast wie Galmair... welch Zufall!");
    npc.base.autonpcfunctions.AddTraderTrigger("salkama","#me laughs out loud.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Salkablabla - all they do is talk. Changes need actions, they'll never understand.");
    npc.base.autonpcfunctions.AddTraderTrigger("salkama","#me lacht ver�chtlich auf.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Salkablabla - die k�nnen nur reden! Wann begreifen die endlich, dass Taten einer starken Hand bed�rfen?");
    -- Gods; each NPC should at react on one god, being a follower of said god
    npc.base.autonpcfunctions.AddTraderTrigger("Irmorom","Irmorom shall protect us from any accidents during the construction.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Irmorom","Irmorom m�ge uns vor Unf�llen w�hrend der Bauarbeiten beh�ten.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("Cherga","I'll never let Cherga take away our queen. If she departs from this world, I will follow.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("I do not fear Cherga. I will meet Cherga, side by side with the queen.");
    npc.base.autonpcfunctions.AddTraderTrigger("Cherga","Niemals werde ich Cherga unsere K�nigin rauben lassen. Sollte sie dennoch diese Welt verlassen, so werde ich folgen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Ich f�rchte Cherga nicht. Ich werde ihr, Seite an Seite mit der K�nigin, gegen�bertreten.");
    -- Catching quest triggers
    npc.base.autonpcfunctions.AddTraderTrigger("quest","So, you want to help, building the grave of her highness? I'll always trade building material with you, but there is nothing specific you can do for me.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Nun, ihr wollt also dabei helfen, das Grabmal ihrer Hoheit zu bauen? Ich werde stets Baumaterial mit euch handeln, aber konkret k�nnt ihr mir gerade nicht weiterhelfen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("task","So, you want to help, building the grave of her highness? I'll always trade building material with you, but there is nothing specific you can do for me.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Nun, ihr wollt also dabei helfen, das Grabmal ihrer Hoheit zu bauen? Ich werde stets Baumaterial mit euch handeln, aber konkret k�nnt ihr mir gerade nicht weiterhelfen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    -- Last catch: Think about keyphrases the player might say and that are not caught until here
    npc.base.autonpcfunctions.AddTraderTrigger("Yes","It's good that you said this. Hail the queen!");
    npc.base.autonpcfunctions.AddAdditionalText("Really? I should tell the queen about this.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ja","Es ist gut, dass ihr dies gesagt habt. Lang lebe die K�nigin!");
    npc.base.autonpcfunctions.AddAdditionalText("Wirklich? Ich sollte dies der K�nigin mitteilen.");
    npc.base.autonpcfunctions.AddTraderTrigger("No","Do you have any further information?");
    npc.base.autonpcfunctions.AddAdditionalText("You make me curious. Should I report to the queen?");
    npc.base.autonpcfunctions.AddTraderTrigger("Nein","Habt ihr weitere Informationen?");
    npc.base.autonpcfunctions.AddAdditionalText("Ihr macht mich neugierig. Sollte ich dies der K�nigin berichten?");
    npc.base.autonpcfunctions.AddTraderTrigger("ass","Same to you.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("arse");
    npc.base.autonpcfunctions.AddTraderTrigger("arsch","Ihr mich auch.");
    -- Cycletext: Please add at least(!) five cycletext messages. The more, the better. You can use emotes (#me is green), too.
    npc.base.autonpcfunctions.AddCycleText("Hoch lebe die K�nigin!","Hail the Queen!");
    npc.base.autonpcfunctions.AddCycleText("#me beugt sich �ber eine gro�e Zeichnung und macht sorgf�ltig Korrekturen an einzelnen Linien.","#me leans over a huge drawing and corrects individual lines carefully.");
    npc.base.autonpcfunctions.AddCycleText("#me schl�gt mit seiner Faust auf eine auf dem Tisch liegende Zeichnung. 'Nein! So nicht!'","#me slams his fist on a drawing, lying on the table. 'No! Not this way!'");
    npc.base.autonpcfunctions.AddCycleText("#me murmelt vor sich hin und streicht mit einem Federkiel an seinem Kinn entlang.","#me murmurs to himself and strokes his chin with the feather of a quill.");
    npc.base.autonpcfunctions.AddCycleText("Wir k�nnten eine S�uler hier hinzuf�gen... und da auch...","We could add a pillar here... and there...");
    npc.base.autonpcfunctions.AddCycleText("Sie wird beeindruckt sein, ich hoffe nur, die K�nigin wird ihr Grab nie brauchen.","She will be impressed, I just hope the queen will never need her grave.");
    npc.base.autonpcfunctions.AddCycleText("Dient ihrer Hohheit!","Serve her majesty!");
    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,1};
    TradStdLang=0;

    npc.base.autonpcfunctions.increaseLangSkill(TradSpeakLang);
    thisNPC.activeLanguage=TradStdLang;

end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    npc.base.autonpcfunctions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npc.base.autonpcfunctions.BasicNPCChecks(originator,2) then
        if npc.base.autonpcfunctions.LangOK(originator,TradSpeakLang) then
            npc.base.autonpcfunctions.TellSmallTalk(message,originator);
        else
            npc.base.autonpcfunctions.Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end