--Name:	       Norbert        
--Race:        Mensch
--Town:        Magische Akademie - Denkgarten
--Function:    Zahlenr�tsel
--Position:    x=63 y=65 z=51
--Facing:      West
--Last Update: 16/06/2008
--Update by:   Kadiya

require("npcs.base.functions")
require("npcs.base.autonpcfunctions")
require("magic.base.basics");

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "#me kuschelt sich an "..user.name.." an.");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "#me cuddles up to "..user.name..".");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    npcs.base.autonpcfunctions.npcs.base.functions.InitTalkLists()

    thisNPC:increaseSkill(1,"common language",100);
    
    -- ********* START DYNAMIC PART ********

    npcs.base.autonpcfunctions.npcs.base.functions.AddCycleText("","");
    npcs.base.autonpcfunctions.npcs.base.functions.AddCycleText("","");
    npcs.base.autonpcfunctions.npcs.base.functions.AddCycleText("","");

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

    npcs.base.autonpcfunctions.npcs.base.functions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npcs.base.autonpcfunctions.npcs.base.functions.BasicNPCChecks(originator,2) then
        if (npcs.base.autonpcfunctions.npcs.base.functions.LangOK(originator,TradSpeakLang)==true) then
            thisNPC.activeLanguage=originator.activeLanguage;
            result = SayRow(message, originator);
            -- if not result then result = getCreature(message, originator) end;
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


function SayRow(message, originator)
	if (string.find(message,"r�tsel")~=nil) or (string.find(message,"riddle")~=nil) then
	one=math.random(1,30);
	two=math.random(1,10);
	type=math.random(1,2);

	
	getRow(one,two,type);
	
	thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "One=>"..one..", two=>"..two.." und typ ist : "..type..". Das ergibt eine Reihe von: 1=> "..first..", 2=> "..second..", 3=> "..third..", 4=> "..fourth..", 5=> "..fifth..".");
        thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "If I should summon a harmles creature for you, I get coppercoins. For a aggressive creature one I tak coppercoins.");
        return true
    end
    return false;
end

function getRow(one,two,type)
    if (type==1) then
        first=one*two;
        second=first*one;
	third=second*one;
        fourth=third*one;
        fifth=fourth*one;
    elseif (type==2) then
        first=one+two;
        second=first+one;
        third=second+one;
        fourth=third+one;
        fifth=fourth+one;
    end
    return first, second, third, fourth, fifth;
end





