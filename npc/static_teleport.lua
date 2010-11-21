--Name:        TeleporterNPC
--Race:        invisble
--Town:        Cadomyr, Runewick, Galmair, Hemp Necktie Inn
--Function:    Teleporter
--Position:    Cadomyr: 141, 631, 0 ,Runewick: 789, 825, 0, Galmair: 425, 246, 0, Wilderland (Hemp Necktie Inn): 685, 309, 0
--Facing:      North, doesn't matter, they are pretty much... invisble, you know.
--Last Update: 06/25/2010
--Update by:   Estralis Seborian

module("npc.static_teleport", package.seeall)

function initializeNpc()
		Teleportation=TeleportationFunction(thisNPC); --initialize the teleportation
		Teleportation.initializeNpc(thisNPC);
end

function nextCycle()  -- ~10 times per second
    if not initDone then
        initDone = { };
    end
    if not initDone[thisNPC.id] then
        initializeNpc();
        initDone[thisNPC.id] = true;
    end
	
	Teleportation.nextCycle();

end

function receiveText(texttype, message, originator)
	Teleportation.receiveText(texttype,message,originator);
end

function ShowAnimationFrame( frame, posi )
    if ( frame <= 6) then
        world:gfx(41,position(posi.x+1,posi.y+1,posi.z));
        world:gfx(41,position(posi.x-1,posi.y-1,posi.z));
        world:gfx(41,position(posi.x+1,posi.y-1,posi.z));
        world:gfx(41,position(posi.x-1,posi.y+1,posi.z));
    elseif (frame == 7) then
        world:createItemFromId(360,1,position(posi.x+1,posi.y+1,posi.z),true,333,0);
        world:createItemFromId(360,1,position(posi.x-1,posi.y-1,posi.z),true,333,0);
        world:createItemFromId(360,1,position(posi.x+1,posi.y-1,posi.z),true,333,0);
        world:createItemFromId(360,1,position(posi.x-1,posi.y+1,posi.z),true,333,0);
    elseif (frame == 8) then
        world:gfx(31,posi);
        world:gfx(53,position(posi.x+1,posi.y+2,posi.z));
        world:gfx(53,position(posi.x+2,posi.y-1,posi.z));
        world:gfx(53,position(posi.x-1,posi.y-2,posi.z));
        world:gfx(53,position(posi.x-2,posi.y+1,posi.z));
    elseif (frame == 9) then
        world:gfx(31,posi);
        world:gfx(53,position(posi.x+2,posi.y+2,posi.z));
        world:gfx(53,position(posi.x+2,posi.y-2,posi.z));
        world:gfx(53,position(posi.x-2,posi.y-2,posi.z));
        world:gfx(53,position(posi.x-2,posi.y+2,posi.z));
    elseif (frame == 10) then
        world:gfx(31,posi);
        world:gfx(53,position(posi.x+2,posi.y+1,posi.z));
        world:gfx(53,position(posi.x+1,posi.y-2,posi.z));
        world:gfx(53,position(posi.x-2,posi.y-1,posi.z));
        world:gfx(53,position(posi.x-1,posi.y+2,posi.z));
    elseif (frame == 11) then
        CreateCircle(1,posi,3);
    elseif (frame == 12) then
        CreateCircle(1,posi,2);
        CheckAndRemoveItem( position(posi.x+1,posi.y+1,posi.z), 360 );
        CheckAndRemoveItem( position(posi.x-1,posi.y-1,posi.z), 360 );
        CheckAndRemoveItem( position(posi.x-1,posi.y+1,posi.z), 360 );
        CheckAndRemoveItem( position(posi.x+1,posi.y-1,posi.z), 360 );
    elseif (frame == 13) then
        world:gfx(31,posi);
        CreateCircle(1,posi,1);
    end
end

function CheckAndRemoveItem( posi, itemid )
    if world:isItemOnField(posi) then
        local checkItem = world:getItemOnField( posi );
        if ( checkItem.id == itemid ) then
            world:erase( checkItem, checkItem.number );
        end
    end
end

