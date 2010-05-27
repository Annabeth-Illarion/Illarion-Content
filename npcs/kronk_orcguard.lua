--[[name="Kronk "
position=162,-448,-1
sex=male 
race=orc
direction=south
radius=0
Task: Jailer at the orc cave
last updated: 15/10/09
by: Juniper Onyx
]]--
-- INSERT INTO npc VALUES (nextval('npc_seq'),4,162,-448,-1,6,false,'Kronk','npc_kronk_orcguard.lua',1);
require("base.common")
require("npcs.base.autonpcfunctions")
require("base.keys")
module("npcs.kronk_orcguard")

function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Nimm Greifer deine weg, sonst du haben gleich keine mehr!"); 
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Nub touch meh, stoopid!");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    npcs.base.autonpcfunctions.InitTalkLists();

    -- ********* START DYNAMIC PART ********
	
   	npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]r�[s�]","Ullo."); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Hh]allo"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Gg]rue[s�]"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Tt]a[gc].*"); 
    npcs.base.autonpcfunctions.AddAdditionalText("Grubas!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Aa]uf [Bb]ald","Farebas."); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Gg]�tter.+euch"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Bb]is.+[Bb]ald"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Aa]uf.+[Bb]ald"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Ff]�nf.+euch"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]er [bs][ie][si][td] [di][uh].*","Mir Gef�ngnisw�rter f�r Orktor! Keine Ratte hier rein kommen ohne dass "..thisNPC.name.." merken!"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Ww]ie.+[Nn]ame"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]ilfe",""..thisNPC.name.." dir nur kann �ffnen Tor! Muss bewachen Tor! Frag anderen Bruder oder Schwester f�r andere Sachen!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as.+[Mm]ach.*t",""..thisNPC.name.." �ffnen und schlie�en Gef�ngnis! Du wollen rein oder raus? Dann du mir sagen Losungswort!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ll]osung.*[Ww]ort","#me grunzt ver�rgert 'Du denken "..thisNPC.name.." Maden im Kopf haben? Ich dir nicht sagen Wort! Mir nur h�ren auf Br�der und Schwester, die wissen Wort!'"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]eilig.*[Bb]erg","Dies hier sein Heiliger Berg, yubba! Heiliger Berg von 'Vater'!"); 


   	npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]reeting","Greebas!"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Hh]ello"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Gr.*eebs"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Gr.*eebas"); 
    npcs.base.autonpcfunctions.AddAdditionalText("Greebs"); 
   	npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]oodbye","Farrebas!"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Bb]ye"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Ff]ar.*e.*well"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Ff]ar.*ebas"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Ff]ive.+you"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Ff]ive.+yoo"); 
    npcs.base.autonpcfunctions.AddAdditionalText("Goodbyes."); 
  	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]ho.+yo.+","Meh beh "..thisNPC.name..", nub single rat whub enterr orc caves witout meh sees it!"); 
  	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]hat.+[Nn]ame", "Meh "..thisNPC.name.."! Meh jailer ob orc caves!"); 
  	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]hub.+[Nn]ame", "Meh "..thisNPC.name.."! Meh jailer ob orc caves!"); 
  	npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]elp",""..thisNPC.name.." nub can help yoo muchs! Ask ottur bruddah or sistah! Meh busy beh guardin...hurr, yoo hab seen rat running dere?!"); 
  	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]hat.+[Yy]o.*do",""..thisNPC.name.." opens and closes jail! Yoo wunt get in or out? Den tell meh keyword"); 
  	npcs.base.autonpcfunctions.AddTraderTrigger("[Kk]ey.*[Ww]ord","Yoo tink "..thisNPC.name.." stoopid beh? Meh nub tell yoo keyword! Meh just open gate fer bruddahs and sistahs whoo know word!"); 
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Pp]as.*word"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]oly.*[Mm]ountain","Yubba, dis beh holy mountain ob 'father'! Orcs libe here since ancient times!"); 


    npcs.base.autonpcfunctions.AddTraderTrigger("buy","Tanks, meh hab eberytin' meh need."); 
    npcs.base.autonpcfunctions.AddTraderTrigger("sell","Meh nub sell anyting! Meh looks like merchant? Hurrr, nub!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]hat.+buy","Tanks, meh hab all meh need."); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]hat.+sell","Meh nub sell anyting! Meh do look like merchant? Hurrr, nub!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Vv]erkaufen","Mir verkaufen nichts. "..thisNPC.name.." aussehen wie H�ndler?"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Kk]aufen","Danks, mir haben alles was Ork brauchen!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as.+verkaufst","Mir verkaufen nichts. "..thisNPC.name.." aussehen wie H�ndler?"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as.+kaufst","Danks, mir haben alles was Ork brauchen!"); 


