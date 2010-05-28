-- INSERT INTO npc VALUES (nextval('npc_seq'),5,-113,-121,0,6,false,'Saszsar Zszar','npc_saszsar_zszar.lua',0);
-- newbie island NPC
-- telling about the cross
-- for lizards: how to fish

require("npc.base.autonpcfunctions")
-- require("npc.base.autonpcfunctions")
module("npc.saszsar_zszar")

function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Ssss! Wass wollt Ihr?");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Ssss! What do you want?");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    npc.base.autonpcfunctions.InitTalkLists();

    -- ********* START DYNAMIC PART ********

    npc.base.autonpcfunctions.AddTraderTrigger("hello","Hello my friend. Maybe I can help you to learn fishing. Or have a look at thisss beautiful column!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("greet");
    npc.base.autonpcfunctions.AddCondition("state","=",0);
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddTraderTrigger("hallo","Ssseid gegr�ssst mein Freund. Vielleicht kann ich Euch dasss Fischen beibringen. Oder ssschaut Euch einfach diesse wunderssch�ne S�ule an!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("gr[�u][s�]");
    npc.base.autonpcfunctions.AddAdditionalTrigger("grue[s�]");
    npc.base.autonpcfunctions.AddCondition("state","=",0);
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddTraderTrigger("my name","Ah, my pleasssure! I am "..thisNPC.name..". Jussst assk if I shall teach you how to catch ssome fisssh. Or have a look at thisss beautiful column!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("i am");
    npc.base.autonpcfunctions.AddCondition("state","=",0);
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("mein name","Ah, issst mir ein Vergn�gen! Ich bin "..thisNPC.name..". Fragt einfach, wenn ich Euch beibringen ssoll, wie man Fissche f�ngt. Oder ssschaut Euch einfach diesse wunderssch�ne S�ule an!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ich bin");
    npc.base.autonpcfunctions.AddCondition("state","=",0);
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("hello","Hello ssstranger, issn't that crosss beautiful? Sssure it iss.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("greet");
    npc.base.autonpcfunctions.AddCondition("state","=",0);
    npc.base.autonpcfunctions.AddTraderTrigger("hallo","Ssseid gegr�ssst, Fremder. Issst diessess Kreuz nicht ssch�n? Nat�rlich issst ess dass.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("gr[�u][s�]");
    npc.base.autonpcfunctions.AddAdditionalTrigger("grue[s�]");
    npc.base.autonpcfunctions.AddCondition("state","=",0);
    npc.base.autonpcfunctions.AddTraderTrigger("my name","Ah, my pleasssure! I am "..thisNPC.name..". Jussst assk if I shall teach you how to catch ssome fisssh. Or have a look at thisss beautiful column!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("i am");
    npc.base.autonpcfunctions.AddCondition("state","=",0);
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("mein name","Ah, issst mir ein Vergn�gen! Ich bin "..thisNPC.name..". Fragt einfach, wenn ich Euch beibringen ssoll, wie man Fissche f�ngt. Oder ssschaut Euch einfach diesse wunderssch�ne S�ule an!");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ich bin");
    npc.base.autonpcfunctions.AddCondition("state","=",0);
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    -- STATE ~= 0
    npc.base.autonpcfunctions.AddTraderTrigger("hello","Hello %CHARNAME, nice to sssee you again. Do you want to know how to fish? I could tell you.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("greet");
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddTraderTrigger("hallo","Ssseid gegr�ssst, %CHARNAME. Sch�n Euch wiederzusssehen. Wollt Ihr wisssen wie man fischt? Ich k�nnte esss Euch ssagen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("gr[�u][s�]");
    npc.base.autonpcfunctions.AddAdditionalTrigger("grue[s�]");
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddTraderTrigger("my name","Yesss, I know your name.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("i am");
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("mein name","Ja, ich weisss Euren Namen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ich bin");
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("hello","Hello %CHARNAME, nice to sssee you again.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("greet");
    npc.base.autonpcfunctions.AddTraderTrigger("hallo","Ssseid gegr�ssst, %CHARNAME. Sch�n Euch wiederzusssehen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("gr[�u][s�]");
    npc.base.autonpcfunctions.AddAdditionalTrigger("grue[s�]");
    npc.base.autonpcfunctions.AddTraderTrigger("my name","Yesss, I know your name.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("i am");
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("mein name","Ja, ich weisss Euren Namen.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ich bin");
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    -- small talk
    npc.base.autonpcfunctions.AddTraderTrigger("how are you","I'm fine, thanksss. And you?");
    npc.base.autonpcfunctions.AddTraderTrigger("wie geht dir","Mir geht esss gut, danke. Und Euch?");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wie geht euch");
    npc.base.autonpcfunctions.AddTraderTrigger("who you","My name isss "..thisNPC.name..". I take care for the Holy Crossss here. Jussst assk if I shall teach you how to catch ssome fisssh.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("what you");
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("wer du","Mein Name issst "..thisNPC.name..". Ich k�mmere mich um dasss Heilige Kreuz hier. Fragt einfach, wenn ich Euch beibringen ssoll, wie man Fische f�ngt.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer ihr");
    npc.base.autonpcfunctions.AddAdditionalTrigger("was du");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer ihr");
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("who you","My name isss "..thisNPC.name..". I take care for the Holy Crossss here.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("what you");
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("wer du","Mein Name issst "..thisNPC.name..". Ich k�mmere mich um dasss Heilige Kreuz hier.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer ihr");
    npc.base.autonpcfunctions.AddAdditionalTrigger("was du");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer ihr");
    npc.base.autonpcfunctions.AddConsequence("state","=",1);
    npc.base.autonpcfunctions.AddTraderTrigger("what is","Thiss isss a Column of Revival. If you fall in battle, go to a Column of Revival to come back to life. Every major town hasss one. But now go on to Amelia, jussst follow the sstreet into the wood.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("column");
    npc.base.autonpcfunctions.AddAdditionalTrigger("revival");
    npc.base.autonpcfunctions.AddTraderTrigger("was ist","Dass issst eine S�ule der Wiederbelebung. Wenn Ihr im Kampf fallen ssolltet, geht zu einer S�ule der Wiederbelebung, um wieder neue Lebensskraft zu bekommen. Jede gr�sssere Stadt hat einess. Aber jetzt geht weiter zu Amelia, folgt einfach der Ssstra�e in den Wald.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("s[�a]ule");
    npc.base.autonpcfunctions.AddAdditionalTrigger("saeule");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wiederbelebung");
    -- fishing
    npc.base.autonpcfunctions.AddTraderTrigger("fish","Oh, you want to learn how to fissh? It isss very ssimple: Jusst go to the water and 'use' it.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("teach");
    npc.base.autonpcfunctions.AddAdditionalTrigger("learn");
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddTraderTrigger("fisch","Oh, Ihr wollt lernen, wie man Fische f�ngt? Esss isst ganz ssimpel: Geht einfach zum Wasssser und 'benutzt' esss.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("beibringen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("bring bei");
    npc.base.autonpcfunctions.AddAdditionalTrigger("lern");
    npc.base.autonpcfunctions.AddAdditionalTrigger("lehr");
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    -- help
    npc.base.autonpcfunctions.AddTraderTrigger("help","If you want to know how to fisssh with your clawss, assk me 'How to fish' and if you want to know more about the Column of Revival, asssk me 'What is the Column of Revival'.");
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddTraderTrigger("hilf","Wenn Ihr wissssen wollt, wie Ihr mit Euren Klauen fisscht, fragt mich 'Wie fische ich' und wenn Ihr mehr �ber die S�ule der Wiederbelebung wisssen wollt, fragt mich 'Was ist die S�ule der Wiederbelebung'.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("helf");
    npc.base.autonpcfunctions.AddCondition("race", CCharacter.lizardman);
    npc.base.autonpcfunctions.AddTraderTrigger("help","If you want to know more about the Holy Crossss, asssk me 'What is the Column of Revival'.");
    npc.base.autonpcfunctions.AddTraderTrigger("hilf","Wenn Ihr mehr �ber dasss Heilige Kreuz wisssen wollt, fragt mich 'Was ist die S�ule der Wiederbelebung'.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("helf");
    -- bye bye
    npc.base.autonpcfunctions.AddTraderTrigger("farewell","Good bye.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("bye");
    npc.base.autonpcfunctions.AddAdditionalText("Be well");
    npc.base.autonpcfunctions.AddAdditionalText("Zelphia with you.");
    npc.base.autonpcfunctions.AddTraderTrigger("leb wohl","Auf bald.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("auf bald");
    npc.base.autonpcfunctions.AddAdditionalTrigger("bis bald");
    npc.base.autonpcfunctions.AddAdditionalTrigger("tschue[s�]");
    npc.base.autonpcfunctions.AddAdditionalTrigger("tsch[u�][s�]");
    npc.base.autonpcfunctions.AddAdditionalText("Bisss bald");
    npc.base.autonpcfunctions.AddAdditionalText("Zelphia mit Euch.");
    -- cycle
    npc.base.autonpcfunctions.AddCycleText("#me starrt fasziniert die gl�nzende S�ule an.","#me stares fascinated at the shiny column.");
    npc.base.autonpcfunctions.AddCycleText("#me l�sst seinen Schwanz hin und her schnalzen","#me flicks his tail");
    -- ********* END DYNAMIC PART ********

    TradSpeakLang={0,4};
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
