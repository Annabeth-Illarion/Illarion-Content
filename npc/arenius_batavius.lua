-- INSERT INTO npc VALUES (nextval('npc_seq'),0,130,624,0,4,false,'Arenius Batavius','npc_arenius_batavius.lua',0);

require("npc.base.autonpcfunctions")
module("npc.arenius_batavius", package.seeall)

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

    QuestID = 104;
    -- NPC by Estralis Seborian
    -- Additional content by PO Grim
    -- Queststatus Overview
    -- 0: No Quest taken
    -- 1: Quest 1 taken - bring the crusader six panels of white cloth for his wounds
    -- 2: Quest 2 solved, reward: 60cp, 5 rankpoints if Cadomyr
    -- 3: Quest 2 taken - kill 6 mummies (101-107) and provide 1 entrails (63)
    -- 4-9: Killing 6 mummies
    -- 10: Quest 2 solved, reward: mace (230), 60cp, 10 rankpoints if Cadomyr
    -- 11: Quest 3 taken - kill 12 skeletons (111-115)
    -- 12-24: Killing 12 skeletons
    -- 25: Quest 3 solved, reward: silvered longsword (98), 120cp, 10 rankpoints if Cadomyr
    -- 26: Quest 4 taken - kill 2 human necromancer (4)
    -- 27-28: Killing 2 human necromancer (4)
    -- 29: Quest 4 solved - reward: albarian soldier's helmet (2287), 200cp, 15 rankpoints if Cadomyr
    -- 30: Quest 5 taken: Kill 1 demon skeleton warrior (173)
    -- 31: Killing 1 demon skeleton warrior (173)
    -- 32: Quest 5 solved, reward: steel tower shield with magical bluestone (96), 500cp, 15 rankpoints if Cadomyr
    -- 33: Quest 6 taken: Kill 1 Ancient Fire Dragon(264)
    -- 34: Killing 1 Ancient Fire Dragon(264)
    -- 35: Quest 6 solved, reward: albarian noble's armor with magical topaz (2367), 2000cp, 20 rankpoints if Cadomyr
    -- Debugging
    npc.base.autonpcfunctions.AddTraderTrigger("set 0","");
    npc.base.autonpcfunctions.AddConsequence("inform","[Debugging] Quest status set to 0");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",0);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","");
    npc.base.autonpcfunctions.AddCondition("qpg",">",35);
    npc.base.autonpcfunctions.AddConsequence("inform","[Error] Something went wrong, please inform a developer.");
    -- Help
    npc.base.autonpcfunctions.AddTraderTrigger("Help","");
    npc.base.autonpcfunctions.AddConsequence("inform","[Game Help] This NPC is the crusader Arenius Batavius. Keyphrases: Hello, quest, profession, crusader, order, orcs, cult, Cherga.");
    npc.base.autonpcfunctions.AddTraderTrigger("Hilfe","");
    npc.base.autonpcfunctions.AddConsequence("inform","[Spielhilfe] Dieser NPC ist der Kreuzritter Arenius Batavius. Schl�sselw�rter: Hallo, Quest, Beruf, Kreuzritter, Orden, Orks, Kult, Cherga.");
    -- General speech
    npc.base.autonpcfunctions.AddTraderTrigger("Hello","Hail! A noble knight I was, defeated I am. Listen to my tale of the evil cult of blood mages.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greetings");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Be greeted");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hail");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good day");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good morning");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good evening");
    npc.base.autonpcfunctions.AddTraderTrigger("Gr��e","Seid gegr��t! Einst war ich ein edler Ritter, nun liege ich im Staub. Horcht meiner Geschichte �ber einen b�sen Kult von Blutmagiern.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Gru�");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Seid gegr��t");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guten Tag");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guten Abend");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Mahlzeit");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Tach");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Moin");
    npc.base.autonpcfunctions.AddTraderTrigger("Hiho","Hail! A noble knight I was, defeated I am. Listen to my tale of the evil cult of blood mages.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Hiho","Seid gegr��t! Einst war ich ein edler Ritter, nun liege ich im Staub. Horcht meiner Geschichte �ber einen b�sen Kult von Blutmagiern.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("Farewell","Go with godspeed. And spread the old customs where you can.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good bye");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Bye");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Fare thy well");
    npc.base.autonpcfunctions.AddTraderTrigger("Tsch��","Gehet mit dem Segen der G�tter. Und verbreitet die alten Sitten �berall, wo ihr k�nnt.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Tsch�ss");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wiedersehen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Gehabt euch wohl");
    npc.base.autonpcfunctions.AddTraderTrigger("Ciao","Go with godspeed. And spread the old customs where you can.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Ciao","Gehet mit dem Segen der G�tter. Und verbreitet die alten Sitten �berall, wo ihr k�nnt.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("How are you","I underestimated my enemy and I have payed for it, barely made it out alive. Will you continue my glorious deeds?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("How feel");
    npc.base.autonpcfunctions.AddAdditionalTrigger("How do you do");
    npc.base.autonpcfunctions.AddTraderTrigger("Wie geht","Ich habe meinen Feind untersch�tzt und daf�r bezahlt - ich bin froh, mit dem Leben davongekommen zu sein. Werdet ihr meine ehrbaren Taten vollenden?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wie f�hlst");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wie ist es ergangen");
    npc.base.autonpcfunctions.AddTraderTrigger("your name","");
    npc.base.autonpcfunctions.AddAdditionalTrigger("who are you");
    npc.base.autonpcfunctions.AddAdditionalTrigger("who art thou");
    npc.base.autonpcfunctions.AddTraderTrigger("dein name","Mein Name ist Arenius Batavius. Ich weile erst seit kurzem in diesen Landen, aber nur Ungl�ck ist mir widerfahren. Bitte, werdet ihr mir auf meinem Kreuzzug beiseite stehen?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer bist du");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer seid ihr");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wie hei�t");
    -- Catching typical NPC phrases
    npc.base.autonpcfunctions.AddTraderTrigger("what sell","The code of my order forbids to pursuit mudane wealth; thus, I do not trade things with you.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("what buy");
    npc.base.autonpcfunctions.AddAdditionalTrigger("list wares");
    npc.base.autonpcfunctions.AddAdditionalTrigger("price of");
    npc.base.autonpcfunctions.AddTraderTrigger("was verkauf","Der Codex meines Ordens verbietet es, weltlichem Reichtum nachzustreben. Daher werde ich nicht mit euch handeln.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("was kauf");
    npc.base.autonpcfunctions.AddAdditionalTrigger("warenliste");
    npc.base.autonpcfunctions.AddAdditionalTrigger("preis von");
    npc.base.autonpcfunctions.AddTraderTrigger("tale","I have an interesting tale to tell; it is about an evil cult of blood mages. Seen my wounds? They tell the story.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("story");
    npc.base.autonpcfunctions.AddAdditionalTrigger("tell something");
    npc.base.autonpcfunctions.AddTraderTrigger("geschichte","Ich habe eine interessante Geschichte zu erz�hlen, sie handelt von einem b�sen Kult von Blutmagiern. Seht ihr meine Wunden? Sie erz�hlen die Geschichte.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("erz�hl was");
    npc.base.autonpcfunctions.AddAdditionalTrigger("erz�hl etwas");
    -- Small talk: The talk here should focus on possible questions. Feel free to add more!
    npc.base.autonpcfunctions.AddTraderTrigger("profession","I am a crusader of the Order of the Silver Dragon. I came to these lands to stop the foul deeds of an evil Cult - but I failed. Will you finish my mission?");
    npc.base.autonpcfunctions.AddTraderTrigger("beruf","Ich bin ein Kreuzritter des Ordens der Silberdrachen. Ich bin in dieses Land gekommen um einem b�sen Kult das Handwerk zu legen - aber ich habe versagt. Werdet ihr meine Mission vollenden?");
    npc.base.autonpcfunctions.AddTraderTrigger("job","I am a crusader of the Order of the Silver Dragon. I came to these lands to stop the foul deeds of an evil Cult - but I failed. Will you finish my mission?");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("job","Ich bin ein Kreuzritter des Ordens der Silberdrachen. Ich bin in dieses Land gekommen um einem b�sen Kult das Handwerk zu legen - aber ich habe versagt. Werdet ihr meine Mission vollenden?");
    npc.base.autonpcfunctions.AddTraderTrigger("crusade","Us knights of the Order of the Silver Dragon fight what is not according to the old customs where we find it. And in these lands, there is plenty opportunity to do so.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("knight");
    npc.base.autonpcfunctions.AddTraderTrigger("Ritter","Wir Ritter vom Orden der Silberdrachen bek�mpfen das, was nicht mit den alten Sitten vereinbar ist, wo immer es m�glich ist. Und in diesem Land bietet sich hierf�r allerlei M�glichkeit.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("kreuzzug");
    -- More small talk; add at least five triggers
    npc.base.autonpcfunctions.AddTraderTrigger("Orden","Der Orden der Silberdrachen mag in diesem Land unbekannt sein; aber im Reiche Albar f�rchtet man unseren Namen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Silberdrache");
    npc.base.autonpcfunctions.AddTraderTrigger("Ork","Ich habe einige Orks in der N�he der H�hle, welche ich f�r den Unterschlupf eines b�sen Kultes von Blutmagiern halte, umherstreifen gesehen. Ich frage mich, welche Verbindung sie miteinander haben.");
    npc.base.autonpcfunctions.AddTraderTrigger("Kult","Ich bek�mpfe den Kult der Salavesh, ein Haufen b�ser Blutmagier. Die Diener des Kultes haben mir aufgelauert, als ich mich auf dem Weg zu ihrem Unterschlupf befand. Ger�chten zufolge ist er in einer H�hle.");
    npc.base.autonpcfunctions.AddTraderTrigger("Drache","Drachen sind majest�tische Wesen und ich bin stolz darauf, einst einen gesehen zu haben. Ger�chten zufolge macht der Kult der Salavesh Jagd auf Drachen.");
    npc.base.autonpcfunctions.AddTraderTrigger("Blutmagie","Blutmagie ist das B�se in Reinform. Die alten Sitten verbieten es, solche Praktiken auch nur in Erw�gung zu ziehen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("totenbeschw�r");
    npc.base.autonpcfunctions.AddTraderTrigger("H�hle","Ich bin mir sicher, dass der Unterschlupf des Kults der Salavesh sich in einer H�hle, nord�stlich von hier, befindet.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Unterschlupf");
    npc.base.autonpcfunctions.AddTraderTrigger("Wund","Diener des Kultes der Salavesh f�gten mir diese Wunden zu. Doch ich werde nicht klein bei geben; helft mir in meiner Mission f�r das die alten Sitten!");
    npc.base.autonpcfunctions.AddTraderTrigger("sitte","Die alten Sitten zu bewahren und zu sch�tzen, das ist die Mission des Ordens der Silberdrachen.");
    npc.base.autonpcfunctions.AddTraderTrigger("Order","The Order of the Silver Dragon might be unknown in these lands; but in the realm of Albar, our name is feared.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("silver dragon");
    npc.base.autonpcfunctions.AddTraderTrigger("Orc","I saw some orcs prowling the vicinity of the cave what I believe must be the stronghold of an evil cult of blood mages. I wonder what business they have with orcs.");
    npc.base.autonpcfunctions.AddTraderTrigger("Cult","The cult I am fighting is the Cult of Salavesh, evil blood mages, they are. Its minions ambushed me on my way to their stronghold, rumours tell it is within a cave.");
    npc.base.autonpcfunctions.AddTraderTrigger("Dragon","Dragons are majestic beings and I am proud of once seeing one. Rumours tell that the Cult of Salavesh hunts dragons.");
    npc.base.autonpcfunctions.AddTraderTrigger("blood magic","Blood magic is pure sin. The old customs forbid even to consider such foul deeds.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("blood mage");
    npc.base.autonpcfunctions.AddAdditionalTrigger("necro");
    npc.base.autonpcfunctions.AddTraderTrigger("cave","I am convinced that the stronghold of the Cult of Salavesh is a cave to the north east.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("stronghold");
    npc.base.autonpcfunctions.AddTraderTrigger("wound","Minions of the Cult of Salavesh wounded me like this. But I won't surrender; help me in my deed for the old customs.");
    npc.base.autonpcfunctions.AddTraderTrigger("custom","To protect and preserve the old customs, that is the mission of the Order of the Silver Dragon.");
    -- Faction stuff
    npc.base.autonpcfunctions.AddTraderTrigger("Elvaine","Who is that?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Morgan");
    npc.base.autonpcfunctions.AddAdditionalTrigger("archmage");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Erzmagier");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Elvaine","Wer soll das sein?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Morgan");
    npc.base.autonpcfunctions.AddAdditionalTrigger("archmage");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Erzmagier");
    npc.base.autonpcfunctions.AddTraderTrigger("Runewick","Where is that?");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Runewick","Wo soll das sein?");
    npc.base.autonpcfunctions.AddTraderTrigger("Valerio","I had to pay a huge amount of money for the grant to pass the land of this Don Guilianni; is that normal in this land?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guilianni");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Don");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Valerio","Ich musste einen sehr hohen Wegzoll zahlen, um das Land dieses Don Guiliannis durchquere zu d�rfen. Ist dies �blich hier?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guilianni");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Don");
    npc.base.autonpcfunctions.AddTraderTrigger("Galmair","Money seems to be one of the favourite words of the people of Galmair. At least it was the word they used most when spoken to.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Galmair","Geld scheint das Lieblingswort der Leute von Galmair zu sein. Zumindestens war es das Wort, was sie am h�ufigsten zu mir gesagt haben.");
    npc.base.autonpcfunctions.AddTraderTrigger("rosaline","I do not question her authority. She is of noble birth, hence a suitable monarch. But I question the custom that brought her to power.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("k�nigin");
    npc.base.autonpcfunctions.AddAdditionalTrigger("queen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("edwards");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("rosaline","Ich zweifle nicht ihren Herrschaftsanspruch an. Sie ist von adeligem Blut, daher ist sie berufen zu herrschen. Aber ich zweifle den Brauch an, der ihr die Macht verlieh.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("k�nigin");
    npc.base.autonpcfunctions.AddAdditionalTrigger("queen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("edwards");
    npc.base.autonpcfunctions.AddTraderTrigger("Cadomyr","Cadomyr is a hospitable village. I am very glad that I found a place where the old customs are still honoured.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Cadomyr","Cadomyr ist ein gastfreundliches Dorf. Ich bin sehr froh einen Ort gefunden zu haben, wo die alten Sitten noch gewahrt sind.");
    -- Main land factions
    npc.base.autonpcfunctions.AddTraderTrigger("albar","Well, what exactly don't you know about Albar? It is my home, so refrain from any words that might dishonour it.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("albar","Nun, was genau wollt ihr �ber Albar wissen? Es ist meine Heimat, daher verkneift euch unehrenhafte Worte.");
    npc.base.autonpcfunctions.AddTraderTrigger("gynk","Travellers reported evil things about Gynk. A pool of sins, it is. Time for some cleansing, I say!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("gync");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("gync","Reisende berichteten mir schlimme Dinge �ber Gynk. Ein S�ndenpfuhl soll es sein. Zeit, dort aufzur�umen!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("gynk");
    npc.base.autonpcfunctions.AddTraderTrigger("salkama","Oh, please, can't we talk about the weather instead?");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("salkama","Oh nein, lasst uns doch lieber �ber das Wetter reden.");
    -- Gods; each NPC should react on AT LEAST one god, being a follower of said god
    npc.base.autonpcfunctions.AddTraderTrigger("Moshran","Moshran is commonly underestimated; the evil thug they say. That is far away from the truth, for Moshran is much more than 'evil' or 'good'.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Moshran","Moshran wird gemeinhin untersch�tzt; der b�se Bube soll er sein. Die entspricht nun wirklich nicht der Wahrheit, Moshran ist weit mehr als einfach nur 'gut' und 'b�se'.");
    npc.base.autonpcfunctions.AddTraderTrigger("Malachin","Many knights pray to Malachin prior to a battle; but do they really have faith in his guidance? Or are they just cowards?");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Malachin","Vor einer Schlacht beten viele Ritter zu Malachin; aber wie fest ist ihr Glaube in seine F�hrung wirklich? Oder sind sie am Ende nur Feiglinge?");
    npc.base.autonpcfunctions.AddTraderTrigger("Zhambra","Being loyal is more important than being right; that is Zhambra's doctrine.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Zhambra","Loyal zu sein ist wichtiger, als Recht zu haben; das ist Zhambras Doktrin.");
    npc.base.autonpcfunctions.AddTraderTrigger("Cherga","Cherga! The goddess of death! What is dead is dead and rots; all beyond is just evil!");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Cherga","Cherga! Die Toteng�ttin! Was tot ist, ist tot und verrottet; alles andere ist einfach nur b�se!");
    -- 1st quest: Provide six panels of white cloth.
    -- Give out quest 1
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Stranger, before I can tell you about the evil Cult of Salavesh, would you bring me half a dozen panels of white cloth so I can tend the wounds I received from my recent battle with the cultists?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",0);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",1);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade I");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Fremder, bevor ich euch �ber den b�sen Kult der Salavesh berichten kann, m�gt ihr mir ein halbes Dutzend wei�e Stoffbahnen bringen, damit ich meine Wunden vom letzten Kampf mit den Kultisten versorgen kann?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",0);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",1);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug I");
    npc.base.autonpcfunctions.AddTraderTrigger("task","Stranger, before I can tell you about the evil Cult of Salavesh, would you bring me half a dozen panels of white cloth so I can tend the wounds I received from my recent battle with the cultists?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg","=",0);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",1);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade I");
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Fremder, bevor ich euch �ber den b�sen Kult der Salavesh berichten kann, m�gt ihr mir ein halbes Dutzend wei�e Stoffbahnen bringen, damit ich meine Wunden vom letzten Kampf mit den Kultisten versorgen kann?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg","=",0);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",1);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug I");
    -- Quest 1 solved, reward: 60cp, 5 rankpoints if Cadomyr
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Thank you for the bandages. Here, this should cover your expenses. Now I can tell you about the mission that I failed in.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddCondition("item",178,"all",">",5);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("deleteitem",178,6);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 60 copper coins. You advance in Queen Rosaline Edwards's favour.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",5);
    npc.base.autonpcfunctions.AddConsequence("money","+",60);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Danke f�r die Bandagen. Hier, nehmt dies als Aufwandsentsch�digung. Nun kann ich euch �ber die Mission berichten, auf der ich so kl�glich versagte.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddCondition("item",178,"all",">",5);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddConsequence("deleteitem",178,6);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 60 Kupferst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",5);
    npc.base.autonpcfunctions.AddConsequence("money","+",60);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Thank you for the bandages. Here, this should cover your expenses. Now I can tell you about the mission that I failed in.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddCondition("item",178,"all",">",5);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("deleteitem",178,6);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 60 copper coins.");
    npc.base.autonpcfunctions.AddConsequence("money","+",60);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Danke f�r die Bandagen. Hier, nehmt dies als Aufwandsentsch�digung. Nun kann ich euch �ber die Mission berichten, auf der ich so kl�glich versagte.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddCondition("item",178,"all",">",5);
    npc.base.autonpcfunctions.AddConsequence("deleteitem",178,6);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 60 Kupferst�cke.");
    npc.base.autonpcfunctions.AddConsequence("money","+",60);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",2);
    -- Quest 1 taken but not solved, repeat the instructions
    npc.base.autonpcfunctions.AddTraderTrigger("quest","My wounds restarted to bleed, will you bring me half a dozen panels of white cloth to tend them, please?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Meine Wunden haben erneut zu bluten begonnen. K�nntet ihr mir bitte ein halbes Dutzend wei�e Stoffbahnen bringen, um sie zu versorgen?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("task","My wounds restarted to bleed, will you bring me half a dozen panels of white cloth to tend them, please?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Meine Wunden haben erneut zu bluten begonnen. K�nntet ihr mir bitte ein halbes Dutzend wei�e Stoffbahnen bringen, um sie zu versorgen?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    -- 2nd quest: Kill 6 mummies, provide 1 entrails
    -- Give out quest 2
    npc.base.autonpcfunctions.AddTraderTrigger("quest","In order to stop the foul deeds of the Cult of Salavesh, intelligence is needed. Set out and find the stronghold! If you find it, slay half a dozen of its undead minions and bring back exemplary remaints for investigation.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade II");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Um dem Kult der Salavesh das Handwerk zu legen ist zun�chst Aufkl�rung erforderlich. Gehet hin und findet den Unterschlupf! Streckt dort wenigstens ein halbes Dutzend der untoten Diener nieder und bringt mir ihre �berreste, damit ich sie untersuchen kann.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug II");
    npc.base.autonpcfunctions.AddTraderTrigger("task","In order to stop the foul deeds of the Cult of Salavesh, intelligence is needed. Set out and find the stronghold! If you find it, slay half a dozen of its undead minions and bring back exemplary remaints for investigation.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade II");
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Um dem Kult der Salavesh das Handwerk zu legen ist zun�chst Aufkl�rung erforderlich. Gehet hin und findet den Unterschlupf! Streckt dort wenigstens ein halbes Dutzend der untoten Diener nieder und bringt mir ihre �berreste, damit ich sie untersuchen kann.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug II");
    -- Quest 2 taken but not solved, repeat the instructions
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Please, avenge my defeat. Head for the stronghold of the Cult of Salavesh and smite half a dozen of its minions. Come back with their remaints.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg",">",2);
    npc.base.autonpcfunctions.AddCondition("qpg","<",9);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Bitte r�cht meine Niederlage. Gehet zum Unterschlupf des Kultes der Salavesh und streckt ein halbes Dutzend ihrer Diener nieder. Kommt zu mit mir ihren �berresten.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg",">",2);
    npc.base.autonpcfunctions.AddCondition("qpg","<",9);
    npc.base.autonpcfunctions.AddTraderTrigger("task","Please, avenge my defeat. Head for the stronghold of the Cult of Salavesh and smite half a dozen of its minions. Come back with their remaints.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg",">",2);
    npc.base.autonpcfunctions.AddCondition("qpg","<",9);
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg",">",2);
    npc.base.autonpcfunctions.AddCondition("qpg","<",9);
    -- Too few items
    npc.base.autonpcfunctions.AddTraderTrigger("quest","You are back, alive! But I cannot see any remaints of the undead minions; most informations I can get from their entrails.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",9);
    npc.base.autonpcfunctions.AddCondition("item",63,"all","<",1);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Ihr seid zur�ck und am Leben! Aber ihr habt keine �berreste der untoten Diener dabei; die meisten Informationen kann ich aus ihren Eingeweiden ablesen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",9);
    npc.base.autonpcfunctions.AddCondition("item",63,"all","<",1);
    npc.base.autonpcfunctions.AddTraderTrigger("task","You are back, alive! But I cannot see any remaints of the undead minions; most informations I can get from their entrails.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg","=",9);
    npc.base.autonpcfunctions.AddCondition("item",63,"all","<",1);
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Ihr seid zur�ck und am Leben! Aber ihr habt keine �berreste der untoten Diener dabei; die meisten Informationen kann ich aus ihren Eingeweiden ablesen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg","=",9);
    npc.base.autonpcfunctions.AddCondition("item",63,"all","<",1);
    -- Quest 2 solved, reward: mace (230), 60cp, 10 rankpoints if Cadomyr
    npc.base.autonpcfunctions.AddTraderTrigger(".+","#me inspects the entrails: 'Just what I assumed - blood magic! Here, have this mace, it will help you on the next part of the mission.'");
    npc.base.autonpcfunctions.AddCondition("qpg","=",9);
    npc.base.autonpcfunctions.AddCondition("item",63,"all",">",0);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("deleteitem",63,1);
    npc.base.autonpcfunctions.AddConsequence("item",230,1,588,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 60 copper coins and a mace. You advance in Queen Rosaline Edwards's favour.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",10);
    npc.base.autonpcfunctions.AddConsequence("money","+",60);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",10);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","#me untersucht die Eingeweide: 'Hab ich es mir doch gedacht! Blutmagie! Hier, nehmt diesen Streitkolben, er wird euch auf der n�chsten Mission gute Dienste erweisen.'");
    npc.base.autonpcfunctions.AddCondition("qpg","=",9);
    npc.base.autonpcfunctions.AddCondition("item",63,"all",">",0);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddConsequence("deleteitem",63,1);
    npc.base.autonpcfunctions.AddConsequence("item",230,1,588,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 60 Kupferst�cke und einen Streitkolben. Dein Ansehen bei K�nigin Rosaline Edwards steigt.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",10);
    npc.base.autonpcfunctions.AddConsequence("money","+",60);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",10);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","#me inspects the entrails: 'Just what I assumed - blood magic! Here, have this mace, it will help you on the next part of the mission'.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",9);
    npc.base.autonpcfunctions.AddCondition("item",63,"all",">",0);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("deleteitem",63,1);
    npc.base.autonpcfunctions.AddConsequence("item",230,1,588,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 60 copper coins and a mace.");
    npc.base.autonpcfunctions.AddConsequence("money","+",60);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",10);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","#me untersucht die Eingeweide: 'Hab ich es mir doch gedacht! Blutmagie! Hier, nehmt diesen Streitkolben, er wird euch auf der n�chsten Mission gute Dienste erweisen.'");
    npc.base.autonpcfunctions.AddCondition("qpg","=",9);
    npc.base.autonpcfunctions.AddCondition("item",63,"all",">",0);
    npc.base.autonpcfunctions.AddConsequence("deleteitem",63,1);
    npc.base.autonpcfunctions.AddConsequence("item",230,1,588,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 60 Kupferst�cke und einen Streitkolben.");
    npc.base.autonpcfunctions.AddConsequence("money","+",60);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",10);
    -- 3rd quest: Kill 12 skeletons
    -- Give out quest 3
    npc.base.autonpcfunctions.AddTraderTrigger("quest","It is about time to land a strike against the Cult of Salavesh. Head for its stronghold again and smite a dozen of the animated skeletons to teach them a lesson not to mess with the Order of the Silver Dragon!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",10);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",11);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade III");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Es wird Zeit, dem Kult der Salavesh klarzumachen, dass man sich nicht mit dem Orden der Silberdrachen anlegt. Zieht aus und zerschlagt ein Dutzend ihrer wiederbelebten Skelette.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",10);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",11);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug III");
    npc.base.autonpcfunctions.AddTraderTrigger("task","It is about time to land a strike against the Cult of Salavesh. Head for its stronghold again and smite a dozen of the animated skeletons to teach them a lesson not to mess with the Order of the Silver Dragon!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg","=",10);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",11);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade III");
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Es wird Zeit, dem Kult der Salavesh klarzumachen, dass man sich nicht mit dem Orden der Silberdrachen anlegt. Zieht aus und zerschlagt ein Dutzend ihrer wiederbelebten Skelette.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg","=",10);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",11);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug III");
    -- Quest 3 taken but not solved, repeat the instructions
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Lo! What are you waiting for. The Cult of Salavesh continues its foul deeds, head for its stronghold and smite a dozen of its animated skeletons.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg",">",10);
    npc.base.autonpcfunctions.AddCondition("qpg","<",24);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Auf was wartet ihr! Der Kult der Salavesh treibt noch immer sein Unwesen, zieht aus zum Unterschlupf und erledigt ein Dutzend ihrer wiederbelebten Skelette.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg",">",10);
    npc.base.autonpcfunctions.AddCondition("qpg","<",24);
    npc.base.autonpcfunctions.AddTraderTrigger("task","Lo! What are you waiting for. The Cult of Salavesh continues its foul deeds, head for its stronghold and smite a dozen of its animated skeletons.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg",">",10);
    npc.base.autonpcfunctions.AddCondition("qpg","<",24);
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Auf was wartet ihr! Der Kult der Salavesh treibt noch immer sein Unwesen, zieht aus zum Unterschlupf und erledigt ein Dutzend ihrer wiederbelebten Skelette.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg",">",10);
    npc.base.autonpcfunctions.AddCondition("qpg","<",24);
    -- Quest 3 solved, reward: silvered longsword (98), 120cp, 10 rankpoints if Cadomyr
    npc.base.autonpcfunctions.AddTraderTrigger(".+","I hope you taught the cultists a lesson they won't forget anytime soon. I am glad that I can trust you and give you my sword. Use it wisely during the next mission.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",24);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("item",98,1,688,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 120 copper coins and a silvered longsword. You advance in Queen Rosaline Edwards's favour.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",10);
    npc.base.autonpcfunctions.AddConsequence("money","+",120);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",25);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Ich hoffe ihr habt diesen Kultisten eine Lektion erteilt, die sie so schnell nicht vergessen werden. Ich freue mich, dass ich euch vertrauen kann. Nehmt mein Schwert und nutzt es weise w�hrend der n�chsten Mission.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",24);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddConsequence("item",98,1,688,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 120 Kupferst�cke und ein versilbertes Langschwert. Dein Ansehen bei K�nigin Rosaline Edwards steigt.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",10);
    npc.base.autonpcfunctions.AddConsequence("money","+",120);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",25);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","I hope you taught the cultists a lesson they won't forget anytime soon. I am glad that I can trust you and give you my sword. Use it wisely during the next mission.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",24);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("item",98,1,688,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 120 copper coins and silvered longsword.");
    npc.base.autonpcfunctions.AddConsequence("money","+",120);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",25);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Ich hoffe ihr habt diesen Kultisten eine Lektion erteilt, die sie so schnell nicht vergessen werden. Ich freue mich, dass ich euch vertrauen kann. Nehmt mein Schwert und nutzt es weise w�hrend der n�chsten Mission.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",24);
    npc.base.autonpcfunctions.AddConsequence("item",98,1,688,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 120 Kupferst�cke und ein versilbertes Langschwert.");
    npc.base.autonpcfunctions.AddConsequence("money","+",120);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",25);
    -- 4th quest: Kill 2 human necromancer
    -- Give out quest 4
    npc.base.autonpcfunctions.AddTraderTrigger("quest","While you were slaying the undead minions, I got word from a traveller that the Cult of Salavesh is preparing a foul ritual. Stop the blood mages who prepare the ritual, commonly, these cultists work as couples.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",25);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",26);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade IV");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","W�hrend ihr den Untoten Dienern den Garaus machtet, verriet mir ein Reisender, dass der Kult der Salavesh wohl ein dunkles Ritual vorbereitet. Stoppt die Blutmagier, die dieses Ritual durchf�hren wollen - meist arbeiten sie zu zweit.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",25);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",26);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug IV");
    npc.base.autonpcfunctions.AddTraderTrigger("task","While you were slaying the undead minions, I got word from a traveller that the Cult of Salavesh is preparing a foul ritual. Stop the blood mages who prepare the ritual, commonly, these cultists work as couples.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg","=",25);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",26);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade IV");
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","W�hrend ihr den Untoten Dienern den Garaus machtet, verriet mir ein Reisender, dass der Kult der Salavesh wohl ein dunkles Ritual vorbereitet. Stoppt die Blutmagier, die dieses Ritual durchf�hren wollen - meist arbeiten sie zu zweit.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg","=",25);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",26);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug IV");
    -- Quest 4 taken but not solved, repeat the instructions
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Quick! With every minute passing, the blood mages can continue preparing their foul art. Slay both of them in the stronghold of the Cult of Salavesh!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg",">",25);
    npc.base.autonpcfunctions.AddCondition("qpg","<",28);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Rasch! Mit jeder Minute, die vergeht, k�nnen die Blutmagier ihre Untaten fortsetzen. Erschlagt sie beide im Unterschlupf des Kultes der Salavesh!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg",">",25);
    npc.base.autonpcfunctions.AddCondition("qpg","<",28);
    npc.base.autonpcfunctions.AddTraderTrigger("task","Quick! With every minute passing, the blood mages can continue preparing their foul art. Slay both of them in the stronghold of the Cult of Salavesh!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg",">",25);
    npc.base.autonpcfunctions.AddCondition("qpg","<",28);
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Rasch! Mit jeder Minute, die vergeht, k�nnen die Blutmagier ihre Untaten fortsetzen. Erschlagt sie beide im Unterschlupf des Kultes der Salavesh!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg",">",25);
    npc.base.autonpcfunctions.AddCondition("qpg","<",28);
    -- Quest 4 solved, reward: albarian soldier's helmet (2287), 200cp, 15 rankpoints if Cadomyr
    npc.base.autonpcfunctions.AddTraderTrigger(".+","#me nods briefly while listening to the report of the events in the cave and replies: 'One good day for all of us. Here, have my helmet, you'll need it more than me during your next mission.'");
    npc.base.autonpcfunctions.AddCondition("qpg","=",28);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("item",2287,1,788,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 200 copper coins and an albarian soldier's helmet. You advance in Queen Rosaline Edwards's favour.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",15);
    npc.base.autonpcfunctions.AddConsequence("money","+",200);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",29);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","#me nickt knapp w�hrend er dem Bericht �ber die Ereignisse in der H�hle lauscht und antwortet: 'Ein guter Tag f�r uns alle. Hier, nehmt meinen Helm, er wird euch mehr n�tzen als mir w�hrend eurer n�chsten Mission.'");
    npc.base.autonpcfunctions.AddCondition("qpg","=",28);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddConsequence("item",2287,1,788,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 200 Kupferst�cke und einen albarischen Soldatenhelm. Dein Ansehen bei K�nigin Rosaline Edwards steigt.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",15);
    npc.base.autonpcfunctions.AddConsequence("money","+",200);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",29);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","#me nods briefly while listening to the report of the events in the cave and replies: 'One good day for all of us. Here, have my helmet, you'll need it more than me during your next mission.'");
    npc.base.autonpcfunctions.AddCondition("qpg","=",28);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("item",2287,1,788,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 200 copper coins and an albarian soldier's helmet.");
    npc.base.autonpcfunctions.AddConsequence("money","+",200);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",29);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","#me nickt knapp w�hrend er dem Bericht �ber die Ereignisse in der H�hle lauscht und antwortet: 'Ein guter Tag f�r uns alle. Hier, nehmt meinen Helm, er wird euch mehr n�tzen als mir w�hrend eurer n�chsten Mission.'");
    npc.base.autonpcfunctions.AddCondition("qpg","=",28);
    npc.base.autonpcfunctions.AddConsequence("item",2287,1,788,0);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 200 Kupferst�cke und einen albarischen Soldatenhelm.");
    npc.base.autonpcfunctions.AddConsequence("money","+",200);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",29);
    -- 5th quest: Kill 1 demon skeleton warrior
    -- Give out quest 5
    npc.base.autonpcfunctions.AddTraderTrigger("quest","I sent a boy to the library; he found a shocking scroll. According to this, the Cult of Salavesh once awakened a demonic skeleton to serve them. Will you return to the cave and if you find this beast, end its existance?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",29);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",30);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade V");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Ich habe einen Jungen in die Bibliothek geschickt; er kam mit einer schockierenden Schriftrolle zur�ck. Darin steht geschrieben, dass der Kult der Salavesh einst ein d�monisches Skelett erwecket, um ihnen zu dienen. Werdet ihr in die H�hle zur�ckkehren und wenn ihr dieses Unwesen findet, sein Dasein beenden?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",29);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",30);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug V");
    npc.base.autonpcfunctions.AddTraderTrigger("task","I sent a boy to the library; he found a shocking scroll. According to this, the Cult of Salavesh once awakened a demonic skeleton to serve them. Will you return to the cave and if you find this beast, end its existance?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg","=",29);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",30);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade V");
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Ich habe einen Jungen in die Bibliothek geschickt; er kam mit einer schockierenden Schriftrolle zur�ck. Darin steht geschrieben, dass der Kult der Salavesh einst ein d�monisches Skelett erwecket, um ihnen zu dienen. Werdet ihr in die H�hle zur�ckkehren und wenn ihr dieses Unwesen findet, sein Dasein beenden?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg","=",29);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",30);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug V");
    -- Quest 5 taken but not solved, repeat the instructions
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Demon skeletons are powerful beings; I understand you hesitate to face it. But if the Cult of Salavesh hosts such a monster, it has to be slain!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg",">",29);
    npc.base.autonpcfunctions.AddCondition("qpg","<",31);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","D�monenskelette sind m�chtige Feinde; ich verstehe, wenn ihr z�gert, euch ihm zu stellen. Aber wenn der Kult der Salavesh wirklich so ein Wesen beherbergt, dann muss es abgeschlachtet werden!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg",">",29);
    npc.base.autonpcfunctions.AddCondition("qpg","<",31);
    npc.base.autonpcfunctions.AddTraderTrigger("task","Demon skeletons are powerful beings; I understand you hesitate to face it. But if the Cult of Salavesh hosts such a monster, it has to be slain!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg",">",29);
    npc.base.autonpcfunctions.AddCondition("qpg","<",31);
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","D�monenskelette sind m�chtige Feinde; ich verstehe, wenn ihr z�gert, euch ihm zu stellen. Aber wenn der Kult der Salavesh wirklich so ein Wesen beherbergt, dann muss es abgeschlachtet werden!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg",">",29);
    npc.base.autonpcfunctions.AddCondition("qpg","<",31);
    -- Quest 5 solved, reward: steel tower shield with magical bluestone (96), 500cp, 15 rankpoints if Cadomyr
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Great! How much I love it when evil falls! I give you my shield; bear it with honour. But I give it to you for a reason; to complete my mission.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",31);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("item",96,1,888,51);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 500 copper coins and a steel tower shield. You advance in Queen Rosaline Edwards's favour.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",15);
    npc.base.autonpcfunctions.AddConsequence("money","+",500);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",32);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Gro�artig! Ich liebe es, wenn das B�se daniederliegt. Ich gebe euch meinen Schild, tragt ihn mit W�rde. Aber ich gebe ihn euch nicht grundlos, sondern um meine Mission zu vollenden.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",31);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddConsequence("item",96,1,888,51);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 500 Kupferst�cke und einen Stahlturmschild. Dein Ansehen bei K�nigin Rosaline Edwards steigt.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",15);
    npc.base.autonpcfunctions.AddConsequence("money","+",500);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",32);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Great! How much I love it when evil falls! I give you my shield; bear it with honour. But I give it to you for a reason; to complete my mission.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",31);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("item",96,1,888,51);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 500 copper coins and a steel tower shield.");
    npc.base.autonpcfunctions.AddConsequence("money","+",500);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",32);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Gro�artig! Ich liebe es, wenn das B�se daniederliegt. Ich gebe euch meinen Schild, tragt ihn mit W�rde. Aber ich gebe ihn euch nicht grundlos, sondern um meine Mission zu vollenden.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",31);
    npc.base.autonpcfunctions.AddConsequence("item",96,1,888,51);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 500 Kupferst�cke und einen Stahlturmschild.");
    npc.base.autonpcfunctions.AddConsequence("money","+",500);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",32);
    -- 6th quest: Kill 1 ancient fire dragon
    -- Give out quest 6
    npc.base.autonpcfunctions.AddTraderTrigger("quest","I studied the scroll the boy found thoroughly; and I came to the conclusion that the demon skeleton must have been guarding something. May it be the source of all evil? Set out and eliminate it!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",32);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",33);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade VI");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Ich habe die Schriftrolle, die der Junge gefunden hat, gr�ndlichst studiert und bin zu dem Schluss gekommen, dass das D�monenskelett etwas bewacht haben muss. Etwas die Quelle allen �bels? Zieht aus und eleminiert sie!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",32);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",33);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug VI");
    npc.base.autonpcfunctions.AddTraderTrigger("task","I studied the scroll the boy found thoroughly; and I came to the conclusion that the demon skeleton must have been guarding something. May it be the source of all evil? Set out and eliminate it!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg","=",32);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",33);
    npc.base.autonpcfunctions.AddConsequence("inform","[New quest] The Errant Crusade VI");
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Ich habe die Schriftrolle, die der Junge gefunden hat, gr�ndlichst studiert und bin zu dem Schluss gekommen, dass das D�monenskelett etwas bewacht haben muss. Etwas die Quelle allen �bels? Zieht aus und eleminiert sie!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg","=",32);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",33);
    npc.base.autonpcfunctions.AddConsequence("inform","[Neues Quest] Der fehlgeleitete Kreuzzug VI");
    -- Quest 6 taken but not solved, repeat the instructions
    npc.base.autonpcfunctions.AddTraderTrigger("quest","I am convinced that the demon skeleton guarded the source of all blood magic of the Cult of Salavesh. I command you to destroy it, whatever it is!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg",">",32);
    npc.base.autonpcfunctions.AddCondition("qpg","<",34);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Ich bin davon �berzeugt, dass das D�monenskelett die Quelle der Blutmagie des Kultes der Salavesh bewacht hat. Ich befehle euch, sie zu zerst�ren, was auch immer es ist!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg",">",32);
    npc.base.autonpcfunctions.AddCondition("qpg","<",34);
    npc.base.autonpcfunctions.AddTraderTrigger("task","I am convinced that the demon skeleton guarded the source of all blood magic of the Cult of Salavesh. I command you to destroy it, whatever it is!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg",">",32);
    npc.base.autonpcfunctions.AddCondition("qpg","<",34);
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Ich bin davon �berzeugt, dass das D�monenskelett die Quelle der Blutmagie des Kultes der Salavesh bewacht hat. Ich befehle euch, sie zu zerst�ren, was auch immer es ist!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg",">",32);
    npc.base.autonpcfunctions.AddCondition("qpg","<",34);
    -- Quest 6 solved, reward: albarian noble's armor with magical topaz (2367), 2000cp, 20 rankpoints if Cadomyr
    npc.base.autonpcfunctions.AddTraderTrigger(".+","You did what! You ended the life of one of the most noble creatures of Illarion? How you dare! How... did I dare to send you on this mission. I have to resign as knight of the Order of the Silver Dragon - I surrender my armour and my belongings to you.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",34);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("item",2367,1,988,72);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 2000 copper coins and an albarian noble's armour. You advance in Queen Rosaline Edwards's favour.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",20);
    npc.base.autonpcfunctions.AddConsequence("money","+",2000);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",35);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Ihr habt was getan? Ihr habt das Leben eines der edelsten Kreaturen von ganz Illarion beendet? Was f�llt euch ein! Was... fiel mir ein, euch auf diese Mission zu schicken. Ich werde als Ritter des Ordens der Silberdrachen abdanken m�ssen. Ich �berantworte euch meine R�stung und meinen weltlichen Besitz.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",34);
    npc.base.autonpcfunctions.AddCondition("town","=","cadomyr");
    npc.base.autonpcfunctions.AddConsequence("item",2367,1,988,72);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 2000 Kupferst�cke und eine albarische Adeligenr�stung. Dein Ansehen bei K�nigin Rosaline Edwards steigt.");
    npc.base.autonpcfunctions.AddConsequence("rankpoints","cadomyr","+",20);
    npc.base.autonpcfunctions.AddConsequence("money","+",2000);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",35);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","You did what! You ended the life of one of the most noble creatures of Illarion? How you dare! How... did I dare to send you on this mission. I have to resign as knight of the Order of the Silver Dragon - I surrender my armour and my belongings to you.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",34);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("item",2367,1,988,72);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest solved] You are awarded 2000 copper coins and an albarian noble's armour.");
    npc.base.autonpcfunctions.AddConsequence("money","+",2000);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",35);
    npc.base.autonpcfunctions.AddTraderTrigger(".+","Ihr habt was getan? Ihr habt das Leben eines der edelsten Kreaturen von ganz Illarion beendet? Was f�llt euch ein! Was... fiel mir ein, euch auf diese Mission zu schicken. Ich werde als Ritter des Ordens der Silberdrachen abdanken m�ssen. Ich �berantworte euch meine R�stung und meinen weltlichen Besitz.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",34);
    npc.base.autonpcfunctions.AddConsequence("item",2367,1,988,72);
    npc.base.autonpcfunctions.AddConsequence("inform","[Quest gel�st] Du erh�ltst 2000 Kupferst�cke und eine albarische Adeligenr�stung.");
    npc.base.autonpcfunctions.AddConsequence("money","+",2000);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",35);
    -- No more quests, just nice words of gratitude
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Now that you stopped the foul deeds of the Cult of Salavesh, there is nothing you can do for me, for I am battered and lost in this world. So, set out to new adventures!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",35);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","Nun, da ihr dem niedertr�chtigen Kult der Salavesh das Handwerk gelegt habt, gibt es nichts, was ihr f�r mich tun k�nntet, denn ich bin geschlagen und fehl am Platz auf dieser Welt. Ihr, auf zu neuen Abenteuern!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("mission");
    npc.base.autonpcfunctions.AddCondition("qpg","=",35);
    npc.base.autonpcfunctions.AddTraderTrigger("task","Now that you stopped the foul deeds of the Cult of Salavesh, there is nothing you can do for me,for I am battered and lost in this world. So, set out to new adventures!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddCondition("qpg","=",35);
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","Nun, da ihr dem niedertr�chtigen Kult der Salavesh das Handwerk gelegt habt, gibt es nichts, was ihr f�r mich tun k�nntet, denn ich bin geschlagen und fehl am Platz auf dieser Welt. Ihr, auf zu neuen Abenteuern!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddCondition("qpg","=",35);
    -- Last catch: Think about keyphrases the player might say and that are not caught until here.
    npc.base.autonpcfunctions.AddTraderTrigger("Yes","Pardon?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("yub");
    npc.base.autonpcfunctions.AddAdditionalText("What do you mean?");
    npc.base.autonpcfunctions.AddAdditionalText("I don't quite know...");
    npc.base.autonpcfunctions.AddTraderTrigger("Ja","Pardon?");
    npc.base.autonpcfunctions.AddAdditionalText("Wie meinen?");
    npc.base.autonpcfunctions.AddAdditionalText("Ich wei� nicht recht...");
    npc.base.autonpcfunctions.AddTraderTrigger("No","Sorry?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("nub");
    npc.base.autonpcfunctions.AddAdditionalText("I cannot understand your words.");
    npc.base.autonpcfunctions.AddAdditionalText("What was that again?");
    npc.base.autonpcfunctions.AddTraderTrigger("Nein","Entschuldigt?");
    npc.base.autonpcfunctions.AddAdditionalText("Ich kann euch nicht folgen.");
    npc.base.autonpcfunctions.AddAdditionalText("Wie bitte?");
    -- Cycletext: Add as many random messages as possible
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
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