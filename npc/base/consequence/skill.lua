require("base.class")
require("npc.base.consequence.consequence")

module("npc.base.consequence.skill", package.seeall)

skill = base.class.class(npc.base.consequence.consequence.consequence,
function(self, group, name, mode, value)
    npc.base.consequence.consequence.consequence:init(self);
    self["value"], self["valuetype"] = npc.base.talk._set_value(value);
    self["group"] = group;
    self["name"] = name;
    if (mode == "=") then
        self["perform"] = _skill_helper_set;
    elseif (mode == "+") then
        self["perform"] = _skill_helper_add;
    elseif (mode == "-") then
        self["perform"] = _skill_helper_sub;
    else
        -- unkonwn comparator
    end;
end);

function _skill_helper_set(self, player)
    local value = npc.base.talk._get_value(self.npc, self.value, self.valuetype);
    local currSkill = player:getSkill(self.name);
    local modSkill = value - currSkill;
    player:increaseSkill(self.group, self.name, modSkill);
end;

function _skill_helper_add(self, player)
    local value = npc.base.talk._get_value(self.npc, self.value, self.valuetype);
    player:increaseSkill(self.group, self.name, value);
end;

function _skill_helper_sub(self, player)
    local value = npc.base.talk._get_value(self.npc, self.value, self.valuetype);
    player:increaseSkill(self.group, self.name, -value);
end;