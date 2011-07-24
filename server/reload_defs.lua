-- called after every !rd command and !fr command
-- note that !rd is a !fr without npc and spawn reloading
-- note further that reload_tables will be called after this if and only if the !rd was successful and the !rd was issued by a !fr

require("base.common")
require("base.doors")
require("content.signpost")
require("content.gods")
require("item.lever")
require("content.areas")

module("server.reload_defs", package.seeall)

function onReload()
    -- logToFile("start onReload");
    initDoors();
    initDepots();
    --initExplorerStones();
    initAltars();
    content.signpost.InitWegweiser();
	initNoobia();
	initTreasureChests();
    -- logToFile("end onReload");
    item.lever.init();
	content.areas.Init();
    
    return true;
end

function initDoors()
    --Zipcode for different regions and settlements

    -- Irundar 1xx
    --AddDoor( -42, 193, -9,  100,false); -- Irundar Gate
    --AddDoor( -49, 174, -9,  101,false); -- Irundar Smith
    --AddDoor( -49, 175, -9,  101,false); -- Irundar Smith
    --AddDoor( -35, 195, -9,  102,false); -- Irundar Mage Tower
    --AddDoor( -35, 196, -9,  102,false); -- Irundar Mage Tower
    --AddDoor( -30, 194, -7,  103,false); -- Irundar Mage Tower
    --AddDoor( -53, 159, -9,  104,false); -- Irundar General Store
    --AddDoor( -50, 166, -9,  104,false); -- Irundar General Store
    --AddDoor( -51, 166, -9,  104,false); -- Irundar General Store
    --AddDoor( -47, 147, -9,  105,false); -- Irundar Castle - Advisor
    --AddDoor( -45, 149, -9,  105,false); -- Irundar Castle - Advisor
    --AddDoor( -44, 150, -8,  106,false); -- Irundar Castle - Bedroom
    --AddDoor( -44, 151, -8,  106,false); -- Irundar Castle - Bedroom
    --AddDoor( -44, 143, -8,  107,false); -- Irundar Castle - Storage Room
    --AddDoor( -49, 142, -8,  108,false); -- Irundar Castle - Tower

end

function initDepots()
    -- AddDepot(x, y, z, data)
end

function initExplorerStones()
    -- AddExplorerStone(x, y, z, number, value);
end

function initAltars()
    -- AddAltar(x, y, z, god);
end

function AddDoor(DoorX,DoorY,DoorZ,DoorData,Open)
    DoorPos=position(DoorX,DoorY,DoorZ);
    if world:isItemOnField(DoorPos) then
        thisDoor = world:getItemOnField(DoorPos);
        doorOOK = base.doors.CheckOpenDoor(thisDoor.id);
        doorCOK = base.doors.CheckClosedDoor(thisDoor.id);
        if (doorOOK or doorCOK) then
            thisDoor.data=DoorData;
            if Open then
                if (doorCOK) then
                    thisDoor.quality = 233;
                end
            else
                if (doorOOK) then
                    world:changeItem(thisDoor);
                    base.doors.CloseDoor(thisDoor);
                    thisDoor.quality = 333;
                end
            end
            world:changeItem(thisDoor);
        end
    end
end

function AddDepot(DepotX,DepotY,DepotZ,DepotData)
    DepotPos=position(DepotX,DepotY,DepotZ);
    if world:isItemOnField(DepotPos) then
        thisDepot=world:getItemOnField(DepotPos);
        if (thisDepot.id == 321) then
            thisDepot.data=DepotData;
            world:changeItem(thisDepot);
        else
            world:createItemFromId(321,1,DepotPos,true,333,DepotData);
        end
    else
        world:createItemFromId(321,1,DepotPos,true,333,DepotData);
    end
end

function AddExplorerStone(StoneX,StoneY,StoneZ,StoneNumber,StoneValue)
    StonePos=position(StoneX,StoneY,StoneZ);
    if world:isItemOnField(StonePos) then
        thisStone=world:getItemOnField(StonePos);
        if (thisStone.id == 1272) then
            thisStone.data=StoneNumber;
            thisStone.quality=StoneValue;
            world:changeItem(thisStone);
        else
            world:createItemFromId(1272,1,StonePos,true,StoneValue,StoneNumber);
        end
    else
        world:createItemFromId(1272,1,StonePos,true,StoneValue,StoneNumber);
    end
