-- T�REN AUF UND ZU KLAPPEN
-- RUNEN 1 & 23 KEL ANTH
--INSERT INTO spells VALUES (2^0+2^22,0,'m_01_23.lua');
--SPEZIALZAUBER
--ITEMZAUBER

require("base.doors")
require("base.common")
module("magic.spell_01_23_open-close-door", package.seeall)
function OpenCloseTarget(Caster,Item)
    if not base.common.IsLookingAt(Caster,Item.pos) then
		base.common.TurnTo(Caster, Item.pos);
	end
    local Mana=Caster:increaseAttrib("mana",0);
    if (Mana>=100) then
        local Language=Caster.activeLanguage;
        Caster.activeLanguage=10;
        Caster:talk(CCharacter.say,"KEL ANTH");
        Caster.activeLanguage=Language;
        if base.doors.CloseDoor(Item) then
            Succeed(Caster)
            base.common.InformNLS(Caster,"Von dem Windsto� getroffen klappt die T�r zu.","A mysterious breeze pushes the door close.");
        else
            local OpenDoor,OpenOK=base.doors.OpenDoor(Item);
            if OpenOK then
                Succeed(Caster)
                base.common.InformNLS(Caster,"Vom Wind gef�hrt schwingt die T�r auf.","A mysterious breeze pushes the door open.");
            elseif OpenDoor then
                Succeed(Caster)
                base.common.InformNLS(Caster,"Der Wind r�ttelt an der T�r, doch sie �ffnet sich nicht.","The wind tries to open the door, but the door doesn't open.");
            else
                base.common.InformNLS(Caster,"Der Spruch zeigt keine Wirkung.","Nothing happens.");
            end
        end
    else
        informNLS(Caster,"Nicht genug Mana","Not enougth mana");
    end
end

function Succeed(Caster)
    if (LuaAnd(Caster:getQuestProgress(24),1) == 0 ) then
        Caster:learn(3,"transformo",1,20);
    end
    Caster:increaseAttrib("mana",-100);
    world:makeSound(13,Caster.pos);
end

function CastMagic(Caster,counter,param)
    informNLS(Caster,"Der Spruch zeigt keine Wirkung.","Nothing happens.");
end

function CastMagicOnCharacter(Caster,TargetCharacter,counter,param)
    informNLS(Caster,"Der Spruch zeigt keine Wirkung.","Nothing happens.");
end

function CastMagicOnField(Caster,Targetpos,counter,param)
    informNLS(Caster,"Der Spruch zeigt keine Wirkung.","Nothing happens.");
end

function CastMagicOnItem(Caster,TargetItem,counter,param, ltstate)
    if ( ltstate == nil or ltstate == Action.success ) then
        OpenCloseTarget(Caster,TargetItem)
    elseif ( ltstate == Action.none ) then
        Caster:startAction( 15, 21, 10, 0, 0);
        Caster:talkLanguage( CCharacter.say, CPlayer.german, "#me beginnt mit einer mystischen Formel.");
        Caster:talkLanguage( CCharacter.say, CPlayer.english, "#me starts with a mystical formula.");
    elseif ( ltstate == Action.abort ) then
        Caster:talkLanguage(CCharacter.say, CPlayer.german, "#me stoppt apprupt mit dem Zaubern.");
        Caster:talkLanguage(CCharacter.say, CPlayer.english,"me stopps appruptly with the casting.");
    end
end