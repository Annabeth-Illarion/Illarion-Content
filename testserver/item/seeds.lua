-- sowing seeds
require("base.common")

module("item.seeds", package.seeall)

-- UPDATE common SET com_script='item.seeds' WHERE com_itemid IN (259,291,534,2494,2917,728,773,779);

-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 247 WHERE com_itemid = 246;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 248 WHERE com_itemid = 247;
-- UPDATE common SET com_agingspeed = 4, com_objectafterrot = 246 WHERE com_itemid = 248;
-- UPDATE common SET com_agingspeed = 4, com_objectafterrot = 259 WHERE com_itemid = 259;

-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 289 WHERE com_itemid = 288;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 290 WHERE com_itemid = 289;
-- UPDATE common SET com_agingspeed = 4, com_objectafterrot = 291 WHERE com_itemid = 290;
-- UPDATE common SET com_agingspeed = 4, com_objectafterrot = 291 WHERE com_itemid = 291;

-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 536 WHERE com_itemid = 535;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 537 WHERE com_itemid = 536;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 534 WHERE com_itemid = 537;
-- UPDATE common SET com_agingspeed = 4, com_objectafterrot = 534 WHERE com_itemid = 534;

-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 2491 WHERE com_itemid = 2490;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 2492 WHERE com_itemid = 2491;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 2494 WHERE com_itemid = 2492;
-- UPDATE common SET com_agingspeed = 4, com_objectafterrot = 2494 WHERE com_itemid = 2494;

-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 539 WHERE com_itemid = 538;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 540 WHERE com_itemid = 539;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 2917 WHERE com_itemid = 540;
-- UPDATE common SET com_agingspeed = 4, com_objectafterrot = 2917 WHERE com_itemid = 2917;

-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 730 WHERE com_itemid = 729;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 731 WHERE com_itemid = 730;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 732 WHERE com_itemid = 731;
-- UPDATE common SET com_agingspeed = 4, com_objectafterrot = 732 WHERE com_itemid = 732;

-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 775 WHERE com_itemid = 774;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 776 WHERE com_itemid = 775;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 777 WHERE com_itemid = 776;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 773 WHERE com_itemid = 777;
-- UPDATE common SET com_agingspeed = 4, com_objectafterrot = 773 WHERE com_itemid = 773;

-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 781 WHERE com_itemid = 780;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 782 WHERE com_itemid = 781;
-- UPDATE common SET com_agingspeed = 2, com_objectafterrot = 779 WHERE com_itemid = 782;
-- UPDATE common SET com_agingspeed = 4, com_objectafterrot = 779 WHERE com_itemid = 779;

