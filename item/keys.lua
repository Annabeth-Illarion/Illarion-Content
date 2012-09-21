require("base.keys")
require("base.common")

module("item.keys", package.seeall)

-- UPDATE common SET com_script='item.keys' WHERE com_itemid IN (2121,2122,2123,2124,2141,2144,2145,2161,2556,2558,3054,3055,3056);

function UseItem(User,SourceItem,TargetItem,counter,param)
    local WALLPOS = position(-470,241,0);
    local DoorItem = base.common.GetFrontItem( User );
    
	if SourceItem:getData("prisonKeyOf") ~= "" then 
	    -- sentence char to forced labour
		SentenceCharacter(User,SourceItem)
	    return
	end	

    if SourceItem.data == 7300 and DoorItem.id == 287 and DoorItem.pos == WALLPOS then

		world:erase(DoorItem,1);
		local charList = world:getPlayersInRangeOf(WALLPOS,15);
		for i,char in pairs(charList) do
			if char.pos.z == WALLPOS.z then
			    base.common.InformNLS(User,"Du h�rst das Ger�usch von sich verschiebendem Gestein.","You hear the sound of moving stone.");
			end
		end
	elseif base.keys.CheckKey(SourceItem,DoorItem) then
        if base.keys.LockDoor(DoorItem) then
            base.common.InformNLS(User,"Du sperrst die T�r ab.","You lock the door.");
        elseif base.keys.UnlockDoor(DoorItem,User) then             -- User eingefuegt
            base.common.InformNLS(User,"Du sperrst die T�r auf.","You unlock the door.");
        end
    else
        base.common.InformNLS(User,"Der Schl�ssel passt hier nicht.","The key doesn't fit here.");
    end
end

function SentenceCharacter(User,SourceItem)
	
	if User:isAdmin() == false then 
	    return -- for now only GMs are supposed to use the keys
	end	
	
	local myTown = SourceItem:getData("prisonKeyOf")
	local townId
	if myTown == "Cadomyr" then
	    townId = 1
	elseif myTown == "Runewick" then
        townId = 2
    elseif myTown == "Galmair" then
        townId = 3
    else
        User:inform("This prison key does not belong to any town.")
        return
    end		
	
	local callback = function(dialog)
	    if not dialog:getSuccess() then
		    User:inform("Abortion. No one was sentenced to anything.")
			return
		else 
            User:inform("debug 0.5")
			local myString = dialog:getInput()
			local myPrisonerId
			local myPrisonerName
	        local workLoad
			local allFound = false
			local a; local b
			if string.find(myString,"(%d+) (%d+)") then
			    User:inform("debug 1")
				a,b,myPrisonerId,workLoad = string.find(myString,"(%d+) (%d+)")
                myPrisonerId = tonumber(myPrisonerId); workLoad = tonumber(workLoad)
				allFound = true
			    --User:inform("debug 1")
			elseif string.find(myString,"(%d+)") then
			    User:inform("debug 2")
				a,b,workLoad = string.find(myString,"(%d+)")
                workLoad = tonumber(workLoad)
				if a-2 > 1 then 
					User:inform("debug 3")
					myPrisonerName=string.sub (myString, 1,a-2)
                    allFound = true
                    --User:inform("debug 2")
				end
			end
            if allFound then
			    User:inform("debug 4")
				local onlineChars = world:getPlayersOnline()
				local thePrisoner
				for i=1,#onlineChars do
					local checkChar = onlineChars[i]
					if myPrisonerId then
					    if checkChar.id == myPrisonerId then
						    thePrisoner = checkChar
				            break
						end	
			        else 
         			    if checkChar.name == myPrisonerName then
		                    thePrisoner = checkChar
				            break
						end
                    end	
                    if not thePrisoner then 
					    User:inform("Character has not been found.")
			        else
				        thePrisoner:setQuestProgress(25,workLoad)
				        thePrisoner:setQuestProgress(26,townId)
						world:gfx(41,thePrisoner.pos); 
					    world:makeSound(1,thePrisoner.pos); 
					    thePrisoner:warp( position(-492,-484,-40) )
					    world:gfx(41,thePrisoner.pos)
				    end
				end
            else
                User:inform("You haven't put in all necessary informations.")
            end
		end	
	end
	local dialog = InputDialog("Insert: [name|id] [workload]",false,255,callback)
	User:requestInputDialog(dialog)
end



function LookAtItem(User,Item)
   --[[ local DataVal=Item.data;
    if (specialnames==nil) then
        specialnames={};
        specialnames[3001]={"Zwergenschl�ssel","dwarven key"};
        specialnames[3002]={"Zwergenschl�ssel","dwarven key"};
        specialnames[4080]={"Garons Schmieden Schl�ssel","Garons goldsmith workshop key"};
        specialnames[4036]={"Gef�ngnissschl�ssel #1","Prisonkey #1"};
        specialnames[4037]={"Gef�ngnissschl�ssel #2","Prisonkey #2"};
        specialnames[4001]={"Stadttor Schl�ssel","Towngate key"};
        specialnames[4031]={"Schl�ssel zur Arena","Key to the Arena"};
        specialnames[4050]={"Schl�ssel zum Seahorse","Key to the Sea Horse"};
        specialnames[4051]={"Schl�ssel zum Seahorse #1","Key to the Sea Horse #1"};
        specialnames[4052]={"Schl�ssel zum Seahorse #2","Key to the Sea Horse #2"};
        specialnames[4053]={"Schl�ssel zum Badezimmer","Key to the Bathroom"};
        specialnames[4054]={"Schl�ssel zum Seahorse #3","Key to the Sea Horse #3"};
		specialnames[666]={"Schl�ssel der Erde","Key of earth"};
		specialnames[667]={"Schl�ssel des Feuers","Key of fire"};
		specialnames[668]={"Schl�ssel des Windes","Key of air"};
		specialnames[669]={"Schl�ssel des Wassers","Key of water"};
		
		specialnames[1]={"Gef�ngnisschl�ssel von Cadomyr","Prison key of Cadomyr"};
		specialnames[2]={"Gef�ngnisschl�ssel von Runewick","Prison key of Runewick"};
		specialnames[3]={"Gef�ngnisschl�ssel von Galmair","Prison key of Galmair"};
    end
    local lang=User:getPlayerLanguage();
    if (specialnames[DataVal]~=nil) then
        if (lang==0) then
            world:itemInform(User,Item,specialnames[DataVal][1]);
        else
            world:itemInform(User,Item,specialnames[DataVal][2]);
        end
    else
        if (lang==0) then
            world:itemInform(User,Item,world:getItemName(Item.id,0));
        else
            world:itemInform(User,Item,world:getItemName(Item.id,1));
        end
    end]]
end

function MoveItemBeforeMove(User, SourceItem, TargetItem)
    if ((TargetItem.data~=3001) and (TargetItem.data~=3002)) then
        return true;
    end

    if (User:getRace() == 1) then
        return true;
    end

    if User:isAdmin() then
        return true;
    end

    if (TargetItem:getType()~=3) then
        base.common.InformNLS(User,
        "Der Schl�ssel rutscht dir seltsamerweise aus der Hand.",
        "The key slips out of your hand for a strange reason.");
        return false;
    end
    return true;
end

function MoveItemAfterMove( User, SourceItem, TargetItem )
    return true;
end
