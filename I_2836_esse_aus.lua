-- Esse aus und an ( 2835,2836 )

-- Erz  --> Barren

-- Arbeitscyclus: 1s - 7s
-- Zus�tzliches Werkzeug: Zange mit Tiegel ( 2751 )

-- UPDATE common SET com_script='I_2836_esse_aus.lua' WHERE com_itemid IN (2835,2836);
-- UPDATE common SET com_objectafterrot=2836 WHERE com_itemid = 2835;

require("base.common")

function UseItem(User,SourceItem,TargetItem,Counter,Param,ltstate)
    
    if world:isItemOnField( SourceItem.pos ) then
        SourceItem = world:getItemOnField( SourceItem.pos );
    end
    
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
        if (SourceItem.id == 2835) then
           SourceItem.wear = 255;
           SourceItem.id = 2836;
           world:changeItem(SourceItem);
        end
        return
    end
    
    if not base.common.CheckItem( User, SourceItem, {2835,2836} ) then
        return
    end
    
    if base.common.Encumbrence(User) then -- Sehr streife R�stung?
        base.common.InformNLS( User,
        "Deine R�stung behindert beim schmelzen von Metall.",
        "Your armor disturbes you while melting ores." );
        return
    end
    
    if not base.common.IsLookingAt( User, SourceItem.pos ) then
        base.common.TurnTo( User, SourceItem.pos );
    end
    
    if (User:countItemAt("body",2751)==0) then -- Zange mit Tiegel
        base.common.InformNLS( User,
        "Du ben�tigst eine Zange mit Tiegel um Metal zu schmelzen.",
        "You need pincers with crucible to melt the ores." );
        return
    end
    
    local Tool = User:getItemAt(CCharacter.left_tool); -- Item in Linker Hand auslesen
    if ((Tool == nil) or (Tool.id ~= 2751)) then -- Wenn das Item nicht die Zange ist
        Tool = User:getItemAt(CCharacter.right_tool); -- In anderer Hand nachsehen
    end
    
    if base.common.ToolBreaks( User, Tool ) then -- Zange besch�digen
        base.common.InformNLS( User, 
        "Die Zange geht zu Bruch.", 
        "The pincers break." );
		if (SourceItem.id == 2835) then
           SourceItem.wear = 255;
           SourceItem.id = 2836;
           world:changeItem(SourceItem);
        end
        return
    end

    if not base.common.FitForWork( User ) then
        if (SourceItem.id == 2835) then
           SourceItem.wear = 255;
           SourceItem.id = 2836;
           world:changeItem(SourceItem);
        end
        return
    end
    
    if ((User:countItemAt("belt",22) == 0) and (User:countItemAt("belt",2536) == 0) and
       (User:countItemAt("belt",234) == 0) and (User:countItemAt("belt",2534) == 0)) then
        if (ltstate ~= Action.success) then
            base.common.InformNLS(User,
            "Du ben�tigst Eisen, Kupfer oder Golderz um an der Esse zu arbeiten.",
            "You need iron, copper or gold ores to work with the furnace.");
        end            
        if (SourceItem.id == 2835) then
           SourceItem.wear = 255;
           SourceItem.id = 2836;
           world:changeItem(SourceItem);
        end
        return
    end
    
    if (User:countItemAt("belt",21) == 0) then
        base.common.InformNLS(User,
        "Du ben�tigst Kohle um an der Esse zu arbeiten",
        "You need some coal to work with the furnace");
        if (SourceItem.id == 2835) then
           SourceItem.wear = 255;
           SourceItem.id = 2836;
           world:changeItem(SourceItem);
        end
        return
    end
    
    if ( ltstate == Action.none ) then
        if (SourceItem.id == 2836) then
            User:startAction( GenWorkTime(User), 0, 0, 7, 15);
            User:talkLanguage( CCharacter.say, CPlayer.german, "#me beginnt an der Esse Erze einzuschmelzen.");
            User:talkLanguage( CCharacter.say, CPlayer.english, "#me starts to melt ore at the furnace.");
            SourceItem.wear = 1;
            SourceItem.id = 2835;
            world:changeItem(SourceItem);
        else
            base.common.InformNLS(User,
            "An dieser Esse arbeitet bereits jemand.",
            "Someone is allready working at this furnace.");
        end
        return
    end
    
    if base.common.IsInterrupted( User ) then
        local selectMessage = math.random(1,4);
        if ( selectMessage == 1 ) then
            base.common.InformNLS(User,
            "Du wischst dir den Schwei� von der Stirn.",
            "You wipe sweat off your forehead.");
        elseif ( selectMessage == 2 ) then
            base.common.InformNLS(User,
            "Der fertige Barren klemmt in der Form. Du klopfst sehr stark auf die R�ckseite der Form bis er endlich heraus f�llt.",
            "The iron ingot gets stuck in the mould, it takes you a few tries to force it out.");
        elseif ( selectMessage == 3 ) then
            base.common.InformNLS(User,
            "Die W�rme der schmelze l�sst kurz nach. Du eilst zum Blasebalg um die Glut neu anzufachen.",
            "The furnace's fire appears to be too weak, you take the bellows in your hand and breathe new life into it.");
        else
            base.common.InformNLS(User,
            "Du sch�pfst kurz die Schlacke von der Schmelze ab um die Qualit�t des Metalls zu steigern.",
            "You draw the slag away to increase the quality of the metal.");
        end        
        if (SourceItem.id == 2835) then
           SourceItem.wear = 255;
           SourceItem.id = 2836;
           world:changeItem(SourceItem);
        end
        return
    end   
    
    if (User:countItemAt("belt",22)>0) then
        User:eraseItem(22,1);
        User:eraseItem(21,1);
        notCreated = User:createItem(2535,1,333,0);
        if (notCreated > 0) then
            if (SourceItem.id == 2835) then
                SourceItem.wear = 255;
                SourceItem.id = 2836;
                world:changeItem(SourceItem);
            end
            world:createItemFromId( 2535, 1, User.pos, true, 333 ,0);
            base.common.InformNLS(User,
            "Du kannst nichts mehr halten.",
            "You can't carry any more.");
        else
            SourceItem.wear = 1;
            world:changeItem(SourceItem);
            User:startAction( GenWorkTime(User), 0, 0, 7, 15);
        end
    elseif (User:countItemAt("belt",2536)>0) then
        User:eraseItem(2536,1);
        User:eraseItem(21,1);
        notCreated = User:createItem(2550,1,333,0);
        if (notCreated > 0) then
            if (SourceItem.id == 2835) then
               SourceItem.wear = 255;
               SourceItem.id = 2836;
               world:changeItem(SourceItem);
            end
            world:createItemFromId( 2550, 1, User.pos, true, 333 ,0);
            base.common.InformNLS(User,
            "Du kannst nichts mehr halten.",
            "You can't carry any more.");
        else
            SourceItem.wear = 1;
            world:changeItem(SourceItem);
            User:startAction( GenWorkTime(User), 0, 0, 7, 15);
        end
    elseif (User:countItemAt("belt",234)>0) then
        User:eraseItem(234,1);
        User:eraseItem(21,1);
        notCreated = User:createItem(236,1,333,0);
        if (notCreated > 0) then
            if (SourceItem.id == 2835) then
               SourceItem.wear = 255;
               SourceItem.id = 2836;
               world:changeItem(SourceItem);
            end
            world:createItemFromId( 236, 1, User.pos, true, 333 ,0);
            base.common.InformNLS(User,
            "Du kannst nichts mehr halten.",
            "You can't carry any more.");
        else
            SourceItem.wear = 1;
            world:changeItem(SourceItem);
            User:startAction( GenWorkTime(User), 0, 0, 7, 15);
        end
    elseif (User:countItemAt("belt",2534)>0) and (User:countItemAt("belt",2553)>0) then
        User:eraseItem(2534,1);
        User:eraseItem(21,1);
        if math.random(3) == 1 then
            User:eraseItem(2553,1);
        end;
        notCreated = User:createItem(2571,1,333,0);
        if (notCreated > 0) then
            if (SourceItem.id == 2835) then
                SourceItem.wear = 255;
                SourceItem.id = 2836;
                world:changeItem(SourceItem);
            end
            world:createItemFromId( 2571, 1, User.pos, true, 333 ,0);
            base.common.InformNLS(User,
            "Du kannst nichts mehr halten.",
            "You can't carry any more.");
        else
            SourceItem.wear = 1;
            world:changeItem(SourceItem);
            User:startAction( GenWorkTime(User), 0, 0, 7, 15);
        end
    end
    base.common.GetHungry( User, 200 );
    User:learn( 2, "smithing", 2, 10 );
end -- function

-- Arbeitszeit generieren
function GenWorkTime(User)
    local Attrib = User:increaseAttrib("dexterity",0); -- Geschicklichkeit: 0 - 20
    local Skill  = math.min(100,User:getSkill("smithing")*10);    -- Schmieden: 0 - 100
    
    return math.floor(-0.5 * (Attrib + Skill) + 70);
end

