-- I_52.lua voller Wassereimer

-- UPDATE common SET com_script='item.id_52_filledbucket' WHERE com_itemid IN (52);

require("base.common")
require("base.keys")

module("item.id_52_filledbucket", package.seeall)

function UseItem( User, SourceItem, TargetItem, Counter, Param )

if ( TargetItem.id == 0 ) then --if the bucket is used without a target, it is used with the item infront of the character or, if there is nothing, it is used with the character himself

    theFrontItem=base.common.GetFrontItem(User);
	
    if theFrontItem ~= nil then
	    UseItem( User, SourceItem, theFrontItem, Counter, Param);
		return;
	else
		UseItemWithCharacter(User, SourceItem, User, Counter, Param);
		return;
	end
end
	
    -- Wasserflasche auff�llen
if( TargetItem.id == 2498 ) then
    if(TargetItem.number > 1) then
		base.common.InformNLS(User, "#w Du kannst nur eine Flasche bef�llen!", "#w You can only fill one bottle.");
		return;
	end
        world:makeSound( 10, User.pos )
        world:swap(TargetItem,2496,933);
    else
        if TargetItem.id ~= 0 then
			if ((TargetItem.id==12 or TargetItem.id == 359) and (User.pos.z==100 or User.pos.z==101)) then --Prevents extinguishing campfires on n00bia(needed for the cook-npc)
				base.common.InformNLS(User,"#w Du solltest das Feuer besser nicht ausmachen, du k�nntest es noch gebrauchen.","#w You shouldn't extinguish the fire, you maybe could need it.");
				return;
			else	
			world:makeSound( 9, User.pos );
	            -- Lagerfeuer ausmachen
	            if (TargetItem.id == 12 or TargetItem.id == 359) then
	                world:erase(TargetItem,1);
	                -- Esse ausmachen
	            elseif ( TargetItem.id == 2835 ) then
	                world:swap(TargetItem,2836,333);
	                -- test for seedlings
	            else
	                --User:inform( "calling sprouts" );
	                MakeSprout( User, SourceItem, TargetItem )
				end
			end
		else
			UseItemWithCharacter(User, SourceItem, User, Counter, Param);
		end
    end
      SourceItem.id = 51;
      SourceItem.data = 0;
      world:changeItem(SourceItem);
end  -- function

function UseItemWithCharacter (Character, SourceItem, TargetCharacter, Counter, Param )

    world:makeSound( 9, Character.pos );
    SourceItem.id = 51;
    SourceItem.data = 0;
    world:changeItem(SourceItem);
	base.common.InformNLS(TargetCharacter, "#w Du f�hlst dich gleich viel sauberer.", "#w You feel much cleaner.");

end

function MakeSprout( User, SourceItem, TargetItem )
    if seedList == nil then
        seedList = {  };
        seedList[ 15 ] = {139,4};              -- Apple tree seedling
        seedList[ 302 ] = {132,4};             -- Cherry tree seedling
        seedList[ 149 ] = {150,2};             -- Fir tree seedling
		--seedList[ ??? ] = {588,???};           -- cachdern seedling
		--seedList[ ??? ] = {589,???};           -- eldan oak seedling
		--seedList[ ??? ] = {590,???};           -- scandrel seedling
		--seedList[ ??? ] = {591,???};           -- naldor tree seedling

    end
    local seed = seedList[ TargetItem.id ];
    if( seed == nil ) then
        return
    end
    --User:inform( "found sprouts" );
    local Field = world:getField( TargetItem.pos )
    --User:inform( "cecking ground "..Field:tile() );
    local boden = base.common.GetGroundType( Field:tile() );

    --User:inform( "standing on "..boden );
    -- only on fields
    if( boden == seed[2] ) then
        --User:inform( "on field" );

        if BlockCheck(TargetItem.pos) then

            if CheckSucceed(User) then
                --User:inform( "deleting fruit "..TargetItem.id );
                world:swap(TargetItem,seed[1],333)
			else
				base.common.InformNLS(User, "#w Der Setzling braucht noch mehr Wasser um anzuwachsen.", "#w The seedling needs more water to grow.");
            end

        else
        base.common.InformNLS( User, 
            "#w Der Boden ist an dieser Stelle zu ausgelaugt, als das Bäume wachsen könnten. Der Setzling geht ein.", 
            "#w The soil at this location is not fertile enough to let a tree grow. The seedling whithers." ); 
        end    
        User:learn( 2, "peasantry", 1, 100 )
    end
end

function CheckSucceed(User)
    Con=User:increaseAttrib("constitution",0);
    Pea=User:getSkill("peasantry");
    TryValue=20+60*(Pea/100)+20*(Con/20);
    if (math.random(0,100)<TryValue) then
        return true
    else
        return false
    end
end

function BlockCheck(Posi)
    local testLoc;
    local TestItem;
    local block = 0;
    if Directions == nil then
        Directions = {
        { 1, 0, 3 }, { 1, 1, 2 }, { 0, 1, 3 }, { -1, 1, 2 },
        { -1, 0, 3 }, { -1, -1, 2 }, { 0, -1, 3 }, { 1, -1, 2 }
        };
	end
    if allowed == nil then
	    allowed={};
		allowed[273]=true;
		allowed[274]=true;
		allowed[338]=true;
		allowed[1782]=true;
		allowed[1783]=true;
		allowed[1790]=true;
    end
    for i, dir in pairs(Directions) do
        --User:inform( "checking field "..i );
        testLoc = position( Posi.x + dir[ 1 ], Posi.y + dir[ 2 ], Posi.z );
        if world:isItemOnField( testLoc ) then
		    theItem=world:getItemOnField(testLoc);
		    if allowed[theItem.id] == nil then
            --User:inform( "block found at "..i );
            block = block + dir[ 3 ];
			end
        end
    end
	local Field = world:getField(Posi);
	if(Field:countItems() > 1) then
		return false
	end
    if (block<2) then
        return true
    else
        return false
    end
end

