--  I_99 Dietrich - Items loeschen, teleportation fuer GMs, tueren initialisieren

-- UPDATE common SET com_script='gm.items.id_99_lockpicks' WHERE com_itemid=99;

require("gm.base.log")
require("base.common")
require("item.id_x_tinderbox")
require("base.factions")

module("gm.items.id_99_lockpicks", package.seeall)

itemPos = {"Head","Neck","Breast","Hands","Left Tool","Right Tool",
	"Left Finger","Right Finger","Legs","Feet","Coat","Belt 1",
	"Belt 2","Belt 3","Belt 4","Belt 5","Belt 6"}
itemPos[0] = "Backpack"

Location={};
Coordina={};
Location[1]="GM Castle";
Coordina[1]={250,100,0};
Location[2]="Hemp Necktie Inn";
Coordina[2]={690,320,0};
Location[3]="Cadomyr Palace of Her Majesty";
Coordina[3]={122,521,0};
Location[4]="Cadomyr Market";
Coordina[4]={130,600,0};
Location[5]="Galmair Crest";
Coordina[5]={337,215,0};
Location[6]="Galmair Town";
Coordina[6]={400,250,0};
Location[7]="Runewick Hall of Elara";
Coordina[7]={898,775,2};
Location[8]="Runewick Market";
Coordina[8]={900,800,1};
Location[9]="Cadomyr Cornerstone of Candour";
Coordina[9]={130,700,0};
Location[10]="Cadomyr Liberty Quarry";
Coordina[10]={170,620,0};
Location[11]="Cadomyr Blood Circle Arena";
Coordina[11]={258,668,0};
Location[10]="Galmair Balckhole Mine";
Coordina[10]={338,157,-3};
Location[12]="Galmair Malachite Mine";
Coordina[12]={400,355,0};
Location[10]="Galmair Game Room";
Coordina[10]={250,290,-5};
Location[13]="Runewick Yewdale";
Coordina[13]={750,810,0};
Location[14]="Runewick Lurnord Bridge";
Coordina[14]={844,822,0};





skillNames = {Character.alchemy,Character.carpentry,Character.concussionWeapons,Character.cookingAndBaking,Character.distanceWeapons,Character.dodge,
			Character.farming,Character.firingBricks,Character.fishing,Character.flute,Character.gemcutting,Character.glassBlowing,Character.goldsmithing,
			Character.harp,Character.herblore,Character.horn,Character.lute,Character.mining,Character.parry,Character.punctureWeapons,Character.slashingWeapons,
			Character.smithing,Character.tailoring,Character.woodcutting,Character.wrestling}

