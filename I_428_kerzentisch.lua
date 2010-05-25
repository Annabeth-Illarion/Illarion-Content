-- Kerzenziehertisch

-- Honigwaben (2529) zu Wachs (431)
-- Arbeitscyclus: 2s
-- Zus�tzliches Werkzeug: Zange mit Tiegel ( 2751 )

-- UPDATE common SET com_script='I_428_kerzentisch.lua' WHERE com_itemid IN (428);

require("base.common")

function UseItem(User,SourceItem,TargetItem,Counter,Param,ltstate)
    base.common.ResetInterruption( User, ltstate );
    if ( ltstate == Action.abort ) then
        if (User:increaseAttrib("sex",0) == 0) then
            gText = "seine";
            eText = "his";
        else
            gText = "ihre";
            eText = "her";
        end
        User:talkLanguage(CCharacter.say, CPlayer.german, "#me unterbricht "..gText.." Arbeit.");
        User:talkLanguage(CCharacter.say, CPlayer.english,"#me interrupts "..eText.." work.");
        return
    end
    
    if not base.common.CheckItem( User, SourceItem ) then
        return
    end
    
    if base.common.Encumbrence(User) then -- Sehr streife R�stung?
        base.common.InformNLS( User,
        "Deine R�stung behindert beim Arbeiten.",
        "Your armor disturbes you while working." );
        return
    end
    
    if not base.common.IsLookingAt( User, SourceItem.pos ) then
        base.common.TurnTo( User, SourceItem.pos );
    end
    
    if not base.common.FitForWork( User ) then
        return
    end
    
    if (User:countItemAt("body",2751)==0) then -- Tiegelzange
        base.common.InformNLS( User,
        "Du ben�tigst eine Tiegelzange um Wachs zu schmelzen.",
        "You need a crucible-pincers to smelt wax." );
        return
    end
    
    local Tool = User:getItemAt(CCharacter.left_tool); -- Item in Linker Hand auslesen
    if ((Tool == nil) or (Tool.id ~= 2751)) then -- Wenn das Item nicht die Tiegelzange ist
        Tool = User:getItemAt(CCharacter.right_tool); -- In anderer Hand nachsehen
    end
    
    if base.common.ToolBreaks( User, Tool, true) then -- Tiegelzange besch�digen
        base.common.InformNLS( User, 
        "Die Zange geht zu Bruch.", 
        "The pincers break." );
        return
    end
    
    if ((User:countItemAt("belt",2529) < 1)) then     -- Hongwaben vorhanden?
        if (ltstate ~= Action.success) then
            base.common.InformNLS( User, 
            "Du ben�tigst Honigwaben um Wachs daraus herzustellen.", 
            "You need honeycomb to make some wax." );
        end
        return
    end
    
    if ( ltstate == Action.none ) then
        User:startAction( 20, 0, 0, 0, 0 );
        User:talkLanguage( CCharacter.say, CPlayer.german, "#me beginnt Wachs zu schmelzen.");
        User:talkLanguage( CCharacter.say, CPlayer.english, "#me starts to smelt wax.");
        return
    end
    
    if base.common.IsInterrupted( User ) then
        local selectMessage = math.random(1,2);
        if ( selectMessage == 1 ) then
            base.common.InformNLS(User,
            "Du wischst dir den Schwei� von der Stirn.",
            "You wipe sweat off your forehead.");
        elseif ( selectMessage == 2 ) then
            base.common.InformNLS(User,
            "Du versch�ttest hei�es Wachs, aber gl�cklicherweise nicht �ber deine Finger. Trotzdem musst du von Neuem beginnen.",
            "You overwhelm some hot wax and need to repeat your work. Lucky that the wax did not hit your fingers.");
        end
        return
    end
    
    if (User:countItemAt("belt",2529) > 0) then
        User:eraseItem( 2529, 1 ); --Honigwabe wird gel�scht
        local notcreated = User:createItem(431, 1, 333 ,0 );
        if (notcreated > 0) then
            world:createItemFromId( 431, 1, User.pos, true, 333 ,0); -- Wachs wird erstellt
            base.common.InformNLS(User,
            "Du kannst nichts mehr halten.",
            "You can't carry any more.");
        else
            User:startAction( 20, 0, 0, 0, 0 );
        end
    end

    base.common.GetHungry( User, 100 );
    
end -- function
