-- ALCHEMY
-- reworked version
-- bases upon Falk's original script
-- by Merung

require("base.common")
require("alchemy.base.alchemy")
require("alchemy.base.herbs")
require("alchemy.base.gemdust")

module("alchemy.base.brewing", package.seeall)

function UseItem(User, SourceItem, ltstate)
    -- no map items
	if SourceItem.wear == 255 then
	    return
	end	
	local isPlant, ignoreIt = alchemy.base.alchemy.getPlantSubstance(SourceItem.id, User)
	local isGemDust = alchemy.base.alchemy.CheckIfGemDust(SourceItem.id, User)
	if isPlant  or SourceItem.id == 157 then
	    alchemy.base.herbs.UseItem(User, SourceItem, ltstate)
	elseif isGemDust then
	    alchemy.base.gemdust.UseItem(User, SourceItem, ltstate)
	end
end	