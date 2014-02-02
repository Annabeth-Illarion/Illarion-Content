--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>. 
]]
require("base.common")
require("base.factions")

module("item.id_3110_scroll", package.seeall)

-- UPDATE common SET com_script = 'item.id_3110_scroll' WHERE com_itemid = 3110;

function LookAtItem(User,Item)

    local spell = Item.quality;
    if (spell == 101) then -- teleport
        
        User:inform( teleportLookAt( User, Item ) );
        
    elseif (spell == 102) then -- self-teleport
        
        base.common.InformNLS( User, "Auf der Pergamentrolle ist lediglich das Symbol eines Vogels abgebildet.", "Just the symbol of a bird has been painted on this scroll of parchment." );
    elseif (tonumber(Item:getData("scrollData")) == 600) then -- Summon Creature
	base.common.InformNLS( User, "Die Pergamentrolle ist mit einem blutroten Siegel verschlossen.", "The scroll is sealed with a bloody red seal." );
    elseif (tonumber(Item:getData("scrollData")) == 666 ) then -- quest scroll
    	base.common.InformNLS( User, "Auf der Pergamentrolle ist das Symbol eines Drachen abgebildet.", "The symbol of a dragon has been painted on this scroll of parchment." );
	end
end

function UseItem(User, SourceItem, ltstate)

	-- teleport character on use
		local destCoordX = tonumber(SourceItem:getData("destinationCoordsX"))
		local destCoordY = tonumber(SourceItem:getData("destinationCoordsY"))
		local destCoordZ = tonumber(SourceItem:getData("destinationCoordsZ"))
		if destCoordX and destCoordY and destCoordZ then
			User:talk(Character.say, "#me �ffnet eine Schriftrolle und verschwindet in einem hellen Leuchten.","#me opens a scroll and disappears in a bright light.")
			world:gfx(31,User.pos)
			world:gfx(41,User.pos)
			User:warp(position(destCoordX,destCoordY,destCoordZ))
			world:gfx(41,User.pos)
			world:erase(SourceItem,1)
			return
		end
	-- end 

	local spell = SourceItem.quality;
    if (tonumber(SourceItem:getData("scrollData")) == 600) then -- summon creature
        summonCreature( User, SourceItem );
    elseif (spell == 101) then -- teleport
        teleportUseItem(User, SourceItem);
    elseif (spell == 102) then -- self-teleport
        selfTeleportUseItem( User, SourceItem );
    elseif (tonumber(SourceItem:getData("scrollData")) == 666) then 
		world:gfx(51,User.pos);
		world:gfx(31,User.pos);
		User:warp(position(48,-327,-23)); --WTF is there!? Start to use comments, for fuck's sake.
		world:gfx(51,User.pos);
		world:gfx(31,User.pos);
		world:erase(SourceItem,1);
    end;
end

function teleportTarget( Item )
    local x, y, z, dat;
    dat = tonumber(Item:getData("scrollData"));
    z = dat - math.floor(dat/1024)*1024 - 500;    
    dat = math.floor(dat / 1024);
    y = dat - math.floor(dat/1024)*1024 - 500;
    dat = math.floor(dat / 1024);
    x = dat - math.floor(dat/1024)*1024 - 500;
    return position(x, y, z);
end

function teleportLookAt( User, Item )
    
    dat = tonumber(Item:getData("scrollData"));
    dz = dat - math.floor(dat/1024)*1024 - 500 - User.pos.z;
    
    if ( math.abs(dz) > 15) then
        return base.common.GetNLS( User, "Die Pergamentrolle gl�ht bl�ulich.", "The scroll of parchment glows blueish." );
    end;
    
    dat = math.floor(dat / 1024);
    dy = User.pos.y - dat + math.floor(dat/1024)*1024 + 500;
    dat = math.floor(dat / 1024);
    dx = dat - math.floor(dat/1024)*1024 - 500 - User.pos.x;

    if ( dz == 0 ) then
        heightTxt = base.common.GetNLS( User, "schwarze", "black" );
    elseif ( dz < 0 ) then
        heightTxt = base.common.GetNLS( User, "rote", "red" );
    else
        heightTxt = base.common.GetNLS( User, "blaue", "blue" );
    end;

    if ( dx == 0 ) and ( dy == 0 ) then
        return base.common.GetNLS( User, "Auf der Pergamentrolle ist lediglich ein "..heightTxt.."s Kreuz zu sehen.", "The scroll of parchment just displays a "..heightTxt.." cross." );
    end;

    if ( dx == 0 ) then
        if ( dy > 0 ) then
            phi = math.pi/2;
        else
            phi = math.pi + math.pi/2;
        end;
    elseif ( dx > 0 ) then
        if ( dy >= 0 ) then
            phi = math.atan( dy/dx );
        else
            phi = math.atan( dy/dx ) + 2*math.pi;
        end;
    else
        phi = math.atan( dy/dx ) + math.pi;
    end;
    
    if ( phi < math.pi/8 ) then
        dirTxt = base.common.GetNLS( User, "Osten", "east" );
    elseif ( phi < 3*math.pi/8 ) then
        dirTxt = base.common.GetNLS( User, "Nordosten", "northeast" );
    elseif ( phi < 5*math.pi/8 ) then
        dirTxt = base.common.GetNLS( User, "Norden", "north" );
    elseif ( phi < 7*math.pi/8 ) then
        dirTxt = base.common.GetNLS( User, "Nordwesten", "northwest" );
    elseif ( phi < 9*math.pi/8 ) then
        dirTxt = base.common.GetNLS( User, "Westen", "west" );
    elseif ( phi < 11*math.pi/8 ) then
        dirTxt = base.common.GetNLS( User, "S�dwesten", "southwest" );
    elseif ( phi < 13*math.pi/8 ) then
        dirTxt = base.common.GetNLS( User, "S�den", "south" );
    elseif ( phi < 15*math.pi/8 ) then
        dirTxt = base.common.GetNLS( User, "S�dosten", "southeast" );
    else
        dirTxt = base.common.GetNLS( User, "Osten", "east" );
    end;
    
    return base.common.GetNLS( User, "Auf der Pergamentrolle ist lediglich ein "..heightTxt.."r Pfeil zu sehen, welcher gen "..dirTxt.." weist.", "The scroll of parchment just displays a "..heightTxt.." arrow, which points to the "..dirTxt.."." );
        