--TRIGGER FUER LOCATIONS ENGLISCH    
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]obaith","Tis whole island beh called Gobaith. Nice place, yubba! Good hunting grounds here beh near holy mountain!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","english"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]obiath","Tis whole island beh called Gobaith. Nice place, yubba! Good hunting grounds here beh near holy mountain!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","english"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]reenbriar","Greenbriar beh small settlement ob tiny and tasty Halflings. Albays good turr go dere fer snack. *he laughs*"); 
    npcs.base.autonpcfunctions.AddCondition("lang","english"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]arbo.*r","Oomie town Troll's Bane and Vanima both hab harbors. The one southwest ob oomie town beh bigger though. Beddur nub go turr smelly elfie island!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]ellbriar","Hellbriar wus place ob sum servants ob our 'father' in past. Buts dere nub any orcs beh in dis Cult anymor', so father left dem alone and dey all got smashed, dey say."); 
    npcs.base.autonpcfunctions.AddCondition("lang","english"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Mm]agic [Aa]cademy","Yoo nub wunt go dere! Smelly mages beh dere. Dey nub honorable warriors beh but cowards! Dey whub burrrn yoo... ib yoo lucky beh!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Mm]age [Aa]cademy","Yoo nub wunt go dere! Smelly mages beh dere. Dey nub honorable warriors beh but cowards! Dey whub burn yoo... ib yoo lucky beh!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Nn]orthmark","Dey lib on ottur side ob island far in west. Dey hab strrong warriors meh hab heard! And best beh dat dey nub like magic neithurrr - jus' bit like orcs, hurrr."); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ss]ilverbrand","Dis beh stumpie town. Dey hab best smithes on isle, still dey beh hairy stumpies. Meh whub tink twice befor' going into deir halls!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Vv]anima","Tol Vanima ? Dis beh island full ob flowers, trees and elfies. Beddur avoid going dere! Dey nub like visitors!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","english"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Tt]roll['s].*[Bb]ane","Oomie town Troll's Bane beh biggest town on Gobaith. Though, orcs ususally get in trouble in dere! Beh careful when passing town gates!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","english"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Vv]arshikar","Desert town Varshikar nub beh far abay from here, just short npcs.base.autonpcfunctions.walk to southeast! Orcs hab peace wit dem! Treat dem fair and dey whub treat yoo fair toos! But beh careful ob mages in desert town!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","english"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Dd]esert.*town","Desert town Varshikar nub beh far abay from here, just short npcs.base.autonpcfunctions.walk to southeast! Orcs hab peace wit dem! Treat dem fair and dey whub treat yoo fair toos! But beh careful ob mages in desert town!"); 
    
--Charakter-Trigger 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ff]ather","Yoo nub know father ob orcs? *he snorts* Yoo should talk turr Chief den! He whub make yoo rememburr 'fathurr' fer yoos whole life!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","english"); 
    
