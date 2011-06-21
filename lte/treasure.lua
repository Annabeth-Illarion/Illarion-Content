require("base.common")
require("base.treasure")
module("lte.treasure", package.seeall)

function addEffect(trsEff, trsHunter)
    fnd, cat=trsEff:findValue("category");
    if not fnd then
        return false;       -- treasure lost!
    end
    base.treasure.SpawnMonsters( trsHunter, cat );
    return true;
end

function callEffect(trsEff, trsHunter)
    if (trsHunter:increaseAttrib("hitpoints",0) == 0) then
        base.common.TempInformNLS( trsHunter,
        "Der Schatz ist f�r immer verloren. Die W�chter haben gesiegt.",
        "The treasure is lost forever. The guardians defeated you.)");
        return false;
    end

    trsEff.nextCalled = 30;

    local fnd;
    local trsPosition;
    local cat;
    fnd, trsPosition=trsEff:findValue("pos");

    if not fnd then
        return false;       -- treasure lost!
    end

    trsPosition = base.common.DataToPosition( trsPosition );
    if not trsHunter:isInRangeToPosition( trsPosition, 40 ) then
        base.common.TempInformNLS( trsHunter,
        "Der Schatz ist f�r immer verloren. Die W�chter haben euch in die Flucht geschlagen.",
        "The treasure is lost forever. The guardians made you retreat.");
        return false;
    end

    fnd, cat=trsEff:findValue("category");
    if not fnd then
        return false;       -- treasure lost!
    end
trsHunter:inform("trsHunter now checking monsters:");
    if base.treasure.CheckMonsters( trsHunter ) then
        trsHunter:inform("soooodala");
        base.common.TempInformNLS( trsHunter,
        "Die W�chter des Schatzes wurden besiegt. Gebt nicht alles auf einmal aus!",
        "The guardians of the treasure have been slain. Do not spend it all at once!");
        world:createItemFromId(2830,1,trsPosition,true,333,cat); --spawn a treasure chest
        world:gfx(16,trsPosition);
        world:makeSound(13,trsPosition);
        --base.treasure.SpawnTreasure(cat, trsPosition);
        return false;
    end
trsHunter:inform("trsHunter DONE checking monsters:");
    if trsEff.numberCalled==300 then
        base.common.TempInformNLS( trsHunter,
        "Der Schatz ist f�r immer verloren. Ihr habt die W�chter nicht beizeiten besiegen k�nnen.",
        "The treasure is lost forever. You could not defeat the guardians in time.");
        return false;
    end

    return true;
end

function removeEffect(trsEff, trsHunter)
    base.treasure.KillMonsters( trsHunter );
    return false;
end

function loadEffect(trsEff, trsHunter)
    return false;
end
