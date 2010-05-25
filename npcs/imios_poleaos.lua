-- INSERT INTO npc VALUES (nextval('npc_seq'),0,123,549,0,4,false,'Imios Poleaos','npc_imios_poleaos.lua',0);

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

    -- Palace Guard positioned infront of the gate of 'Cleos' palace
    QuestID = 101;
    AddCycleText("#me schaut sich wachsam und ungeduldig um","#me looks vigilanty and impatiently around");
    AddCycleText("#me r�ckt seine R�stung zurecht, auf welcher das Emblem der Stadtwache prangt","#me adjusts his armour on which the emblem of the palace guard can be seen");
    AddCycleText("#me steht kerzengerade und wachsam vor dem Palasttor","#me stands bolt upright and watchful infront of the palace gate");
    AddCycleText("#me hat seine Hand locker auf dem Schwertgriff liegen","#me 's hand lays lax on the sword handle");
    AddCycleText("#me verlagert sein Gewicht etwas","#me shifts his position a little");
    AddCycleText("#me schaut die Passanten misstrauisch an","#me watches the passersby suspiciously");
    -- Game help
    AddTraderTrigger("help","[Game Help] This NPC is a palace guard, he might have a problem you can help him with. Keywords: quest, problem");
    AddTraderTrigger("hilfe","[Spielhilfe] Dieser NPC ist eine Palastwache und hat vielleicht ein Problem. Schl�sselw�rter: Quest, Problem");
    AddTraderTrigger("restart","Quest restarted");
    AddConsequence("qpg","=",0);
    -- Smalltalk
    AddTraderTrigger("Hello","Be greeted stranger");
    AddAdditionalTrigger("Greetings");
    AddAdditionalTrigger("Be greeted");
    AddAdditionalTrigger("Hail");
    AddAdditionalTrigger("Good day");
    AddAdditionalTrigger("Good morning");
    AddAdditionalTrigger("Good evening");
    AddAdditionalText("Welcome to the palace of her majesty");
    AddAdditionalText("Greetings, pleace behave yourself or I'll have to lock you up");
    AddTraderTrigger("Gr��e","Seid gegr��t Fremder");
    AddAdditionalTrigger("Gru�");
    AddAdditionalTrigger("Seid gegr��t");
    AddAdditionalTrigger("Guten Tag");
    AddAdditionalTrigger("Guten Abend");
    AddAdditionalTrigger("Mahlzeit");
    AddAdditionalTrigger("Tach");
    AddAdditionalTrigger("Moin");
    AddAdditionalText("Willkommen in dem Palast eurer Majest�t");
    AddAdditionalText("Gr��e, bitte benehmt euch, oder ich muss euch einsperren");
    AddTraderTrigger("Hiho","Be greeted stranger");
    AddAdditionalTrigger("Hallo");
    AddAdditionalTrigger("Hey");
    AddAdditionalTrigger("Greebas");
    AddAdditionalTrigger("Greebs");
    AddCondition("lang","english");
    AddAdditionalText("Welcome to the palace of her majesty");
    AddAdditionalText("Greetings, pleace behave yourself or I'll have to lock you up");
    AddTraderTrigger("Hiho","Seid gegr��t Fremder");
    AddAdditionalTrigger("Hallo");
    AddAdditionalTrigger("Hey");
    AddAdditionalTrigger("Greebas");
    AddAdditionalTrigger("Greebs");
    AddCondition("lang","german");
    AddAdditionalText("Willkommen in dem Palast eurer Majest�t");
    AddAdditionalText("Gr��e, bitte benehmt euch, oder ich muss euch einsperren");
    AddTraderTrigger("Farewell","May Malachin guide your way!");
    AddAdditionalTrigger("Good bye");
    AddAdditionalTrigger("Bye");
    AddAdditionalTrigger("Fare thy well");
    AddAdditionalText("Malachin with you!");
    AddAdditionalText("Farewell");
    AddTraderTrigger("Tsch��","M�ge Malachin euch auf euren Wegen besch�tzen!");
    AddAdditionalTrigger("Tsch�ss");
    AddAdditionalTrigger("Wiedersehen");
    AddAdditionalTrigger("Gehabt euch wohl");
    AddAdditionalText("Malachin mit euch!");
    AddAdditionalText("Auf bald");
    AddTraderTrigger("Ciao","Indeed. Farewell");
    AddAdditionalTrigger("Adieu");
    AddAdditionalTrigger("Au revoir");
    AddCondition("lang","english");
    AddAdditionalText("Malachin with you!");
    AddAdditionalText("Farewell");
    AddTraderTrigger("Ciao","Gewiss. Auf bald");
    AddAdditionalTrigger("Adieu");
    AddAdditionalTrigger("Au revoir");
    AddCondition("lang","german");
    AddAdditionalText("Malachin mit euch!");
    AddAdditionalText("Auf bald");
    AddTraderTrigger("How are you","I could do better, am a little nervous");
    AddAdditionalTrigger("How feel");
    AddAdditionalTrigger("How do you do");
    AddAdditionalText("Nervous");
    AddAdditionalText("Fine I suppose but nervous");
    AddTraderTrigger("Wie geht","Es k�nnte mir besser gehen, bin ein wenig nerv�s");
    AddAdditionalTrigger("Wie f�hlst");
    AddAdditionalTrigger("Wie ist es ergangen");
    AddAdditionalText("Nerv�s");
    AddAdditionalText("Gut, nehme ich an, nur nerv�s");
    AddTraderTrigger("your name","I'm Imios Poleaos");
    AddAdditionalTrigger("who are you");
    AddAdditionalTrigger("who art thou");
    AddAdditionalText("Imios Poleaos at your service");
    AddAdditionalText("Palace guard Imios Poleaos");
    AddTraderTrigger("dein name","Ich bin Imios Poleaos");
    AddAdditionalTrigger("wer bist du");
    AddAdditionalTrigger("wer seid ihr");
    AddAdditionalTrigger("wie hei�t");
    AddAdditionalText("Imios Poleaos zu diensten");
    AddAdditionalText("Palastwache Imios Poleaos");
    AddTraderTrigger("why nervous","I have a small problem, maybe you could help me with that?");
    AddAdditionalTrigger("nervous");
    AddTraderTrigger("wieso nerv�s","Ich habe ein kleines Problem, vielleicht k�nnt ihr mir damit helfen?");
    AddAdditionalTrigger("warum nerv�s");
    AddAdditionalTrigger("nerv�s");
    -- Typical NPC phraces
    AddTraderTrigger("what sell","I do not sell or buy anything");
    AddAdditionalTrigger("what buy");
    AddAdditionalTrigger("list wares");
    AddAdditionalTrigger("price of");
    AddAdditionalText("I'm not a merchant but a  member of the palace guard");
    AddAdditionalText("I do not trade");
    AddTraderTrigger("was verkauf","I kaufe und verkaufe nichts");
    AddAdditionalTrigger("was kauf");
    AddAdditionalTrigger("warenliste");
    AddAdditionalTrigger("preis von");
    AddAdditionalText("Ich handel nicht");
    AddAdditionalText("Ich bin kein H�ndler, sondern ein Mitglied der Palastwache");
    AddTraderTrigger("tell something","I have no time to tell you a story. I'm on duty");
    AddAdditionalText("I do not know any stories I could tell you");
    AddAdditionalText("I'm a guard not a storyteller!");
    AddTraderTrigger("erz�hl was","Ich habe keine Zeit euch eine Geschichte zu erz�hlen. Ich bin im Dienst");
    AddAdditionalTrigger("erz�hl etwas");
    AddAdditionalText("Ich kenne keine Geschichten die ich euch erz�hlen k�nnte");
    AddAdditionalText("Ich bin eine Wache, kein Geschichtenerz�hler");
    -- quest
    AddTraderTrigger("quest","The shift of my comrate Litios is about to start and he's not here yet. Could you look for him? He's probably still in the dormitory");
    AddAdditionalTrigger("problem");
    AddAdditionalTrigger("yes");
    AddAdditionalTrigger("sure");
    AddCondition("qpg","=",0);
    AddCondition("lang","english");
    AddConsequence("qpg","=",1);
    AddTraderTrigger("quest","Die Schicht meines Kameraden Litios f�ngt bald an und er ist noch nicht hier. K�nntest du nach ihm sehen? Er ist bestimmt noch in dem Schlafsaal");
    AddAdditionalTrigger("problem");
    AddAdditionalTrigger("ja");
    AddAdditionalTrigger("sicher");
    AddCondition("qpg","=",0);
    AddCondition("lang","german");
    AddConsequence("qpg","=",1);
    AddTraderTrigger("where is Litios","I don't know where he is. You should look in the dormitory, that's where I saw him last");
    AddCondition("qpg","=",1);
    AddTraderTrigger("wo ist Litios","Ich wei� nicht wo er ist. Ihr solltet in dem Schlafsaal nachschauen, dort habe ich ihn zuletzt gesehen");
    AddCondition("qpg","=",1);
    AddTraderTrigger("dormitory","You can find the dormitory ...");
    AddCondition("qpg","=",1);
    AddTraderTrigger("schlafsaal","Der Schlafsaal ist ...");
    AddCondition("qpg","=",1);
    AddTraderTrigger("Litios not comming","Oh no, that is horrible! Well, it is not your fault. Here is a small compensation for your effort");
    AddAdditionalTrigger("Litios refuses");
    AddAdditionalTrigger("Litios drunk");
    AddCondition("qpg","=",1);
    AddConsequence("qpg","=",2);
    AddConsequence("money","+",200);
    AddConsequence("item",1,1,800,0);
    AddTraderTrigger("Litios kommt nicht","Oh nein, das ist schrecklich! Nun, ihr k�nnt nichts daf�r. Hier ist eine kleine Entsch�digung f�r eure M�hen");
    AddAdditionalTrigger("Litios verweigert");
    AddAdditionalTrigger("Litios betrunken");
    AddCondition("qpg","=",1);
    AddConsequence("qpg","=",2);
    AddConsequence("money","+",200);
    AddConsequence("item",1,1,800,0);
    AddTraderTrigger("Litios","Yes, Litios was supposed to do his shift but unfortunate for me, he's not comming");
    AddCondition("qpg","=",2);
    AddCondition("lang","english");
    AddTraderTrigger("Litios","Ja, Litios sollte eigentlich seine Schicht machen, doch zu meinem leidwesen, kommt er nicht");
    AddCondition("qpg","=",2);
    AddCondition("lang","german");
    AddTraderTrigger("problem","I thank you for your help with Litios, but I don't need anything else from you");
    AddCondition("qpg","=",2);
    AddCondition("lang","english");
    AddTraderTrigger("problem","Ich danke euch f�r eure Hilfe mit Litios, aber ich brauche nun nichts mehr von euch");
    AddCondition("qpg","=",2);
    AddCondition("lang","german");
    -- leader, factions and politics
    AddTraderTrigger("cadomyr","Cadomyr, my desert perl. I adore this city, it prospers under the leadership of her highness queen Rosaline and is the most honorable city around and the savest I would say. Our guards are well trained and equipped, her highness knows that she can trust us.");
    AddCondition("lang","english");
    AddTraderTrigger("cadomyr","Cadomry, meine W�stenperle. I liebe diese Stadt, sie gedeiht unter der Herrschaft von ihrer Hoheit K�nigin Rosaline und ist die ehrbarste Stadt in der N�he und die Sicherste, w�rde ich sagen. Unsere Wachen sind gut ausgebildet und ausgestattet, ihre Hoheit wei� das sie sich auf uns verlassen kann.");
    AddCondition("lang","german");
    AddTraderTrigger("runewick","Runewick? That's where all those mages come from, right? They are rather weak when it comes to a fair fight between men, but I heard that there are quiet some good cooks as well.");
    AddCondition("lang","english");
    AddTraderTrigger("runewick","Runewick? Da kommen diese ganzen Magier her, richtig? Die sind eher schwach, wenn es zu einem fairen Kampf zwischen M�nnern kommt, aber ich habe geh�rt, das es dort auch gute K�che geben soll.");
    AddCondition("lang","german");
    AddTraderTrigger("galmair","Well that's a bunch of bandits, villains and liars. If you want to lose your money, honor or live, just go there.");
    AddCondition("lang","english");
    AddTraderTrigger("galmair","Nun, das ist eine Ansammlung von Banditen, R�ubern und L�gnern. Wenn du dein Geld, eine Ehre oder dein Leben verlieren willst, dann musst du nur dorthin gehen.");
    AddCondition("lang","german");
    AddTraderTrigger("queen","Queen Rosaline is a lady and she cares good for those who are loyal. So better don't get on her bad side or you'll have to leave this fine town sooner or later.");
    AddAdditionalTrigger("rosaline edwards");
    AddCondition("lang","english");
    AddTraderTrigger("k�nigin","K�nigin Rosaline ist eine Dame und sie k�mmert sich gut um jene, die ihr Treu sind. Also kommt besser nicht auf ihre schlechte Seite, oder ihr werdet diese sch�ne Stadt fr�her oder sp�ter verlassen m�ssen.");
    AddAdditionalTrigger("rosaline edwards");
    AddCondition("lang","german");
    AddTraderTrigger("archmage","Archmage Morgan is the leader of Runewick. Not much to say about him, not sure if he's still alive even.");
    AddAdditionalTrigger("Elvaine Morgan");
    AddCondition("lang","english");
    AddTraderTrigger("erzmagier","Erzmagier Morgan ist der Anf�hrer von Runewick. Es gibt nicht viel �ber ihn zu sagen, ich wei� nichtmal ob er noch lebt.");
    AddAdditionalTrigger("Elvaine Morgan");
    AddCondition("lang","german");
    AddTraderTrigger("Valerio Guilianni","Guilianni is the worst bandit there is. He lies and tricks until he got all the money from you, and he's the best in it and thus he is the leader of Galmair.");
    AddCondition("lang","english");
    AddTraderTrigger("Valerio Guilianni","Guilianni ist der schlimmste Bandit den es gibt. Er l�gt undbetr�gt bis er euer ganzes Geld besitzt und der ist der beste darin, deswegen ist er auch der Anf�hrer von Galmair.");
    AddCondition("lang","german");
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