--SONSTIGE TRIGGER 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Cc]lan", "Yubba, dis beh caves ob strong orc clan! Tell meh clan name and meh whub open gate fer yoo!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Dd]eser.*t", "#me snorts 'Da desert ob Kumdah beh in south ob orc lands! Oomies and scorpies beh all yoo whub find dere. Some rich mines beh dere after all.'"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww][�ue]ste", "#me schaubt 'W�ste Kumdah in S�den sein von Orkland! Menschen und Skorpione sein alles du finden da! Die Berge immerhin haben reiche Sch�tze.'"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("Or.*c.*", "#me hits his chest with his right fist and grunts 'Hurrr, Orc Nation beh strrongest! Praise father and holy mountain!'"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("Or.*k.*", "#me schl�gt mit seiner rechten Faust auf seine Brust 'Hurrr, Ork Nation die st�rksten sein! Ehre f�r unseren Vater und heiligen Berg!'");  
    npcs.base.autonpcfunctions.AddTraderTrigger("Tor", "Du wollen dass mir machen Tor auf? Dann du mir sagen Losungswort!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("Gate", "Yoo wunt meh open da gate? Den tell meh da keyword!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("Moshran", "#me growls angrily and shouts at you 'Nub tell father's name! Dis whub brring shame on us! Call him father, hurrr... and now leave meh alone!'"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("Moshran", "#grunzt erz�rnt auf und schreit dich an 'Nicht nennen Vater bei Namen! Bringt Schande �ber uns! Vater du ihn nennen, hurrr... und jetzt in Ruhe lassen du mich!'"); 
    npcs.base.autonpcfunctions.AddCondition("lang","german"); 
    
    
    
--TRIGGER F�R LOCATIONS DEUTSCH 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]obiath","Insel genannt wird Gobaith. Gute Gegend f�r Orks! Gute Jagdgr�nde hier sind in N�he von heiligem Berg!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","german"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]obaith","Ja, diese Insel genannt wird Gobaith. Gute Gegend f�r Orks! Gute Jagdgr�nde hier sind in N�he von heiligem Berg!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","german"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]reenbriar","Greenbriar kleine Siedlung ist, bewohnt von klein und lecker Halblings. Immer gut da hin gehen f�r Leckerbissen. *er lacht grunzend auf*"); 
    npcs.base.autonpcfunctions.AddCondition("lang","german"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]afen","Hafen sein im S�den von Menschenstadt Troll's Bane. Auch stinkende Elfeninsel haben Hafen. Aber Wasser nix f�r Orkse ist, hurr!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]ellbriar","Hellbriarkult war von Anh�ngern von unser 'Vater'! Aber alle Orks haben verlassen Kult! Nicht gut er mehr ist. Nur Unheil bringen �ber orks, wenn du mich fragen."); 
    npcs.base.autonpcfunctions.AddCondition("lang","german"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Mm]agierakademie","Du besser nicht gehen besuchen Magier! Sie keine Ehre haben und keinen Spa� verstehen. Sie dich gleich verbrennen oder verwandeln in Kr�te mit blo�em Blick!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Nn]ordmark","Die Nordmarkm�nner gute Menschen sein! Wie Orks sie nicht m�gen Magie! Auch Nordmarkfrauen mit Waffen umgeh'n k�nn'! Trotzdem sie stinkende Menschen bleiben!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ss]ilberbrand","Zwergenstadt gro� und hei� sein. Schmelzofen laufen ganzen Tag und Hammerschl�ge erf�llen Hallen immer mit L�rm. Wenn nicht Zerge w�ren da, sch�ner Ort es w�re."); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Vv]anima","Hurr! Fern bleiben du von dieser stinkenden Elfeninsel! Nur Unheil auf Orks dort warten!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","german"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Tt]roll['s].*[Bb]ane","Menschenstadt in Mitte der Insel du fragen nach? Gro� und h�sslich sie sein! Orkse nicht gern gesehen dort! Nim Waffen mit, wenn du in Stadt m�ssen!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","german"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Vv]arshikar","W�stenstadt nicht fern von hier. Meisten Wesen dort dumm und stinkig - aber Clanf�hrer, Grrrypus, Ehre haben! Sei gut zu W�stenvolk, dann sie gut zu Orks sind!"); 
    npcs.base.autonpcfunctions.AddCondition("lang","german"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]�stenstadt","W�stenstadt nicht fern von hier. Meisten Wesen dort dumm und stinkig - aber Clanf�hrer, Grrrypus, Ehre haben! Sei gut zu W�stenvolk, dann sie gut zu Orks sind!"); 
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]uestenstadt","W�stenstadt nicht fern von hier. Meisten Wesen dort dumm und stinkig - aber Clanf�hrer, Grrrypus, Ehre haben! Sei gut zu W�stenvolk, dann sie gut zu Orks sind!");



    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,5};
    TradStdLang=0;

    npcs.base.autonpcfunctions.increaseLangSkill(TradSpeakLang);
    thisNPC.activeLanguage=TradStdLang;

	doorapos=position( 163, -449, -1 );
	doorbpos=position( 164, -449, -1 );

