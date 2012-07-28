-- Testskript 1 f�r Weiterentwicklung Druidenmagie
-- 2007 by Falk
-- 2009 by Nitram
-- 2011 by Merung
-- Trinken aus gr�ner Flasche (331)
-- ------------------------------------------------

-- include base.common for additional functions
require("base.common")
require("base.character")

module("druid.item.id_331_green_bottle", package.seeall)

-- UPDATE common SET com_script='druid.item.id_331_green_bottle' WHERE com_itemid = 331;


function UseItem( User, SourceItem, TargetItem, Counter, Param, ltstate )
    
	if not SourceItem:getData("stockData") == "" then -- no stock, something else
	    return
	end	
	
	if base.common.GetFrontItemID(User) == 1008 then -- infront of a cauldron?
	    cauldron = base.common.GetFrontItem(User)
		
		-- is the char an alchemist?
	    if User:getMagicType() ~= 3 then
		  base.common.InformNLS( User,
				"Nur jene, die in die Kunst der Alchemie eingef�hrt worden sind, k�nnen hier ihr Werk vollrichten.",
				"Only those who have been introduced to the art of alchemy are able to work here.")
		  return;
	    end
		
		if ( ltstate == Action.abort ) then
	        base.common.InformNLS(User, "Du brichst deine Arbeit ab.", "You abort your work.")
	       return
		end
		
		if ( ltstate == Action.none ) then
            if (cauldron:getData("essenceBrew") =="true") then
		        actionDuration = 40 -- when we combine a stock and an essence brew, it takes longer
            else
                actionDuration = 20
            end				
			User:startAction( actionDuration, 21, 5, 10, 45)
			return
		end	  

		-- water, stock or potion is in the cauldron; leads to a failure
		if cauldron:getData("cauldronFilledWith") == "water" then
			world:gfx(1)
		    base.common.InformNLS(User, "Du Inhalt des Kessels verpufft, als Du das Wasser hinzu tust.", 
		                                "The substance in the cauldron blows out, as you fill the water in.")
		
		elseif cauldron:getData("stockData") ~= "" then
			druid.base.alchemy.CauldronExplosion(User,cauldron,{4,5})
			
		elseif cauldron:getData("potionEffectId") ~= "" then
			druid.base.alchemy.CauldronExplosion(User,cauldron,{4,36})
		
		elseif cauldron:getData("cauldronFilledWith") == "essenceBrew" then 
			druid.base.alchemy.CombineStockEssence( User, SourceItem, cauldron, Counter, Param, ltstate )
		
		else -- nothing in the cauldron, we just fill in the stock
            cauldron:setData("stockData",SourceItem:getData("stockData"))
		end
		
		world:changeItem(cauldron)
		SourceItem:setData("stockData","")
		SourceItem.id = 164
		SourceItem.quality = 333
	    if math.random(1,20) == 1 then
		    world:increase(SourceItem,-1)	 -- bottle breaks
		    Uase.common.InformNLS(User, "Die Flasche zerbricht.", "The bottle breaks.")
        else	
		    world:changeItem(SourceItem)
        end
	
	else -- no cauldron, drink 
	    if User.attackmode then
		   base.common.InformNLS(User, "Du kannst nichts trinken, w�hrend Du k�mpfst.", "You cannot drink while fighting.", Player.lowPriority)
		else
		    User:talkLanguage(Character.say, Player.german, "#me trinkt eine gr�ne Fl�ssigkeit.");
			User:talkLanguage(Character.say, Player.english, "#me drinks a green liquid.");
			base.common.InformNLS(User, "Du hast nicht das Gef�hl, dass etwas passiert.", "You don't have the feeling that something happens.")
			SourceItem.id = 164
		    SourceItem.quality = 333
	        if math.random(1,20) == 1 then
		       User:eraseItem(SourceItem,1) -- bottle breaks
		       base.common.InformNLS(User, "Die Flasche zerbricht.", "The bottle breaks.", Player.lowPriority)
            else	
		        world:changeItem(SourceItem)
            end
	        User.movepoints=User.movepoints - 20
		end
	end
end
function LookAtItem(User,Item)
         world:itemInform( User, Item, base.common.GetNLS( User,
        "Du siehst ein Flaschenetikett mit der Aufschrift: \"Kr�utersud\"",
        "You look at a sticker telling: \"Herbage Broth\"" ) );
  end   