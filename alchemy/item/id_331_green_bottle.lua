-- Testskript 1 f�r Weiterentwicklung Druidenmagie
-- 2007 by Falk
-- 2009 by Nitram
-- 2011 by Merung
-- Trinken aus gr�ner Flasche (331)
-- ------------------------------------------------

-- include base.common for additional functions
require("base.common")
require("base.character")
require("alchemy.item.id_165_blue_bottle")
require("alchemy.base.alchemy")

module("alchemy.item.id_331_green_bottle", package.seeall)

-- UPDATE common SET com_script='alchemy.item.id_331_green_bottle' WHERE com_itemid = 331;


function UseItem(User, SourceItem, ltstate)
    
	if SourceItem:getData("filledWith") ~= "stock" then -- no stock, something else
	    return
	
	else
        -- infront of a cauldron?
		local cauldron = alchemy.base.alchemy.GetCauldronInfront(User)
        if cauldron then
	        
			-- is the char an alchemist?
	        local anAlchemist = alchemy.base.alchemy.CheckIfAlchemist(User)
			User:inform("Nur jene, die in die Kunst der Alchemie eingef�hrt worden sind, k�nnen hier ihr Werk vollrichten.","Only those who have been introduced to the art of alchemy are able to work here.")
			if not anAlchemist then
				return
			end
		
			if ( ltstate == Action.abort ) then
				base.common.InformNLS(User, "Du brichst deine Arbeit ab.", "You abort your work.")
			   return
			end
		
			if ( ltstate == Action.none ) then
				if (SourceItem:getData("filledWith") =="stock") and (cauldron:getData("filledWith") == "essenceBrew") then
					actionDuration = 80 -- when we combine a stock and an essence brew, it takes longer
				else
					actionDuration = 20
				end				
				User:startAction( actionDuration, 21, 5, 10, 45)
				return
			end	  

			FillStockIn(User,SourceItem,cauldron)
			alchemy.base.alchemy.EmptyBottle(User,SourceItem)
		else
		    DrinkIt(User, SourceItem)
			alchemy.base.alchemy.EmptyBottle(User,SourceItem)
		end
	end
end

function DrinkIt(User, SourceItem)
    if User.attackmode then
		base.common.InformNLS(User, "Du kannst nichts trinken, w�hrend du k�mpfst.", "You cannot drink while fighting.", Player.lowPriority)
	else
		User:talk(Character.say, "#me trinkt eine gr�ne Fl�ssigkeit.", "#me drinks a green liquid.")
		base.common.InformNLS(User, "Du hast nicht das Gef�hl, dass etwas passiert.", "You don't have the feeling that something happens.")
		User.movepoints=User.movepoints - 20
	end
end

function FillStockIn(User,SourceItem, cauldron)
    -- water, stock or potion is in the cauldron; leads to a failure
	if cauldron:getData("filledWith") == "water" then
		alchemy.base.alchemy.CauldronDestruction(User,cauldron,1)

	elseif cauldron:getData("filledWith") == "stock" then
		alchemy.base.alchemy.CauldronDestruction(User,cauldron,2)
	
	elseif cauldron:getData("filledWith") == "potion" then
		if cauldron.id == 1013 then -- support potion
			 alchemy.item.id_165_blue_bottle.SupportStock(User,cauldron,SourceItem)
		else
			alchemy.base.alchemy.CauldronExplosion(User,cauldron,2)
		end
	
	elseif cauldron:getData("filledWith") == "essenceBrew" then 
		local check = alchemy.base.alchemy.CombineStockEssence( User, SourceItem, cauldron)
        if check == false then
		    return
		end	
	elseif cauldron.id == 1008 then -- nothing in the cauldron, we just fill in the stock
		alchemy.base.alchemy.FillFromTo(SourceItem,cauldron)
		world:changeItem(cauldron)
	end
end

function LookAtItem(User,Item)
    world:itemInform(User, Item, base.lookat.GenerateLookAt(User, Item, 0))
end 