function CreateCircle(gfxid,CenterPos,Radius)
	local irad = math.ceil(Radius);
	local dim = 2*(irad+1);
	local x;
	local y;
	local map = {} ;

	for x = -irad-1, irad do
		map[x] = {};
		for y = -irad-1, irad do
			map[x][y] = (x+0.5)*(x+0.5)+(y+0.5)*(y+0.5)-irad*irad > 0
		end;
	end;

	for x = -irad, irad do
		for y = -irad, irad do
			if not( map[x][y] and  map[x-1][y] and map[x][y-1] and map[x-1][y-1] )
			and( map[x][y] or   map[x-1][y] or  map[x][y-1] or  map[x-1][y-1] ) then
				ItemPosi=position( CenterPos.x + x, CenterPos.y + y, CenterPos.z );
				world:gfx(gfxid,ItemPosi);
			end;
		end;
	end;
end

function InformNLS( User, textInDe, textInEn )
	if User:getPlayerLanguage()==0 then
		User:inform(textInDe);
	else
		User:inform(textInEn);
	end
end


function TeleportationFunction(thisNPC)

    local self = {
        targetPosition 	   = { },
        townName 		   = { },
        trigger 		   = { },
        filename 		   = { },
        HomePosition 	   = { },
        
        
        TeleportInProgress = { },
	    desiredDestination = { },
	    TeleportCharacter  = { },
	    
	    block  			   = { },
		count 			   = { },
        travelFee		   =  50;        --price for all journeys   
		
    };


	local initializeNpc = function(thisNPC)

	        self.targetPosition[1] = position(127,647,0);
	        self.townName[1] = "Cadomyr";
	        self.trigger[1] = "[Cc]adomyr";

	        self.targetPosition[2] = position(789,825,0);
	        self.townName[2] = "Runewick";
	        self.trigger[2] = "[Rr]unewick";

	        self.targetPosition[3] = position(425,246,0);
	        self.townName[3] = "Galmair";
	        self.trigger[3] = "[Gg]almair";

	        self.targetPosition[4] = position(685,309,0);
	        self.townName[4] = "Wilderland";
	        self.trigger[4] = "[Ww]ilderland";

	    for i, possHomes in pairs(self.targetPosition) do
	        if thisNPC:isInRangeToPosition(possHomes,5) then
	            self.HomePosition[thisNPC.id] = i;
	            thisNPC:forceWarp(position(possHomes.x+1,possHomes.y+1,possHomes.z));
	        end
	    end
	    thisNPC:increaseSkill(1,"common language",100);
	    thisNPC:increaseSkill(1,"human language",100);
	    thisNPC:increaseSkill(1,"dwarf language",100);
	    thisNPC:increaseSkill(1,"elf language",100);
	    thisNPC:increaseSkill(1,"lizard language",100);
	    thisNPC:increaseSkill(1,"orc language",100);
	    thisNPC:increaseSkill(1,"halfling language",100);
	    thisNPC:increaseSkill(1,"fairy language",100);
	    thisNPC:increaseSkill(1,"gnome language",100);
	    thisNPC:increaseSkill(1,"goblin language",100);
	    thisNPC:increaseSkill(1,"ancient language",100);
	end
		
	local receiveText = function (texttype, message, originator)
		if self.TeleportInProgress[thisNPC.id] then
	        return
	    end
	    if (originator.id == thisNPC.id) then
	        return
	    end
	    if not originator:isInRangeToPosition(self.targetPosition[self.HomePosition[thisNPC.id]],4) then
	        return
	    end
	    self.desiredDestination[thisNPC.id] = 0;
	    for i, currentTrigger in pairs(self.trigger) do
	        if (string.find(message,currentTrigger)~=nil) then
	            self.desiredDestination[thisNPC.id] = i;
	        end
	    end
	    if (self.desiredDestination[thisNPC.id]==self.HomePosition[thisNPC.id]) then --already there
	        InformNLS(originator,
	        "#w Ihr seid bereits in "..self.townName[self.desiredDestination[thisNPC.id]]..".",
	        "#w You are already in "..self.townName[self.desiredDestination[thisNPC.id]]..".");
	        return
	    end
	    if ((self.desiredDestination[thisNPC.id]==0) or (self.desiredDestination[thisNPC.id]==nil)) then
	        InformNLS(originator,
	        "#w Sagt den Namen der Gegend, in die ihr reisen m�chtet: Cadomyr, Runewick, Galmair, Wilderland.",
	        "#w Say the name of the realm you want to travel to: Cadomyr, Runewick, Galmair, Wilderland.");
	        --Char stands on teleporter but says no valid trigger.
	        return
	    end
	    if (originator:countItem(3076)<self.travelFee) and (originator:countItem(3077)==0) and (originator:countItem(61)==0) then --Char has not enough money
	        InformNLS(originator,
	        "#w Ihr habt nicht genug Geld f�r diese Reise. Die Reise kostet "..self.travelFee.." Kupferst�cke.",
	        "#w You don't have enough money for this journey. The journey costs "..self.travelFee.." copper coins.");
	        return
	    end

	    if (originator:countItem(3076)>=self.travelFee) then
	        originator:eraseItem(3076,self.travelFee);
	    elseif (originator:countItem(3077)>0) then
	        originator:eraseItem(3077,1);
	        originator:createItem(3076,100-self.travelFee,333,0);
		else
			originator:eraseItem(61,1);
			originator:createItem(3077,99,333,0);
			originator:createItem(3076,100-self.travelFee,333,0);
	    end
	    coins = self.travelFee;

	    InformNLS(originator,
	    "#w Ihr lasst den Teleporter ein Tor nach "..self.townName[self.desiredDestination[thisNPC.id]].." zu einem Preis von "..self.travelFee.." Kupferst�cken �ffnen.",
	    "#w You make the teleporter open a portal to "..self.townName[self.desiredDestination[thisNPC.id]].." at a cost of "..self.travelFee.." copper coins.");
	    self.TeleportInProgress[thisNPC.id] = true;
	    self.TeleportCharacter[thisNPC.id] = originator;
	end


	local nextCycle = function()
	
	    if not self.count[thisNPC.id] then
	        self.count[thisNPC.id] = 0;
	    end
	
	    if not self.TeleportInProgress[thisNPC.id] then
	        return
	    end
	    
	    if (self.count[thisNPC.id] < 11) then
	    
			playerStillOnline=false;
			local players=world:getPlayersInRangeOf(thisNPC.pos, 7);
			if players[1]~=nil then
				for i, player in pairs(players) do
					if (players[i].id==self.TeleportCharacter[thisNPC.id].id) then
						playerStillOnline=true;
					end
				end						
			end
			if not playerStillOnline then --player logged out
			self.count[thisNPC.id] = 11;	
			else

				if (self.TeleportCharacter[thisNPC.id] == nil) then
		            self.count[thisNPC.id] = 11;
		        end
	
		        if ((self.TeleportCharacter[thisNPC.id].id == nil) or (self.TeleportCharacter[thisNPC.id].id == 0)) then
		            self.count[thisNPC.id] = 11;
		        end
	
		        if not self.TeleportCharacter[thisNPC.id]:isInRangeToPosition(self.targetPosition[self.HomePosition[thisNPC.id]],7) then --kritisch, beim Ausloggen des Chars=> Client Crash!!!!!
		            self.count[thisNPC.id] = 11;
		        end
	
		        if (self.TeleportCharacter[thisNPC.id]:increaseAttrib("hitpoints",0) == 0) then
		            self.count[thisNPC.id] = 11;
		        end
		        
		    playerStillOnline=false;
		    end
	    end
	    
	    if ((self.block[thisNPC.id] == nil) or (self.block[thisNPC.id] == 9)) then
	        self.block[thisNPC.id] = 0;
	        ShowAnimationFrame( self.count[thisNPC.id], self.targetPosition[self.HomePosition[thisNPC.id]] );
	    else
	        self.block[thisNPC.id] = self.block[thisNPC.id] + 1;
	        return
	    end
	    
	    if ((self.count[thisNPC.id] > 7) and (self.count[thisNPC.id] <= 10)) then
	        if equapos(self.TeleportCharacter[thisNPC.id].pos,self.targetPosition[self.HomePosition[thisNPC.id]]) then
	            self.TeleportCharacter[thisNPC.id]:warp(self.targetPosition[self.desiredDestination[thisNPC.id]]);
	            world:gfx(41,self.targetPosition[self.desiredDestination[thisNPC.id]]);
	            self.count[thisNPC.id] = 11;
	        elseif ( self.count[thisNPC.id] == 10 ) then
	            self.count[thisNPC.id] = 7;
	        end
	    end

	    self.count[thisNPC.id] = self.count[thisNPC.id] + 1;
	    if (self.count[thisNPC.id] == 14) then
	        self.TeleportInProgress[thisNPC.id] = false;
	        self.desiredDestination[thisNPC.id] = nil;
	        self.TeleportCharacter[thisNPC.id]  = nil;
	        self.count[thisNPC.id] = 0;
	    end
	end

	return {
        nextCycle    = nextCycle,
        receiveText  = receiveText,
		initializeNpc= initializeNpc,
    };
end
