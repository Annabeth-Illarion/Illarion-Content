-- Spannrahmen

-- Rohleder und Felle zu Leder

-- Arbeitscyclus: 2s - 5s
-- Zus�tzliches Werkzeug: Rasiermesser ( 2746 )

-- UPDATE common SET com_script='item.id_2052_stretcher' WHERE com_itemid = 2052;

require("base.common")

module("item.id_2052_stretcher", package.seeall)

function UseItem(User,SourceItem,TargetItem,Counter,Param,ltstate)
    base.common.ResetInterruption( User, ltstate );
    if (Leatherlist==nil) then
        Leatherlist= { };
        Leatherlist[  69]=2547; --Rohleder in Leder
        Leatherlist[2586]=2547; --Fell in Leder
    end

    if base.common.Encumbrence(User) then -- Sehr streife R�stung?
        base.common.InformNLS( User,
        "Deine R�stung behindert am Leder gerben.",
        "Your armor disturbes while tanning leather." );
        return
    end

    if not base.common.CheckItem( User, SourceItem ) then -- Sicherheitscheck
        return
    end

    if not base.common.IsLookingAt( User, SourceItem.pos ) then -- Blickrichtung
        base.common.TurnTo( User, SourceItem.pos ); -- Drehen wenn n�tig
    end

    if (User:countItemAt("body",2746)==0) then -- Rasiermesser
        base.common.InformNLS( User,
        "Du ben�tigst ein Rasiermesser um das Leder zu gerben.",
        "You need a razor blade to tan the leather." );
        return
    end

    local Tool = User:getItemAt(CCharacter.left_tool); -- Item in Linker Hand auslesen
    if ((Tool == nil) or (Tool.id ~= 2746)) then -- Wenn das Item nicht das Rasiermesser ist
        Tool = User:getItemAt(CCharacter.right_tool); -- In anderer Hand nachsehen
    end

    if base.common.ToolBreaks( User, Tool, true ) then -- Rasiermesser besch�digen
        base.common.InformNLS( User,
        "Das Rasiermesser wird stumpf.",
        "The razor blade wents blunt" );
        return
    end

    if ( ltstate == Action.abort ) then -- Arbeit unterbrochen
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

    if not base.common.FitForWork( User ) then -- Kein Hunger
        return
    end

    for i, Leather in pairs(Leatherlist) do -- nach Rohleder und Fellen Absuchen
        if (User:countItemAt("belt",i)>0) then -- Rohmaterial gefunden
            if ( ltstate == Action.none ) then -- Arbeit nicht gestartet -> Starten
                --User:startAction( GenWorkTime(User), 0, 0, 0, 0 );
                User:startAction( GenWorkTime(User), 0, 0, 14, 25 );
                User:talkLanguage( CCharacter.say, CPlayer.german, "#me beginnt Leder zu gerben.");
                User:talkLanguage( CCharacter.say, CPlayer.english, "#me starts to tan leather.");
                return
            end

            if base.common.IsInterrupted( User ) then
                local selectMessage = math.random(1,5);
                if ( selectMessage == 1 ) then
                    base.common.InformNLS(User,
                    "Du wischst dir den Schwei� von der Stirn.",
                    "You wipe sweat off your forehead.");
                elseif ( selectMessage == 2 ) then
                    base.common.InformNLS(User,
                    "Du bekommst ein paar feine Haare in den Mund und mu�t husten.",
                    "A cloud of fine hairs makes you cough.");
                elseif ( selectMessage == 3 ) then
                    base.common.InformNLS(User,
                    "Du �berpr�fst kurz die bereits gegerbte Stelle auf Unebenheiten",
                    "You briefly check the quality of the leather.");
                elseif ( selectMessage == 4 ) then
                    base.common.InformNLS(User,
                    "Du h�lst kurz inne um das Messer ein wenig nachzuschleifen.",
                    "You breaks to sharp your tool a bit.");
                else
                    base.common.InformNLS(User,
                    "Du entfernst kurz Fell- und Knochenreste vom Leder bevor du weitermachst.",
                    "You briefly removes hair- and bonesplits from the leather, before you continue.");
                end
                return
            end;

            User:eraseItem(i,1); -- Rohleder oder Felle entfernen
            notCreated = User:createItem(Leather,1,333,0); -- Leder erstellen
            if ( notCreated > 0 ) then -- Zu viele Items erstellt --> Char �berladen
                world:createItemFromId( Leather, notCreated, User.pos, true, 333 ,0);
                base.common.InformNLS(User,
                "Du kannst nichts mehr halten.",
                "You can't carry any more.");
            else
                User:startAction( GenWorkTime(User), 0, 0, 0, 0 );
            end
			-- Lernen wird noch eingebaut
            --User:learn(2,"dying and tanning",2,20); -- Lernen
            base.common.GetHungry( User, 200 ); -- Hunger
            return
        end
    end
    if (ltstate ~= Action.success) then
        base.common.InformNLS( User,
        "Du hast kein Rohleder und keine Felle die du gerben k�nntest.",
        "You don't have any rawleather or furs you could tan." );
    end
end

-- Arbeitszeit generieren
function GenWorkTime(User)
    local Attrib = User:increaseAttrib("dexterity",0); -- Geschicklichkeit: 0 - 20
	local Skill = 1;
    --local Skill  = User:getSkill("dying and tanning");     -- F�rben und Gerben: 0 - 100

    return math.floor(-0.3 * (Attrib + Skill) + 100);
end