end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    npcs.base.autonpcfunctions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
 
    if npcs.base.autonpcfunctions.BasicNPCChecks(originator,2) then  --Npc wird aus n�chster N�he angesprochen
		  if (originator.activeLanguage==5) then --If the Character speaks orcisch then...
			if (mainTask(message,originator)~=true) then
			    npcs.base.autonpcfunctions.TellSmallTalk(message,originator);
			end
		  elseif (originator.activeLanguage==0) then --If the Character. speaks Common then
				if (standardAnswer(message,1) or standardAnswer(message,2)) then --true password but wrong language
					gText="Du sprechen orkisch zu mir, wenn ich soll anfassen Orktor zu heiligem Berg!";  --HIER DIE TEXTE SCHREIBEN DIE DER NPC SAGT FALLS DAS LOSUNGSWORT RICHTIG; ABER NICHT AUF ORKISCH IST
					eText="Speak orcish ib yoo wunt meh touch da gate turr holy mountain!";
					outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
					npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);
				else
					npcs.base.autonpcfunctions.TellSmallTalk(message,originator);
				end
		  else --WENN EINE ANDERE SPRACHE GESPROCHEN WURDE DANN(zum Beispiel antik )
				npcs.base.autonpcfunctions.Confused(
				"#me grunzt dich an, als er ob deine Sprache offenbar nicht versteht.",
				"#me grunts at you as he apparently does not understand you language."
				);
		  end
	elseif npcs.base.autonpcfunctions.BasicNPCChecks(originator,8) then --Npc wird aus mehreren Schritten Entfernung angesprochen
		  if (originator.activeLanguage==5) then --If the Character speaks orcisch then...
			mainTask(message, originator);
		  elseif (originator.activeLanguage==0) then --If the Character. speaks Common then
				if (standardAnswer(message,1) or standardAnswer(message,2)) then --true password but wrong language
					gText="Du sprechen orkisch zu mir, wenn ich soll anfassen Orktor zu heiligem Berg!";  --HIER DIE TEXTE SCHREIBEN DIE DER NPC SAGT FALLS DAS LOSUNGSWORT RICHTIG; ABER NICHT AUF ORKISCH IST
					eText="Speak orcish ib yoo wunt meh touch da gate turr holy mountain!";
					outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
					npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);
				end
		  end
	end
end

