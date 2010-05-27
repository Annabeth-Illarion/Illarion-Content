-- INSERT INTO npc VALUES (nextval('npc_seq'),5,131,585,0,2,false,'Zssarkes','npc_zssarkes.lua',0);

require("npcs.base.autonpcfunctions")
module("npcs.zssarkes")

function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Finger weg!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Don't you touch me!");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    npcs.base.autonpcfunctions.InitTalkLists();

    -- ********* START DYNAMIC PART ********

    -- Lizard in guard dormitory who directs player to the tavern and teaches 5 skillpoints in one weapon skill afterwards
    QuestID = 103;
    npcs.base.autonpcfunctions.AddCycleText("#me tr�pfelt ein paar Tropfen Politur auf einen Lappen und f�ngt an sein Schwert damit einzureiben","#me drips some polish onto a cloth and starts to rub his sword in");
    npcs.base.autonpcfunctions.AddCycleText("#me sortiert ein paar R�stungsteile in seine Truhe","#me sorts some armor into his chest");
    npcs.base.autonpcfunctions.AddCycleText("#me l�sst seinen Schwanz hin und her schnalzen","#me flicks his tail");
    npcs.base.autonpcfunctions.AddCycleText("#me zischelt leise vor sich hin, w�hrend er eine neue Sehne an einem Bogen befestigt","#me hisses quietly to himself, while he attaches a new fiber on a bow");
    npcs.base.autonpcfunctions.AddCycleText("#me macht ein paar flinke Bewegungen mit einem Dolch, anscheinend aus Trainingszwecken.","#me makes some quick movements with a dagger, seemgl as training");
    npcs.base.autonpcfunctions.AddCycleText("#me schaut sich leise zischelnd in dem Raum um","#me quietly hisses and looks around in the room");
    -- Game help
    npcs.base.autonpcfunctions.AddTraderTrigger("help","[Game Help] This NPC is a palace guard, he might be able to teach you a thing or two. Keywords: Litios, training, fight");
    npcs.base.autonpcfunctions.AddTraderTrigger("hilfe","[Spielhilfe] Dieser NPC ist eine Palastwache und k�nnte dir vielleicht das ein oder andere beibringen. Schl�sselw�rter: Litios, Training, Kampf");
    npcs.base.autonpcfunctions.AddTraderTrigger("restart","Quest restarted");
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",0);
    -- Smalltalk
    npcs.base.autonpcfunctions.AddTraderTrigger("Hello","Greetingss ssstranger");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greetings");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Be greeted");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hail");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good day");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good morning");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good evening");
    npcs.base.autonpcfunctions.AddAdditionalText("Zsss.. Greetingss");
    npcs.base.autonpcfunctions.AddAdditionalText("Good day ssstranger");
    npcs.base.autonpcfunctions.AddTraderTrigger("Gr��e","Gr�ssse Fremder");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Gru�");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Seid gegr��t");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Guten Tag");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Guten Abend");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Mahlzeit");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Tach");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Moin");
    npcs.base.autonpcfunctions.AddAdditionalText("Zsss.. Gr�ssse");
    npcs.base.autonpcfunctions.AddAdditionalText("Guten Tag Fremder");
    npcs.base.autonpcfunctions.AddTraderTrigger("Hiho","Greetingss ssstranger");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("Zsss.. Greetingss");
    npcs.base.autonpcfunctions.AddAdditionalText("Good day ssstranger");
    npcs.base.autonpcfunctions.AddTraderTrigger("Hiho","Gr�ssse Fremder");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("Zsss.. Gr�ssse");
    npcs.base.autonpcfunctions.AddAdditionalText("Guten Tag Fremder");
    npcs.base.autonpcfunctions.AddTraderTrigger("Farewell","May the great motherss guide your waysss!");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good bye");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Bye");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Fare thy well");
    npcs.base.autonpcfunctions.AddAdditionalText("Zzelphia with you!");
    npcs.base.autonpcfunctions.AddAdditionalText("Farewellsss");
    npcs.base.autonpcfunctions.AddTraderTrigger("Tsch��","M�ge die grosssse Mutter euch auf euren Wegen besssch�tzen!");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Tsch�ss");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Wiedersehen");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Gehabt euch wohl");
    npcs.base.autonpcfunctions.AddAdditionalText("Zzelphia mit euch!");
    npcs.base.autonpcfunctions.AddAdditionalText("Auf baldsss");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ciao","May the great motherss guide your waysss!");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("Zzelphia with you!");
    npcs.base.autonpcfunctions.AddAdditionalText("Farewellsss");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ciao","M�ge die grosssse Mutter euch auf euren Wegen besssch�tzen!");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("Zzelphia mit euch!");
    npcs.base.autonpcfunctions.AddAdditionalText("Auf baldsss");
    npcs.base.autonpcfunctions.AddTraderTrigger("How are you","Goodss, thankss you");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("How feel");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("How do you do");
    npcs.base.autonpcfunctions.AddAdditionalText("I feelss well und you?");
    npcs.base.autonpcfunctions.AddAdditionalText("I do wellsss, thankss you");
    npcs.base.autonpcfunctions.AddTraderTrigger("Wie geht","Gut, dankess");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Wie f�hlst");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Wie ist es ergangen");
    npcs.base.autonpcfunctions.AddAdditionalText("I f�hless mich gutss und duss?");
    npcs.base.autonpcfunctions.AddAdditionalText("Mir gehtss gut, dankess");
    npcs.base.autonpcfunctions.AddTraderTrigger("your name","Zzss.. I'm Zssarkes");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("who are you");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("who art thou");
    npcs.base.autonpcfunctions.AddAdditionalText("Zssarkes at yoursss service");
    npcs.base.autonpcfunctions.AddAdditionalText("Zssarkes, pleasuress to meetss youss");
    npcs.base.autonpcfunctions.AddTraderTrigger("dein name","Ich binss Zssarkes");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wer bist du");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wer seid ihr");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wie hei�t");
    npcs.base.autonpcfunctions.AddAdditionalText("Zssarkes zu dienstenss");
    npcs.base.autonpcfunctions.AddAdditionalText("Zssarkes, eine Freude euch kennenss zzu lernenss");
    -- Typical NPC phraces
    npcs.base.autonpcfunctions.AddTraderTrigger("what sell","Zzss.. I'm not a trader");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("what buy");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("list wares");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("price of");
    npcs.base.autonpcfunctions.AddAdditionalText("I'm a guard notss a merchant");
    npcs.base.autonpcfunctions.AddAdditionalText("I do not tradess");
    npcs.base.autonpcfunctions.AddTraderTrigger("was verkauf","Ich binss kein H�ndler");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("was kauf");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("warenliste");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("preis von");
    npcs.base.autonpcfunctions.AddAdditionalText("Ich handelss nicht");
    npcs.base.autonpcfunctions.AddAdditionalText("Ich bin kein H�ndlerss, sssondern eine Wache");
    npcs.base.autonpcfunctions.AddTraderTrigger("tell something","I'm not goodss in telling ssstoriess");
    npcs.base.autonpcfunctions.AddAdditionalText("I have no timess to tell sstoriess");
    npcs.base.autonpcfunctions.AddAdditionalText("Zzss.. I'm a guardss not a ssstoryteller");
    npcs.base.autonpcfunctions.AddTraderTrigger("erz�hl was","Ich bin nichtss gut im Geschichten erz�hlenss");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("erz�hl etwas");
    npcs.base.autonpcfunctions.AddAdditionalText("Ich habe keiness Zeit um Geschichtenss zu erz�hlenss");
    npcs.base.autonpcfunctions.AddAdditionalText("Zzss.. Ich bin eine Wache, kein Geschichtenerz�hler");
    -- Quest
    npcs.base.autonpcfunctions.AddTraderTrigger("Litios","Oh you knowss Litioss? He leftss the dormitory a whiless back. Ssaid he wantedss to go to tavernss for a drinkss");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",0);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Litios","Oh ihr kenntss Litioss? Er hatss den Sschlafssaal vor einer Weile verlassssen. Sssagte er wollte in die Taverne f�r einen Drinkss");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",0);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("training","Youss too weak to train withss me, but I canss teach youss something about fightingss. What weapon type do you wantss to know more aboutss?");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("training","Du zu sschwach um mit mir zzu trainierenss, aber ich kann dirss etwass beibringenss �ber Kampf. �berss welchen Waffentyp willssst du mehr wisssen?");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("fight","You are a fighter? Let Zssarkes teach youss something about weapons, alright? What weapon type you wantss to know more aboutss?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("combat");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("kampf","Ihr sseid K�mpfer? Lass dir von Zssarkes noch etwass �ber Waffenss beibringenss, in Ordnungss? �berss welchen Waffentyp willssst du mehr wissen?");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("learn puncture","#me rattles on about daggers and other puncture weapons and how to use them. ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","punctureweapons","=<",20);
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npcs.base.autonpcfunctions.AddConsequence("skill","fighting","punctureweapons","+",5);
    npcs.base.autonpcfunctions.AddConsequence("inform","Youhavethefeelingthatyou'velearntalottoday.");
    npcs.base.autonpcfunctions.AddTraderTrigger("stichwaffen lernen","#me erkl�rt viel �ber Dolche und andere Stichwaffen und wie man diese benutzt.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","punctureweapons","=<",20);
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npcs.base.autonpcfunctions.AddConsequence("skill","fighting","punctureweapons","+",5);
    npcs.base.autonpcfunctions.AddConsequence("inform","DuhastdasGef�hlalsh�ttestduheutevielgelernt.");
    npcs.base.autonpcfunctions.AddTraderTrigger("learn slashing","#me rattles on about sowrds and waraxes and how to use them.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","slashingweapons","=<",20);
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npcs.base.autonpcfunctions.AddConsequence("skill","fighting","slashingweapons","+",5);
    npcs.base.autonpcfunctions.AddConsequence("inform","Youhavethefeelingthatyou'velearntalottoday.");
    npcs.base.autonpcfunctions.AddTraderTrigger("hiebwaffen lernen","#me erkl�rt viel �ber Schwerter und Kriegs�xte und wie man diese benutzt.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","slashingweapons","=<",20);
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npcs.base.autonpcfunctions.AddConsequence("skill","fighting","slashingweapons","+",5);
    npcs.base.autonpcfunctions.AddConsequence("inform","DuhastdasGef�hlalsh�ttestduheutevielgelernt.");
    npcs.base.autonpcfunctions.AddTraderTrigger("learn concussion","#me rattles on about maces and warhammer and how to use them.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","concussionweapons","=<",20);
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npcs.base.autonpcfunctions.AddConsequence("skill","fighting","cucussionweapons","+",5);
    npcs.base.autonpcfunctions.AddConsequence("inform","Youhavethefeelingthatyou'velearntalottoday.");
    npcs.base.autonpcfunctions.AddTraderTrigger("schlagwaffen lernen","#me erkl�rt viel �ber Streitkolben und Kriegsh�mmer und wie man diese benutzt. ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","concussionweapons","=<",20);
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npcs.base.autonpcfunctions.AddConsequence("skill","fighting","concussionweapons","+",5);
    npcs.base.autonpcfunctions.AddConsequence("inform","DuhastdasGef�hlalsh�ttestduheutevielgelernt.");
    npcs.base.autonpcfunctions.AddTraderTrigger("learn distance","#me rattles on about bows and slings and how to use them. ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","distanceweapons","=<",20);
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npcs.base.autonpcfunctions.AddConsequence("skill","fighting","distanceweapons","+",5);
    npcs.base.autonpcfunctions.AddConsequence("inform","Youhavethefeelingthatyou'velearntalottoday.");
    npcs.base.autonpcfunctions.AddTraderTrigger("schusswaffen lernen","#me erkl�rt viel �ber B�gen und Schlingen und wie man diese benutzt.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","distanceweapons","=<",20);
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npcs.base.autonpcfunctions.AddConsequence("skill","fighting","distanceweapons","+",5);
    npcs.base.autonpcfunctions.AddConsequence("inform","DuhastdasGef�hlalsh�ttestduheutevielgelernt.");
    npcs.base.autonpcfunctions.AddTraderTrigger("learn puncture","You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","punctureweapons",">",20);
    npcs.base.autonpcfunctions.AddTraderTrigger("stichwaffen lernen","Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","punctureweapons",">",20);
    npcs.base.autonpcfunctions.AddTraderTrigger("learn slashing","You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","slashingweapons",">",20);
    npcs.base.autonpcfunctions.AddTraderTrigger("hiebwaffen lernen","Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","slashingweapons",">",20);
    npcs.base.autonpcfunctions.AddTraderTrigger("learn concussion","You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","concussionweapons",">",20);
    npcs.base.autonpcfunctions.AddTraderTrigger("schlagwaffen lernen","Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","concussionweapons",">",20);
    npcs.base.autonpcfunctions.AddTraderTrigger("learn distance","You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","distanceweapons",">",20);
    npcs.base.autonpcfunctions.AddTraderTrigger("schusswaffen lernen","Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddCondition("skill","distanceweapons",">",20);
    -- Weapon types
    npcs.base.autonpcfunctions.AddTraderTrigger("weapon type","There are four typesss of weaponss: Puncture, slashing, concussion and distance.");
    npcs.base.autonpcfunctions.AddTraderTrigger("waffentyp","Esss gibt vier versschiedene Typenss von Waffenss: Stich- , Hieb- , Schlag-  und Schusswaffenss");
    npcs.base.autonpcfunctions.AddTraderTrigger("puncture","Daggersss are the mossst famouss memberss of the puncture weaponsss");
    npcs.base.autonpcfunctions.AddTraderTrigger("stichwaffen","Dolche ssind die ber�hmtesssten Mitgliederss der Sstichwaffensss");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("stich");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("stichwaffe");
    npcs.base.autonpcfunctions.AddTraderTrigger("slashing","Swordss and waraxess are exampless for slashing weaponss");
    npcs.base.autonpcfunctions.AddTraderTrigger("hiebwaffen","Sschwerterss und Kriegss�xtess sind Beispieless f�r Hiebwaffenss");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("hieb");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("hiebwaffe");
    npcs.base.autonpcfunctions.AddTraderTrigger("concussion","Macesss and warhammer count asss concussion weaponss");
    npcs.base.autonpcfunctions.AddTraderTrigger("schlagwaffen","Streitkolbenss und Kriegssh�mmer zz�hlen als Schlagwaffenss");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("schlag");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("schlagwaffe");
    npcs.base.autonpcfunctions.AddTraderTrigger("distance","npcs.base.autonpcfunctions.Distance weaponss are normally bowss and slingss");
    npcs.base.autonpcfunctions.AddTraderTrigger("schusswaffen","Schusswaffenss sind normalss B�genss und Schleudernss");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("schuss");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("schusswaffe");
    -- leaders, faction and politics
    npcs.base.autonpcfunctions.AddTraderTrigger("cadomyr","Cadomyr iss my hometown and I protectsss it with my life. That'ss why I joined the guardss to give somethingss back to town. Our queen is good to uss and we do what she wantss");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("cadomyr","Cadomyr issst meine Heimat und ich bessch�tze ssie mit meinem Lebenss. Desswegen bin ich auch der Wache beigetretensss, um der Stadt etwass zur�ckzugeben. Unsere K�nigin isst gut zzu unss und wir machen, wass ssie will.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("runewick","Runewick? Sss.. the town has some nice waterss and meadowss as far as I know, but knowledge is more worth than honorss there. Is dangerousss...");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("runewick","Runewick? Sss.. die Stadt hat sch�ness Wasser und Weideland soweit ich wei�ss, aber Wissen isst mehr Wert alss Ehre dort. Das ist gef�hrlichss...");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("galmair","Banditsss, robberss and villainss. That'ss where money and liess are the mosst important goodss. I don't like that place.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("galmair","Banditen, R�uberss und Schufte. Dort sind Geld und L�gen die wichtigsten Warenss. Ich mag den Ortss nicht.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("queen","Queen Rosaline is good to uss and I feelss honored to be member of her palaceguardss. The good god mother Zelphia watchess over her.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("rosaline edwards");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("k�nigin","K�nigin Rosaline ist gut zu uns und ich f�hle mich geehrt dasss ich Mitglied ihrer Palassstwache bin. Die gute Gottmutter Zelphia wacht �ber ihrss.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("rosaline edwards");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("archmage","Archmage Morgan isss the leader of Runewick. He is studying much and gatherss knowledge about everything. Wise men he iss but weakss.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Elvaine Morgan");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("erzmagier","Erzmagier Morgan issst der Anf�hrer von Runewick. Er studiert viel und ssammelt Wisssen �ber alless. Ein weiser Mann er issst aber schwach.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Elvaine Morgan");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("Valerio Guilianni","Guilianni is scum, nothing more. He hasss no honor and he'll neverss come to great sea of mother Zelphia.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("Valerio Guilianni","Guilianni ist Abschaumss, mehr nicht. Er hat keiness Ehre und er wird niemalss zu gro�em Meer von Mutter Zelphia kommenss.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,1};
    TradStdLang=0;

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
            npcs.base.autonpcfunctions.TellSmallTalk(message,originator);
        else
            npcs.base.autonpcfunctions.Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end
