require("base.class")

module("handler.eraseplayeritem", package.seeall)

createItem = base.class.class(function(eraplitem, ply, ID, amnt)
    eraplitem.player=ply;
    eraplitem.itemId=ID;
    eraplitem.amount=amnt;
end);

function createItem:execute()
    person=self.player
    person:eraseItem(self.itemId, self.amount);
end
