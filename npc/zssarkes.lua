-- INSERT INTO npc VALUES (nextval('npc_seq'),5,131,585,0,2,false,'Zssarkes','npc_zssarkes.lua',0);

require("npc.base.autonpcfunctions")
module("npc.zssarkes", package.seeall)

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

    -- Lizard in guard dormitory who directs player to the tavern and teaches 5 skillpoints in one weapon skill afterwards
    QuestID = 103;
    npc.base.autonpcfunctions.AddCycleText("#me tr�pfelt ein paar Tropfen Politur auf einen Lappen und f�ngt an sein Schwert damit einzureiben","#me drips some polish onto a cloth and starts to rub his sword in");
    npc.base.autonpcfunctions.AddCycleText("#me sortiert ein paar R�stungsteile in seine Truhe","#me sorts some armor into his chest");
    npc.base.autonpcfunctions.AddCycleText("#me l�sst seinen Schwanz hin und her schnalzen","#me flicks his tail");
    npc.base.autonpcfunctions.AddCycleText("#me zischelt leise vor sich hin, w�hrend er eine neue Sehne an einem Bogen befestigt","#me hisses quietly to himself, while he attaches a new fiber on a bow");
    npc.base.autonpcfunctions.AddCycleText("#me macht ein paar flinke Bewegungen mit einem Dolch, anscheinend aus Trainingszwecken.","#me makes some quick movements with a dagger, seemgl as training");
    npc.base.autonpcfunctions.AddCycleText("#me schaut sich leise zischelnd in dem Raum um","#me quietly hisses and looks around in the room");
    -- Game help
    npc.base.autonpcfunctions.AddTraderTrigger("help","[Game Help] This NPC is a palace guard, he might be able to teach you a thing or two. Keywords: Litios, training, fight");
    npc.base.autonpcfunctions.AddTraderTrigger("hilfe","[Spielhilfe] Dieser NPC ist eine Palastwache und k�nnte dir vielleicht das ein oder andere beibringen. Schl�sselw�rter: Litios, Training, Kampf");
    npc.base.autonpcfunctions.AddTraderTrigger("restart","Quest restarted");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",0);
    -- Smalltalk
    npc.base.autonpcfunctions.AddTraderTrigger("Hello","Greetingss ssstranger");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greetings");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Be greeted");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hail");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good day");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good morning");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good evening");
    npc.base.autonpcfunctions.AddAdditionalText("Zsss.. Greetingss");
    npc.base.autonpcfunctions.AddAdditionalText("Good day ssstranger");
    npc.base.autonpcfunctions.AddTraderTrigger("Gr��e","Gr�ssse Fremder");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Gru�");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Seid gegr��t");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guten Tag");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guten Abend");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Mahlzeit");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Tach");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Moin");
    npc.base.autonpcfunctions.AddAdditionalText("Zsss.. Gr�ssse");
    npc.base.autonpcfunctions.AddAdditionalText("Guten Tag Fremder");
    npc.base.autonpcfunctions.AddTraderTrigger("Hiho","Greetingss ssstranger");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Zsss.. Greetingss");
    npc.base.autonpcfunctions.AddAdditionalText("Good day ssstranger");
    npc.base.autonpcfunctions.AddTraderTrigger("Hiho","Gr�ssse Fremder");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Zsss.. Gr�ssse");
    npc.base.autonpcfunctions.AddAdditionalText("Guten Tag Fremder");
    npc.base.autonpcfunctions.AddTraderTrigger("Farewell","May the great motherss guide your waysss!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good bye");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Bye");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Fare thy well");
    npc.base.autonpcfunctions.AddAdditionalText("Zzelphia with you!");
    npc.base.autonpcfunctions.AddAdditionalText("Farewellsss");
    npc.base.autonpcfunctions.AddTraderTrigger("Tsch��","M�ge die grosssse Mutter euch auf euren Wegen besssch�tzen!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Tsch�ss");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wiedersehen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Gehabt euch wohl");
    npc.base.autonpcfunctions.AddAdditionalText("Zzelphia mit euch!");
    npc.base.autonpcfunctions.AddAdditionalText("Auf baldsss");
    npc.base.autonpcfunctions.AddTraderTrigger("Ciao","May the great motherss guide your waysss!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("Zzelphia with you!");
    npc.base.autonpcfunctions.AddAdditionalText("Farewellsss");
    npc.base.autonpcfunctions.AddTraderTrigger("Ciao","M�ge die grosssse Mutter euch auf euren Wegen besssch�tzen!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("Zzelphia mit euch!");
    npc.base.autonpcfunctions.AddAdditionalText("Auf baldsss");
    npc.base.autonpcfunctions.AddTraderTrigger("How are you","Goodss, thankss you");
    npc.base.autonpcfunctions.AddAdditionalTrigger("How feel");
    npc.base.autonpcfunctions.AddAdditionalTrigger("How do you do");
    npc.base.autonpcfunctions.AddAdditionalText("I feelss well und you?");
    npc.base.autonpcfunctions.AddAdditionalText("I do wellsss, thankss you");
    npc.base.autonpcfunctions.AddTraderTrigger("Wie geht","Gut, dankess");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wie f�hlst");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wie ist es ergangen");
    npc.base.autonpcfunctions.AddAdditionalText("I f�hless mich gutss und duss?");
    npc.base.autonpcfunctions.AddAdditionalText("Mir gehtss gut, dankess");
    npc.base.autonpcfunctions.AddTraderTrigger("your name","Zzss.. I'm Zssarkes");
    npc.base.autonpcfunctions.AddAdditionalTrigger("who are you");
    npc.base.autonpcfunctions.AddAdditionalTrigger("who art thou");
    npc.base.autonpcfunctions.AddAdditionalText("Zssarkes at yoursss service");
    npc.base.autonpcfunctions.AddAdditionalText("Zssarkes, pleasuress to meetss youss");
    npc.base.autonpcfunctions.AddTraderTrigger("dein name","Ich binss Zssarkes");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer bist du");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer seid ihr");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wie hei�t");
    npc.base.autonpcfunctions.AddAdditionalText("Zssarkes zu dienstenss");
    npc.base.autonpcfunctions.AddAdditionalText("Zssarkes, eine Freude euch kennenss zzu lernenss");
    -- Typical NPC phraces
    npc.base.autonpcfunctions.AddTraderTrigger("what sell","Zzss.. I'm not a trader");
    npc.base.autonpcfunctions.AddAdditionalTrigger("what buy");
    npc.base.autonpcfunctions.AddAdditionalTrigger("list wares");
    npc.base.autonpcfunctions.AddAdditionalTrigger("price of");
    npc.base.autonpcfunctions.AddAdditionalText("I'm a guard notss a merchant");
    npc.base.autonpcfunctions.AddAdditionalText("I do not tradess");
    npc.base.autonpcfunctions.AddTraderTrigger("was verkauf","Ich binss kein H�ndler");
    npc.base.autonpcfunctions.AddAdditionalTrigger("was kauf");
    npc.base.autonpcfunctions.AddAdditionalTrigger("warenliste");
    npc.base.autonpcfunctions.AddAdditionalTrigger("preis von");
    npc.base.autonpcfunctions.AddAdditionalText("Ich handelss nicht");
    npc.base.autonpcfunctions.AddAdditionalText("Ich bin kein H�ndlerss, sssondern eine Wache");
    npc.base.autonpcfunctions.AddTraderTrigger("tell something","I'm not goodss in telling ssstoriess");
    npc.base.autonpcfunctions.AddAdditionalText("I have no timess to tell sstoriess");
    npc.base.autonpcfunctions.AddAdditionalText("Zzss.. I'm a guardss not a ssstoryteller");
    npc.base.autonpcfunctions.AddTraderTrigger("erz�hl was","Ich bin nichtss gut im Geschichten erz�hlenss");
    npc.base.autonpcfunctions.AddAdditionalTrigger("erz�hl etwas");
    npc.base.autonpcfunctions.AddAdditionalText("Ich habe keiness Zeit um Geschichtenss zu erz�hlenss");
    npc.base.autonpcfunctions.AddAdditionalText("Zzss.. Ich bin eine Wache, kein Geschichtenerz�hler");
    -- Quest
    npc.base.autonpcfunctions.AddTraderTrigger("Litios","Oh you knowss Litioss? He leftss the dormitory a whiless back. Ssaid he wantedss to go to tavernss for a drinkss");
    npc.base.autonpcfunctions.AddCondition("qpg","=",0);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("Litios","Oh ihr kenntss Litioss? Er hatss den Sschlafssaal vor einer Weile verlassssen. Sssagte er wollte in die Taverne f�r einen Drinkss");
    npc.base.autonpcfunctions.AddCondition("qpg","=",0);
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("training","Youss too weak to train withss me, but I canss teach youss something about fightingss. What weapon type do you wantss to know more aboutss?");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npc.base.autonpcfunctions.AddTraderTrigger("training","Du zu sschwach um mit mir zzu trainierenss, aber ich kann dirss etwass beibringenss �ber Kampf. �berss welchen Waffentyp willssst du mehr wisssen?");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npc.base.autonpcfunctions.AddTraderTrigger("fight","You are a fighter? Let Zssarkes teach youss something about weapons, alright? What weapon type you wantss to know more aboutss?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("combat");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npc.base.autonpcfunctions.AddTraderTrigger("kampf","Ihr sseid K�mpfer? Lass dir von Zssarkes noch etwass �ber Waffenss beibringenss, in Ordnungss? �berss welchen Waffentyp willssst du mehr wissen?");
    npc.base.autonpcfunctions.AddCondition("qpg","=",1);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",2);
    npc.base.autonpcfunctions.AddTraderTrigger("learn puncture","#me rattles on about daggers and other puncture weapons and how to use them. ");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","punctureweapons","=<",20);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("skill","fighting","punctureweapons","+",5);
    npc.base.autonpcfunctions.AddConsequence("inform","Youhavethefeelingthatyou'velearntalottoday.");
    npc.base.autonpcfunctions.AddTraderTrigger("stichwaffen lernen","#me erkl�rt viel �ber Dolche und andere Stichwaffen und wie man diese benutzt.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","punctureweapons","=<",20);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("skill","fighting","punctureweapons","+",5);
    npc.base.autonpcfunctions.AddConsequence("inform","DuhastdasGef�hlalsh�ttestduheutevielgelernt.");
    npc.base.autonpcfunctions.AddTraderTrigger("learn slashing","#me rattles on about sowrds and waraxes and how to use them.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","slashingweapons","=<",20);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("skill","fighting","slashingweapons","+",5);
    npc.base.autonpcfunctions.AddConsequence("inform","Youhavethefeelingthatyou'velearntalottoday.");
    npc.base.autonpcfunctions.AddTraderTrigger("hiebwaffen lernen","#me erkl�rt viel �ber Schwerter und Kriegs�xte und wie man diese benutzt.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","slashingweapons","=<",20);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("skill","fighting","slashingweapons","+",5);
    npc.base.autonpcfunctions.AddConsequence("inform","DuhastdasGef�hlalsh�ttestduheutevielgelernt.");
    npc.base.autonpcfunctions.AddTraderTrigger("learn concussion","#me rattles on about maces and warhammer and how to use them.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","concussionweapons","=<",20);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("skill","fighting","cucussionweapons","+",5);
    npc.base.autonpcfunctions.AddConsequence("inform","Youhavethefeelingthatyou'velearntalottoday.");
    npc.base.autonpcfunctions.AddTraderTrigger("schlagwaffen lernen","#me erkl�rt viel �ber Streitkolben und Kriegsh�mmer und wie man diese benutzt. ");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","concussionweapons","=<",20);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("skill","fighting","concussionweapons","+",5);
    npc.base.autonpcfunctions.AddConsequence("inform","DuhastdasGef�hlalsh�ttestduheutevielgelernt.");
    npc.base.autonpcfunctions.AddTraderTrigger("learn distance","#me rattles on about bows and slings and how to use them. ");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","distanceweapons","=<",20);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("skill","fighting","distanceweapons","+",5);
    npc.base.autonpcfunctions.AddConsequence("inform","Youhavethefeelingthatyou'velearntalottoday.");
    npc.base.autonpcfunctions.AddTraderTrigger("schusswaffen lernen","#me erkl�rt viel �ber B�gen und Schlingen und wie man diese benutzt.");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","distanceweapons","=<",20);
    npc.base.autonpcfunctions.AddConsequence("qpg","=",3);
    npc.base.autonpcfunctions.AddConsequence("skill","fighting","distanceweapons","+",5);
    npc.base.autonpcfunctions.AddConsequence("inform","DuhastdasGef�hlalsh�ttestduheutevielgelernt.");
    npc.base.autonpcfunctions.AddTraderTrigger("learn puncture","You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","punctureweapons",">",20);
    npc.base.autonpcfunctions.AddTraderTrigger("stichwaffen lernen","Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","punctureweapons",">",20);
    npc.base.autonpcfunctions.AddTraderTrigger("learn slashing","You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","slashingweapons",">",20);
    npc.base.autonpcfunctions.AddTraderTrigger("hiebwaffen lernen","Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","slashingweapons",">",20);
    npc.base.autonpcfunctions.AddTraderTrigger("learn concussion","You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","concussionweapons",">",20);
    npc.base.autonpcfunctions.AddTraderTrigger("schlagwaffen lernen","Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","concussionweapons",">",20);
    npc.base.autonpcfunctions.AddTraderTrigger("learn distance","You seemss rather skilled in the art of fightingss, I cannotss teachss you anythingss");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","distanceweapons",">",20);
    npc.base.autonpcfunctions.AddTraderTrigger("schusswaffen lernen","Ihr ssseht ge�bt auss in der Kunst desss K�mpfenss, ich k�nnenss euch nichtss beibringenss");
    npc.base.autonpcfunctions.AddCondition("qpg","=",2);
    npc.base.autonpcfunctions.AddCondition("skill","distanceweapons",">",20);
    -- Weapon types
    npc.base.autonpcfunctions.AddTraderTrigger("weapon type","There are four typesss of weaponss: Puncture, slashing, concussion and distance.");
    npc.base.autonpcfunctions.AddTraderTrigger("waffentyp","Esss gibt vier versschiedene Typenss von Waffenss: Stich- , Hieb- , Schlag-  und Schusswaffenss");
    npc.base.autonpcfunctions.AddTraderTrigger("puncture","Daggersss are the mossst famouss memberss of the puncture weaponsss");
    npc.base.autonpcfunctions.AddTraderTrigger("stichwaffen","Dolche ssind die ber�hmtesssten Mitgliederss der Sstichwaffensss");
    npc.base.autonpcfunctions.AddAdditionalTrigger("stich");
    npc.base.autonpcfunctions.AddAdditionalTrigger("stichwaffe");
    npc.base.autonpcfunctions.AddTraderTrigger("slashing","Swordss and waraxess are exampless for slashing weaponss");
    npc.base.autonpcfunctions.AddTraderTrigger("hiebwaffen","Sschwerterss und Kriegss�xtess sind Beispieless f�r Hiebwaffenss");
    npc.base.autonpcfunctions.AddAdditionalTrigger("hieb");
    npc.base.autonpcfunctions.AddAdditionalTrigger("hiebwaffe");
    npc.base.autonpcfunctions.AddTraderTrigger("concussion","Macesss and warhammer count asss concussion weaponss");
    npc.base.autonpcfunctions.AddTraderTrigger("schlagwaffen","Streitkolbenss und Kriegssh�mmer zz�hlen als Schlagwaffenss");
    npc.base.autonpcfunctions.AddAdditionalTrigger("schlag");
    npc.base.autonpcfunctions.AddAdditionalTrigger("schlagwaffe");
    npc.base.autonpcfunctions.AddTraderTrigger("distance","npc.base.autonpcfunctions.Distance weaponss are normally bowss and slingss");
    npc.base.autonpcfunctions.AddTraderTrigger("schusswaffen","Schusswaffenss sind normalss B�genss und Schleudernss");
    npc.base.autonpcfunctions.AddAdditionalTrigger("schuss");
    npc.base.autonpcfunctions.AddAdditionalTrigger("schusswaffe");
    -- leaders, faction and politics
    npc.base.autonpcfunctions.AddTraderTrigger("cadomyr","Cadomyr iss my hometown and I protectsss it with my life. That'ss why I joined the guardss to give somethingss back to town. Our queen is good to uss and we do what she wantss");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("cadomyr","Cadomyr issst meine Heimat und ich bessch�tze ssie mit meinem Lebenss. Desswegen bin ich auch der Wache beigetretensss, um der Stadt etwass zur�ckzugeben. Unsere K�nigin isst gut zzu unss und wir machen, wass ssie will.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("runewick","Runewick? Sss.. the town has some nice waterss and meadowss as far as I know, but knowledge is more worth than honorss there. Is dangerousss...");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("runewick","Runewick? Sss.. die Stadt hat sch�ness Wasser und Weideland soweit ich wei�ss, aber Wissen isst mehr Wert alss Ehre dort. Das ist gef�hrlichss...");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("galmair","Banditsss, robberss and villainss. That'ss where money and liess are the mosst important goodss. I don't like that place.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("galmair","Banditen, R�uberss und Schufte. Dort sind Geld und L�gen die wichtigsten Warenss. Ich mag den Ortss nicht.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("queen","Queen Rosaline is good to uss and I feelss honored to be member of her palaceguardss. The good god mother Zelphia watchess over her.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("rosaline edwards");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("k�nigin","K�nigin Rosaline ist gut zu uns und ich f�hle mich geehrt dasss ich Mitglied ihrer Palassstwache bin. Die gute Gottmutter Zelphia wacht �ber ihrss.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("rosaline edwards");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("archmage","Archmage Morgan isss the leader of Runewick. He is studying much and gatherss knowledge about everything. Wise men he iss but weakss.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Elvaine Morgan");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("erzmagier","Erzmagier Morgan issst der Anf�hrer von Runewick. Er studiert viel und ssammelt Wisssen �ber alless. Ein weiser Mann er issst aber schwach.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Elvaine Morgan");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("Valerio Guilianni","Guilianni is scum, nothing more. He hasss no honor and he'll neverss come to great sea of mother Zelphia.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("Valerio Guilianni","Guilianni ist Abschaumss, mehr nicht. Er hat keiness Ehre und er wird niemalss zu gro�em Meer von Mutter Zelphia kommenss.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
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
