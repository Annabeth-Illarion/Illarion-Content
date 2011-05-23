require("base.common")

module("triggerfield.salavesh_firetrap2", package.seeall)

--This script shoots a fireball down the hall in the "Errant Crusade" quest map
--Can be used with various triggerfields, players shall "abuse" this to fight the monsters down there

function MoveToField(User)

    if User:get_type() == 0 and User:increaseAttrib("hitpoints",0)>0 then --only player characters trigger the triggerfield
	    
		base.common.TempInformNLS(User,"Ein Feuerball schie�t aus einem kleinen Loch in der Wand die Halle entlang!","A firewall is shot from a small hole in the wall down the hallway!"); --sending a message
        
		ycord=User.pos.y; --The y-coordinate of the triggerfield
		
		for i=733,749 do --replace with proper coordinates
	
		    if world:isCharacterOnField(position(i,ycord,-3)) then --there is someone!
						
		        target=world:getCharacterOnField(position(i,ycord,-3)); --and who is it?	
				
                if (target:increaseAttrib("hitpoints",0)>0) then --ghosts do not get hit
				
				    world:gfx(9,position(i,ycord,-3)); --Fireball!
				    world:makeSound(5,position(i,ycord,-3)); --BOOM!
			        target:increaseAttrib("hitpoints",math.random(-2500,-1000)); --damaging the target
                    return; --got one, bailing out.
					
				else --it's a ghost
				
				world:gfx(10,position(i,ycord,-3)); --Smokecloud!
				
				end
				
			else --there is no one
			
				world:gfx(10,position(i,ycord,-3)); --Smokecloud!
				
			end
			
		end --next tile
		
	    --No one got hit! Fireball hits the other wall. VERY unlikely.
	    world:gfx(9,position(749,ycord,-3)); --Fireball!
	    wordl:makeSound(5,position(749,ycord,-3)); --BOOM!
	
    end
end

