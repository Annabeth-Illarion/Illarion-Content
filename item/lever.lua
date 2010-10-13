require("base.common")
require("base.lever")
require("handler.deleteitem")
require("handler.lockdoor")
require("handler.unlockdoor")
require("handler.opendoor")
require("handler.closedoor")
require("handler.createitem")
require("handler.createbridge")
require("handler.deletebridge")
require("handler.settile")
require("handler.createeffect")
require("handler.createsound")
require("handler.sendmessage")
require("handler.movelever")
require("handler.warpplayer");
require("handler.warpgroup");
require("quest.leverRiddleA")       -- controlls the behaviour of the levers
require("quest.leverquest")         -- main class for the whole quest

module("item.lever", package.seeall)

-- UPDATE common SET com_script='item.lever' WHERE com_itemid IN (434, 435, 436, 437, 438, 439);

function init()
    leverList={};

	-------------THIS LEVERS ARE FOR THE VBU, PLEASE DON'T REMOVE---------------
	-- elevator from underground to ground--
	--[[elevator1 = base.lever.Lever(position(332,244,-6),true); --create lever object
	elevator1:bind(1, handler.warpgroup.warpGroup(position(335,244,-6),2, position(329,247,0) ));
	
	---elevator from ground to underground--
	elevator2 = base.lever.Lever(position(332,247,0),true); --create lever object
	elevator2:bind(1, handler.warpgroup.warpGroup(position(329,247,0),2, position(335,244,-6) )); --]]

	elevator1 = base.lever.Lever(position(33,10,0),true); --create lever object
	elevator1:bind(1, handler.warpgroup.warpGroup(position(335,244,-6),2, position(329,247,0) ));

	---elevator from ground to underground--
	elevator2 = base.lever.Lever(position(33,20,0),true); --create lever object
	elevator2:bind(1, handler.warpgroup.warpGroup(position(329,247,0),2, position(335,244,-6) ));

	
	AddToLevers(elevator1);
	AddToLevers(elevator2);
	----------------------------------------------------------------------------


	--[[myLev1 = base.lever.Lever(position(124,637,0),true);
    myLev2 = base.lever.Lever(position(125,637,0),false);
    myLev1:bind(0,handler.movelever.moveLever(myLev2));
    testlever = base.lever.Lever(position(119,637,0),true);
    testlever2 = base.lever.Lever(position(120,637,0),true);
      ]]--

	--------------------------------lever quest fal-fal---------------------------
    -- THIS IS THE DOCUMENTATION FOR FAL-FAL'S LEVER QUEST
    -- IT IS DONE WITH OOP LUA CODING, WHICH MIGHT BE CONFUSING AT A FIRST SIGHT
    -- BUT TURNS OUT TO BE RATHER SIMPLE AND FOLLOWS A CLEAR CONCEPT.
   --[[
    questA=quest.leverquest.LeverQuest();   -- at the first execution, create an object of that class.
                                            -- The LeverQuest class holds all the information that is unique for
                                            -- the LeverQuest, such as the position of the levers, the condition
                                            -- when it is sucessfully finished and the actual state of the
                                            -- pressed levers.
                                            -- We just need it here to get the positions of the levers. No need
                                            -- to use the same instance as inside the levers (where we do need just
                                            -- one instance, otherwise we would compile several different
                                            -- QuestStrings...)
    
    riddleLever1 = base.lever.Lever(questA.levPos[1],true);       -- initialize the lever positions with the usual
    riddleLever2 = base.lever.Lever(questA.levPos[2],true);       -- Lever-initialization. Use the positions as
    riddleLever3 = base.lever.Lever(questA.levPos[3],true);       -- stored in the LeverQuest class
    riddleLever4 = base.lever.Lever(questA.levPos[4],true);
    riddleLever5 = base.lever.Lever(questA.levPos[5],true);
        
    riddleLever1:bind(1,quest.leverRiddleA.LeverRiddleAClass("1",questA));     -- bind the action that is executed when moving
    riddleLever2:bind(1,quest.leverRiddleA.LeverRiddleAClass("2",questA));     -- a lever and set the string that should be
    riddleLever3:bind(1,quest.leverRiddleA.LeverRiddleAClass("3",questA));     -- appended ("1",...). In the corresponding
    riddleLever4:bind(1,quest.leverRiddleA.LeverRiddleAClass("4",questA));     -- execute-function, this is appended to the
    riddleLever5:bind(1,quest.leverRiddleA.LeverRiddleAClass("5",questA));     -- questString.
    
    AddToLevers(riddleLever1);      -- Just add those levers to the list of levers...
    AddToLevers(riddleLever2);    
    AddToLevers(riddleLever3);
    AddToLevers(riddleLever4);
    AddToLevers(riddleLever5);  --]]
    
    --------------------------------lever quest fal-fal---------------------------
    
    --[[for x=117,119 do
        for y=632,636 do
            testlever2:bind(0,deleteItem(position(x,y,0),0));
        end
    end
    for x=117,118 do
        for y=637,639 do
            testlever2:bind(0,deleteItem(position(x,y,0),0));
        end
    end--]]
    --testlever:setMinStrength(200);
    --testlever:bind(2,deleteItem(position(119,635,0),2));
