-- $Id$
require("base.class")
require("npc.base.consequence.consequence")

module("npc.base.consequence.item", package.seeall)

item = base.class.class(npc.base.consequence.consequence.consequence,
function(self, id, count, quality, data)
    npc.base.consequence.consequence.consequence:init(self);
    
    self["id"] = tonumber(id);
    self["count"], self["counttype"] = npc.base.talk._set_value(count);
    self["quality"], self["qualitytype"] = npc.base.talk._set_value(quality);
    self["data"], self["datatype"] = npc.base.talk._set_value(data);
    self["perform"] = _item_helper;
end);

function _item_helper(self, player)
    local count = npc.base.talk._get_value(self.npc, self.count, self.counttype);
    local quality = npc.base.talk._get_value(self.npc, self.quality, self.qualitytype);
    local data = npc.base.talk._get_value(self.npc, self.data, self.datatype);
    
    local notcreated = player:createItem(self.id, count, quality, data);
    
    if (notcreated > 0) then
        world:createItemFromId(self.id, notcreated, player.pos, true, quality, data);
    end; 
end;