-- Rope
require("base.common")
require("quest_aquest28")    
require("lte.tying_capturer") 
module("item.id_2760_rope", package.seeall)      
-- UPDATE common SET com_script='I_2760_seil.lua' WHERE com_itemid=2760;

tyingQuality = {};
tyingQuality[0] = {"starkes", "stabiles", "", "fadenscheiniges", "schwaches"};
tyingQuality[1] = {"strong", "stable", "", "threadbare", "weak"};
-- index of limit adresses a quality string in field 0 or 1
tyingQuality["limits"] = {15,10,5,2,0};

function LookAtItem(User,Item)
    
	local gText = "Du siehst ";
	local eText = "You see ";
	if Item.data == 1 then
		local eQual, gQual;
		local minutes = (Item.quality - 100)/120;
		for i,limit in tyingQuality.limits do
			if ( minutes > limit ) then
				gQual = tyingQuality[0][i];
				eQual = tyingQuality[1][i];
				break;
			end
		end
		gText = gText..gQual.." Fesslungsseil";
		eText = eText..eQual.." tying rope";
	else
		gText = gText.."Seil";
		eText = eText.."rope";
	end
	world:itemInform(User,Item,base.common.GetNLS(User,gText,eText));
end

function UseItem(User, SourceItem, TargetItem, Counter, Param, ltstate)

	if SourceItem.data == 1 then
		-- it's a tying rope!
		local targetChar = base.common.GetFrontCharacter(User);
		if TyingRopeHandler(User, SourceItem, targetChar) then
			return;
		end
		if targetChar then
			-- actually nothing can happen anyway, mostly just for the error messages
			UseRopeWithCharacter(User, SourceItem, targetChar, ltstate);
			return;
		end
		return;
	end
	
	-- it's a normal rope!
	
	-- try to strengthen the knot (if User has tied up someone...)
	if StrengthenKnot(User, SourceItem, base.common.GetTargetItem(User, SourceItem)) then
		return;
	end
	-- try to tie up the frontChar!
	local frontChar = base.common.GetFrontCharacter(User);
	if frontChar then
		UseRopeWithCharacter(User, SourceItem, frontChar, ltstate);
		return;
	end
	
	-- noone infront... perhaps climb down a well then.
	local TargetItem = base.common.GetFrontItem(User);
	
	if TargetItem == nil or ( TargetItem.id ~= 2207 ) then
		return;
    end
    local dummy_1, task = quest_aquest28.split_questdata(User);
    
    if equapos(TargetItem.pos,position(-73,-108,0)) then
        User:talkLanguage( CCharacter.say, CPlayer.german, "#me klettert an einem Seil den Brunnen hinunter.");
        User:talkLanguage( CCharacter.say, CPlayer.english, "#me climbs down into the well on a rope.");
        User:warp(position(-73,-108,-3));
    elseif equapos(TargetItem.pos,position(-131,-123,0)) then
        User:talkLanguage( CCharacter.say, CPlayer.german, "#me klettert an einem Seil den Brunnen hinunter.");
        User:talkLanguage( CCharacter.say, CPlayer.english, "#me climbs down into the well on a rope.");
        User:warp(position(-131,-123,-3));
	elseif equapos(TargetItem.pos,position(787,801,0)) then
        User:talkLanguage( CCharacter.say, CPlayer.german, "#me klettert an einem Seil den Brunnen hinunter.");
        User:talkLanguage( CCharacter.say, CPlayer.english, "#me climbs down into the well on a rope.");
        User:warp(position(797,791,-3));
	elseif equapos(TargetItem.pos,position(528, 555, 0)) then
        User:talkLanguage( CCharacter.say, CPlayer.german, "#me klettert an einem Seil den Brunnen hinunter.");
        User:talkLanguage( CCharacter.say, CPlayer.english, "#me climbs down into the well on a rope.");
        User:warp(position(518,559, -3));
    elseif ( equapos(TargetItem.pos,position(787,801,0)) and (task == 4 or true)) then --FARMER WELL POSITION TO PUT HERE
        User:talkLanguage( CCharacter.say, CPlayer.german, "#me klettert an einem Seil den Brunnen hinunter.");
        User:talkLanguage( CCharacter.say, CPlayer.english, "#me climbs down into the well on a rope.");
        local monster_list = world:getMonstersInRangeOf(position(787,791,0),3); --check if already a monster spawned there
		if (monster_list[1]==nil) then
        	User:inform("blub, monsterlist was nil");
        	world:createMonster(133,position(787,791,0), 14);--create a monster here
		end
		User:inform("blub, monsterlist was not nil");
		User:warp(position(787,793,0));
	else
    	if ( User:getPlayerLanguage() == 0 ) then
            User:inform( "Das Wasser steht recht hoch im Brunnen. Hier hinein zu klettern bringt nichts." );
    	else
            User:inform( "The water is rather high in the well. To climb in here is useless." );
		end
    end
