-- INSERT INTO npc VALUES (nextval('npc_seq'),5,-113,-121,0,6,false,'Saszsar Zszar','npc_saszsar_zszar.lua',0);
-- newbie island NPC
-- telling about the cross
-- for lizards: how to fish

require("npcs.base.autonpcfunctions")
-- require("npcs.base.autonpcfunctions")

function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Ssss! Wass wollt Ihr?");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Ssss! What do you want?");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    InitTalkLists();

    -- ********* START DYNAMIC PART ********

    AddTraderTrigger("hello","Hello my friend. Maybe I can help you to learn fishing. Or have a look at thisss beautiful column!");
    AddAdditionalTrigger("greet");
    AddCondition("state","=",0);
    AddCondition("race", CCharacter.lizardman);
    AddTraderTrigger("hallo","Ssseid gegr�ssst mein Freund. Vielleicht kann ich Euch dasss Fischen beibringen. Oder ssschaut Euch einfach diesse wunderssch�ne S�ule an!");
    AddAdditionalTrigger("gr[�u][s�]");
    AddAdditionalTrigger("grue[s�]");
    AddCondition("state","=",0);
    AddCondition("race", CCharacter.lizardman);
    AddTraderTrigger("my name","Ah, my pleasssure! I am "..thisNPC.name..". Jussst assk if I shall teach you how to catch ssome fisssh. Or have a look at thisss beautiful column!");
    AddAdditionalTrigger("i am");
    AddCondition("state","=",0);
    AddCondition("race", CCharacter.lizardman);
    AddConsequence("state","=",1);
    AddTraderTrigger("mein name","Ah, issst mir ein Vergn�gen! Ich bin "..thisNPC.name..". Fragt einfach, wenn ich Euch beibringen ssoll, wie man Fissche f�ngt. Oder ssschaut Euch einfach diesse wunderssch�ne S�ule an!");
    AddAdditionalTrigger("ich bin");
    AddCondition("state","=",0);
    AddCondition("race", CCharacter.lizardman);
    AddConsequence("state","=",1);
    AddTraderTrigger("hello","Hello ssstranger, issn't that crosss beautiful? Sssure it iss.");
    AddAdditionalTrigger("greet");
    AddCondition("state","=",0);
    AddTraderTrigger("hallo","Ssseid gegr�ssst, Fremder. Issst diessess Kreuz nicht ssch�n? Nat�rlich issst ess dass.");
    AddAdditionalTrigger("gr[�u][s�]");
    AddAdditionalTrigger("grue[s�]");
    AddCondition("state","=",0);
    AddTraderTrigger("my name","Ah, my pleasssure! I am "..thisNPC.name..". Jussst assk if I shall teach you how to catch ssome fisssh. Or have a look at thisss beautiful column!");
    AddAdditionalTrigger("i am");
    AddCondition("state","=",0);
    AddCondition("race", CCharacter.lizardman);
    AddConsequence("state","=",1);
    AddTraderTrigger("mein name","Ah, issst mir ein Vergn�gen! Ich bin "..thisNPC.name..". Fragt einfach, wenn ich Euch beibringen ssoll, wie man Fissche f�ngt. Oder ssschaut Euch einfach diesse wunderssch�ne S�ule an!");
    AddAdditionalTrigger("ich bin");
    AddCondition("state","=",0);
    AddConsequence("state","=",1);
    -- STATE ~= 0
    AddTraderTrigger("hello","Hello %CHARNAME, nice to sssee you again. Do you want to know how to fish? I could tell you.");
    AddAdditionalTrigger("greet");
    AddCondition("race", CCharacter.lizardman);
    AddTraderTrigger("hallo","Ssseid gegr�ssst, %CHARNAME. Sch�n Euch wiederzusssehen. Wollt Ihr wisssen wie man fischt? Ich k�nnte esss Euch ssagen.");
    AddAdditionalTrigger("gr[�u][s�]");
    AddAdditionalTrigger("grue[s�]");
    AddCondition("race", CCharacter.lizardman);
    AddTraderTrigger("my name","Yesss, I know your name.");
    AddAdditionalTrigger("i am");
    AddCondition("race", CCharacter.lizardman);
    AddConsequence("state","=",1);
    AddTraderTrigger("mein name","Ja, ich weisss Euren Namen.");
    AddAdditionalTrigger("ich bin");
    AddCondition("race", CCharacter.lizardman);
    AddConsequence("state","=",1);
    AddTraderTrigger("hello","Hello %CHARNAME, nice to sssee you again.");
    AddAdditionalTrigger("greet");
    AddTraderTrigger("hallo","Ssseid gegr�ssst, %CHARNAME. Sch�n Euch wiederzusssehen.");
    AddAdditionalTrigger("gr[�u][s�]");
    AddAdditionalTrigger("grue[s�]");
    AddTraderTrigger("my name","Yesss, I know your name.");
    AddAdditionalTrigger("i am");
    AddConsequence("state","=",1);
    AddTraderTrigger("mein name","Ja, ich weisss Euren Namen.");
    AddAdditionalTrigger("ich bin");
    AddConsequence("state","=",1);
    -- small talk
    AddTraderTrigger("how are you","I'm fine, thanksss. And you?");
    AddTraderTrigger("wie geht dir","Mir geht esss gut, danke. Und Euch?");
    AddAdditionalTrigger("wie geht euch");
    AddTraderTrigger("who you","My name isss "..thisNPC.name..". I take care for the Holy Crossss here. Jussst assk if I shall teach you how to catch ssome fisssh.");
    AddAdditionalTrigger("what you");
    AddCondition("race", CCharacter.lizardman);
    AddConsequence("state","=",1);
    AddTraderTrigger("wer du","Mein Name issst "..thisNPC.name..". Ich k�mmere mich um dasss Heilige Kreuz hier. Fragt einfach, wenn ich Euch beibringen ssoll, wie man Fische f�ngt.");
    AddAdditionalTrigger("wer ihr");
    AddAdditionalTrigger("was du");
    AddAdditionalTrigger("wer ihr");
    AddCondition("race", CCharacter.lizardman);
    AddConsequence("state","=",1);
    AddTraderTrigger("who you","My name isss "..thisNPC.name..". I take care for the Holy Crossss here.");
    AddAdditionalTrigger("what you");
    AddConsequence("state","=",1);
    AddTraderTrigger("wer du","Mein Name issst "..thisNPC.name..". Ich k�mmere mich um dasss Heilige Kreuz hier.");
    AddAdditionalTrigger("wer ihr");
    AddAdditionalTrigger("was du");
    AddAdditionalTrigger("wer ihr");
    AddConsequence("state","=",1);
    AddTraderTrigger("what is","Thiss isss a Column of Revival. If you fall in battle, go to a Column of Revival to come back to life. Every major town hasss one. But now go on to Amelia, jussst follow the sstreet into the wood.");
    AddAdditionalTrigger("column");
    AddAdditionalTrigger("revival");
    AddTraderTrigger("was ist","Dass issst eine S�ule der Wiederbelebung. Wenn Ihr im Kampf fallen ssolltet, geht zu einer S�ule der Wiederbelebung, um wieder neue Lebensskraft zu bekommen. Jede gr�sssere Stadt hat einess. Aber jetzt geht weiter zu Amelia, folgt einfach der Ssstra�e in den Wald.");
    AddAdditionalTrigger("s[�a]ule");
    AddAdditionalTrigger("saeule");
    AddAdditionalTrigger("wiederbelebung");
    -- fishing
    AddTraderTrigger("fish","Oh, you want to learn how to fissh? It isss very ssimple: Jusst go to the water and 'use' it.");
    AddAdditionalTrigger("teach");
    AddAdditionalTrigger("learn");
    AddCondition("race", CCharacter.lizardman);
    AddTraderTrigger("fisch","Oh, Ihr wollt lernen, wie man Fische f�ngt? Esss isst ganz ssimpel: Geht einfach zum Wasssser und 'benutzt' esss.");
    AddAdditionalTrigger("beibringen");
    AddAdditionalTrigger("bring bei");
    AddAdditionalTrigger("lern");
    AddAdditionalTrigger("lehr");
    AddCondition("race", CCharacter.lizardman);
    -- help
    AddTraderTrigger("help","If you want to know how to fisssh with your clawss, assk me 'How to fish' and if you want to know more about the Column of Revival, asssk me 'What is the Column of Revival'.");
    AddCondition("race", CCharacter.lizardman);
    AddTraderTrigger("hilf","Wenn Ihr wissssen wollt, wie Ihr mit Euren Klauen fisscht, fragt mich 'Wie fische ich' und wenn Ihr mehr �ber die S�ule der Wiederbelebung wisssen wollt, fragt mich 'Was ist die S�ule der Wiederbelebung'.");
    AddAdditionalTrigger("helf");
    AddCondition("race", CCharacter.lizardman);
    AddTraderTrigger("help","If you want to know more about the Holy Crossss, asssk me 'What is the Column of Revival'.");
    AddTraderTrigger("hilf","Wenn Ihr mehr �ber dasss Heilige Kreuz wisssen wollt, fragt mich 'Was ist die S�ule der Wiederbelebung'.");
    AddAdditionalTrigger("helf");
    -- bye bye
    AddTraderTrigger("farewell","Good bye.");
    AddAdditionalTrigger("bye");
    AddAdditionalText("Be well");
    AddAdditionalText("Zelphia with you.");
    AddTraderTrigger("leb wohl","Auf bald.");
    AddAdditionalTrigger("auf bald");
    AddAdditionalTrigger("bis bald");
    AddAdditionalTrigger("tschue[s�]");
    AddAdditionalTrigger("tsch[u�][s�]");
    AddAdditionalText("Bisss bald");
    AddAdditionalText("Zelphia mit Euch.");
    -- cycle
    AddCycleText("#me starrt fasziniert die gl�nzende S�ule an.","#me stares fascinated at the shiny column.");
    AddCycleText("#me l�sst seinen Schwanz hin und her schnalzen","#me flicks his tail");
    -- ********* END DYNAMIC PART ********

    TradSpeakLang={0,4};
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


function lookAtNpc(Char, mode)
    if initLook==nil then
        output={};
        output[0]="Ein schuppiger junger Echsenmann. Er sitzt im Schneidersitz auf den Boden und betrachtet mit seinen gr�nleuchtenden Augen fasziniert die S�ule.";
        output[1]="A flaked young lizardman. He sits cross-legged on the ground and watches fascinated with his green glowing eyes the column.";
        initLook=1;
    end

    lang=Char:getPlayerLanguage();
    Char:sendCharDescription( thisNPC.id , output[lang] );
end
