-- Kohlbewegungsscript

-- UPDATE common SET com_script='I_290_kohl.lua' WHERE com_itemid IN (290); 

function MoveItemBeforeMove(User, SourceItem, TargetItem)
    if (SourceItem.data > 0) then
        if (User:getPlayerLanguage() == 0) then
            User:inform("Du w�rdest den Kohl besch�digen, ziehst du ihn einfach so heraus. Du ben�tigst eine Sichel um ihn abzuschneiden.");
        else
            User:inform("You would damage the cabbage, if you pull it out. You need a sickle to cut it");
        end
        return false
    else
        return true
    end
end    