require("base.class")
require("npc.base.condition.condition")

module("npc.base.condition.state", package.seeall)

state = class(npc.base.condition.condition.condition,
function(self, comp, value)
    npc.base.condition.condition.condition:init(self);
    self["value"], self["valuetype"] = npc.base.condition.condition._set_value(value);
    if (comp == "=") then
        self["check"] = _state_helper_equal;
    elseif (comp == "<>" or comp == "!=" or comp == "~=") then
        self["check"] = _state_helper_notequal;
    elseif (comp == "<=" or comp == "=<") then
        self["check"] = _state_helper_lesserequal;
    elseif (comp == ">=" or comp == "=>") then
        self["check"] = _state_helper_greaterequal;
    elseif (comp == ">") then
        self["check"] = _state_helper_greater;
    elseif (comp == "<") then
        self["check"] = _state_helper_lesser;
    else
        -- unkonwn comparator
    end;
end);

function _state_helper_equal(self, _)
    local value = npc.base.condition.condition._get_value(self.npc, self.value, self.valuetype);
    return (value == self.npc._state)
end;

function _state_helper_notequal(self, _)
    local value = npc.base.condition.condition._get_value(self.npc, self.value, self.valuetype);
    return (value ~= self.npc._state)
end;

function _state_helper_lesserequal(self, _)
    local value = npc.base.condition.condition._get_value(self.npc, self.value, self.valuetype);
    return (value <= self.npc._state)
end;

function _state_helper_greaterequal(self, _)
    local value = npc.base.condition.condition._get_value(self.npc, self.value, self.valuetype);
    return (value >= self.npc._state)
end;

function _state_helper_lesser(self, _)
    local value = npc.base.condition.condition._get_value(self.npc, self.value, self.valuetype);
    return (value < self.npc._state)
end;

function _state_helper_greater(self, _)
    local value = npc.base.condition.condition._get_value(self.npc, self.value, self.valuetype);
    return (value > self.npc._state)
end;