--Npc: Reret Odohir
--Location: RUNEWICK
--Task: Notary(sells decrees, buys decrees, sells keys, town membership bureau)

-- INSERT INTO npc VALUES (nextval('npc_seq'),3,109,550,200,4,false,'Reret Odohir','npc_reret_odohir.lua',1);

require("npcs.base.autonpcfunctions")
dofile("npc_trader_functions.lua");


function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Lasst mich in Ruhe!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Don't you touch me!");
    currentNPC=counter;
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    InitTalkLists();

    -- ********* START DYNAMIC PART ********
    AddTraderTrigger("buy","I sell decrees and keys.");
    AddTraderTrigger("sell","Thanks, but I already have everything I need.");
    AddTraderTrigger("[Ww]hat.+buy","Thanks, but I already have everything I need.");
    AddTraderTrigger("[Ww]hat.+sell","I sell decrees and keys.");
    AddTraderTrigger("[Kk]aufen","Ick verkauf nur Dekrete und Schl�ssel.");
    AddTraderTrigger("[Vv]erkaufen","Danke nein, ich habe bereits alles, was ich brauche.");
    AddTraderTrigger("[Ww]as.+kauf","Danke nein, ich habe bereits alles, was ich brauche.");
    AddTraderTrigger("[Ww]as.+verkauf","Ick verkauf nur Dekrete und Schl�ssel.");

	AddTraderTrigger("[Mm]ein.+[Nn]ame.+ist.*","Freut mich %CHARNAME, ich bin die "..thisNPC.name..".");
    AddAdditionalTrigger("[Ii]c[hk].+bin.*");
    AddAdditionalTrigger("Man.+nennt.+mich.*");
    AddAdditionalTrigger("[Ii]c[hk].+hei[s�][se].*");
	AddCondition("lang","german");
	AddConsequence("state","=",1);

	AddTraderTrigger("[Mm]y.+[Nn]ame.+is.*","A pleasure %CHARNAME, I am "..thisNPC.name..".");
    AddAdditionalTrigger("[Ii].+am.*");
	AddCondition("lang","english");
	AddConsequence("state","=",1);

    AddTraderTrigger("[Aa]uf [Bb]ald","Auf bald.");
    AddAdditionalTrigger("[Gg]�tter.+euch");
    AddAdditionalTrigger("[Bb]is.+[Bb]ald");
    AddAdditionalTrigger("[Uu]ff.+[Bb]ald");
    AddAdditionalTrigger("[Ff]�nf.+euch");
    AddConsequence("inform","Der H�ndler l�chelt dich an und winkt zum Abschied.");

	AddTraderTrigger("[Gg]oodbye","Farewell.");
    AddAdditionalTrigger("[Bb]ye");
    AddAdditionalTrigger("[Ff]arewell");
    AddAdditionalTrigger("[Ff]ive.+you");
    AddAdditionalText("Goodbye");
    AddConsequence("inform","The trader smiles at you and waves.");

	AddTraderTrigger("[Ww]er [bs][ie][si][td] [di][uh].*","Ich bin die "..thisNPC.name..". Und wer bist du?");
    AddAdditionalTrigger("[Ww]ie.+[Nn]ame");

    AddTraderTrigger("[Ww]ho.+you","I am "..thisNPC.name.." and who are you?");
    AddAdditionalTrigger("[Ww]hat.+[Nn]ame");

	AddTraderTrigger("Where am [Ii]","You are in Cadomyr.");
    AddCondition("lang","english");
    AddTraderTrigger("[Ww]o bin ich","Du bist in Cadomyr.");
    AddCondition("lang","german");

    AddTraderTrigger("[Hh]ow.+are.you","I am fine and how are you?.");
    AddCondition("lang","english");
    AddTraderTrigger("[Ww]ie.+gehts","Eigentlich ganz gut, danke der Nachfrage.");
    AddCondition("lang","german");
    AddAdditionalText("Mir geht es gut und dir?");



    AddTraderTrigger("[Hh]ilfe","Ich verkaufe Dekrete und Schl�ssel, au�erdem k�nnt ihr bei mir Dekrete einl�sen und euch als B�rger eintragen lassen.");
    AddAdditionalTrigger("helfen");
    AddAdditionalTrigger("hilf");
    AddConsequence("inform","Stichw�rter auf die der NPC reagiert: \" Dekret kaufen\", \" Dekret einl�sen\", \" Schl�ssel\", \" B�rger werden\"");

	AddTraderTrigger("[Hh]elp"," I sell decrees and keys, furthermore you can exchange decrees and get registered as citizen here.");
    AddConsequence("inform","Keywords on which the NPC reacts:\" Buy decree\", \" Exchange decree\", \" Key\", \" become citizen\".");


	AddTraderTrigger("[Gg]reeting","Be greeted %CHARNAME, nice to see you here again.");
    AddAdditionalTrigger("[Hh]ello");
    AddAdditionalTrigger("[Hh]i");
    AddCondition("state","=",1);
    AddAdditionalText("Greetings %CHARNAME, nice to see you again");
	AddConsequence("inform","Keywords on which the NPC reacts:\" Buy decree\", \" Exchange decree\", \" Key\", \" become citizen\".");

	AddTraderTrigger("[Gg]reeting","Be greeted, I am "..thisNPC.name..", the notary of this town. You can buy here decrees or exchange them. Also I can register you as citizen or sell you a key.");
    AddAdditionalTrigger("[Hh]ello");
    AddAdditionalTrigger("[Hh]i");
    AddConsequence("inform","Keywords on which the NPC reacts:\" Buy decree\", \" Exchange decree\", \" Key\", \" become citizen\".");

    AddTraderTrigger("[Gg]r�[s�]","Gr��e %CHARNAME, sch�n euch mal wieder hier zu sehen.");
    AddAdditionalTrigger("[Hh]allo");
    AddAdditionalTrigger("[Gg]rue[s�]");
    AddAdditionalTrigger("[Tt]a[gc].*");
    AddCondition("state","=",1);
    AddAdditionalText("Gr�� dich %CHARNAME, sch�n euch mal wiederzusehen.");
	AddConsequence("inform","Stichw�rter auf die der NPC reagiert: \" Dekret kaufen\", \" Dekret einl�sen\", \" Schl�ssel\", \" B�rger werden\"");

	AddTraderTrigger("[Gg]r�[s�]","Zum Gru�e, ich bin "..thisNPC.name..", die Notarin dieser Stadt, bei mir kannst du Dekrete kaufen und einl�sen.Au�erdem kannst du hier Schl�ssel kaufen und dich als B�rger anmelden.");
    AddAdditionalTrigger("[Hh]allo");
    AddAdditionalTrigger("[Gg]rue[s�]");
    AddAdditionalTrigger("[Tt]a[gc].*");
    AddAdditionalText("Gr�� dich!");
    AddConsequence("inform","Stichw�rter auf die der NPC reagiert: \" Dekret kaufen\", \" Dekret einl�sen\", \" Schl�ssel\", \" B�rger werden\"");


    AddTraderTrigger("","Habt ihr ein Dekret f�r mich oder wollt ihr vielleicht ein Dekret oder Schl�ssel kaufen?");
    AddCondition("lang","german");
	AddConsequence("inform","Stichw�rter auf die der NPC reagiert: \" Dekret kaufen\", \" Dekret einl�sen\", \" Schl�ssel\", \" B�rger werden\"");
    AddTraderTrigger("","Do you have a decree for me or do you maybe want to buy a decree or a key?");
    AddCondition("lang","english");
    AddConsequence("inform","Keywords on which the NPC reacts:\" Buy decree\", \" Exchange decree\", \" Key\", \" become citizen\".");

	if not InitDone then
    	choiceIndex={}; --value which stands for the decree/key the user wants

		townID = BF_setLocation(thisNPC); --look up where the npc is standing!
		InitDone = true;

	end

    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,1};
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
    increaseLangSkill(TradSpeakLang);
    thisNPC.activeLanguage=TradStdLang;


