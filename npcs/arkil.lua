--Name:        Arkil
--Race:        Human
--Town:        ???
--Function:    Miniquestgiver 1

dofile("npc_functions.lua")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    if (lang==0) then thisNPC:talk(CCharacter.say, "He, nicht kitzeln!") end
    if (lang==1) then thisNPC:talk(CCharacter.say, "Hey, don't tickle me!") end
end

function initializeNpc()
    npcs.base.autonpcfunctions.InitTalkLists();
    npcstatus={};
	
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]r[�ue]+[s�]","Seid Gegr��t"); -- F�gt Triggertext mit Antwort hinzu
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Hh]allo");          -- F�gt zu letztem "npcs.base.autonpcfunctions.AddTraderTrigger" zus�tzlichen Triggertext hinzu
    npcs.base.autonpcfunctions.AddAdditionalText("Guten Tag");    -- F�gt zu letztem "npcs.base.autonpcfunctions.AddTraderTrigger" zus�tzliche Antwort hinzu
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]reetings","Hail"); -- F�gt Triggertext mit Antwort hinzu
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Hh]ello");          -- F�gt zu letztem "npcs.base.autonpcfunctions.AddTraderTrigger" zus�tzlichen Triggertext hinzu
    npcs.base.autonpcfunctions.AddAdditionalText("Good day");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]ho ",thisNPC.name.." is my name.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]er ",thisNPC.name..", ist mein Name.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Bb]ye.","Farewell.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Ff]arewell");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Aa]uf.+[Bb]ald","Lebt wohl.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Bb]is.+[Bb]ald");
    
    
    npcs.base.autonpcfunctions.AddCycleText("#me kramt verzweifelt in seinen Taschen","#me searches his pockets."); -- F�gt Text der alle paar Min gesagt wird hinzu
    
    
    
    TradSpeakLang={0,1,4};  -- Sprache die der NPC spricht
    TradStdLang=0;          -- Sprache die der NPC normalerweise spricht
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
    if (TraderFirst == nil) then
        initializeNpc();
        npcs.base.autonpcfunctions.increaseLangSkill(TradSpeakLang)
        thisNPC.activeLanguage=TradStdLang;
    end
    npcs.base.autonpcfunctions.SpeakerCycle();
end	

function receiveText(texttype, message, originator)
    if npcs.base.autonpcfunctions.BasicNPCChecks(originator,2) then
        if (npcs.base.autonpcfunctions.LangOK(originator,TradSpeakLang)==true) then
            thisNPC.activeLanguage=originator.activeLanguage;
            normalerweise=true;
			if (((string.find(message,"[Gg]reetings")~=nil) or (string.find(message,"[Hh]ello")~=nil)or (string.find(message,"[Gg]r[�ue]+[s�]")~=nil)or (string.find(message,"[Hh]allo")~=nil)) and (originator:getQuestProgress(735)==1)) then
				gText="Seid gegr��t! Habt ihr mein Schwert schon gefunden?";
				eText="Greetings! Have you found my sword?";
				outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
				thisNPC:talk(CCharacter.say,outText);
				npcstatus[originator.id]=2;
				normalerweise=false;
			end
			if (((string.find(message,"[Hh]elp")~=nil) or (string.find(message,"[Hh]ilfe")~=nil)) and (originator:getQuestProgress(735)==0)) then
				originator:inform("QuestID:"..originator:getQuestProgress(735));
				gText="Ich suche mein Schwert, hilfst du mir es zu finden?";
				eText="I lost my sword, can u help me find it?";
				outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
				thisNPC:talk(CCharacter.say,outText);
				npcstatus[originator.id]=1;
			end
			-- hilfe anbieten ja/nein
			if (((string.find(message,"[Yy]es")~=nil)or(string.find(message,"[Jj]a")~=nil)) and (npcstatus[originator.id]==1)) then
				gText="Sehr gut, Ich habs blabla verloren.";
				eText="Blaenglischertext";
				outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
				thisNPC:talk(CCharacter.say,outText);
				npcstatus[originator.id]=0;
				originator:setQuestProgress( 735,1);
			end
			if (((string.find(message,"[Nn]o ")~=nil)or(string.find(message,"[Nn]ein")~=nil)) and (npcstatus[originator.id]==1)) then
				gText="Dann verschwendet meine Zeit nicht weiter.";
				eText="Don't steal my time.";
				outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
				thisNPC:talk(CCharacter.say,outText);
				npcstatus[originator.id]=0;
			end
			--Schwert gefunden ja/nein
			if (((string.find(message,"[Yy]es")~=nil)or(string.find(message,"[Jj]a")~=nil)) and (npcstatus[originator.id]==2)) then
				if (true) then --schwert im inventar
					gText="Ihr habt es gefunden! ich danke euch, hier nehmt etwas Gold f�r eure M�he.";
					eText="You found it! Thanks a lot, here take some gold.";
					outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
					thisNPC:talk(CCharacter.say,outText);
					--Schwert l�schen + geld geben
					gText="#me nimmt 5 Gold entgegen.";
					eText="#me takes 5 gold.";
					outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
					originator:talk(CCharacter.say,outText);
					originator:setQuestProgress(735,2);
				else
					gText="Sehr gut, Ich habs blabla verloren.";
					eText="Blaenglischertext";
					outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
					thisNPC:talk(CCharacter.say,outText);
				end
				npcstatus[originator.id]=0;
			end
			if (((string.find(message,"[Nn]o ")~=nil)or(string.find(message,"[Nn]ein")~=nil)) and (npcstatus[originator.id]==2)) then
				gText="Dann verschwendet meine Zeit nicht weiter.";
				eText="Don't waste my time.";
				outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
				thisNPC:talk(CCharacter.say,outText);
				npcstatus[originator.id]=0;
			end
        else
            if (verwirrt==false) then
                gText="#me schein verwirrt zu sein.";
                eText="#me seems to be confused.";
                outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
                thisNPC:talk(CCharacter.say,outText);
                verwirrt=true;
				normalerweise=false;
            end
        end
		
		if (normalerweise==true) then  npcs.base.autonpcfunctions.TellSmallTalk(message); end
    end
end--function