function UseItem(User, SourceItem, ltstate)
	
	-- First check for mode change
	if (string.find(User.lastSpokenText, "setmode")~=nil) then
		local modes = {"Eraser", "Teleport","Faction info of chars in radius", "Char Info", "Change skills","Get/ Set Queststatus", "Instant kill/ revive"}
		local cbSetMode = function (dialog)
			if (not dialog:getSuccess()) then
				return;
			end
			SourceItem:setData("mode", modes[dialog:getSelectedIndex()+1]);
			world:changeItem(SourceItem);
		end
		local sd = SelectionDialog("Set the mode of this lockpicks.", "To which mode do you want to change it?", cbSetMode);
		for _,m in ipairs(modes) do 
			sd:addOption(0,m);
		end
		User:requestSelectionDialog(sd);
		return;
	end
	
	if (string.find(User.lastSpokenText, "help")) then
		User:inform("To change the mode of these lockpicks, say \"setmode\" and use it.");
	end
	
	--if injured, heal!
	if User:increaseAttrib("hitpoints",0)<10000 or User:increaseAttrib("mana",0)<10000 then
		User:increaseAttrib("hitpoints", 10000)
		User:increaseAttrib("mana", 10000)
		User:increaseAttrib("foodlevel", 100000)
	end

	if (SourceItem:getData("mode")=="Eraser") then	
	
		--get all the items the char has on him, with the stuff in the backpack
		local itemsOnChar = {};
		for i=17,0,-1 do 
			local item = User:getItemAt(i);
      if (item.id > 0) then
        table.insert(itemsOnChar, item);
      end
		end
					
		local cbChooseItem = function (dialog)
			if (not dialog:getSuccess()) then
				return;
      end
      local index = dialog:getSelectedIndex();
			if (index == 0) then 
				local frontitem = base.common.GetFrontItem(User);
				if frontitem~=nil then
					world:erase(frontitem,frontitem.number);
				end
			else
				local chosenItem = itemsOnChar[index]
				world:erase(chosenItem,chosenItem.number);
			end
		end			
		local sdItems = SelectionDialog("Erase items.", "Choose the item you wish to erase:", cbChooseItem);
		sdItems:addOption(0,"Front of char");
    for _,item in ipairs(itemsOnChar) do 
      local itemName = world:getItemName(item.id,1) -- only english names folks
      sdItems:addOption(item.id,itemName .. " (" .. itemPos[item.itempos] .. ") Count: ".. item.number);
    end	
		User:requestSelectionDialog(sdItems);
		
	elseif (SourceItem:getData("mode")=="Teleport") then 	
		local cbChooseLocation = function (dialog)
			if (not dialog:getSuccess()) then
				return;
            end
            local index = dialog:getSelectedIndex()+1;
			User:warp(position(Coordina[index][1],Coordina[index][2],Coordina[index][3]))
		end
		local sdTeleport = SelectionDialog("Teleporter.", "Choose a destination:", cbChooseLocation);
        for i=1, #(Location) do 
			sdTeleport:addOption(0,Location[i] .. " (" .. Coordina[i][1]..", "..Coordina[i][2]..", "..Coordina[i][3] .. ")");
        end	
		User:requestSelectionDialog(sdTeleport);
		
	elseif (SourceItem:getData("mode")=="Faction info of chars in radius") then
		local players = world:getPlayersInRangeOf(User.pos, 7);		
		local infos = "";
		local germanRank, englishRank 
		
		for _,player in ipairs(players) do
			germanRank, englishRank = base.factions.getRank(player, true)
			infos = player.name.." - "..englishRank.."/"..germanRank.." - "..base.factions.getRankpoints(player).."\n"
		end
		
		local mDialog = MessageDialog("Factioninformations",infos, nil)
		User:requestMessageDialog(mDialog)
		
	elseif (SourceItem:getData("mode")=="Char Info") then
		local playersTmp = world:getPlayersInRangeOf(User.pos, 7);
		local players = {User};
		for _,player in pairs(playersTmp) do 
			if (player.id ~= User.id) then 
				table.insert(players, player);
			end
		end
			
		local cbChoosePlayer = function (dialog)
			if (not dialog:getSuccess()) then
				return;
			end
			local chosenPlayer = players[dialog:getSelectedIndex()+1];
			local faction = base.factions.getFaction(chosenPlayer);
			local factionInfo = "Town: " .. base.factions.getMembershipByName(chosenPlayer);
			factionInfo = factionInfo .. "\nChanged towns already (town count): " .. faction.towncnt;
			if (base.factions.townRanks[faction.tid] ~= nil and base.factions.townRanks[faction.tid][faction.rankTown] ~= nil) then
				local germanRank, englishRank = base.factions.getRank(chosenPlayer, true)
				factionInfo = factionInfo .. "\nRank: " .. englishRank .. "/" .. germanRank;
			else
				factionInfo = factionInfo .. "\nRank: no rank " .. faction.rankTown;
			end
			factionInfo = factionInfo .. "\nExact rankpoints: " .. faction.rankpoints;
			local mDialog = MessageDialog("Character Info for "..chosenPlayer.name, "HP: "..chosenPlayer:increaseAttrib("hitpoints", 0).." MP: "..chosenPlayer:increaseAttrib("mana", 0)..
							"\nSTR: "..chosenPlayer:increaseAttrib("strength", 0).." CONST: "..chosenPlayer:increaseAttrib("constitution", 0).." DEX: "..chosenPlayer:increaseAttrib("dexterity", 0)..
							"\nAGI: "..chosenPlayer:increaseAttrib("agility", 0).." WIL: "..chosenPlayer:increaseAttrib("willpower", 0).." PERC: "..chosenPlayer:increaseAttrib("perception", 0).." ESS: "..User:increaseAttrib("essence", 0)..
							"\nMental Capacity: "..tostring(chosenPlayer:getMentalCapacity())..
							"\nIdle for [s]: "..tostring(chosenPlayer:idleTime()) ..
							"\n" .. factionInfo, cbChoosePlayer)
			User:requestMessageDialog(mDialog)
		end
			--Dialog to choose the player
		local sdPlayer = SelectionDialog("Get the stats of ...", "First choose a character:", cbChoosePlayer);
		local raceNames = {"Human", "Dwarf", "Halfling", "Elf", "Orc", "Lizardman", "Other"}
        for _,player in ipairs(players) do 
			local race = math.min(player:getRace()+1, table.getn(raceNames));
			sdPlayer:addOption(0,player.name .. " (" .. raceNames[race] .. ") " .. player.id);
        end		
		User:requestSelectionDialog(sdPlayer);
		
	elseif (SourceItem:getData("mode")=="Change skills") then
		local playersTmp = world:getPlayersInRangeOf(User.pos, 4);
		local players = {User};
		for _,player in pairs(playersTmp) do 
			if (player.id ~= User.id) then 
				table.insert(players, player);
			end
		end
			
		local cbChoosePlayer = function (dialog)
			if (not dialog:getSuccess()) then
				return;
			end
			local index = dialog:getSelectedIndex();
			chosenPlayer = players[dialog:getSelectedIndex()+1];
			local skillDialog = function (dialog)	
				if (not dialog:getSuccess()) then
					return;
				end				
				chosenSkill = skillNames[dialog:getSelectedIndex()+1]
				local changeDialog = function (dialog)
					if (not dialog:getSuccess()) then
						return;
					end				
					local skillValue, okay = String2Number(dialog:getInput());
					if (not okay) then
						User:inform("no number");
						return;
					end
					if (skillValue < 0 or skillValue > 100) then
						User:inform("Value has to be between 0 and 100.");
						return;
					end
					chosenPlayer:increaseSkill(chosenSkill, skillValue - chosenPlayer:getSkill(chosenSkill));
				end
				local sdChange = InputDialog("Change skill for "..chosenPlayer.name, "Type in the new value for "..User:getSkillName(chosenSkill).."\nCurrent value: " .. chosenPlayer:getSkill(chosenSkill),false,255, changeDialog)
				User:requestInputDialog(sdChange)	
			end
			local sdSkill = SelectionDialog("Select skill", "What skill do you wish to change for "..chosenPlayer.name.."?", skillDialog)
			for _,skill in ipairs(skillNames) do 
				sdSkill:addOption(0,User:getSkillName(skill).." value: "..chosenPlayer:getSkill(skill));
			end		
			User:requestSelectionDialog(sdSkill)
		end
		--Dialog to choose the player
		local sdPlayer = SelectionDialog("Change a skill.", "First choose a character:", cbChoosePlayer);
		local raceNames = {"Human", "Dwarf", "Halfling", "Elf", "Orc", "Lizardman", "Other"}
        for _,player in ipairs(players) do 
			local race = math.min(player:getRace()+1, table.getn(raceNames));
			sdPlayer:addOption(0,player.name .. " (" .. raceNames[race] .. ") " .. player.id);
        end		
		User:requestSelectionDialog(sdPlayer);	

	elseif (SourceItem:getData("mode")=="Get/ Set Queststatus") then	
		local playersTmp = world:getPlayersInRangeOf(User.pos, 4);
		local players = {User};
		for _,player in pairs(playersTmp) do 
			if (player.id ~= User.id) then 
				table.insert(players, player);
			end
		end
			
		local cbChoosePlayer = function (dialog)
			if (not dialog:getSuccess()) then
				return;
			end
			local index = dialog:getSelectedIndex();
			chosenPlayer = players[dialog:getSelectedIndex()+1];				
			local changeDialog = function (dialog)
				if (not dialog:getSuccess()) then
					return;
				end				
				inputString = dialog:getInput()
				if (string.find(inputString,"(%d+) (%d+)") ~= nil) then
					a, b, quest,status= string.find(inputString,"(%d+) (%d+)");
					quest=tonumber(quest);
					status=tonumber(status);
					chosenPlayer:setQuestProgress(quest, status);
					User:inform("Quest " .. quest .. " has been set to " .. status .. "!");
				elseif (string.find(inputString,"(%d+)") ~= nil) then
					a, b, quest = string.find(inputString,"(%d+)");
					quest=tonumber(quest);
					User:inform("Quest " .. quest .. " has the status " .. chosenPlayer:getQuestProgress(quest) .. ".");
				else
					User:inform("Sorry, I didn't understand you.");
					User:requestInputDialog(InputDialog("Get/ Set Queststatus for "..chosenPlayer.name, "Usage: To get the value type in the questnumber.\n To set the value type in questnumber and the new status.", false, 255, changeDialog));
				end
			end
			local sdChange = InputDialog("Get/ Set Queststatus for "..chosenPlayer.name, "Usage: To get the value type in the questnumber.\n To set the value type in questnumber and the new status.",false,255, changeDialog)
			User:requestInputDialog(sdChange);
		end
		--Dialog to choose the player
		local sdPlayer = SelectionDialog("Get/ Set Queststatus", "First choose a character:", cbChoosePlayer);
		local raceNames = {"Human", "Dwarf", "Halfling", "Elf", "Orc", "Lizardman", "Other"}
        for _,player in ipairs(players) do 
			local race = math.min(player:getRace()+1, table.getn(raceNames));
			sdPlayer:addOption(0,player.name .. " (" .. raceNames[race] .. ") " .. player.id);
        end		
		User:requestSelectionDialog(sdPlayer);		
		
	elseif (SourceItem:getData("mode")=="Instant kill/ revive") then		
		local playersTmp = world:getPlayersInRangeOf(User.pos, 4);
		local players = {User};
		for _,player in pairs(playersTmp) do 
			if (player.id ~= User.id) then 
				table.insert(players, player);
			end
		end
			
		local cbChoosePlayer = function (dialog)
			if (not dialog:getSuccess()) then
				return;
			end
			local index = dialog:getSelectedIndex();
			if index == 0 then
				local monsters = world:getMonstersInRangeOf(User.pos, 3);
				for _,monster in ipairs(monsters) do
					monster:increaseAttrib("hitpoints", -10000)
				end
			else
				chosenPlayer = players[dialog:getSelectedIndex()];
				local killDialog = function (dialog)
					if (not dialog:getSuccess()) then
						return;
					end			
					local index = dialog:getSelectedIndex()
					if index == 0 then --let's kill it
						chosenPlayer:increaseAttrib("hitpoints", -10000)
					elseif index == 1 then --let's revive it
						chosenPlayer:increaseAttrib("hitpoints", 10000)
					end
				end
				local sdKill = SelectionDialog("Play god", "What do you wish to do to "..chosenPlayer.name.."?", killDialog)
				sdKill:addOption(0, "Instant kill")
				sdKill:addOption(0, "Instant revive")
				User:requestSelectionDialog(sdKill)	
			end
		end
		--Dialog to choose the player
		local sdPlayer = SelectionDialog("Kill or revive...", "First choose a character:", cbChoosePlayer);
		local raceNames = {"Human", "Dwarf", "Halfling", "Elf", "Orc", "Lizardman", "Other"}
		sdPlayer:addOption(0, "Kill all Monster in a 3 tile radius")
        for _,player in ipairs(players) do 
			local race = math.min(player:getRace()+1, table.getn(raceNames));
			sdPlayer:addOption(0,player.name .. " (" .. raceNames[race] .. ") " .. player.id);
        end		
		User:requestSelectionDialog(sdPlayer);
		
	end	-- end of modes