--[[    testlever:bind(1,handler.closedoor.closeDoor(position(119,639,0)));
    testlever:bind(1,handler.lockdoor.lockDoor(position(119,639,0)));
    testlever:bind(1,handler.deleteitem.deleteItem(position(118,639,0),2));
    --testlever:bind(1,deleteBridge(position(117,635,0)));
    --testlever:bind(1,deleteBridge(position(113,636,0))); -- geht
    --testlever:bind(1,deleteBridge(position(118,635,0))); --geht nicht
    --testlever:bind(1,deleteBridge(position(117,640,0))); -- geht
    
    testlever:bind(0,handler.unlockdoor.unlockDoor(position(119,639,0)));
    testlever:bind(0,handler.opendoor.openDoor(position(119,639,0)));
    --testlever:bind(0,handler.createbridge.createBridge(position(117,635,0),0,4));
    --testlever:bind(0,createBridge(position(113,636,0),1,4)); -- geht
    --testlever:bind(0,createBridge(position(118,635,0),2,4)); -- geht
    --testlever:bind(0,createBridge(position(117,640,0),3,4)); -- geht
    testlever:bind(0,handler.createitem.createItem(position(118,639,0),2,333,0,1));
    AddToLevers(testlever);
    AddToLevers(testlever2);
    AddToLevers(myLev1);
    AddToLevers(myLev2);
    ]]--
    

	 
end

function generateKey(posX,posY,posZ)
    return posX*1024*1024+posY*1024+posZ;
end

function UseItem (User,SourceItem,TargetItem,counter,param,ltstate)
    if (initi==nil) then
        User:inform("init");
        myLevers=init();
        initi=1;
    end
	User:inform("create key");
	key=SourceItem.pos.x*1024*1024+SourceItem.pos.y*1024+SourceItem.pos.z;
    if leverList[key]~=nil then
        leverList[key]:switchLever(User);
    end
end

function LookAtItem(User, Item)
    if (initi==nil) then
        myLevers=init();
        initi=1;
    end
    User:inform(questA:getLeverHint(Item.pos));
end

function AddToLevers(myLever)
    if (world:isItemOnField(myLever.pos)==true) then    -- item on field?
		itemID=world:getItemOnField(myLever.pos).id;
        if (itemID>=434 and itemID<=439) then           -- is item a lever?
            key=myLever.pos.x*1024*1024+myLever.pos.y*1024+myLever.pos.z;
            leverList[key]=myLever;                     -- calculate unique key
            return 1;                                   -- put into list and return 1
        else
            return -2;                                  -- item is no lever
        end
    else
        return -1;                                      -- no item there
    end
end