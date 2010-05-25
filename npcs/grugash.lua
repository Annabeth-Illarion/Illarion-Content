-- INSERT INTO npc VALUES (nextval('npc_seq'),4,194,-334,0,4,false,'Grugash','npc_grugash.lua',0);

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

    -- Orc guard
    AddTraderTrigger("Gobaith","Gobaith?  Dis liddle Island?  I hate it!");
    AddCondition("lang","english");
    AddTraderTrigger("Gobaith","Gobaith?  Diese kleine Insel? Ich hasse es!");
    AddCondition("lang","german");
    AddTraderTrigger("Greenbriar","Are joo hungry? Halflings make gud snacks, yubba!");
    AddCondition("lang","english");
    AddTraderTrigger("Greenbriar","Haben Sie Hunger? Halblenge machen gute Imbisse!");
    AddCondition("lang","german");
    AddTraderTrigger("Orc","Yubba!  Meh mighty Orc!");
    AddCondition("lang","english");
    AddTraderTrigger("Orc","Ich bin ein m�chtiger Ork!");
    AddCondition("lang","german");
    AddTraderTrigger("Ork","Ich bin ein m�chtiger Ork!");
    AddCondition("lang","german");
    AddTraderTrigger("Orc Cave","Just go North and see Tihgorac.  Go through Cave and up ladder.  Keep North and see Higdish.");
    AddTraderTrigger("Orc Cave"," Gehen Sie gerade Norden und sieh Tihgorac. Gehen Sie H�hle und Leiter durch. Behalten Sie Norden und sieh Higdish.");
    AddCondition("lang","german");
    AddTraderTrigger("Varshikar","Oomie desert town.  Just go East, joo can�t miss it.");
    AddCondition("lang","english");
    AddTraderTrigger("Varshikar"," Menschliche W�ste-Stadt. Gehen Sie gerade Osten, Sie k�nnen nicht es verpassen!");
    AddCondition("lang","german");
    AddTraderTrigger("I am","Nice to meet joo.");
    AddTraderTrigger("I'm","Nice to meet joo.");
    AddTraderTrigger("Ich bin","Nett dich kennen su lernen.");
    AddTraderTrigger("Silberbrand","#me spuckt auf dem Grund und bleibt still.");
    AddTraderTrigger("Silverbrand","#me spits on the ground and remains silent.");
    AddTraderTrigger("Troll Bane","It beh in middle ob Island.  Big Oomie town it beh.");
    AddCondition("lang","english");
    AddTraderTrigger("Troll Bane","Es ist in der Mitte der Insel. Es ist eine gro�e menschliche Stadt.");
    AddCondition("lang","german");
    AddTraderTrigger("gr[�ue]+[s�]+e","Hallo! Was wollen Sie?");
    AddTraderTrigger("greetings","Greebas! Whub joo want?");
    AddTraderTrigger("greets","Greebas! Whub joo want?");
    AddTraderTrigger("greeb+[a]+s","Greebas friend!  How can meh help joo?");
    AddTraderTrigger("hail","Greebas!  Whub joo want?");
    AddTraderTrigger("hallo","Hallo! Was wollen Sie?");
    AddTraderTrigger("hello","Greebas! Whub joo want?");
    AddTraderTrigger("auf bald","Tchuss!");
    AddTraderTrigger("farewell","Farrebas!");
    AddTraderTrigger("bye","Farrebas!");
    AddTraderTrigger("mission","Meh mission is to guard dis Border.");
    AddTraderTrigger("beruf","Meine Mission ist, diese Grenze zu sch�tzen.");
    AddTraderTrigger("deine aufgabe","Meine Mission ist, diese Grenze zu sch�tzen.");
    AddTraderTrigger("eure aufgabe","Meine Mission ist, diese Grenze zu sch�tzen.");
    AddTraderTrigger("job","Meh job is to guard dis border!");
    AddTraderTrigger("t[�ae]+tigkeit","Meine Mission ist, diese Grenze zu sch�tzen.");
    AddTraderTrigger("was tust du","Meine Mission ist, diese Grenze zu sch�tzen.");
    AddTraderTrigger("was tut ihr","Meine Mission ist, diese Grenze zu sch�tzen.");
    AddTraderTrigger("what you do","Meh job is to guard dis border!");
    AddTraderTrigger("dein name","Mein name? Ich hei�e %npcname");
    AddTraderTrigger("you name","My name?  I beh %npcname");
    AddTraderTrigger("mein name","Sehr angenem. Ich hei�e %NPCNAME.");
    AddTraderTrigger("my name","Keh, gud to meet joo.  Meh beh %NPCNAME.");
    AddTraderTrigger("wie hei[s�]+t du","Ich hei��e %NPCNAME.");
    AddTraderTrigger("helfen","Ihr wolld mir helfen? Gud, bringt mir eine Flasche Bier!");
    AddTraderTrigger("help","Joo wanna help me?  Gud, bring meh a bottle ob Beer!");
    AddTraderTrigger("hilfe","Ihr wolld mir helfen? Gud, bringt mir eine Flasche Bier!");
    AddTraderTrigger("how are you","Gud.");
    AddTraderTrigger("wie geht es","Gut.");
    AddTraderTrigger("buy","Meh nub buy anyding!");
    AddTraderTrigger("kaufen","Ich kaufe gar nix!");
    AddTraderTrigger("sell","Meh nub sell anyding.");
    AddTraderTrigger("verkaufen","Ich verkaufe gar nix!");
    AddTraderTrigger("neu","Du bist neu hier? Geh am besten in die Stadt Osten, Varshikar, und suche nach Leuten, die dir helfen k�nnen.");
    AddTraderTrigger("I[ a']+m new","You are new to Illarion? You should visit the town to the East, Varshikar. Search for people who can help you.");
    AddTraderTrigger("newbie","You are new to Illarion? You should visit the town to the East, Varshikar. Search for people who can help you.");
    AddTraderTrigger("where am I","Joo are on da Border to da Orcs lands!");
    AddTraderTrigger("wo bin ich"," Sie sind auf der Grenze zu den Orks lande!");
    AddTraderTrigger("who","Meh job is to guard dis Border");
    AddTraderTrigger("wer seid","Mein Job soll diese Grenze sch�tzen.");
    AddTraderTrigger("wer","Mein Job soll diese Grenze sch�tzen.");
    AddTraderTrigger("quest","Nubba Quest here.  Ask anudder Guard.");
    AddTraderTrigger("wache","Die Wache? Wir sind besten!");
    AddTraderTrigger("guard","The Guards?  Weh are da best!");
    AddCycleText("#me r�lpst","#me burps");
    AddCycleText("#me zieht eine kleine Flasche aus der Tasche und trinkt einen Schluck","#me pulls a bottle out of his pocket and takes a sip");
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