end

function LookAtItem(User,Item)
    if (Item:getData("mode")=="Eraser") then
		base.lookat.SetSpecialName(Item, "Dietriche (Eraser)","Lockpicks (Eraser)")
		base.lookat.SetSpecialDescription(Item, "Aufr�umzeit!! Benutze die Dietriche. Um einen Modus zu setzen sage 'setmode' und benutzt die Dietriche.", "Clean up time!! Use the lockpicks. To set a mode type 'setmode' and use the lockpicks.");
    elseif (Item:getData("mode")=="Teleport") then
        base.lookat.SetSpecialName(Item, "Dietriche (Teleport)","Lockpicks (Teleport)");
		base.lookat.SetSpecialDescription(Item, "Ich  bin hier weg. Benutze die Dietriche. Um einen Modus zu setzen sage 'setmode' und benutzt die Dietriche. ", "I'm out of here. Use the lockpicks. To set a mode type 'setmode' and use the lockpicks.");
	elseif (Item:getData("mode")=="Faction info of chars in radius") then
		base.lookat.SetSpecialName(Item, "Dietriche (Fraktionsinfo von Chars in Radius)","Lockpicks (Faction info of chars in radius)");
		base.lookat.SetSpecialDescription(Item, "Benutze die Dietriche. Um einen Modus zu setzen sage 'setmode' und benutzt die Dietriche.", "Use the lockpicks. To set a mode type 'setmode' and use the lockpicks.");
	elseif (Item:getData("mode")=="Char Info") then
        base.lookat.SetSpecialName(Item, "Dietriche (Char Info)","Lockpicks (Char Info)");
		base.lookat.SetSpecialDescription(Item, "Char Info. Benutze die Dietriche. Um einen Modus zu setzen sage 'setmode' und benutzt die Dietriche.", "Char Info. Use the lockpicks. To set a mode type 'setmode' and use the lockpicks.");
	elseif (Item:getData("mode")=="Change skills") then
		base.lookat.SetSpecialDescription(Item, "Benutze die Dietriche. Um einen Modus zu setzen sage 'setmode' und benutzt die Dietriche.", "Use the lockpicks. To set a mode type 'setmode' and use the lockpicks.");
        base.lookat.SetSpecialName(Item, "Dietriche (Skills �ndern)", "Lockpicks (Change skills)");
	elseif (Item:getData("mode")=="Get/ Set Queststatus") then
		base.lookat.SetSpecialDescription(Item, "Benutze die Dietriche. Um einen Modus zu setzen sage 'setmode' und benutzt die Dietriche.", "Use the lockpicks. To set a mode type 'setmode' and use the lockpicks.");
        base.lookat.SetSpecialName(Item, "Dietriche (Get/ Set Queststatus)", "Lockpicks (Get/ Set Queststatus)");
	elseif (Item:getData("mode")=="Instant kill/ revive") then
        base.lookat.SetSpecialName(Item, "Dietriche (Godmode)","Lockpicks (Godmode)");
		base.lookat.SetSpecialDescription(Item, "Instant kill/ revive. Benutze die Dietriche. Um einen Modus zu setzen sage 'setmode' und benutzt die Dietriche.", "Instant kill/ revive. Use the lockpicks. To set a mode type 'setmode' and use the lockpicks.");
	else
		base.lookat.SetSpecialDescription(Item, "Um einen Modus zu setzen sage 'setmode' und benutzt die Dietriche.", "To set a mode type 'setmode' and use the lockpicks.");
        base.lookat.SetSpecialName(Item, "Dietriche", "Lockpicks");
    end
	world:itemInform(User,Item,base.lookat.GenerateLookAt(User, Item, base.lookat.METAL));
end

function String2Number(str)
	if (string.find(str, "(%d+)") ~= nil) then
    local _,_,num = string.find(str, "(%d+)");
    if (num~="") then
      num = tonumber(num);
      return num, true;
    end
  end
	return 0, false;
end
