-- script to put lights on and off
-- off items: save old wear value in data (+1000)
--				if data is <1000, set to default wear or keep current (if there's no requirement, e.g. for a torch)
-- on items: save old wear value in data (+500)
--				if data is <500, set wear to 255 or default portable wear
-- special data for on items: 2 => do not give anything back (e.g. a night watchman has put it on)
require("base.common")

module("items.lights", package.seeall())

-- UPDATE common SET com_script='items.lights' WHERE com_itemid IN (92, 397, 393, 394, 2856, 2855, 391, 392, 401, 402, 403, 404, 2851, 2852, 2853, 2854, 399, 400, 395, 396);

PORTABLE_WEAR = 5; -- default wear value for portable items, when put off
DEFAULT_WEAR = 5; -- default wear value for light sources, when put on

LightsOff = {};
LightsOn = {};
-- torch
LightsOff[391] = { on = 392 };
LightsOn[392] = { off = 391, portable = true };
-- torch holder
LightsOff[401] = { on = 402, req = { id = 392, num = 1 } }; -- facing south
LightsOn[402] = { off = 401, back = 392 };
LightsOff[403] = { on = 404, req = { id = 392, num = 1 } }; -- facing west
LightsOn[404] = { off = 403, back = 392 };
-- candles
LightsOff[2853] = { on = 2851, req = { id = 43, num = 3 } }; -- facing south
LightsOn[2851] = { off = 2853 };
LightsOff[2854] = { on = 2852, req = { id = 43, num = 3 } }; -- facing west
LightsOn[2852] = { off = 2854 };
-- candle
LightsOff[399] = { on = 400, req = { id = 43, num = 1 } };
LightsOn[400] = { off = 399, portable = true };
-- oil lamp
LightsOff[92] = { on = 397, req = { id = 390, num = 1 } };
LightsOn[397] = { off = 92, portable = true };
-- oil lamp holder
LightsOff[395] = { on = 396, req = { id = 390, num = 1 } };
LightsOn[396] = { off = 395 };
-- lantern
LightsOff[393] = { on = 394, req = { id = 43, num = 1 } }; -- black, portable
LightsOn[394] = { off = 393, portable = true };
LightsOff[2856] = { on = 2855, req = { id = 43, num = 1 } }; -- grey, static
LightsOn[2855] = { off = 2856 };

ReqTexts = {};
ReqTexts.german = { [392] = "Fackeln", [43] = "Kerzen", [390] = "Lampen�l" };
ReqTexts.english = { [392] = "torches", [43] = "candles", [390] = "lamp oil" };

function UseItem( User, SourceItem, TargetItem, counter, param, ltstate )
	if SourceItem:getType()==1 or SourceItem:getType()==2 then
		base.common.TempInformNLS(User,
			"Nimm das Licht in die Hand oder lege es am Gr�tel ab.",
			"Take the light into your hand or put it on your belt.");
		return;
	end
	local this = LightsOff[SourceItem.id];
	if this then
		local ok, wear = checkReq(User,SourceItem,this)
		if ok then

            --Quest 105: NPC Gregor Remethar "A light at the end of the tunnel

            if SourceItem.id == 395 and (SourceItem.pos == position (906, 823, -3) or SourceItem.pos == position (906, 825, -3) ) and User:getQuestProgress(105) == 1 then
                base.common.TempInformNLS(User, "[Queststatus] Du entfachst die Ehrenfeuer von Runewick. Kehre zu Gregor Remethar zur�ck, um deine Belohnung einzufordern.", "[Quest status] You lit the lights of honour of Runewick. Return to Gregor Remethar to claim your reward.")
                User:setQuestProgress(105,2);
            end

            --Quest end

			putOn(SourceItem,wear,false);

		elseif this.req then
			base.common.TempInformNLS(User,
				"Daf�r brauchst du ".. ReqTexts.german[this.req.id] .. " in der Hand oder im G�rtel.",
				"You need ".. ReqTexts.english[this.req.id] .. " in your belt or hands to do that.");
		end
	elseif LightsOn[SourceItem.id] then
		this = LightsOn[SourceItem.id];
		if this.back then
			giveBack(User,SourceItem,this)
		end
		putOff(SourceItem,this);
	end
end

function checkReq(User, Item, this)
	local wear = -1;
	if Item.data>=1000 then
		-- item has already been used and old wear is saved in data
		wear = Item.data-1000;
	elseif this.req then
		-- there's a requirement, check on body and belt
		if ( User:countItemAt("body", this.req.id) + User:countItemAt("belt", this.req.id) >= this.req.num ) then
			wear = 0;
			local myItem;
			local itemRest = this.req.num;
			for i=1,17 do
				myItem = User:getItemAt( i );
				if ( myItem.id == this.req.id ) then
					wear = wear + myItem.wear; -- save wear for torches
					world:erase( myItem, math.min( itemRest, myItem.number ) );
					itemRest = itemRest - math.min( itemRest, myItem.number );
					if itemRest == 0 then
						break;
					end
				end
			end
			if this.req.id~=392 then
				-- use default wear for all non-torch-requirements
				wear = DEFAULT_WEAR;
			end
		end
	else
		-- no requirement
		wear = Item.wear;
	end
	return (wear>=0), wear;
end

-- give something back
function giveBack(User, Item, this)
	if Item.data==2 then -- a night watchman has put on that light, give nothing back
		base.common.TempInformNLS(User,
			"Das Licht erlischt in dem Moment, als du danach greifst.",
			"The light goes off in the very moment you reach out for it.")
		return;
	end
	local myItem=nil;
	local finalItem = nil;
	if User:createItem(this.back,1,333,15734) == 0 then
		for i=1,17 do
			myItem = User:getItemAt( i );
			if ( myItem.id == this.back and myItem.data==15734 ) then
				finalItem = myItem;
				break;
			end
			myItem = nil;
		end
		if not finalItem then
			-- item is in backpack. Erase it and create an unlit item with proper data value
			local theBackpack=User:getBackPack();
			if theBackpack~=nil then
				local i = 0;
				local worked = true;
				local thisCont;
				repeat
					i = i + 1;
					worked,myItem,thisCont=theBackpack:viewItemNr(i);
					if worked then
						if ( myItem.id == this.back and myItem.data==15734 ) then
							theBackpack:takeItemNr(i,1);
							User:createItem(LightsOn[this.back].off,1,333,Item.wear+1000);
							break;
						end
					end
				until not worked;
			end
		end
	else
		finalItem = world:createItemFromId(this.back,1,User.pos,true,333,1);
	end
    if finalItem then
        finalItem.data = 1;
        finalItem.wear = Item.wear;
        world:changeItem(finalItem);
    end

end

function putOn(Item, newWear, noBack)

	if noBack then
		Item.data = 2; -- give nothing back
	else
		Item.data = Item.wear + 500; -- save old wear value
	end
	Item.id = LightsOff[Item.id].on;
	Item.wear = newWear;
	world:changeItem(Item);
end

function putOff(Item, this)
	local oldWear = Item.wear;
	if Item.data >= 500 then
		-- item has already been used and old wear value is saved in data
		Item.wear = Item.data - 500;
	elseif this.portable then
		Item.wear = PORTABLE_WEAR;
	else
		Item.wear = 255;
	end
	if this.back then
		-- old wear value is already saved, as we've given a torch to the user
		Item.data = 0;
	else
		-- save old wear value in data
		Item.data = oldWear + 1000;
	end
	Item.id = this.off;
	world:changeItem(Item);
end