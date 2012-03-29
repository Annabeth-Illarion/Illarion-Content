-- Sense ( 271 )

-- reifes Getreide  --> Getreideb�ndel

-- UPDATE common SET com_script='item.id_271_scythe' WHERE com_itemid IN (271);

require("base.common")
require("item.general.metal")
require("content.gathering")

module("item.id_271_scythe", package.seeall, package.seeall(item.general.metal))

function UseItem( User, SourceItem, TargetItem, Counter, Param, ltstate )   
	content.gathering.InitGathering();
	local farming = content.gathering.farming;
    
    base.common.ResetInterruption(User, ltstate);
	if (ltstate == Action.abort) then -- Arbeit unterbrochen
        if (User:increaseAttrib("sex", 0) == 0) then
            gText = "seine";
            eText = "his";
        else
            gText = "ihre";
            eText = "her";
        end
        User:talkLanguage(Character.say, Player.german, "#me unterbricht "..gText.." Arbeit.");
        User:talkLanguage(Character.say, Player.english,"#me interrupts "..eText.." work.");
        return
    end
    
    if not base.common.CheckItem( User, SourceItem ) then -- Sicherheitscheck
        return
    end
    
    local TargetItem = base.common.GetFrontItem( User ); -- look for full grown grain
    if (TargetItem == nil or TargetItem.id ~= 248) then
        return
    end
    
    if base.common.Encumbrence(User) then -- Durch Steife R�stung behindert
        base.common.InformNLS( User,
        "Deine R�stung behindert dabei die Feldarbeit zu verrichten.",
        "Your armour disturbes while farming." );
        return
    end
    
    if ( SourceItem:getType() ~= 4 ) then -- Sense in der Hand
        base.common.InformNLS( User, 
        "Du musst die Sense in die H�nde nehmen.", 
        "Take the scythe into your hands." )
        return
    end
    
    if not base.common.FitForWork( User ) then -- Nicht ersch�pft
        return
    end
    
    if not base.common.IsLookingAt( User, TargetItem.pos ) then -- Blickrichtung pr�fen
        base.common.TurnTo( User, TargetItem.pos ); -- notfalls drehen
    end
    
    if (ltstate == Action.none) then -- user does nothing
        farming.SavedWorkTime[User.id] = farming:GenWorkTime(User,nil,true);
		User:startAction(farming.SavedWorkTime[User.id], 0, 0, 0, 0);
        if farming.SavedWorkTime[User.id] > 10 then
            base.common.TempInformNLS(User, -- TODO
                "Du bearbeitest das Korn mit der Sense.",
                "You work on the grain with the scythe.");
        end
        return
    end
    
	if not farming:FindRandomItem(User) then
		return
	end
    
    if (TargetItem.data > 1) then
        TargetItem.data = TargetItem.data - 1;
        world:changeItem(TargetItem);
    else
        world:erase( TargetItem, 1 );     -- Getreideitem l�schen
    end
    local notCreated = User:createItem( 249, 1, 333 ,0); -- Getreideb�ndel erstellen
    if ( notCreated > 0 ) then -- Zu viele Items erstellt --> Char �berladen
        world:createItemFromId( 249, notCreated, User.pos, true, 333 ,0);
        base.common.InformNLS(User,
        "Du kannst nichts mehr halten.",
        "You can't carry any more.");
    end
    User:learn( farming.LeadSkill, farming.LeadSkillGroup, farming.SavedWorkTime[User.id], 100, User:increaseAttrib(farming.LeadAttribute,0) );
    
    if base.common.ToolBreaks( User, SourceItem, true ) then -- Sense besch�digen
        base.common.InformNLS( User, 
        "Die rostige Sense zerbricht.", 
        "The rusty scythe breaks." );
        return
    end
end
