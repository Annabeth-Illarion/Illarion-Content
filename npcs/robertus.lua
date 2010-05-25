-- INSERT INTO npc VALUES (nextval('npc_seq'),0,119,601,0,0,false,'Robertus','npc_robertus.lua',0);

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
    -- 10% Tools (Digger): 24
    -- 5% Tools (Mason): 23, 737
    -- 5% Tools (Brick maker): 734
    -- 5% Bricks: 736, 2588
    -- 5% Stones: 733, 735, 1266
    -- 10% Clay: 26
    -- Help
    AddTraderTrigger("Help","");
    AddConsequence("inform","[Game Help] This NPC is the royal builder Robertus. Keyphrases: Hello, builder.");
    AddTraderTrigger("Hilfe","");
    AddConsequence("inform","[Spielhilfe] Dieser NPC ist der k�nigliche Baumeister Robertus. Schl�sselw�rter: Hallo, Baumeister.");
    -- General speech
    AddTraderTrigger("Hello","Ah, you must be the deliverer of marble. Put it just next to the stack of bricks.");
    AddAdditionalTrigger("Greetings");
    AddAdditionalTrigger("Be greeted");
    AddAdditionalTrigger("Hail");
    AddAdditionalTrigger("Good day");
    AddAdditionalTrigger("Good morning");
    AddAdditionalTrigger("Good evening");
    AddAdditionalText("Welcome, stranger. Do you have any building material for me?");
    AddAdditionalText("Be greeted, in the name of the queen.");
    AddTraderTrigger("Gr��e","Ah, ihr m��t der Marmorlieferant sein. Lagert es neben den Ziegelsteinen.");
    AddAdditionalTrigger("Gru�");
    AddAdditionalTrigger("Seid gegr��t");
    AddAdditionalTrigger("Guten Tag");
    AddAdditionalTrigger("Guten Abend");
    AddAdditionalTrigger("Mahlzeit");
    AddAdditionalTrigger("Tach");
    AddAdditionalTrigger("Moin");
    AddAdditionalText("Willkommen, Fremdling. Habt ihr Baumaterial f�r mich?");
    AddAdditionalText("Seid im Namen der K�nigin gegr��t.");
    AddTraderTrigger("Hiho","Ah, you must be the deliverer of marble. Put it just next to the stack of bricks.");
    AddAdditionalTrigger("Hallo");
    AddAdditionalTrigger("Hey");
    AddAdditionalTrigger("Greebas");
    AddAdditionalTrigger("Greebs");
    AddCondition("lang","english");
    AddAdditionalText("Welcome, stranger. Do you have any building material for me?");
    AddAdditionalText("Be greeted, in the name of the queen.");
    AddTraderTrigger("Hiho","Auf wiedersehen.");
    AddAdditionalTrigger("Hallo");
    AddAdditionalTrigger("Hey");
    AddAdditionalTrigger("Greebas");
    AddAdditionalTrigger("Greebs");
    AddCondition("lang","german");
    AddAdditionalText("Bis zum n�chsten mal.");
    AddAdditionalText("Gehet in Frieden.");
    AddTraderTrigger("Farewell","Farewell.");
    AddAdditionalTrigger("Good bye");
    AddAdditionalTrigger("Bye");
    AddAdditionalTrigger("Fare thy well");
    AddAdditionalText("Good bye.");
    AddAdditionalText("Until next time.");
    AddTraderTrigger("Tsch��","Auf wiedersehen.");
    AddAdditionalTrigger("Tsch�ss");
    AddAdditionalTrigger("Wiedersehen");
    AddAdditionalTrigger("Gehabt euch wohl");
    AddAdditionalText("Bis zum n�chsten mal.");
    AddAdditionalText("Gehet in Frieden.");
    AddTraderTrigger("Ciao","Farewell.");
    AddAdditionalTrigger("Adieu");
    AddAdditionalTrigger("Au revoir");
    AddCondition("lang","english");
    AddAdditionalText("Good bye.");
    AddAdditionalText("Until next time.");
    AddTraderTrigger("Ciao","Auf wiedersehen.");
    AddAdditionalTrigger("Adieu");
    AddAdditionalTrigger("Au revoir");
    AddCondition("lang","german");
    AddAdditionalText("Bis zum n�chsten mal.");
    AddAdditionalText("Gehet in Frieden.");
    AddTraderTrigger("How are you","As long as the queen is content, I am happy. And I do anything to please her.");
    AddAdditionalTrigger("How feel");
    AddAdditionalTrigger("How do you do");
    AddAdditionalText("I just need to finish this calculation, then we can talk.");
    AddAdditionalText("Every day is a day to serve queen Rosaline.");
    AddTraderTrigger("Wie geht","Solange die K�nigin zufrieden ist, bin ich es auch. Und ich werde alles tun, um sie zufrieden zu stellen.");
    AddAdditionalTrigger("Wie f�hlst");
    AddAdditionalTrigger("Wie ist es ergangen");
    AddAdditionalText("Ich muss nur noch grad diese Berechnung abschlie�en, dann k�nnen wir reden.");
    AddAdditionalText("Jeder Tag ist der richtige, um K�nigin Rosaline zu dienen.");
    AddTraderTrigger("your name","Robertus.");
    AddAdditionalTrigger("who are you");
    AddAdditionalTrigger("who art thou");
    AddAdditionalText("My name is Robertus, I am the royal builder. I serve the queen with every fibre of my body.");
    AddAdditionalText("They call me Robertus. I'm the royal builder of Cadomyr, loyal to the queen.");
    AddTraderTrigger("dein name","Robertus.");
    AddAdditionalTrigger("wer bist du");
    AddAdditionalTrigger("wer seid ihr");
    AddAdditionalTrigger("wie hei�t");
    AddAdditionalText("Mein Name ist Robertus, ich bin der k�nigliche Baumeister. Ich diene der K�nigin mit jeder Faser meines K�rpers.");
    AddAdditionalText("Man nennt mich Robertus. Ich bin der k�nigliche Baumeister Cadomyrs, stets der K�nigin ergeben.");
    -- Catching typical NPC phrases
    AddTraderTrigger("what sell","I trade building materials. I'll purchase anything that can help building her majesty's... place of peaceful rest.");
    AddAdditionalTrigger("what buy");
    AddAdditionalTrigger("list wares");
    AddAdditionalTrigger("price of");
    AddAdditionalText("Bricks, stone blocks, marble... I trade all the workers need.");
    AddAdditionalText("I can sell you the tools you need to serve the queen. On, on!");
    AddTraderTrigger("was verkauf","Ich handele mit Baumaterialien. Ich werde alles erwerben, was ben�tigt wird um f�r ihre Majest�t... einen Ort der letzten Ruhe zu bauen.");
    AddAdditionalTrigger("was kauf");
    AddAdditionalTrigger("warenliste");
    AddAdditionalTrigger("preis von");
    AddAdditionalText("Ziegelsteine, Steinbl�cke, Marmor... Ich handele mit allem, was die Arbeiter brauchen.");
    AddAdditionalText("Ich kann euch die Werkzeuge verkaufen, die ihr braucht, um K�nigin Rosaline zu dienen. Los, los!");
    AddTraderTrigger("tell something","Shh, don't speak about this in public, but we're actually building the queen's grave.");
    AddAdditionalText("I wonder where all the refugees came from. More hands for the queen!");
    AddAdditionalText("Never venture to the mountains alone. Dragons were reported to roam there.");
    AddTraderTrigger("erz�hl was","Shh, redet nicht davon in der �ffentlichkeit, aber wir bauen das Grab der K�nigin");
    AddAdditionalTrigger("erz�hl etwas");
    AddAdditionalText("Ich frage mich nur, wo die Fl�chtlinge alle herkamen. Ach, mehr H�nde f�r die K�nigin!");
    AddAdditionalText("Wagt es niemals, alleine in die Berge zu gehen. Angeblich treiben dort Drachen ihr Unwesen.");
    -- Easter eggs
    AddTraderTrigger("can we fix it","Yes, we can!");
    AddTraderTrigger("k�nnen wir das schaffen","Yo, wir schaffen das!");
    AddTraderTrigger("yes we can","So, can we fix it?");
    AddTraderTrigger("yo wir schaffen das","Also k�nnen wir das schaffen?");
    AddTraderTrigger("bob the builder","I prefer to be referred to as Robertus, please.");
    AddTraderTrigger("bob der baumeister","Ich ziehe den Namen Robertus vor, bitte sch�n.");
    -- Small talk: The talk here should focus on possible questions. Feel free to add more!
    AddTraderTrigger("profession","I am Robertus, the royal builder. The queen relies on me to build her a grave that will last for ages.");
    AddAdditionalText("Construction is my business. Behold the tavern: My work for the queen. I am not proud of it, but proud to serve queen Rosaline.");
    AddAdditionalText("I am the builder of Cadomyr.");
    AddTraderTrigger("job","Ich bin Robertus, der k�nigliche Baumeister. Die K�nigin vertraute mir an, ihr ein Grab zu bauen, welches die Zeiten �bersteht.");
    AddCondition("lang","german");
    AddAdditionalText("Bauwerke sind mein Gesch�ft. Seht euch die Taverne an: Meine Tat f�r die K�nigin. Ich bin nicht stolz auf die Taverne, ich bin stolz, der K�nigin zu dienen.");
    AddAdditionalText("Ich bin der Baumeister von Cadomyr.");
    AddTraderTrigger("job","I am Robertus, the royal builder. The queen relies on me to build her a grave that will last for ages.");
    AddCondition("lang","english");
    AddAdditionalText("Construction is my business. Behold the tavern: My work for the queen. I am not proud of it, but proud to serve queen Rosaline.");
    AddAdditionalText("I am the builder of Cadomyr.");
    AddTraderTrigger("builder","I am Robertus, the royal builder. The queen relies on me to build her a grave that will last for ages.");
    AddAdditionalText("Construction is my business. Behold the tavern: My work for the queen. I am not proud of it, but proud to serve queen Rosaline.");
    AddAdditionalText("I am the builder of Cadomyr.");
    AddTraderTrigger("baumeister","Ich bin Robertus, der k�nigliche Baumeister. Die K�nigin vertraute mir an, ihr ein Grab zu bauen, welches die Zeiten �bersteht.");
    AddAdditionalText("Bauwerke sind mein Gesch�ft. Seht euch die Taverne an: Meine Tat f�r die K�nigin. Ich bin nicht stolz auf die Taverne, ich bin stolz, der K�nigin zu dienen.");
    AddAdditionalText("Ich bin der Baumeister von Cadomyr.");
    AddTraderTrigger("trader","You can buy many goods here on the market place. Garments to dress for the next festival, weapons to repell Cadomyr's enemies and finest jewels.");
    AddAdditionalTrigger("merchant");
    AddAdditionalTrigger("collegue");
    AddAdditionalTrigger("vendor");
    AddAdditionalTrigger("market");
    AddAdditionalText("This market has it all and Cadomyr is proud of it.");
    AddAdditionalText("The only thing you cannot buy on this market are slaves. But Cadomyr really needs hands.");
    AddTraderTrigger("h�ndler","Ihr k�nnt allerlei Dinge auf diesem Markt kaufen. Gew�nder f�r das n�chste Fest, Waffen um die Feinde Cadomyrs zur�ckzuschlagen oder feinste Juwelen.");
    AddAdditionalTrigger("kollege");
    AddAdditionalTrigger("h�ker");
    AddAdditionalTrigger("markt");
    AddAdditionalText("Auf diesem Markt bekommt ihr alles und Cadomyr ist stolz darauf.");
    AddAdditionalText("Das einzige, was ihr auf diesem Markt nicht bekommen werdet, das sind Sklaven. Cadomyr braucht aber dringend Arbeiter.");
    AddTraderTrigger("Gobaith","I never heard of this place before. Cadomyr is my home and I do everything to make it prosper.");
    AddCondition("lang","english");
    AddAdditionalText("Bless you.");
    AddAdditionalText("Pardon me?");
    AddTraderTrigger("Gobaith","Von diesem Ort habe ich noch nie geh�rt. Cadomyr ist meine Heimat und ich werde alles tun, um es gedeihen zu lassen.");
    AddCondition("lang","german");
    AddAdditionalText("Gesundheit.");
    AddAdditionalText("Pardon?");
    -- More small talk; add at least five triggers
    AddTraderTrigger("queendom","Cadomyr is indeed a queendom. Never will the queen chose a husband, she serves her people, only.");
    AddAdditionalTrigger("kingdom");
    AddTraderTrigger("k�niginreich","Cadomyr ist wirklich ein K�niginreich. Nie wird die K�nigin einen Gemahl nehmen, sie dient nur ihrem Volke.");
    AddAdditionalTrigger("k�nigreich");
    AddTraderTrigger("grave","I am the one who's service for queen Rosaline will stand the test of time, for I build her grave.");
    AddAdditionalText("The grave is taking progress, we need more marble, though.");
    AddAdditionalText("I think I should let the workers clad the grave chamber of her majesty with gold.");
    AddTraderTrigger("grab","Ich bin derjenige, dessen Dienst f�r K�nigin Rosaline die Zeiten �berstehen wird, denn ich baue ihr Grab.");
    AddAdditionalText("Das Grab macht Fortschritte, wir brauchen nur mehr Marmor.");
    AddAdditionalText("Ich denke, ich sollte die Arbeiter anweisen, die Grabkammer ihrer Majest�t mit Gold auszukleiden.");
    AddTraderTrigger("pyramide","Eine Pyramide als Grabmal? Wer w�rde denn so etwas t�richtes tun?");
    AddCondition("lang","german");
    AddAdditionalText("Die K�nigin bevorzugt einen Kubus, denke ich. Aber der Bauplan ist noch nicht fertig.");
    AddTraderTrigger("pyramide","A pyramide as grave? Who would do such a folish thing?");
    AddCondition("lang","english");
    AddAdditionalText("The queen prefers a cube, but the drawing is not done yet.");
    AddTraderTrigger("hastings","Baron Hastings? Ein Verr�ter ist er, jawohl.");
    AddCondition("lang","german");
    AddAdditionalText("Der Kopf des Barons wird bald auf einem Spie� stecken.");
    AddAdditionalText("Ein Unmensch ist er, der Baron Hastings! Doch die K�nigin wird �ber ihn richten.");
    AddTraderTrigger("hastings","Baron Hastings? A traitor, he is, indeed!");
    AddCondition("lang","english");
    AddAdditionalText("The head of the baron will soon throne on a pike!");
    AddAdditionalText("A bastard, he is, the baron Hastings! The queen will judge him.");
    AddTraderTrigger("cube","How creative our marvellous queen is! A cube as grave! How brilliant!");
    AddTraderTrigger("kubus","Wie kreativ unsere wunderbare K�nigin ist! Ein Kubus als Grab! Wie brilliant!");
    AddTraderTrigger("tavern","I build the tavern; well, I commanded the workers, sometimes, with the whip.");
    AddCondition("lang","english");
    AddTraderTrigger("taverne","Ich habe die Taverne erbaut; nun, ich habe die Arbeiter befehligt, manchmal auch mit der Peitsche.");
    AddCondition("lang","german");
    AddTraderTrigger("sklave","Sklaven, nun, ich bevorzugen den Begriff Arbeiter. Es ist doch eine Ehre, der K�nigin zu dienen.");
    AddAdditionalText("Eine Peitsche ist ein wichtiges Werkzeug. Ich verstehe wohl nie, warum einige Arbeiter nicht spuren. Es ist doch eine Ehre, f�r die K�nigin zu arbeiten.");
    AddTraderTrigger("slave","Slaves, well, I prefer the term workers. It is an honor to work for the queen afterall.");
    AddAdditionalText("A whip is an important tool. I'll never understand why some workers do not obey. It is an honor to work for the queen.");
    -- Faction stuff
    AddTraderTrigger("Elvaine","Archmage Morgan, he calls himself. He's a bastard of impure blood.");
    AddAdditionalTrigger("Morgan");
    AddAdditionalTrigger("archmage");
    AddAdditionalTrigger("Erzmagier");
    AddCondition("lang","english");
    AddAdditionalText("He hides in his chamber, pretending to study. I assume he tends his whores there!");
    AddAdditionalText("An arrogant person, he is. Never trust a mage, I say.");
    AddTraderTrigger("Elvaine","Erzmagier Morgan, so nennt er sich. Er ist ein Bastard unreinen Blutes.");
    AddAdditionalTrigger("Morgan");
    AddAdditionalTrigger("archmage");
    AddAdditionalTrigger("Erzmagier");
    AddCondition("lang","german");
    AddAdditionalText("Er versteckt sich in seiner Kammer und tut so, als wenn er die Schriften studieren w�rde. Ich glaube, er k�mmert sich dort mehr um seine Huren!");
    AddAdditionalText("Eine solch arrogante Person. Traut niemals einem Magier, h�rt meine Worte.");
    AddTraderTrigger("Runewick","A wicked place! Witches and conjurers dwell there.");
    AddCondition("lang","english");
    AddAdditionalText("Runewick is a place of pure lameness and boredom... until the magicians are on the prowl.");
    AddAdditionalText("One should burn down Runewick better today than tomorrow. I think all those books burn quite well.");
    AddTraderTrigger("Runewick","Ein verwunschener Ort! Hexen und Beschw�rer reichen sich dort die H�nde.");
    AddCondition("lang","german");
    AddAdditionalText("Runewick ist ein �der und langweiliger Ort... Bis die Magier ihr Unwesen treiben.");
    AddAdditionalText("Man sollte Runewick lieber heute als morgen niederbrennen. Ich bin mir sicher, dass all diese B�cher gut brennen.");
    AddTraderTrigger("Valerio","One thing Don Guilianni is capable of: He knows how to control his minions.");
    AddAdditionalTrigger("Guilianni");
    AddAdditionalTrigger("Don");
    AddCondition("lang","english");
    AddAdditionalText("Don Guilianni is a coward. But that is not a wonder, a son of a whore he is.");
    AddAdditionalText("I bet five copper the Don will be stabbed by one of his own men one day.");
    AddTraderTrigger("Valerio","Eines kann man Don Guilianni nicht abstreiten: Er hat seine M�nner im Griff.");
    AddAdditionalTrigger("Guilianni");
    AddAdditionalTrigger("Don");
    AddCondition("lang","german");
    AddAdditionalText("Don Guilianni ist ein Feigling. Aber das ist nicht �berraschend bei einem solchen Hurensohn.");
    AddAdditionalText("Ich wette f�nf Kupferm�nzen, dass der Don eines Tage von einem seiner eigenen M�nner erdolcht wird.");
    AddTraderTrigger("Galmair","A pool of sins! Galmair knows no law, no habits, no customs!");
    AddCondition("lang","english");
    AddAdditionalText("Galmair... never venture there alone, please. You might find a dagger in your back even before you enter the town.");
    AddAdditionalText("Galmair cannot be fixed. A lost case.");
    AddTraderTrigger("Galmair","Ein S�ndenpfuhl! Galmair kennt keine Gesetze, keine Sitten, keine Gebr�uche!");
    AddCondition("lang","german");
    AddAdditionalText("Galmair... geht dort nie alleine hin. Ihr habt wohlm�glich einen Dolch in eurem R�cken, bevor ihr durch das Stadttor geht.");
    AddAdditionalText("Galmair kann man nicht mehr helfen. Eine verlorene Stadt.");
    AddTraderTrigger("rosaline","My queen. Speak her name with glee!");
    AddAdditionalTrigger("K�nigin");
    AddAdditionalTrigger("queen");
    AddAdditionalTrigger("edwards");
    AddCondition("lang","english");
    AddAdditionalText("One bad word about her majesty and you will find your tongue nailed on the gate of the palace.");
    AddAdditionalText("Hail queen Rosaline Edwards of Cadomyr!");
    AddTraderTrigger("rosaline","Meine K�nigin. Sprecht ihren Namen mit Freude aus!");
    AddAdditionalTrigger("k�nigin");
    AddAdditionalTrigger("queen");
    AddAdditionalTrigger("edwards");
    AddCondition("lang","german");
    AddAdditionalText("Ein schlechtes Wort �ber ihre Majest�t und eure Zunge wird an das Palasttor genagelt.");
    AddAdditionalText("Hoch lebe K�nigin Rosaline Edwards von Cadomyr!");
    AddTraderTrigger("Cadomyr","Cadomyr is my home, my everything. And all of us must work together to make it prosper under the guidance of our queen.");
    AddCondition("lang","english");
    AddAdditionalText("Cadomyr rules!");
    AddAdditionalText("I swore an oath and I hope you will also do anything to serve Cadomyr and queen Rosaline.");
    AddTraderTrigger("Cadomyr","Cadomyr ist meine Heimat, mein ein und alles. Wir alle m�ssen zusammen arbeiten, um es gedeihen zu lassen, vereint unter der F�hrung unserer K�nigin.");
    AddCondition("lang","german");
    AddAdditionalText("Cadomyr ist stark!");
    AddAdditionalText("Ich habe einen Eid geschworen und ich hoffe, dass auch ihr alles tun werdet, um Cadomyr und K�nigin Rosaline zu dienen.");
    -- Main land factions
    AddTraderTrigger("albar","We remember our roots, our ancestors. Cadomyr stands alone, but this is not a reason to forget about the old customs.");
    AddCondition("lang","english");
    AddAdditionalText("Albar... ages ago, the people of Cadomyr set out from Albar.");
    AddAdditionalText("I wish I could visit an albarian slave market. There is so much work that need to be done.");
    AddTraderTrigger("albar","Wir halten unsere Wurzeln und Ahnen in Ehren. Cadomyr steht nun alleine dar, aber dies ist kein Grund, die alten Sitten zu vergessen.");
    AddCondition("lang","german");
    AddAdditionalText("Albar... vor langer Zeit zog das Volk von Cadomyr aus, um Albar zu verlassen.");
    AddAdditionalText("Ich w�nschte, ich k�nnte einen albarischen Sklavenmarkt aufsuchen. So viel Arbeit ist hier zu tun.");
    AddTraderTrigger("gynk","#me spits on the ground.");
    AddAdditionalTrigger("gync");
    AddCondition("lang","english");
    AddAdditionalText("Gync?! A pool of sins! No habits! Just like Galmair... Coincidence?");
    AddTraderTrigger("gync","#me spuckt auf den Boden.");
    AddAdditionalTrigger("gynk");
    AddCondition("lang","german");
    AddAdditionalText("Gynk? Ein S�ndenpfuhl! Keine Sitten! Fast wie Galmair... welch Zufall!");
    AddTraderTrigger("salkama","#me laughs out loud.");
    AddCondition("lang","english");
    AddAdditionalText("Salkablabla - all they do is talk. Changes need actions, they'll never understand.");
    AddTraderTrigger("salkama","#me lacht ver�chtlich auf.");
    AddCondition("lang","german");
    AddAdditionalText("Salkablabla - die k�nnen nur reden! Wann begreifen die endlich, dass Taten einer starken Hand bed�rfen?");
    -- Gods; each NPC should at react on one god, being a follower of said god
    AddTraderTrigger("Irmorom","Irmorom shall protect us from any accidents during the construction.");
    AddCondition("lang","english");
    AddTraderTrigger("Irmorom","Irmorom m�ge uns vor Unf�llen w�hrend der Bauarbeiten beh�ten.");
    AddCondition("lang","german");
    AddTraderTrigger("Cherga","I'll never let Cherga take away our queen. If she departs from this world, I will follow.");
    AddCondition("lang","english");
    AddAdditionalText("I do not fear Cherga. I will meet Cherga, side by side with the queen.");
    AddTraderTrigger("Cherga","Niemals werde ich Cherga unsere K�nigin rauben lassen. Sollte sie dennoch diese Welt verlassen, so werde ich folgen.");
    AddCondition("lang","german");
    AddAdditionalText("Ich f�rchte Cherga nicht. Ich werde ihr, Seite an Seite mit der K�nigin, gegen�bertreten.");
    -- Catching quest triggers
    AddTraderTrigger("quest","So, you want to help, building the grave of her highness? I'll always trade building material with you, but there is nothing specific you can do for me.");
    AddAdditionalTrigger("mission");
    AddCondition("lang","english");
    AddTraderTrigger("quest","Nun, ihr wollt also dabei helfen, das Grabmal ihrer Hoheit zu bauen? Ich werde stets Baumaterial mit euch handeln, aber konkret k�nnt ihr mir gerade nicht weiterhelfen.");
    AddAdditionalTrigger("mission");
    AddCondition("lang","german");
    AddTraderTrigger("task","So, you want to help, building the grave of her highness? I'll always trade building material with you, but there is nothing specific you can do for me.");
    AddAdditionalTrigger("adventure");
    AddTraderTrigger("Auftrag","Nun, ihr wollt also dabei helfen, das Grabmal ihrer Hoheit zu bauen? Ich werde stets Baumaterial mit euch handeln, aber konkret k�nnt ihr mir gerade nicht weiterhelfen.");
    AddAdditionalTrigger("Aufgabe");
    AddAdditionalTrigger("Abenteuer");
    -- Last catch: Think about keyphrases the player might say and that are not caught until here
    AddTraderTrigger("Yes","It's good that you said this. Hail the queen!");
    AddAdditionalText("Really? I should tell the queen about this.");
    AddTraderTrigger("Ja","Es ist gut, dass ihr dies gesagt habt. Lang lebe die K�nigin!");
    AddAdditionalText("Wirklich? Ich sollte dies der K�nigin mitteilen.");
    AddTraderTrigger("No","Do you have any further information?");
    AddAdditionalText("You make me curious. Should I report to the queen?");
    AddTraderTrigger("Nein","Habt ihr weitere Informationen?");
    AddAdditionalText("Ihr macht mich neugierig. Sollte ich dies der K�nigin berichten?");
    AddTraderTrigger("ass","Same to you.");
    AddAdditionalTrigger("arse");
    AddTraderTrigger("arsch","Ihr mich auch.");
    -- Cycletext: Please add at least(!) five cycletext messages. The more, the better. You can use emotes (#me is green), too.
    AddCycleText("Hoch lebe die K�nigin!","Hail the Queen!");
    AddCycleText("#me beugt sich �ber eine gro�e Zeichnung und macht sorgf�ltig Korrekturen an einzelnen Linien.","#me leans over a huge drawing and corrects individual lines carefully.");
    AddCycleText("#me schl�gt mit seiner Faust auf eine auf dem Tisch liegende Zeichnung. 'Nein! So nicht!'","#me slams his fist on a drawing, lying on the table. 'No! Not this way!'");
    AddCycleText("#me murmelt vor sich hin und streicht mit einem Federkiel an seinem Kinn entlang.","#me murmurs to himself and strokes his chin with the feather of a quill.");
    AddCycleText("Wir k�nnten eine S�uler hier hinzuf�gen... und da auch...","We could add a pillar here... and there...");
    AddCycleText("Sie wird beeindruckt sein, ich hoffe nur, die K�nigin wird ihr Grab nie brauchen.","She will be impressed, I just hope the queen will never need her grave.");
    AddCycleText("Dient ihrer Hohheit!","Serve her majesty!");
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