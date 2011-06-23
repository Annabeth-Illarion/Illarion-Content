-- Wegweiser Script
-- Nitram
require("base.common")
require("content.mirror")

module("item.mirror", package.seeall)

-- UPDATE common SET com_script='item.signpost' WHERE com_itemid IN (1817,1809,1808,1807,308,1804,586,3084,3081,3082,3083,519,520,521,337,1914,1915,2046,2069,512,2924,2925,2926,2927);

function LookAtItemIdent(User,Item)
    local test = "no value";
	if (first==nil) then
        content.signpost.InitWegweiser()
        first=1;
    end
    
    -- fetching local references
    local signTextDe     = content.mirror.signTextDe;
    local signTextEn     = content.mirror.signTextEn;
    local signCoo        = content.mirror.signCoo;
    local signItemId     = content.mirror.signItemId;
    local signPerception = content.mirror.signPerception;
    
    found = false;
    UserPer = User:increaseAttrib("perception",0);
    tablePosition = Item.pos.x .. Item.pos.y .. Item.pos.z;
	if signCoo ~= nil then
		if (signCoo[tablePosition] ~= nil) then
			for i, signpos in pairs(signCoo[tablePosition]) do
				if equapos(Item.pos,signpos) then
					if (UserPer >= signPerception[tablePosition][i]) then
						found = true;
						world:itemInform(User,Item,base.common.GetNLS(User,string.gsub(signTextDe[tablePosition][i],"currentChar",User.name),string.gsub(signTextEn[tablePosition][i],"currentChar",User.name)));
						test = signTextDe[tablePosition][i];
					end
				end
			end
		end
	end 

	local outText = checkNoobiaSigns(User,Item.pos);
	if outText and not found then
		world:itemInform(User,Item,outText);
		found = true;
	end

	if not found then
        world:itemInform(User,Item,base.common.GetNLS(User,"Du siehst ","You see ")..world:getItemName(Item.id,User:getPlayerLanguage()));
    end

		User:inform("in LookAtItem of base_wegweiser.lua");
		User:inform(test);
end

--[[
	LookAtItemIdent
	identity of LookAtItem
]]
LookAtItem = LookAtItemIdent;

function checkNoobiaSigns( User,TargetPos )

	if NoobiaSigns == nil then
		NoobiaSigns = {};
		NoobiaSigns[1] = {position(68,35,101),"Troll's Bane.","Troll's Bane."};
		NoobiaSigns[2] = {position(68,32,101),"Silberbrand, Stadt der Zwerge.","Silverbrand, town of the dwarves."};
		NoobiaSigns[3] = {position(70,32,101),"Tol Vanima, Insel der Elben.","Tol Vanima, island of the elves."};
		NoobiaSigns[4] = {position(72,34,101),"Greenbriar, Stadt der Halblinge.","Greenbriar, town of the halflings."};
		NoobiaSigns[5] = {position(72,36,101),"Varshikar, die W�stenstadt.","Varshikar, the desert town."};
		--[[
		NoobiaSigns[1] = {position(68,35,101),"Troll's Bane. Derzeitige Bev�lkerung: %POPULATION","Troll's Bane. Current population: %POPULATION"};
		NoobiaSigns[2] = {position(68,32,101),"Silberbrand, Stadt der Zwerge. Derzeitige Bev�lkerung: %POPULATION","Silverbrand, town of the dwarves. Current population: %POPULATION"};
		NoobiaSigns[3] = {position(70,32,101),"Tol Vanima, Insel der Elben. Derzeitige Bev�lkerung: %POPULATION","Tol Vanima, island of the elves. Current population: %POPULATION"};
		NoobiaSigns[4] = {position(72,34,101),"Greenbriar, Stadt der Halblinge. Derzeitige Bev�lkerung: %POPULATION","Greenbriar, town of the halflings. Current population: %POPULATION"};
		NoobiaSigns[5] = {position(72,36,101),"Varshikar, die W�stenstadt. Derzeitige Bev�lkerung: %POPULATION","Varshikar, the desert town. Current population: %POPULATION"};
		]]
	end
	for i=1,5 do
		if equapos(TargetPos,NoobiaSigns[i][1]) then
			local lang = User:getPlayerLanguage();
			local pop = getPopulation(i);
			local outText = base.common.GetNLS(User,string.gsub(NoobiaSigns[i][lang+2],"%%POPULATION",""..pop..""),string.gsub(NoobiaSigns[i][lang+2],"%%POPULATION",""..pop..""));
			return outText;
		end
	end
	return nil;
end

function getPopulation( Number )

	local retVal = 0;
	if Number == 1 then
		retVal = retVal + getPlayersOnLevel(position(-100,-110,0),50);
		retVal = retVal + getPlayersOnLevel(position(-100,-110,1),50);
	elseif Number == 2 then
		retVal = retVal + getPlayersOnLevel(position(114,-208,2),30);
	elseif Number == 3 then
		retVal = retVal + getPlayersOnLevel(position(330,230,0),30);
		retVal = retVal + getPlayersOnLevel(position(330,230,1),30);
		retVal = retVal + getPlayersOnLevel(position(330,230,2),30);
		retVal = retVal + getPlayersOnLevel(position(370,216,0),16);
		retVal = retVal + getPlayersOnLevel(position(370,216,1),16);
		retVal = retVal + getPlayersOnLevel(position(370,216,2),16);
		retVal = retVal + getPlayersOnLevel(position(370,216,-3),16);
	elseif Number == 4 then
		retVal = retVal + getPlayersOnLevel(position(-386,72,0),50);
		retVal = retVal + getPlayersOnLevel(position(-386,72,1),50);
	elseif Number == 5 then
		retVal = retVal + getPlayersOnLevel(position(262,-305,0),25);
		retVal = retVal + getPlayersOnLevel(position(238,-326,0),16);
	end
	return retVal;
end

function getPlayersOnLevel( Position, Range )

	local retVal = 0;
	local PlayerList = world:getPlayersInRangeOf(Position,Range);
	for a,Char in pairs(PlayerList) do
		if Char.pos.z == Position.z then
			retVal = retVal +1;
		end
	end
	return retVal;
end
