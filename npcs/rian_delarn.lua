--Name:        Rian Delarn
--Race:        Mensch
--Town:        Magische Akademie - Arena
--Function:    Kreaturen beschw�ren
--Position:    x=31 y=56 z=50
--Facing:      West
--Last Update: 12/06/2008
--Update by:   Kadiya

require("npcs.base.functions")
require("npcs.base.autonpcfunctions")
require("magic.base.basics");
module("npcs.rian_delarn")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Finger wech oder du bist ein Kopf k�rzer!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Dont ya' touch me!");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    npcs.base.autonpcfunctions.npcs.base.functions.InitTalkLists()

    thisNPC:increaseSkill(1,"common language",100);
    
    -- ********* START DYNAMIC PART ********

    npcs.base.autonpcfunctions.npcs.base.functions.AddCycleText("#me beobachtet schweigend die Arena.","#me watches silently the arena.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddCycleText("#me setzt sich auf den Baumstamm und beginnt in einem kleinen Buch zu lesen.","#me sit down at the log and starts to read in a small book.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddCycleText("#me geht, leise Formeln vor sich hermurmelnd, langsam ein St�ck auf und ab.","#me npcs.base.autonpcfunctions.walks, mumbling silent formulas, a short way.");

    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]r�[s�]","Ich gr��e euch.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Hh]allo");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Gg]rue[s�]");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Tt]a[gc].*");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalText("Seid gegr��t!");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Aa]uf [Bb]ald","Auf bald und sichere Wege.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Gg]�tter.+euch");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Bb]is.+[Bb]ald");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Uu]ff.+[Bb]ald");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ff]�nf.+euch");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]er [bs][ie][si][td] [di][uh].*","Ich bin "..thisNPC.name..": Ich lebe in der magischen Akademie und forsche hier im Fachgebiet der Beschw�rungsmagie.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ww]ie.+[Nn]ame");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Hh]ilfe","Willst du trainieren? Wenn m�chtest beschw�re ich dir auf dem Arenafeld eine Kreatur zum �ben.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Kk]reatur","Du m�chtest eine Kreatur zum trainieren? Sag mir, ob du eine harmlose oder eine aggressive m�chtest.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]tudent","Oh...Es tut mir leid, aber ich nehme keine Studenten an.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]ch�ler","Ich unterrichte nicht.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]reeting","Greetings to you!");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Hh]ello");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalText("Greetings");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]oodbye","Farewell.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Bb]ye");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ff]arewell");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ff]ive.+you");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalText("Goodbye");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]ho.+you","I am "..thisNPC.name..". I live in the magic academy and research in department of summoning here.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ww]hat.+[Nn]ame");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Hh]elp","Have a training? If you want I summon a creature for you on the arena field.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Cc]reature","Do you want a creature for training? Tell me, if you want a harmless or a aggressive creature.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]tudent","Oh...I'm sorry, but I take no students.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Pp]upil","I'm not a teacher.");
    
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]hat.+buy","Thanks, but I already have everything I need.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]hat.+sell","I don't sell anything. Do I look like a merchant?");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("buy","I don't sell anything. Do I look like a merchant?");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("sell","Thanks, but I already have everything I need.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]as.+kaufst","Ich habe bereits alles, was ich brauche.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]as.+verkaufst","Ich verkaufe nichts. Sehe ich etwa aus wie ein H�ndler?");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Kk]aufen","Ich verkaufe nichts. Sehe ich etwa aus wie ein H�ndler?");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Vv]erkaufen","Danke nein, ich habe bereits alles, was ich brauche.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]obaith","This whole island group is called Gobiath. Nice place, the weather usually does not get too rough or too hot, I like it.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]reenbriar","Greenbriar is a settlement of the Halflings.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Hh]arbo[u]+r","Troll's Bane and Vanima both have Harbors. The one southwest from Troll's Bane is bigger though but he is quite far away from the town.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Hh]ellbriar","That was an evil dungeon near Greenbriar ! The evil cultists there sacrificed most of the halflings of Greenbriar.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Mm]agic [Aa]cademy","This is the magic academy of gobaith. Its just allowed for mages, students and guests to be here.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Mm]age [Aa]cademy","This is the magic academy of gobaith. Its just allowed for mages, students and guests to be here.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Nn]orthmark","Some Norodaj-Barbarians have settled in the north of Gobaith...they are a bit simple and have some fear of magic, because they can't understand it...better don't go there.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]ilverbrand","Silverbrand is the town of the dwarfes. They don't like elven, mages, fairys, and any other race except there own...in this order.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Vv]anima","Tol Vanima is the \"Isle of the elven\"...a small island in the east of gobaith. You can reach it over the harbour or with one of the teleporters.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Tt]roll['s].+[Bb]ane","Well, that's the biggest town on Gobiath.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Vv]arshikar","You find it past the small sand desert in the far northwest. I would use the Teleporter, the desert is full of dangerous scorpions.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
--  
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]obiath","Diese ganze Inselgruppe wird Gobiath genannt. Nette Gegend, das Wetter wird nicht zu kalt oder zu hei�, ich bin gerne hier.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]reenbriar","Greenbriar is eine Halblingssiedlung im S�den Gobaiths.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Hh]afen","Troll's Bane und Vanima haben H�fen. Der Hafen s�dwestlich von Troll's Bane ist zwar gr��er aber auch sehr weit von der Stadt entfernt.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Hh]ellbriar","Das war ein von einem barbarischen Kult besetzter Dungeon nahe bei Greenbriar. Die b�sartigen Kultisten dort haben die meisten der Halblinge geopfert.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Mm]agierakademie","Dies hier ist die magische Akademie. Es ist nur Magiern, Studenten und ihren G�sten gestattet hier zu sein.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Mm]agische [Aa]kademie","Dies hier ist die magische Akademie. Es ist nur Magierin, Studenten und ihren G�sten gestattet hier zu sein.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Nn]ordmark","Einige Norodaj-Barbaren haben sich im Norden Gobaiths angesiedelt. Sie sind etwas einf�ltig und haben gro�e Angst vor Magie...geh besser nicht dorthin.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]ilberbrand","Silberbrand ist die unterirdische Stadt der Zwerge. Sie m�gen keine Elfen, keine Magier, keine Feen und auch sonst keine Rasse au�er ihrer eigenen...");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Vv]anima","Tol Vanima ist die \"Insel der Elfen\"...eine kleine Insel im Osten von Gobaith. Du kannst sie �ber den Hafen oder mit einem Teleporter erreichen");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Tt]roll['s].+[Bb]ane","Tja, das ist die gr�sste Stadt auf Gobiath.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Vv]arshikar","Das findet man weit im Nordwesten hinter der kleinen Sandw�ste. Ich w�rde den Teleporter benutzen, die W�ste ist voller gef�hrlicher Skorpione.");

-- ********* END DYNAMIC PART ********


    TradSpeakLang={0,1,10};
    TradStdLang=0;
    --common language=0
    --human language=1
    --dwarf language=2
    --elf language=3
    --lizard language=4
    --orc language=5
    --halfling language=6
    --fairy language=7
    --gnome language=8
    --goblin language=9
    --ancient language=10

    PreisHarmlKrea = 30;
    PreisAggrKrea  = 50;

end


function nextCycle()  -- ~10 times per second
    if ( TraderInit == nil) then
        TraderInit = {};
    end

    if (TraderInit[thisNPC.id] == nil) then
        initializeNpc();
        npcs.base.autonpcfunctions.npcs.base.functions.increaseLangSkill(TradSpeakLang);
        thisNPC.activeLanguage=TradStdLang;
        TraderInit[thisNPC.id] = true;
    end

    if (CastAggr==nil) then CastAggr=0; end

    if (CastAggr~=0)then
    	if (Round==nil) then Round=1; end
	if (Round==1) then
	    world:gfx(21,position(31,56,50));
	    Round=Round+1;
	    if (CastAggr==1) then 
       		local Language=thisNPC.activeLanguage;
	    	thisNPC.activeLanguage=10;
	    	thisNPC:talk(CCharacter.say,"IRA TAUR LUK");
	    	thisNPC.activeLanguage=Language;
	        world:makeSound(1,position(26,57,50));
	        world:gfx(5,position(26,57,50));
	    	world:createMonster(111,position(26,57,50),10);
	    end
	    CastAggr=CastAggr-1;
	else
	    if (Round==10) then
	    	Round=1;
	    else
	    	Round=Round+1;
	    end
	end
    end
    if (CastHarml==nil) then CastHarml=0; end

    if (CastHarml~=0)then
        if (Round==nil) then Round=1; end
        if (Round==1) then
            world:gfx(21,position(31,56,50));
            Round=Round+1;
            if (CastHarml==1) then
                local Language=thisNPC.activeLanguage;
                thisNPC.activeLanguage=10;
                thisNPC:talk(CCharacter.say,"IRA TAUR LUK");
                thisNPC.activeLanguage=Language;
                world:makeSound(13,position(26,57,50));
                world:gfx(5,position(26,57,50));
	        world:createMonster(116,position(26,57,50),10);
	     end
             CastHarml=CastHarml-1;
        else
             if (Round==10) then
                 Round=1;
             else
                 Round=Round+1;
             end
	end
    end

    npcs.base.autonpcfunctions.npcs.base.functions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npcs.base.autonpcfunctions.npcs.base.functions.BasicNPCChecks(originator,2) then
        if (npcs.base.autonpcfunctions.npcs.base.functions.LangOK(originator,TradSpeakLang)==true) then
            thisNPC.activeLanguage=originator.activeLanguage;
            result = SayPrice(message, originator);
            if not result then result = getCreature(message, originator) end;
            if not result then npcs.base.autonpcfunctions.npcs.base.functions.TellSmallTalk(message,originator) end;
        else
    	    if (verwirrt==false) then
        	gText="#me sieht dich leicht verwirrt an";
        	eText="#me looks at you a little confused";
        	outText=npcs.base.npcautofunction.npcs.base.functions.GetNLS(originator,gText,eText);
        	npcs.base.autonpcfunctions.npcs.base.functions.NPCTalking(thisNPC,outText);
        	verwirrt=true;
    	    end
	end
    end
end


function SayPrice(message, originator)
	if (string.find(message,"koste")~=nil) or (string.find(message,"costs")~=nil) then
        thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Wenn ich dir eine harmlose Kreatur beschw�ren soll, bekomme ich "..PreisHarmlKrea.." Kupferst�cke von dir. F�r eine aggressive Kreatur m�chte ich "..PreisAggrKrea.." Kupferst�cke haben.");
        thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "If I should summon a harmles creature for you, I get "..PreisHarmlKrea.." coppercoins. For a aggressive creature one I take "..PreisAggrKrea.." coppercoins.");
        return true
    end
    return false;
