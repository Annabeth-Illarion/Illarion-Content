-- gemdust
-- alchemy system: using gemdust infront of a cauldron - creating essence brew or enchant a stock

require("base.common")
require("alchemy.base.alchemy")

module("alchemy.base.gemdust", package.seeall)

function UseItem(User, SourceItem, ltstate)

    -- infront of a cauldron?
    local cauldron = alchemy.base.alchemy.GetCauldronInfront(User)
    if cauldron then
	  
        -- is the char an alchemist?
		local anAlchemist = alchemy.base.alchemy.CheckIfAlchemist(User)
		if not anAlchemist then
			User:inform("Nur jene, die in die Kunst der Alchemie eingef�hrt worden sind, k�nnen hier ihr Werk vollrichten.","Only those who have been introduced to the art of alchemy are able to work here.")
			return
		end

		if ( User:increaseAttrib("perception",0) + User:increaseAttrib("essence",0) + User:increaseAttrib("intelligence",0) ) < 30 then 
		User:inform("Verstand, ein gutes Auge und ein Gesp�r f�r die feinstofflichen Dinge - dir fehlt es daran, als dass du hier arbeiten k�nntest.",
		            "Mind, good eyes and a feeling for the world of fine matter - with your lack of those, you are unable to work here."
	                )
		    return
        end
		
        if ( ltstate == Action.abort ) then
		    base.common.InformNLS(User, "Du brichst deine Arbeit ab.", "You abort your work.")
			return
		end
	
		if (ltstate == Action.none) then
		   User:startAction(50,21,5,15,25);
		   return
		end
		
		BrewingGemDust(User,SourceItem.id,cauldron)
		world:erase(SourceItem,1)	
	else
	    -- not infront of cauldron, maybe do something else with herbs
        return
	end
end

function GemDustInStock(User,cauldron,gemDustId)
    -- stock + gemdust = potion
	
	local potionEffectId = ""
	local addCon
	if (gemDustId == 447) or (gemDustId == 450) then  -- secondary and primary attribute potions
		local mySubstances = alchemy.base.alchemy.wirkstoff
		for i=1,8 do 
		    addCon = (cauldron:getData(mySubstances[i].."Concentration")) -- stock conncentration determines the effect
			if addCon == "" then
			    addCon = 5 
			end	
			potionEffectId = potionEffectId..addCon
	    end
	else 
		potionEffectId = 0 -- every other potion kind has NO effect
    end
    local reGem, reGemdust, reCauldron, reBottle = alchemy.base.alchemy.GemDustBottleCauldron(nil, gemDustId, nil, nil)
	cauldron.id = reCauldron
	alchemy.base.alchemy.SetQuality(User, cauldron)
	cauldron:setData("potionEffectId",""..potionEffectId)
	cauldron:setData("filledWith","potion")
	world:changeItem(cauldron)
	world:makeSound(13,cauldron.pos)
	world:gfx(52,cauldron.pos)
end

function GemDustInWater(User,cauldron,gemDustId)
    -- water + gemdust = essence brew
	
	cauldron:setData("filledWith","essenceBrew")
	local reGem, reGemdust, reCauldron, reBottle = alchemy.base.alchemy.GemDustBottleCauldron(nil, gemDustId, nil, nil)
	cauldron.id = reCauldron
	world:changeItem(cauldron)
	world:makeSound(13,cauldron.pos)
	world:gfx(52,cauldron.pos)

end

function BrewingGemDust(User,gemDustId,cauldron)
    
	if cauldron:getData("filledWith")=="potion" then -- potion in cauldron, failure
	    alchemy.base.alchemy.CauldronDestruction(User,cauldron,2)
	
    elseif cauldron:getData("filledWith")=="essenceBrew" then -- essence brew in cauldron, failure
	    alchemy.base.alchemy.CauldronDestruction(User,cauldron,2)
		
	elseif cauldron:getData("filledWith") == "stock" then -- create a potion
	    GemDustInStock(User,cauldron,gemDustId)
		User:learn(Character.alchemy, 50/2, 100)

    elseif cauldron:getData("filledWith")=="water" then -- create an essence brew
		GemDustInWater(User,cauldron,gemDustId)
		User:learn(Character.alchemy, 50/2, 100)
	
	else -- nothing in the cauldron
	    base.common.InformNLS(User, "Der Edelsteinstaub verfl�chtigt sich, als du ihn in den leeren Kessel sch�ttest.", 
		                            "The gem dust dissipates, as you fill it into the empty cauldron.")
	end	
end