end

function MoveItemBeforeMove( User, SourceItem, TargetItem )
	
	if SourceItem.data == 1 then
		
		base.common.TempInformNLS(User,
			"Du solltest das Seil fest in der Hand behalten. Damit ist jemand gefesselt.",
			"You should hold the rope tight in your hand. Someone is tied up with it.")
		return false;
	end
	
	return true;
end

function UseRopeWithCharacter( User, SourceItem, Target, ltstate )
	
	-- check if rope is in hands
	if SourceItem:getType() ~= 4 then
		base.common.TempInformNLS(User,
			"Du musst das Seil in die Hand nehmen, wenn du jemanden fesseln willst.",
			"You have to take the rope in your hand if you want to tie up someone.")
		return;
	end
	
	-- check for abort
	if (ltstate == Action.abort) then
		gText = GetRaceGenderText(0,Target);
		eText = GetRaceGenderText(1,Target);
		base.common.TempInformNLS ( User,
			"Dir gelingt es nicht "..gText.." zu fesseln.",
			"You don't succeed in tying up "..eText..".");
		return;
	end
	
	-- check viewing direction
	if not base.common.IsLookingAt(User, Target.pos) then
		base.common.TempInformNLS( User,
			"Du solltest dort hinschauen, wo dein Gefangener ist.",
			"You should look in your captive's direction.");
		return;
	end
	
	if User.effects:find(26) then
		base.common.TempInformNLS(User,
			"Du hast schon einen Gefangenen.",
			"You already have a captive.");
		return;
	end
	
	-- tie up only PCs without admin rights
	if Target:get_type()~=0 or ( Target:isAdmin() and not User:isAdmin() ) then
		base.common.TempInformNLS(User,
			"Dieses Wesen kannst du nicht fesseln.",
			"You can't tie this creature up.");
		return;
	end
	
	if User.id==Target.id then
		base.common.TempInformNLS(User,
			"Du solltest dich nicht selbst fesseln.",
			"You shouldn't tie up yourself.");
		return;
	end
	
	-- Check if User is in attackmode
	if User.attackmode then
		base.common.TempInformNLS ( User,
			"Du kannst niemanden fesseln, w�hrend du k�mpfst.",
			"You can't tie someone up while you are fighting." );
		return;
	end
	
	if HasEnoughCapturers(Target) then
		base.common.TempInformNLS(User,
			"Der Gefangene ist nun schon ausreichend gefesselt.",
			"The captive is now sufficiently tied up already.");
		return;
	end
	
	if User.effects:find(24) then
		base.common.TempInformNLS(User,
			"Dir sind leider die H�nde gebunden.",
			"Unfortunately your hands are tied.");
		return;
	end
	
	local foundEffectTarget = Target.effects:find(24);
	-- Check ltstate, 5 sec for first, 2 sec for another capturer or freezed target
	if (ltstate == Action.none) then
		local Time = 50;
		-- set tying time
		if foundEffectTarget or base.common.IsCharacterParalysed(Target) then
			-- reduced time for another captor or freezed target
			Time = 20;
		else
			-- calculate tying time depending on target's and user's hp
			Time = 50 + math.floor( Target:increaseAttrib("hitpoints",0)/333 ) - math.floor( User:increaseAttrib("hitpoints",0)/333 );
			if Target.attackmode then
				-- time bonus if target is attacking
				Time = Time + 30;
			end
		end
		
		User:startAction(Time,0,0,0,0);
		
		gText = GetRaceGenderText(0,Target);
		eText = GetRaceGenderText(1,Target);
		User:talkLanguage(CCharacter.say, CPlayer.german, "#me versucht "..gText.." zu fesseln.");
		User:talkLanguage(CCharacter.say, CPlayer.english, "#me tries to tie up "..eText..".");
		
		base.common.TempInformNLS(Target,
			"Jemand versucht dich zu fesseln!",
			"Someone tries to tie you up!");
		
		-- save target's position
		if not TargetPosList then
			TargetPosList = {};
		end
		TargetPosList[Target.id] = base.common.CopyPosition( Target.pos );
		
		-- RS TEST
		local logText = os.date()..": "..User.name.." tries to capture "..Target.name
		coldLog,errMsg=io.open("/home/nitram/logs/tying_log.txt","a");
		if (coldLog~=nil) then
			coldLog:write(logText.."\n");
			coldLog:close();
		end
		return;
	end
	-- check if target has moved
	if TargetPosList and not equapos( TargetPosList[Target.id], Target.pos ) then
		base.common.TempInformNLS( User,
			"Dein Gefangener sollte still halten, damit du ihn fesseln kannst.",
			"Your captive should hold still so you can tie him up.");
		return;
	end
	
	-- tie up!
	-- RS TEST
	local logText = os.date()..": "..User.name.." has captured "..Target.name
	coldLog,errMsg=io.open("/home/nitram/logs/tying_log.txt","a");
	if (coldLog~=nil) then
		coldLog:write(logText.."\n");
		coldLog:close();
	end
	SourceItem.data = 1;
	world:changeItem(SourceItem);
	if not foundEffectTarget then
		Tying = CLongTimeEffect(24,1);
		Target.effects:addEffect(Tying);
		Tying:addValue("Capturer",User.id);
		-- check left, right tool
		local item;
		for i=5,6 do
			item = Target:getItemAt(i);
			if item.id > 0 and item.id ~= 228 then
				world:createItemFromItem(item,Target.pos,true);
				base.common.TempInformNLS(Target,
					"Du kannst nichts mehr in den H�nden halten.",
					"You can't carry anything any more in your hands.");
			end
			item.id = 228;
			world:changeItem(item);
		end
	end
	
	foundTying, Tying = User.effects:find(26);
	if not foundTying then
		Tying = CLongTimeEffect(26,1);
		User.effects:addEffect(Tying);
	end
	Tying:addValue("Captive",Target.id);
	
	if not foundEffectTarget then
		gText = "#me hat ein festes Seil um die H�nde.";
		eText = "#me has a tight rope around the hands.";
		base.common.TempInformNLS(User,
			"Der Gefangene folgt nun dir.",
			"Now the captive follows you.");
	else
		gText = "#me ist nun mit einem weiteren Seil gefesselt.";
		eText = "#me is now tied up with another rope.";
	end
	Target:talkLanguage(CCharacter.say, CPlayer.german, gText);
	Target:talkLanguage(CCharacter.say, CPlayer.english, eText);
	if Target.effects:find(26) then
		base.common.TempInformNLS(Target,
			"Du kannst deinen Gefangenen nicht mehr halten und l�sst ihn frei.",
			"You can't hold your captive any more. You release him.");
		Target.effects:removeEffect(26);
	end
