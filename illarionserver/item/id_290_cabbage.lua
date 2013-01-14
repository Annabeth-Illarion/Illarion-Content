-- Kohlbewegungsscript

-- UPDATE common SET com_script='item.id_290_cabbage' WHERE com_itemid IN (290);

module("item.id_290_cabbage", package.seeall)

function MoveItemBeforeMove(User, SourceItem, TargetItem)
    if (SourceItem:getData("amount") ~= "") then
        base.common.HighInformNLS(User,
		"Du w�rdest den Kohl besch�digen, ziehst du ihn mit blo�en H�nden heraus. Du ben�tigst eine Sichel, um ihn abzuschneiden.",
		"You would damage the cabbage, if you pulled it out with bare hands. You need a sickle to cut it.");
        return false
    end
    return true
end    