end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    SpeakerCycle();
end

function receiveText(texttype, message, originator)
	if BasicNPCChecks(originator,2) then  --Npc wird aus n�chster N�he angesprochen
        if LangOK(originator,TradSpeakLang) then
			if not mainTask(texttype,message,originator) then
				TellSmallTalk(message,originator);
			end

		else
        	Confused(
            "#me sieht dich leicht verwirrt an",
            "#me looks at you a little confused"
            );
		end
	end
end


function mainTask(texttype,message,originator)
	Factionvalues = BF_get(originator);

	if 	(string.find(message,"[Dd]ekret.+kaufen.*")~=nil or string.find(message,"[Bb]uy.+decree.*")~=nil or
		 string.find(message,"[Dd]ekret.+erwerben.*")~=nil) then
			if (Factionvalues.rankTown == leaderRank) then --if Character is leader in this town
		 		gText="Was f�r ein Dekret ben�tigt ihr? Eines f�r die Eintragung als 'Anf�hrer', 'vollst�ndiges Mitglied' oder 'Anw�rter' einer Gilde oder doch ein 'Entbannungsdekret'?";
				eText="What kind of decree do you need? For a entry as a 'leader', 'full member' or 'aspirant' of a guild or a 'unban decree'?";
			else
				gText="Was f�r ein Dekret ben�tigt ihr? Eines f�r die Eintragung als 'Anf�hrer', 'vollst�ndiges Mitglied' oder 'Anw�rter' einer Gilde?";
				eText="What kind of decree do you need? For a entry as a 'leader', 'full member' or 'aspirant' of a guild?";
			end
			outText=base.common.GetNLS(originator,gText,eText);
			NPCTalking(thisNPC,outText);
			return true;

	elseif string.find(message,"[Aa]nf�hrer.+[Ss]tadt")~=nil or string.find(message,"[Ll]eader.+ [Tt]own")~=nil or
		   string.find(message,"[Aa]nfuehrer.+[Ss]tadt")~=nil or string.find(message,"[Ll]eader.+ [Cc]ity")~=nil or
		   string.find(message,"[Hh]errscher.+[Ss]tadt")~=nil or string.find(message,"[Aa]nf�hrer.+ [Oo]rt")~=nil then
		 	if (originator:isAdmin()) then --only GMs can become faction leaders
				gText="Gut, ich trage euch als neuen Anf�hrer dieser Stadt ein.";
				eText="Good, I will enregister you as new leader of this town.";
				outText=base.common.GetNLS(originator,gText,eText);
				NPCTalking(thisNPC,outText);
				makeCharMemberOfTown(originator,Factionvalues,leaderRank);
			end
			return true;

	elseif (string.find(message,"[Bb]�rger.+werden")~=nil or string.find(message,"[Bb]ecome.+[Cc]itizen")~=nil or
		   string.find(message,"[Bb]uerger.+werden")~=nil or string.find(message,"[Bb]ecome.+[Mm]ember.+[Tt]own")~=nil or
		   string.find(message,"[Mm]itglied.+Stadt")~=nil) then
			if (Factionvalues[NpcLocation[thisNPC.id]+RANK_OFFSET] == outcastRank) then -- the char is outcasted from this town
			 	gText="Ihr seid aus der Stadt verbannt, kommt mit einem Entbannungsdekret des Anf�hrers wieder wenn ihr B�rger werden wollt.";
				eText="You're outcasted from this town, come back with a unban decree from the leader if you want to become a citizen.";
				outText=base.common.GetNLS(originator,gText,eText);
				NPCTalking(thisNPC,outText);
				return true;
			end
			if ((TextRepeatCnt[originator.id]==nil) or (TextRepeatCnt[originator.id] == 0)) then
			 	gText="Diese Eintragung wird "..PriceListForTownChange[Factionvalues.towncnt].." Silberst�cke kosten, wenn ihr nach eurem Beitritt zu einer anderen Stadt wechseln wollt verdoppeln sich die Kosten daf�r. Seid ihr sicher dass ihr dieser Stadt beitreten wollt?";
				eText="Adding you to the citizenlist will cost "..PriceListForTownChange[Factionvalues.towncnt].." silver coins. If you decide to become a citizen of another town after joining the fee will double. Do you really wish to join this town?";
				outText=base.common.GetNLS(originator,gText,eText);
				NPCTalking(thisNPC,outText);
				TextRepeatCnt[originator.id] = 0;
				return true;
			end
	elseif (string.find(message,"[Jj]a")~=nil or string.find(message,"[Yy]es")~=nil) and (TextRepeatCnt[originator.id] == 0) then
			makeCharMemberOfTown(originator,Factionvalues,citizenRank);
			TextRepeatCnt[originator.id] = nil;
			return true;
	elseif (string.find(message,"[Nn]ein")~=nil or string.find(message,"[Nn]o")~=nil) and (TextRepeatCnt[originator.id] == 0) then
			TextRepeatCnt[originator.id] = nil;
			return true;
	elseif string.find(message,"[Aa]nw[�a][re][tr][et][re]")~=nil or string.find(message,"[Aa]spirant")~=nil then

			choiceIndex[originator.id]=1; --aspirant of guild
			gText="Das Dekret f�r eine Anw�rtereintragung wird "..PriceListForDecreeAndKey[choiceIndex[originator.id]].." Silber kosten, nennt mir nur noch bitte den Namen der Gilde.";
			eText="The decree for a aspirant entry will cost "..PriceListForDecreeAndKey[choiceIndex[originator.id]].." silver coins, now please tell me the name of the guild.";
			outText=base.common.GetNLS(originator,gText,eText);
			NPCTalking(thisNPC,outText);
			return true;
	elseif string.find(message,"[Mm]itglied")~=nil or string.find(message,"[Mm]ember")~=nil then
		 	choiceIndex[originator.id]=2; --member of guild
			gText="Das Dekret f�r eine Mitgliedseintragung wird "..PriceListForDecreeAndKey[choiceIndex[originator.id]].." Silber kosten, nennt mir nur noch bitte den Namen der Gilde.";
			eText="The decree for a member entry will cost "..PriceListForDecreeAndKey[choiceIndex[originator.id]].." silver coins, now please tell me the name of the guild.";
			outText=base.common.GetNLS(originator,gText,eText);
			NPCTalking(thisNPC,outText);
			return true;
	elseif string.find(message,"[Aa]nf[�u][he][rh][er][re]")~=nil or string.find(message,"[Ll]eader")~=nil then
			choiceIndex[originator.id]=3; --leader of guild
		 	gText="Das Dekret f�r eine Anf�hrereintragung wird "..PriceListForDecreeAndKey[choiceIndex[originator.id]].." Silber kosten, nennt mir nur noch bitte den Namen der Gilde.";
			eText="The decree for a leader entry will cost "..PriceListForDecreeAndKey[choiceIndex[originator.id]].." silver coins, now please tell me the name of the guild.";
			outText=base.common.GetNLS(originator,gText,eText);
			NPCTalking(thisNPC,outText);
			return true;
	elseif string.find(message,"[Hh]auptschl�ssel")~=nil or string.find(message,"[Mm]ain.+[Kk]ey")~=nil then
			if  (string.find(message,"[Ss]tadt")~=nil or string.find(message,"[Tt]own")~=nil) and (Factionvalues.rankTown == leaderRank) then
				if (TownMainKey[NpcLocation[thisNPC.id]]==nil) then
		            gText="F�r diese Stadt existiert kein Hauptschl�ssel!";
					eText="There does no main key exist for this town!";
					outText=base.common.GetNLS(originator,gText,eText);
					NPCTalking(thisNPC,outText);
				else
		            gText="Bitte sehr, euer Hauptschl�ssel.";
					eText="Here is your main key.";
					outText=base.common.GetNLS(originator,gText,eText);
					NPCTalking(thisNPC,outText);
					originator:createItem(TownMainKey[NpcLocation[thisNPC.id]][1],1,TownMainKey[NpcLocation[thisNPC.id]][2],TownMainKey[NpcLocation[thisNPC.id]][3]); --creates Key
				end
				return true;
			end
			choiceIndex[originator.id] = 4; -- main key
			gText="Der Hauptschl�ssel wird "..PriceListForDecreeAndKey[choiceIndex[originator.id]].." Silber kosten, nennt mir nun noch den Namen der Gilde bitte.";
			eText="The main key will cost "..PriceListForDecreeAndKey[choiceIndex[originator.id]].." silver coins, now please tell me the name of the guild.";
			outText=base.common.GetNLS(originator,gText,eText);
			NPCTalking(thisNPC,outText);

			return true;
	elseif string.find(message,"[Kk]erkerschl�ssel")~=nil or string.find(message,"[Jj]ail.+[Kk]ey")~=nil then
			if  (string.find(message,"[Ss]tadt")~=nil or string.find(message,"[Tt]own")~=nil) and (Factionvalues.rankTown == leaderRank) then
				if (TownJailKey[NpcLocation[thisNPC.id]]==nil) then
		            gText="F�r diese Stadt existiert kein Kerkerschl�ssel!";
					eText="There does no jail key exist for this town!";
					outText=base.common.GetNLS(originator,gText,eText);
					NPCTalking(thisNPC,outText);
				else
		            gText="Bitte sehr, euer Kerkerschl�ssel.";
					eText="Here is your jail key.";
					outText=base.common.GetNLS(originator,gText,eText);
					NPCTalking(thisNPC,outText);
					originator:createItem(TownJailKey[NpcLocation[thisNPC.id]][1],1,TownJailKey[NpcLocation[thisNPC.id]][2],TownJailKey[NpcLocation[thisNPC.id]][3]); --creates Key
				end
				return true;
			end
			choiceIndex[originator.id] = 5; -- jail key
			gText="Der Kerkerschl�ssel wird "..PriceListForDecreeAndKey[choiceIndex[originator.id]].." Silber kosten, nennt mir nun noch den Namen der Gilde bitte.";
			eText="The jail key will cost "..PriceListForDecreeAndKey[choiceIndex[originator.id]].." silver coins, now please tell me the name of the guild.";
			outText=base.common.GetNLS(originator,gText,eText);
			NPCTalking(thisNPC,outText);

			return true;
	elseif string.find(message,"[Ee]ntbannungsdekret")~=nil or string.find(message,"[Uu]nban.+[Dd]ecree")~=nil then
			if (Factionvalues.rankTown == leaderRank) then --if Character is leader in this town
				choiceIndex[originator.id]=6;
				gText="Ein Entbannungsdekret, kommt sofort.";
				eText="A unban decree, right away.";
				outText=base.common.GetNLS(originator,gText,eText);
				NPCTalking(thisNPC,outText);
				createChoice(originator,message,choiceIndex,Factionvalues);
			else
				gText="Nur der Anf�hrer dieser Stadt kann ein Entbannungsdekret erwerben!";
				eText="Only the leader of the town can buy a unban decree!";
				outText=base.common.GetNLS(originator,gText,eText);
				NPCTalking(thisNPC,outText);
			end
			return true;
	elseif string.find(message,"[Ss]chl[�u][se][ss][es][le].*")~=nil or string.find(message,"[Kk]ey")~=nil then
			if (Factionvalues.rankTown == leaderRank) then --if Character is leader in this town
				gText="Was f�r einen Schl�ssel ben�tigt ihr? Einen 'Kerkerschl�ssel' oder 'Hauptschl�ssel'? Und ben�tigt ihr diesen f�r diese Stadt oder eine Gilde?";
				eText="What kind of key do you need? A 'jail key' or a 'main key'? And do you need it for this town or a guild?";
			else
				gText="Was f�r einen Schl�ssel ben�tigt ihr? Einen 'Kerkerschl�ssel' oder 'Hauptschl�ssel'?";
				eText="What kind of key do you need? A 'jail key' or a 'main key'?";
			end
			outText=base.common.GetNLS(originator,gText,eText);
			NPCTalking(thisNPC,outText);
			return true;

	elseif string.find(message,"[Dd]ekret.+einl[�o][se][es][ne]")~=nil or string.find(message,"[Ee]xchange.+[Dd]ecree")~=nil or
		   string.find(message,"[Dd]ecree.+[Ee]xchange")~=nil then
		gText="Ihr habt ein Dekret f�r mich...lasst mich mal nachschauen.";
		eText="You have a decree with you...let me have a look at it.";
		outText=base.common.GetNLS(originator,gText,eText);
		NPCTalking(thisNPC,outText);
		deleteDecree(originator);
		return true;
	end

	if (choiceIndex[originator.id]~=nil) then
		createChoice(originator,message,choiceIndex,Factionvalues);
		return true;
	end

	return false;
end

function lookAtNpc(Char, mode)
    if initLook==nil then
        output={};
        output[0]="Sie tr�gt einen langen roten Mantel mit einem aufgestickten Wappen Runewicks darauf.(Notarin Runewicks)";
        output[1]="She wears a long red coat with an embroidered emblem of Runewick on it.(Notary of Runewick)";
        initLook=1;
    end

    lang=Char:getPlayerLanguage();
    Char:sendCharDescription( thisNPC.id , output[lang] );
end