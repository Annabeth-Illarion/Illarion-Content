--Name:        Foo Barlini
--Race:        Mensch
--Town:        Magische Akademie - �bungsplatz
--Function:    Flammen und �bungsmauern beschw�ren
--Position:    x=31 y=56 z=50
--Facing:      south
--Last Update: 12/06/2008
--Update by:   Kadiya

require("npcs.base.functions")
require("npcs.base.autonpcfunctions")
require("magic.base.basics");
module("npcs.foo_barlini")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Finger wech!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Dont ya' touch me!");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    npcs.base.autonpcfunctions.npcs.base.functions.InitTalkLists()

    thisNPC:increaseSkill(1,"common language",100);
    
    -- ********* START DYNAMIC PART ********

    npcs.base.autonpcfunctions.npcs.base.functions.AddCycleText("#me pfl�ckt ein paar Fr�chte vom Baum.","#me pick some fruits from the trees.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddCycleText("#me formt einen schimmernden Eisball in ihrer Hand.","#me forms a gleaming iceball in her hand.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddCycleText("#me formt einen leuchtenden Feuerball in ihrer Hand.","#me forms a shiny fireball in her hand.");

    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]r�[s�]","Ich gr��e euch.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Hh]allo");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Gg]rue[s�]");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Tt]a[gc].*");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalText("Seid gegr��t!");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Aa]uf [Bb]ald","Auf bald.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Gg]�tter.+euch");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Bb]is.+[Bb]ald");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Uu]ff.+[Bb]ald");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ff]�nf.+euch");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]er [bs][ie][si][td] [di][uh].*","Ich bin "..thisNPC.name..". Ich erhole mich hier grad ein wenig von dem Training.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ww]ie.+[Nn]ame");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ww]ie.+[Hh]ei[s�].+[di][uh]");

    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Mm]agier","Ich bin Magier an dieser Akademie.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]as.+[Tt]raini","Ich habe das Erschaffen und Aufl�sen von Elementen ge�bt.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ee]rschaff","Eigentlich wollte ich mich ein wenig ausruhen, aber mit ein paar M�nzen lasse ich mich vielleicht umstimmen.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Zz]eig","Eigentlich wollte ich mich ein wenig ausruhen, aber mit ein paar M�nzen lasse ich mich vielleicht umstimmen.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Hh]ilfe","Willst du trainieren? Wenn du m�chtest beschw�re ich dir ein paar Flammen, Giftwolken oder Steinmauern zum �ben.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Tt]raining","Willst du trainieren? Wenn du m�chtest beschw�re ich dir ein paar Flammen, Giftwolken oder Steinmauern zum �ben.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ff]lamme","Was f�r Flammen m�chtest du? Feuerflammen sind im �brigen etwas g�nstiger als Eisflammen, aber sie sind auch schw�cher.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]tein","Soll ich dir ein paar Steinmauern zum �ben erschaffen? Das kostet dich aber ein paar Kupferst�cke");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Mm]auer");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]ift","Wenn du mir ein paar Kupferm�nzen gibt, dann beschw�re ich dir ein Feld mit Giftwolken, damit du �ben kannst.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]tudent","Ich bin selbst grade erst mit dem Studium durch...ich m�chte mich noch nicht mit Studenten belasten.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]ch�ler","Ich unterrichte nicht, tut mir leid.");

    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]reeting","Greetings to you!");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Hh]ello");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalText("Greetings");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Gg]oodbye","Farewell.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Bb]ye");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ff]arewell");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ff]ive.+you");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalText("Goodbye");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]ho.+you","I am "..thisNPC.name..". I just have a rest here from training.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ww]hat.+[Nn]ame");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Mm]age","I'm a mage on this academy.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]hat.+train","I trained summoning and extinguishing of elements.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]ummon","I've actually wanted to make a rest. But maybe with a few coins you can return me.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]how","I've actually wanted to make a rest. But maybe with a few coins you can return me.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Hh]elp","Have a training? If you want I summon a few flames, poison clouds or stone walls for you.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Tt]raining","Have a training? If you want I summon a few flames, poison clouds or stone walls for you.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ff]lame","What kind of flames did you want? Fire flames area bit cheaper than ice flames, but they are also weaker.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ww]all","Should I summon a few stone walls for you? But this costs you a few coppercoins.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddAdditionalTrigger("[Ss]tone");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Pp]oison","If you give me a few coppercoins, I'll summon a small field of poison clouds for you.");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Ss]tudent","I'm just finished my one apprenticeship...I take no students yet.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.npcs.base.functions.AddTraderTrigger("[Pp]upil","I'm not a teacher, sorry.");
   
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

    PreisMauer	     = 10;
    PreisFeuerFlamme = 15;
    PreisEisFlamme   = 20;
    PreisGift	     = 25;

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

    if (CastStone==nil) then CastStone=0; end

    if (CastStone~=0)then
    	if (Round==nil) then Round=1; end
	if (Round==1) then
	    world:gfx(21,position(64,40,50));
	    Round=Round+1;
	    if (CastStone==1) then 
       		local Language=thisNPC.activeLanguage;
	    	thisNPC.activeLanguage=10;
	    	thisNPC:talk(CCharacter.say,"SOLH ORL QWAN DUN");
	    	thisNPC.activeLanguage=Language;
	        world:makeSound(13,position(26,57,50));
		-- Positionen checken, ob ein Char dort steht
		postListe={position(62,39,50),position(62,38,50),position(62,37,50),position(61,39,50),position(61,38,50),position(61,37,50),position(60,39,50),position(60,38,50),position(60,37,50)};

		for i,posi in postListe do
	            PosChar=world:isCharacterOnField(posi);
                    if not PosChar then
	                world:createItemFromId(287,1,posi,true,333,0);
			local Item=world:getItemOnField(posi)
                        Item.wear=2;
                        world:changeItem(Item);
	            end
                end
	    end
	    CastStone=CastStone-1;
	else
	    if (Round==10) then
	    	Round=1;
	    else
	    	Round=Round+1;
	    end
	end
    end

    if (CastFire==nil) then CastFire=0; end

    if (CastFire~=0)then
        if (Round==nil) then Round=1; end
        if (Round==1) then
            world:gfx(21,position(64,40,50));
            Round=Round+1;
            if (CastFire==1) then
                local Language=thisNPC.activeLanguage;
                thisNPC.activeLanguage=10;
                thisNPC:talk(CCharacter.say,"RA IRA ANTH DUN QWAN");
                thisNPC.activeLanguage=Language;
                world:makeSound(7,position(26,57,50));
		-- Positionen checken, ob ein Char dort steht
                postListe={position(58,39,50),position(58,38,50),position(58,37,50),position(57,39,50),position(57,38,50),position(57,37,50),position(56,39,50),position(56,38,50),position(56,37,50)};

		for i,posi in postListe do
		    PosChar=world:isCharacterOnField(posi);
		    if not PosChar then
		        world:createItemFromId(359,1,posi,true,333,0);
		    end
		end
	     end
             CastFire=CastFire-1;
        else
             if (Round==10) then
                 Round=1;
             else
                 Round=Round+1;
             end
	end
    end

    if (CastIce==nil) then CastIce=0; end
    if (CastIce~=0)then
        if (Round==nil) then Round=1; end
        if (Round==1) then
            world:gfx(21,position(64,40,50));
            Round=Round+1;
            if (CastIce==1) then
                local Language=thisNPC.activeLanguage;
                thisNPC.activeLanguage=10;
                thisNPC:talk(CCharacter.say,"HEPT IRA ANTH DUN QWAN");
                thisNPC.activeLanguage=Language;
                world:makeSound(7,position(26,57,50));
                -- Positionen checken, ob ein Char dort steht
                postListe={position(62,42,50),position(62,43,50),position(62,44,50),position(61,42,50),position(61,43,50),position(61,44,50),position(60,42,50),position(60,43,50),position(60,44,50)};
 
 		for i,posi in postListe do
                    PosChar=world:isCharacterOnField(posi);
                    if not PosChar then
                        world:createItemFromId(360,1,posi,true,333,0);
                    end
                end
            end
            CastIce=CastIce-1;
        else
            if (Round==10) then
                Round=1;
            else
                Round=Round+1;
            end
        end
    end

    if (CastPoison==nil) then CastPoison=0; end
    if (CastPoison~=0)then
        if (Round==nil) then Round=1; end
        if (Round==1) then
            world:gfx(21,position(64,40,50));
	    Round=Round+1;
            if (CastPoison==1) then
                local Language=thisNPC.activeLanguage;
                thisNPC.activeLanguage=10;
                thisNPC:talk(CCharacter.say,"YEG IRA ANTH DUN QWAN");
                thisNPC.activeLanguage=Language;
                world:makeSound(7,position(26,57,50));
                -- Positionen checken, ob ein Char dort steht
                postListe={position(58,42,50),position(58,43,50),position(58,44,50),position(57,42,50),position(57,43,50),position(57,44,50),position(56,42,50),position(56,43,50),position(56,44,50)};

                for i,posi in postListe do
                    PosChar=world:isCharacterOnField(posi);
                    if not PosChar then
                        world:createItemFromId(372,1,posi,true,333,0);
                    end
                end
            end
            CastPoison=CastPoison-1;
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
	if (string.find(message,"koste")~=nil) or (string.find(message,"[Pp]reis")~=nil) or (string.find(message,"[Ww]ieviel")~=nil) or (string.find(message,"costs")~=nil) or (string.find(message,"[Hh]ow much")~=nil) then
        thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Hrm...Ich w�rd sagen...gib mit 10 Kupfer f�r ein paar Steinmauern, 15  f�r Feuerflammen, 20  f�r Eisflammen und 25 Kupferst�cke, wenn ich dir ein Giftfeld erschaffen soll.");
        thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "Hrm...I would say...give me 10 coppercoins for some stone walls, 15 for fire flames, 20 for ice flames and 25 coppercoins, when I should summon a poison field for you..");
        return true
    end
    return false;
