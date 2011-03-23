-- UPDATE common SET com_script='item.id_2937_skeleton' WHERE com_itemid = 2937;
--Quest 112: The Ghost Oak, NPC Madoquar

require("base.common")
module("item.id_2937_skeleton", package.seeall)

function LookAtItem(User,Item)

    queststatus=User:getQuestProgress(112);

	if Item.pos == position (501,156,0) then --The body of Madoquar
	    base.common.InformNLS(User,"Du siehst ein zierliches Skelett, vielleicht von einer Elfin.","You see a slender skeleton, maybe an elfess."); --sending the message
    else
		base.common.InformNLS(User,"Du siehst ein verrottendes Skelett.","You see a rotting skeleton."); --default
    end
end

function UseItem(User, SourceItem, TargetItem, Counter, Param, ltstate)

    queststatus=User:getQuestProgress(112);

	if SourceItem.pos == position (501,156,0) and queststatus == 6 then --The body of Madoquar
	    User:setQuestProgress(112,7); --Bone found!
		base.common.InformNLS(User,"[Quest status] Bei der Untersuchung der Leiche findest du einen Knochen. Madoquar sollte damit zufrieden sein.","[Quest status] While examining the skeleton, you find a bone. Madoquar should be satisfied with it."); --sending the message
    else
		base.common.InformNLS(User,"Dir ist gerade nicht nach Grabsch�dung und Totenentweihung.","You don't feel like grave desecration and body defilement right now."); --default
    end

end