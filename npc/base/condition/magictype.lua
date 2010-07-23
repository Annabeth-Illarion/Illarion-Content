require("base.class")
require("npc.base.condition.condition")

module("npc.base.condition.magictype", package.seeall)

magictype = base.class.class(npc.base.condition.condition.condition,
function(self, value)
    npc.base.condition.condition.condition:init(self);
    if (value == "nomagic") then
        self["check"] = _magictype_helper_none;
    elseif (value == "mage") then
        self["check"] = _magictype_helper_mage;
    elseif (value == "priest") then
        self["check"] = _magictype_helper_priest;
    elseif (value == "bard") then
        self["check"] = _magictype_helper_bard;
    elseif (value == "druid") then
        self["check"] = _magictype_helper_druid;
    end;
end);

function _magictype_helper_none(self, player)
    return (player:getMagicFlags(player:getMagicType()) == 0)
end;

function _magictype_helper_mage(self, player)
    local magicType = player:getMagicType();
    if (magicType == 0) then
        return true;
    end;
    
    if (player:getMagicFlags(magicType) == 0) then
        return true;
    end;
    
    return false;
end;

function _magictype_helper_priest(self, player)
    local magicType = player:getMagicType();
    if (magicType == 1) then
        return true;
    end;
    
    if (player:getMagicFlags(magicType) == 0) then
        return true;
    end;
    
    return false;
end;

function _magictype_helper_bard(self, player)
    local magicType = player:getMagicType();
    if (magicType == 2) then
        return true;
    end;
    
    if (player:getMagicFlags(magicType) == 0) then
        return true;
    end;
    
    return false;
end;

function _magictype_helper_druid(self, player)
    local magicType = player:getMagicType();
    if (magicType == 3) then
        return true;
    end;
    
    if (player:getMagicFlags(magicType) == 0) then
        return true;
    end;
    
    return false;
end;