end


function getCreature (message, originator)
     message = string.lower( message );
     if (string.find(message,"harmlos.+kreatur.+beschw�r")~=nil) 
     	or (string.find(message,"beschw�r.+harmlos.+kreatur")~=nil)
	or (string.find(message,"ich m�chte.+harmlos.+kreatur")~=nil)
     	or (string.find(message,"summon.+harmles.+creatur")~=nil)
     	or (string.find(message,"harmles.+creatur.+summon")~=nil) then
	GCoins,SCoins,CCoins = CalcSilverCopper(PreisHarmlKrea);
	if npcs.base.autonpcfunctions.CheckMoney(originator,GCoins,SCoins,CCoins) then
	    Pay(originator,GCoins,SCoins,CCoins);

            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "#me nickt und richtet seine Konzentration ganz auf die Arena w�hrend er die mystische Formel spricht.");
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "#me nods and starts to concentrate on the arena field while speaking the mystical formula.");

	    CastHarml=6;
            logStr=os.date()..": "..originator.name.." ask NPC Rian for a harmless creature\n";
            logToFile_npc(logStr);


	    -- thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Bitte sehr.");
	    -- thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "Here we go.");
	else
            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Du hast nicht genug Geld. Ich m�chte "..PreisHarmlKrea.." Kupferst�cke haben." );
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english,"You don't have enough money. I get "..PreisHarmlKrea.." coppercoins." );
        end
	return true;
    elseif (string.find(message,"beschw�r.+aggressiv.+kreatur")~=nil)
	or (string.find(message,"aggressiv.+kreatur.+beschw�r")~=nil)
	or (string.find(message,"ich m�chte.+aggressiv.+kreatur")~=nil)
	or (string.find(message,"summon.+aggressiv.+creatur")~=nil)
	or (string.find(message,"aggressiv.+creatur.+summon")~=nil) then
        GCoins,SCoins,CCoins = CalcSilverCopper(PreisAggrKrea);
        if npcs.base.autonpcfunctions.CheckMoney(originator,GCoins,SCoins,CCoins) then
            Pay(originator,GCoins,SCoins,CCoins);

            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "#me nickt und richtet seine Konzentration ganz auf die Arena w�hrend er die mystische Formel spricht.");
	    thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "#me nods and starts to concentrate on the arena field while speaking the mystical formula.");
	    
	    CastAggr=6;
            logStr=os.date()..": "..originator.name.." ask NPC Rian for a aggressive creature\n";
	    logToFile_npc(logStr);

            --thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "Here we go.");
        else
            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Du hast nicht genug Geld. Ich m�chte "..PreisAggrKrea.." Kupferst�cke haben." );
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english,"You don't have enough money. I get "..PreisAggrKrea.." coppercoins." );
        end
        return true;
    end
    return false;
