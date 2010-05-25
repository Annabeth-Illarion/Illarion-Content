--name="Asgrimur"
--race=dwarf
--position=137, -191, -3
--direction= west
--sex=male
--Location: Silverbrand
--Task    : Herold for the King
--Normal: 0 Fl�stern: 1, Schreien: 2


-- INSERT INTO npc VALUES (nextval('npc_seq'),1,137,-191,-3,6,false,'Asgrimur','npc_asgrimur.lua',0);

require("npcs.base.autonpcfunctions")
require("base.common")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    if (lang==0) then thisNPC:talk(CCharacter.say, "Fasst mich nicht an!") end
    if (lang==1) then thisNPC:talk(CCharacter.say, "Don't touch me!") end
end


function initializeNpc()
    InitTalkLists()

    thisNPC:increaseSkill(1,"common language",100);

    AddTraderTrigger("[Gg]r�[�s]+e","Seid gegr��t");
    AddAdditionalTrigger("[hH]allo");
    AddAdditionalText("Guten Tag");
	AddTraderTrigger("[Aa]uf.+[Bb]ald","Auf wiedersehen.");
    AddAdditionalTrigger("[Bb]is.+[Bb]ald");
    AddAdditionalText("Auf bald");


    AddTraderTrigger("[Ww]ho","I am "..thisNPC.name..". I am the herold of the King of Silverbrand.");
	AddTraderTrigger("[Ww]er","Ich bin "..thisNPC.name..". Ich bin der Herold des K�nigs von Silberbrand.");
    
    AddTraderTrigger("[Gg]reetings","Be greeted");
    AddAdditionalTrigger("[Hh]ello");
    AddAdditionalText("Greetings");
	AddTraderTrigger("[Gg]oodbye","Farewell.");
    AddAdditionalTrigger("[Bb]ye");
    AddAdditionalTrigger("[Ff]arewell");
    AddAdditionalText("Farewell.");

    TradSpeakLang={0,2};
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
    if (TraderFirst == nil) then
        initializeNpc();
        increaseLangSkill(TradSpeakLang)
        thisNPC.activeLanguage=TradStdLang;
    end
    SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if BasicNPCChecks(originator,1) then

             	local players = world:getPlayersInRangeOf(thisNPC.pos, 10);
                	for i, player in pairs(players) do
                    	player:introduce(thisNPC);
					end

			 if (originator.id==1322717830) then  --only Manron can use the Herold
			 	if (string.find(message,"[Ee]mote")~=nil) then
					a,b=string.find(message,"[Ee]mote"); --where does "emote" start and end?
					
					emote = string.sub (message, b+1); --puts the Text which comes after "emote" in a variable
				
					thisNPC:talk(CCharacter.say,"#me "..emote);   --Lets emote
            	 end
				if (string.find(message,"[Ss]chweig")~=nil) then schweig=true; end --stops speaking

				if (texttype==1 and schweig==false and string.find(message,"[(][(]")==nil  --is the originator whispering and NOT using ooc?
					and string.find(message,"[Ss]prich")==nil and string.find(message,"[Ee]mote")==nil) then
				
				 thisNPC:talk(CCharacter.yell, message);   --Yell the message of player
				end
				

				if(string.find(message,"[Ss]prich")~=nil and schweig==true) then    --starts speaking again
				    schweig=false;
				elseif (schweig==nil) then
				    schweig=true;
				end
			 
			 else
                TellSmallTalk(message, originator); --TellSmallTalk for everyone beside Manron
			 end

    end
end