--[[
    standardAnswer
    Checks whether a string can be counted to an answertype
    @param message - string
    @param answertype - integer
    
    @return boolean - true in case message can be counted to the answertype else false
]]
function standardAnswer(message,answertype)

	if (answertype==1) then --answertype 1 == standardphrases for "open door"
		     if (string.find(message,"[Bb]roth[ae].+[Oo]pen.+[Gg]ate.*")~=nil or string.find(message,"[Oo]pen.+[Gg]ate.+[Bb]roth[ae].*")~=nil
			 or  string.find(message,"[Bb]rud[ae].+[Tt]or.*[Aa]uf.*")~=nil or string.find(message,"[Tt]or.+[Aa]uf.+[Bb]rud[ae].*")~= nil
			 or  string.find(message,"[Bb]rud[ae].+[�oe]ffne.+[Tt]or.*")~=nil or string.find(message,"[��e]ffne.+[Tt]or.+[Bb]rud[ae].*")~=nil) then
			 	return true;
		 	 else
		     	return false;
		 	 end

    elseif (answertype==2) then --answertype 2 == standardphrases for "close door"
			 if (string.find(message,"[Bb]roth[ae].+[Cc]lose.+[Gg]ate.*")~=nil or string.find(message,"[Cc]lose.+[Gg]ate.+[Bb]roth[ae].*")~=nil
			 or string.find(message,"[Bb]rud[ae].+[Tt]or.*[Zz]u.*")~=nil or string.find(message,"[Tt]or.+[Zz]u.+[Bb]rud[ae].*")~=nil
			 or string.find(message,"[Bb]rud[ae].+schlie[�s].+[Tt]or.*")~=nil or string.find(message,"[Ss]chlie[�s].+[Tt]or.+[Bb]rud[ae].*")~= nil) then
		
		   		return true;
			 else
		   		return false;
			 end
	else
        	 return false;
   	end
	
end

--[[
    mainTask
    This function checks if the Char said the mean triggers(open door, close door,...) and sets all needed variables to open/close door
    @param originator - CharStruct - the Char who talked to the NPC
    @param message - String - The text the Character spoke
    
    @return true in case the NPC said one of the mean triggers else false
]]
function mainTask(message, originator)
	if (standardAnswer(message,1)) then  --Open gate
		doora=world:getItemOnField(doorapos);
		doorb=world:getItemOnField(doorbpos);
		if (doora.id==668 and doorb.id==684) then--door already opened
			gText="Dummer Ork, Tor sein auf!";
			eText="Stoopid orc, da gate alrrready beh open!";
			outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
			npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);
		else
			base.keys.UnlockDoor( doora ); --Tor entriegeln
			base.keys.UnlockDoor( doorb );

			doora=world:getItemOnField(doorapos);
			doorb=world:getItemOnField(doorbpos);
			OpenDoor( doora );  --Tor aufmachen
			OpenDoor( doorb );

			gText="#me �ffnet schwerf�llig das Tor wodurch die H�hle mit einem markersch�tternden Knarren erf�llt wird.";
			eText="#me opens the gate. The whole cave is fillied with a loud noise.";
			outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
			npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);
		end
		return true;
	elseif (standardAnswer(message,2)) then --Close gate
		doora=world:getItemOnField(doorapos);
		doorb=world:getItemOnField(doorbpos);	
		if (doora.id==656 and doorb.id==652) then --If both doors are already closed then...
			gText="Du keine Augen in deinem stinkigen Kopf haben? Tor sein schon zu!";
			eText="Yoo nub hab eyes in yoos smelly head? Da gate alrrready beh closed!";
			outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
			npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);
		else
			if ( world:isCharacterOnField(doorapos) or world:isCharacterOnField(doorbpos)) then -- Is a char. on the position of the doors?
				gText="Ich nix k�nnen Tor zumachen wenn da jemand rumstehen!";
                eText="Me nub can close dat gate when someone standing there!";
                outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
		        npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);	
			else
				CloseDoor( doora ); --Tore schlie�en
				CloseDoor( doorb );

				doora=world:getItemOnField(doorapos);
				doorb=world:getItemOnField(doorbpos);
				base.keys.LockDoor( doora ); --Tore verriegeln
				base.keys.LockDoor( doorb );
				gText="#me l�sst die Fl�gel des Tores krachend zufallen und sperrt ab."; --HIER DIE TEXTE REINSCHREIBEN DIE BEIM ZUMACHEN KOMMEN SOLLEN
				eText="#me shuts the gate crashing then locks it.";
				outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
				npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);
			end
		end
		return true;
	end
end