function UseItem(User, SourceItem, ltstate)
	content.gathering.InitGathering();
	local farming = content.gathering.farming;
    
    if ( seedPlantList == nil ) then
        seedPlantList = {};
        seedPlantList[259] = 246; -- grain
        seedPlantList[291] = 288; --cabbage
        seedPlantList[534] = 535; --onions
        seedPlantList[2494] = 2490; --carrots
        seedPlantList[2917] = 538; --tomatoes
        seedPlantList[728] = 729; --hop
        seedPlantList[773] = 774; --tobacco
        seedPlantList[779] = 780; --sugarcane
    end
    
    if ( seedPlantList[SourceItem.id] == nil ) then
        User:inform("[ERROR] Unknown seed item id: " .. SourceItem.id .. ". Please inform a developer.");
        return;
    end
	
	-- is the target position needed?
	local TargetPos = base.common.GetFrontPosition(User);

	base.common.ResetInterruption( User, ltstate );
	if ( ltstate == Action.abort ) then -- work interrupted
		if (User:increaseAttrib("sex",0) == 0) then
			gText = "seine";
			eText = "his";
		else
			gText = "ihre";
			eText = "her";
		end
		User:talkLanguage(Character.say, Player.german, "#me unterbricht "..gText.." Arbeit.");
		User:talkLanguage(Character.say, Player.english,"#me interrupts "..eText.." work.");
		return
	end

	if not base.common.CheckItem( User, SourceItem ) then -- security check
		return
	end
	
	if (SourceItem:getType() ~= 4) then -- tool in Hand
		base.common.HighInformNLS( User,
		"Du musst das Saatgut in der Hand haben!",
		"You have to hold the seeds in your hand!" );
		return
	end

	if not base.common.FitForWork( User ) then -- check minimal food points
		return
	end

	if not base.common.IsLookingAt( User, TargetPos ) then -- check looking direction
		base.common.TurnTo( User, TargetPos ); -- turn if necessary
	end
  
  -- should not stack plants on top of anything
  if (world:isItemOnField(TargetPos)) then
    base.common.HighInformNLS(User,
    "Du kannst nur auf einem freien Feld Saatgut auss�en.",
    "Sowing seeds is only possible at a free spot.");
    return;
  end
	
  -- only on farm land
	local Field = world:getField( TargetPos )
  local groundType = base.common.GetGroundType( Field:tile() );
  if ( groundType ~= 1 ) then
    base.common.HighInformNLS(User,
    "Du kannst nur auf Ackerboden Saatgut auss�en.",
    "Sowing seeds is only possible on farm land.");
    return
  end

	if ( ltstate == Action.none ) then -- currently not working -> let's go
		farming.SavedWorkTime[User.id] = farming:GenWorkTime(User,nil);
		User:startAction( farming.SavedWorkTime[User.id], 0, 0, 0, 0);
    -- this is no batch action => no emote message, only inform player
		if farming.SavedWorkTime[User.id] > 15 then
      base.common.InformNLS(User,
      "Du s�st Saatgut aus.",
      "You sow seeds.");
    end
		return
	end

	-- since we're here, we're working

	if farming:FindRandomItem(User) then
		return
	end

	User:learn( farming.LeadSkill, farming.SavedWorkTime[User.id], farming.LearnLimit);
	-- you always get at least one
  local amount = 1;
  -- in 50% of all cases one more
  if (math.random(1,2) == 1) then
    amount = amount + 1;
  end
  -- and another one depending on the skill
  if (User:getSkill(farming.LeadSkill) > math.random(1,100)) then
    amount = amount + 1;
  end
	world:createItemFromId( seedPlantList[SourceItem.id], 1, TargetPos, true, 333 ,{["amount"] = "" .. amount});
	world:erase( SourceItem, 1 ); -- erase the seed
end

-- some plants rot to seeds again, those have a different data value
function MoveItemBeforeMove(User, SourceItem, TargetItem)
  local amount = SourceItem:getData("amount");
  if (amount ~= "") then
    -- amount = tonumber(amount);
    -- debug("move seed, amount " .. amount);
    -- if (amount == 2) then
      -- world:createItemFromId( SourceItem.id, amount, User.pos, true, 333, nil );
    -- elseif (amount == 3) then
      -- if (TargetItem:getType() == 3) then
        -- -- item is dragged to the map
        -- world:createItemFromId( SourceItem.id, amount, TargetItem.pos, true, 333, nil );
      -- else
        -- -- item is dragged to the User
        -- User:createItem(SourceItem.id, amount, 333, nil);
      -- end
    -- end
    -- world:erase(SourceItem, SourceItem.number);
    -- world:increase(SourceItem, -SourceItem.number);
    base.common.HighInformNLS(User,
		"[INFO] Aus technischen Gr�nden brauchst du zur Zeit eine Sichel, um die Samen aufzuheben.",
		"[INFO] For technical reasons you currently need a sickle to pick up the seeds.");
    return false;
  end
  return true;
end

-- function MoveItemAfterMove(User, SourceItem, TargetItem)
  -- local amount = SourceItem:getData("amount");
  -- if (amount ~= "") then
    -- amount = tonumber(amount);
    -- debug("remove " .. SourceItem.number);
    -- if (TargetItem:getType() == 3) then
      -- -- item is dragged to the map
      -- world:createItemFromId( SourceItem.id, amount, User.pos, true, 333, nil );
    -- else
      -- -- item is dragged to the User
      -- User:createItem(SourceItem.id, amount, 333, nil);
    -- end
    -- world:erase(SourceItem, SourceItem.number);
    -- world:erase(TargetItem, SourceItem.number);
  -- end
-- end