end


function getCreature (message, originator)
     message = string.lower( message );
    if (string.find(message,"steinmauer.+beschw�r")~=nil)
        or (string.find(message,"beschw�r.+steinmauer")~=nil)
        or (string.find(message,"steinmauer.+erschaff")~=nil)
        or (string.find(message,"erschaff.+steinmauer")~=nil)
        or (string.find(message,"ich m�chte.+steinmauer")~=nil)
        or (string.find(message,"kaufe.+steinmauer")~=nil)

        or (string.find(message,"stone wall.+summon")~=nil)
        or (string.find(message,"summon.+stone wall")~=nil)
        or (string.find(message,"stone wall.+create")~=nil)
        or (string.find(message,"create.+stone wall")~=nil)
        or (string.find(message,"I want.+stone wall")~=nil)
        or (string.find(message,"buy.+stone wall")~=nil) then

        GCoins,SCoins,CCoins = CalcSilverCopper(PreisMauer);
        if npcs.base.autonpcfunctions.CheckMoney(originator,GCoins,SCoins,CCoins) then
            Pay(originator,GCoins,SCoins,CCoins);
                thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "#me nimmt das Geld mit einem Nicken und deutet dann mit dem Stab in Richtung �bungsplatz.");
                thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "#me takes the money with a nod and flicks her wand to the training field.");

            CastStone=6;
	    logStr=os.date()..": "..originator.name.." ask NPC Foo for stone walls\n";
            logToFile_npc(logStr);

            -- thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Bitte sehr.");
	    -- thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "Here we go.");
	else
	    thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Du hast nicht genug Geld. F�r Steinmauern m�chte ich "..PreisMauer.." Kupferst�cke haben." );
	    thisNPC:talkLanguage( CCharacter.say, CPlayer.english,"You don't have enough money. For stonewalls I want "..PreisMauer.." coppercoins." );
	end
	return true;
	
	elseif (string.find(message,"feuerflamme.+beschw�r")~=nil) 
     	or (string.find(message,"beschw�r.+feuerflamme")~=nil)
	or (string.find(message,"feuerflamme.+erschaff")~=nil)
	or (string.find(message,"erschaff.+feuerflamme")~=nil)
	or (string.find(message,"ich m�chte.+feuerflamme")~=nil)
	or (string.find(message,"kaufe.+feuerflamme")~=nil)

	or (string.find(message,"fire flame.+summon")~=nil)
     	or (string.find(message,"summon.+fire flame")~=nil) 
	or (string.find(message,"fire flame.+create")~=nil)
	or (string.find(message,"create.+fire flame")~=nil)
	or (string.find(message,"I want.+fire flame")~=nil)
	or (string.find(message,"buy.+fire flame")~=nil) then

	GCoins,SCoins,CCoins = CalcSilverCopper(PreisFeuerFlamme);
	if npcs.base.autonpcfunctions.CheckMoney(originator,GCoins,SCoins,CCoins) then
	    Pay(originator,GCoins,SCoins,CCoins);

            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "#me nimmt das Geld mit einem Nicken und deutet dann mit dem Stab in Richtung �bungsplatz.");
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "#me takes the money with a nod and flicks her wand to the training field.");

	    CastFire=6;
            logStr=os.date()..": "..originator.name.." ask NPC Foo for fire flames\n";
	    logToFile_npc(logStr);

	    -- thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Bitte sehr.");
	    -- thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "Here we go.");
	else
            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Du hast nicht genug Geld. F�r Feuerflammen m�chte ich "..PreisFeuerFlamme.." Kupferst�cke haben." );
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english,"You don't have enough money. For fireflames I want "..PreisFeuerFlamme.." coppercoins." );
        end
	return true;
    elseif (string.find(message,"eisflamme.+beschw�r")~=nil)
        or (string.find(message,"beschw�r.+eisflamme")~=nil)
        or (string.find(message,"eisflamme.+erschaff")~=nil)
        or (string.find(message,"erschaff.+eisflamme")~=nil)
        or (string.find(message,"ich m�chte.+eisflamme")~=nil)
        or (string.find(message,"kaufe.+eisflamme")~=nil)

        or (string.find(message,"ice flame.+summon")~=nil)
        or (string.find(message,"summon.+ice flame")~=nil)
        or (string.find(message,"ice flame.+create")~=nil)
        or (string.find(message,"create.+ice flame")~=nil)
        or (string.find(message,"I want.+ice flame")~=nil)
        or (string.find(message,"buy.+ice flame")~=nil) then

	GCoins,SCoins,CCoins = CalcSilverCopper(PreisEisFlamme);
        if npcs.base.autonpcfunctions.CheckMoney(originator,GCoins,SCoins,CCoins) then
            Pay(originator,GCoins,SCoins,CCoins);

            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "#me nimmt das Geld mit einem Nicken und deutet dann mit dem Stab in Richtung �bungsplatz.");
	    thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "#me takes the money with a nod and flicks her wand to the training field.");
	    
	    CastIce=6;
            logStr=os.date()..": "..originator.name.." ask NPC Foo for ice flames\n";
            logToFile_npc(logStr);


            --thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "Here we go.");
        else
            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Du hast nicht genug Geld. F�r Eisflammen m�chte ich "..PreisEisFlamme.." Kupferst�cke haben." );
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english,"You don't have enough money. For iceflames I want "..PreisEisFlamme.." coppercoins." );
        end
        return true;
    elseif (string.find(message,"giftwolke.+beschw�r")~=nil)
        or (string.find(message,"beschw�r.+giftwolke")~=nil)
	or (string.find(message,"giftwolke.+erschaff")~=nil)
	or (string.find(message,"erschaff.+giftwolke")~=nil)
	or (string.find(message,"ich m�chte.+giftwolke")~=nil)
	or (string.find(message,"kaufe.+giftwolke")~=nil)

	or (string.find(message,"poison cloud.+summon")~=nil)
	or (string.find(message,"summon.+poison cloud")~=nil)
	or (string.find(message,"poison cloud.+create")~=nil)
	or (string.find(message,"create.+poison cloud")~=nil)
	or (string.find(message,"I want.+poison cloud")~=nil)
	or (string.find(message,"buy.+poison cloud")~=nil) then

	GCoins,SCoins,CCoins = CalcSilverCopper(PreisGift);
	if npcs.base.autonpcfunctions.CheckMoney(originator,GCoins,SCoins,CCoins) then
	    Pay(originator,GCoins,SCoins,CCoins);

	    thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "#me nimmt das Geld mit einem Nicken und deutet dann mit dem Stab in Richtung �bungsplatz.");
	    thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "#me takes the money with a nod and flicks her wand to the training field.");

	    CastPoison=6;
            logStr=os.date()..": "..originator.name.." ask NPC Foo for poison clouds\n";
            logToFile_npc(logStr);


	    --thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "Here we go.");
        else
	    thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Du hast nicht genug Geld. F�r Eisflammen m�chte ich "..PreisGift.." Kupferst�cke haben." );
	    thisNPC:talkLanguage( CCharacter.say, CPlayer.english,"You don't have enough money. For iceflames I want "..PreisGift.." coppercoins." );
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


