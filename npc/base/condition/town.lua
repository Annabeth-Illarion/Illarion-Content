require("base.class")
require("base.factions")
require("npc.base.condition.condition")

module("npc.base.condition.town", package.seeall)

town = base.class.class(npc.base.condition.condition.condition,
function(self, value)
    npc.base.condition.condition.condition:init(self);
    self["value"] = tonumber(value);
    self["check"] = _town_helper_equal;
end);

function _town_helper_equal(self, player)
    return (base.factions.BF_get_Faction(player).tid == self.value);
end;