end

-- @return true if something was done
function StrengthenKnot(User, Rope, TargetItem)
	local foundEffect, Tying = User.effects:find(26);
	if not foundEffect then
		Rope.data = 0;
		return false;
	end
	
	if TargetItem then
		if TargetItem.id == 2760 then
			if TargetItem.data == 1 and Rope.data == 0 then
				foundCaptive, Captive = Tying:findValue("Captive");
				Target = lte.tying_capturer.IsCharidInRangeOf(Captive,User.pos,5);
				if Target then
					local AttribOffset = lte.tying_capturer.GetBestAttribOffset(User,Target,{"strength","dexterity"});
					local Quality = math.min(600,120+math.random(25,35)*AttribOffset);
					TargetItem.quality = math.min(2500,TargetItem.quality+(Quality*2));
					world:changeItem(TargetItem);
					base.common.TempInformNLS(User,
						"Du verst�rkst den Knoten mit dem neuen Seil.",
						"You strengthen the knot with the new rope.");
					world:erase(Rope,1);
					return true;
				end
			end
		end
	end
	return false;
end

--- Handles actions with a tying rope (data 1), like tightening, untie or handing the leading rope over
-- @return true if something was done
function TyingRopeHandler(User, Rope, Target)
	
	if Rope.data ~= 1 then
		return false;
	end
	
	local foundEffect, Tying = User.effects:find(26);
	if not foundEffect then
		Rope.data = 0;
		return false;
	end
	
	-- check if User has tied up someone
	foundCaptive, Captive = Tying:findValue("Captive");
	if foundCaptive then
		if Tying:findValue("logout") then
			base.common.TempInformNLS(User,
				"Du l�sst deinen Gefangenen frei.",
				"You release your captive.");
			User.effects:removeEffect(26);
			return true;
		end
		
		if not Target then
			Target = lte.tying_capturer.IsCharidInRangeOf(Captive,User.pos,5);
			if Target then
				foundEffect, Tying = Target.effects:find(24);
				if foundEffect then
					Tying:removeValue("escape");
					Tying:removeValue("success");
				end
				User:talkLanguage(CCharacter.say, CPlayer.german, "#me zieht das Seil straff.");
				User:talkLanguage(CCharacter.say, CPlayer.english, "#me tightens the rope.");
				local rope = GetRope(User);
				if rope then
					rope.quality = math.max(104,rope.quality-60);
					world:changeItem(rope);
				end
			end
			return true;
		end
		
		if Target.id == Captive then
			-- target is captive, so untie him
			gText = GetRaceGenderText(0,Target);
			eText = GetRaceGenderText(1,Target);
			User:talkLanguage(CCharacter.say, CPlayer.german, "#me bindet "..gText.." los.");
			User:talkLanguage(CCharacter.say, CPlayer.english, "#me unties "..eText..".");
			foundEffect, Tying = Target.effects:find(24);
			if foundEffect then
				Tying:removeValue("Capturer");
			end
			User.effects:removeEffect(26);
			return true;
		else
			-- other target, try to give him the leading rope
			foundEffect, Tying = Target.effects:find(26);
			if foundEffect then
				local foundValue, CaptiveTarget = Tying:findValue("Captive");
				if foundValue then
					if Captive == CaptiveTarget then -- Target char has the same captive!
						CaptiveChar = lte.tying_capturer.IsCharidInRangeOf(Captive,User.pos,5);
						if CaptiveChar then
							foundEffect, Tying = CaptiveChar.effects:find(24);
							if foundEffect then
								foundCapturer, Capturer = Tying:findValue("Capturer");
								if foundCapturer then
									if Capturer == User.id then -- User is leading capturer!
										Tying:addValue("Capturer", Target.id);
										gText = GetRaceGenderText(0,Target);
										eText = GetRaceGenderText(1,Target);
										User:talkLanguage(CCharacter.say, CPlayer.german, "#me �bergibt das Seil an "..gText..".");
										User:talkLanguage(CCharacter.say, CPlayer.english, "#me hands the rope to "..eText..".");
										base.common.TempInformNLS(User,
											"Der Gefangene folgt dir nun nicht mehr.",
											"Now the captive doesn't follow you any more.");
										base.common.TempInformNLS(Target,
											"Der Gefangene folgt nun dir.",
											"Now the captive follows you.");
										return true;
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return false;
end

-- Language=0 for German, otherwise English
function GetRaceGenderText( Language, Character )
	
	if not InitRaceGenderText then
		InitRaceGenderText = true;
		articleGerman={"den","die"};
		descriptionGerman={"Mensch","Zwerg","Halbling","Elf","Ork","Echsenmensch","Gnom","Feenmann","Goblin","Menschendame","Zwergenmaid","Halblingsdame","Elfendame","Orkfrau","Echse","Gnomin","Fee","Goblinfrau"};
		descriptionEnglish={"human","dwarf","halfling","elf","orc","lizard","gnome","male faerie","goblin","human lady","dwarven maid","halfling lady","elven lady","orcess","female lizard","female gnome","faerie","goblin woman"};
	end
	
	race=Character:increaseAttrib("racetyp",0);
	gender=Character:increaseAttrib("sex",0);
	
	if Language == 0 then
		if race > 8 or gender > 1 then
			outText = "das Wesen"
		else
			outText = articleGerman[gender+1].." "..descriptionGerman[race+1+9*gender];
		end
	else
		if race > 8 or gender > 1 then
			outText = "the creature"
		else
			outText = "the "..descriptionEnglish[race+1+9*gender];
		end
	end
	
	return outText;
end