end

function npcs.base.autonpcfunctions.CheckMoney(User,Gold,Silber,Kupfer)
    local UserGold=User:countItem(61);
    local UserSilber=User:countItem(3077);
    local UserKupfer=User:countItem(3076);
    local Amount=(Gold*10000)+(Silber*100)+Kupfer;
    local UserAmount=(UserGold*10000)+(UserSilber*100)+UserKupfer;
    if (Amount<=UserAmount) then
        return true
    else
        return false
    end
end

function Pay(User,Gold,Silber,Kupfer)
    local GoldID=61;
    local SilberID=3077;
    local KupferID=3076;
    local PayGold=0;
    local PaySilber=0;
    local PayKupfer=0;
    local MissGold=Gold;
    local MissSilber=Silber;
    local MissKupfer=Kupfer;
    local UserGold=User:countItem(GoldID);
    local UserSilber=User:countItem(SilberID);
    local UserKupfer=User:countItem(KupferID);
    local Amount=(Gold*10000)+(Silber*100)+Kupfer;
    local GoldAlsKupfer=0;
    local SilberAlsKupfer=0;
    local GoldAlsSilber=0;

    GoldAlsKupfer = math.min( MissGold, math.floor( UserKupfer/10000 ) );
    PayKupfer = GoldAlsKupfer * 10000;
    MissGold = MissGold - GoldAlsKupfer;
    UserKupfer = UserKupfer - PayKupfer;
    GoldAlsKupfer = math.floor( UserKupfer/100 );
    GoldAlsSilber = 100 - GoldAlsKupfer;
    if ((MissGold > 0) and (GoldAlsKupfer > 0) and (UserSilber >= GoldAlsSilber)) then
        PayKupfer = PayKupfer + 100 * GoldAlsKupfer;
        PaySilber = PaySilber + GoldAlsSilber;
        MissGold = MissGold - 1;
        UserKupfer = UserKupfer - 100 * GoldAlsKupfer;
        UserSilber = UserSilber - GoldAlsSilber;
    end;

    SilberAlsKupfer = math.min( MissSilber, math.floor( UserKupfer/100 ) );
    PayKupfer = PayKupfer + SilberAlsKupfer * 100;
    MissSilber = MissSilber - SilberAlsKupfer;
    UserKupfer = UserKupfer - SilberAlsKupfer * 100;

    if (UserKupfer >= MissKupfer) then
        PayKupfer = PayKupfer + MissKupfer;
    else
        MissSilber = MissSilber + 1;
        PayKupfer = PayKupfer + MissKupfer - 100;
    end;

    GoldAlsSilber = math.min( MissGold, math.floor( UserSilber/100 ) );
    PaySilber = PaySilber + GoldAlsSilber * 100;
    MissGold = MissGold - GoldAlsSilber;
    UserSilber = UserSilber - GoldAlsSilber * 100;

    if (UserSilber >= MissSilber) then
        PayGold = MissGold;
        PaySilber = PaySilber + MissSilber;
    else
        PayGold = MissGold + 1;
        PaySilber = PaySilber + MissSilber - 100;
    end;

    if (PayGold>0) then
        User:eraseItem(GoldID,PayGold);
    end

    if (PaySilber>0) then
        User:eraseItem(SilberID,PaySilber);
    elseif (PaySilber<0) then
        User:createItem(SilberID,PaySilber*(-1),333,0);
    end

    if (PayKupfer>0) then
        User:eraseItem(KupferID,PayKupfer);
    elseif (PayKupfer<0) then
        User:createItem(KupferID,PayKupfer*(-1),333,0);
    end
end


function CalcSilverCopper(CAmount)
    local GAmount=math.floor(CAmount/10000);
    local SAmount=math.floor((CAmount-GAmount*10000)/100);
    local CAmount=CAmount-(SAmount*100+GAmount*10000);
    return GAmount,SAmount,CAmount
end

function logToFile_npc(theString)
    coldLog,errMsg=io.open("/home/kadiya/ask_npc.txt","a");
    if (coldLog~=nil) then
        coldLog:write(theString);
        coldLog:close();
        return true;
    end
    return false;
end