end

function AddAltar(AltarX,AltarY,AltarZ,God,Altar)
    AltarPos=position(AltarX,AltarY,AltarZ);
    if world:isItemOnField(AltarPos) then
        thisAltar=world:getItemOnField(AltarPos);
        thisAltar.data=God;
        world:changeItem(thisAltar);
    else
        if Altar then
            world:createItemFromId(Altar,1,AltarPos,false,333,God);
        end;
    end
end

function initNoobia()

	-- in the castle
	---- to towns
	AddNoobiaPortal(1,	69,	35,	101	); -- TB
	AddNoobiaPortal(7,	73,	35,	101	); -- V
	AddNoobiaPortal(5,	73,	33,	101	); -- GB
	AddNoobiaPortal(6,	71,	31,	101	); -- TV
	AddNoobiaPortal(8,	69,	31,	101	); -- SB
	---- to craftmasters
	AddNoobiaPortal(76,	72,	40,	101	); -- cooking and baking
	--AddNoobiaPortal(77,	72,	42,	101	); -- carpentry
	AddNoobiaPortal(78,	72,	44,	101	); -- glassblowing
	--AddNoobiaPortal(79,	72,	46,	101	); -- farming
	AddNoobiaPortal(80,	69,	40,	101	); -- gold-/smithing
	AddNoobiaPortal(81,	69,	42,	101	); -- tailoring
	AddNoobiaPortal(82,	69,	44,	101	); -- mining
	AddNoobiaPortal(83,	69,	46,	101	); -- gem cutting
	--AddNoobiaPortal(84,	69,	48,	101	); -- fishing
	-- at the craftmasters, back to the castle
	AddNoobiaPortal(85,	163,21,	100	);
	AddNoobiaPortal(85,	162,60,	100	);
	AddNoobiaPortal(85,	162,104,100	);
	AddNoobiaPortal(85,	168,156,100	);
	AddNoobiaPortal(85,	108,163,100	);
	AddNoobiaPortal(85,	114,109,100	);
	AddNoobiaPortal(85,	105,30,	100	);
	AddNoobiaPortal(85,	106,66,	100	);
	AddNoobiaPortal(85,	64,	154,100	);
end

function AddNoobiaPortal( Portal, PortalX, PortalY, PortalZ )

	local PortalPos = position(PortalX,PortalY,PortalZ);
	local itemList = base.common.GetItemsOnField(PortalPos);
	for i,item in pairs(itemList) do
		if item.id == 10 and item.data == Portal then
			return;
		end
	end
	thePortal = world:createItemFromId(10,1,position(PortalX,PortalY,PortalZ),true,333,Portal);
	thePortal.wear = 255;
	world:changeItem(thePortal);
end

function AddMagicalDoor( Portal, PortalX, PortalY, PortalZ )

	local PortalPos = position(PortalX,PortalY,PortalZ);
	local itemList = base.common.GetItemsOnField(PortalPos);
	for i,item in pairs(itemList) do
		if item.id == 10 and item.data == Portal then
			return;
		end
	end
	thePortal = world:createItemFromId(10,1,position(PortalX,PortalY,PortalZ),true,333,Portal);
	thePortal.wear = 255;
	world:changeItem(thePortal);
end



function initTreasureChests()
	AddTreasureChest(8,1,-73,-100,0);
end

--[[
ChestId:
	open chests: 1361 (South), 1362 (West)
	closed chests: 1360 (South), 8 (West)
]]

function AddTreasureChest(ChestId, ChestData, ChestX, ChestY, ChestZ)
	local pos = position(ChestX,ChestY,ChestZ);
	local item = world:getItemOnField(pos);
	if item.id==ChestId then
		item.data = ChestData;
		world:changeItem(item);
	else
		world:createItemFromId(ChestId,1,pos,false,333,ChestData);
	end
end