end

function teleportUseItem(User, SourceItem)
            if ( ltstate == nil or ltstate == Action.success ) then
                
                    destination = teleportTarget( SourceItem );
                    User:warp(destination);
                    world:gfx(41,destination);
                    world:erase( SourceItem, 1 );

            elseif ( ltstate == Action.none ) then
                
                User:startAction( 100, 41, 10, 0, 0);
                
                destination = teleportTarget( SourceItem );
                world:gfx(41,destination);
                    
                User:talk(Character.say, "#me beginnt konzentriert auf eine Pergamentrolle zu starren.", "#me begins to stare on a scroll of parchment intensely.")
            
            elseif ( ltstate == Action.abort ) then
                
                User:talk(Character.say, "#me wird abgelenkt.", "#me gets distracted.")
                
            end
end

function selfTeleportUseItem( Caster, Item )

    local faceto = Caster:getFaceTo();

    local dx, dy;
    if (faceto == 0) then
        dy = -1; dx = 0;
    elseif (faceto == 2) then
        dy = 0; dx = 1;
    elseif (faceto == 4) then
        dy = 1; dx = 0;
    elseif (faceto == 6) then
        dy = 0; dx = -1;
    end;
    
    local dist = 0;
    local TelePos = Caster.pos;

    repeat
        TelePos.x = TelePos.x + dx;
        TelePos.y = TelePos.y + dy;
        dist = dist + 1;
    until world:isItemOnField( TelePos ) or world:isCharacterOnField( TelePos ) or (dist >= 8);
    TelePos.x = TelePos.x - dx;
    TelePos.y = TelePos.y - dy;
    
    Caster:talk(Character.say, "#me starrt konzentriert auf eine Pergamentrolle.", "#me stares on a scroll of parchment intensely.")
                   
    world:gfx(41,Caster.pos);
    world:gfx(41,TelePos);
    world:makeSound(13,Caster.pos);
    world:makeSound(13,TelePos);
    
    local oldpos = Caster.pos;
    Caster:warp(TelePos);
    
    world:erase( Item, 1 );
    
    if not (Caster.pos == TelePos) then
        world:sendMonitoringMessage("Possible bug abuse by "..Caster.name..". Player tried to teleport from pos("..oldpos.x..","..oldpos.y..","..oldpos.z..") to pos("..TelePos.x..","..TelePos.y..","..TelePos.z..") but got placed at pos("..Caster.pos.x..","..Caster.pos.y..","..Caster.pos.z..")");
    end                        
end

function summonCreature( Caster, Item )

    faceto = Caster:getFaceTo();
    
    if (faceto==0) then    	--north
	CreaturePos  = position(Caster.pos.x,Caster.pos.y-1,Caster.pos.z);
    elseif (faceto==2) then    	--east
	CreaturePos  = position(Caster.pos.x+1,Caster.pos.y,Caster.pos.z);
    elseif (faceto==4) then 	--south
        CreaturePos  = position(Caster.pos.x,Caster.pos.y+1,Caster.pos.z);
    elseif (faceto== 6) then 	--west
	CreaturePos  = position(Caster.pos.x-1,Caster.pos.y,Caster.pos.z);
    else

    end

    if world:isCharacterOnField( CreaturePos ) then
	CreaturePos  = position(CreaturePos.x-1,CreaturePos.y+1,CreaturePos.z);
    end
    
    if (Item.quality==101) then
        world:createMonster(101,CreaturePos,10);
    elseif (Item.quality==111) then
        world:createMonster(111,CreaturePos,10);
    elseif (Item.quality==171) then
        world:createMonster(171,CreaturePos,10);
    elseif (Item.quality==211) then
        world:createMonster(211,CreaturePos,10);
    elseif (Item.quality==231) then
        world:createMonster(231,CreaturePos,10);
    end

    world:gfx(8,CreaturePos);
    world:makeSound(1,CreaturePos);

    world:erase( Item, 1 );

end
