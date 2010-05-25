require("base.keys")

function UseItem(User,SourceItem,TargetItem,counter,param)
    if base.keys.CheckKey(SourceItem,TargetItem) then
        if base.keys.LockDoor(TargetItem) then
            base.common.InformNLS(User,"Du sperrst die T�r ab.","You lock the door.");
        elseif base.keys.UnlockDoor(TargetItem) then
            base.common.InformNLS(User,"Du sperrst die T�r auf.","You unlock the door.");
        end
    else
        base.common.InformNLS(User,"Der Schl�ssel passt hier nicht.","The key doesn't fit here.");
    end
end

function LookAtItem(User,Item)
        if (User:getPlayerLanguage()==0) then
	    if (Item.data==9051) then
                world:itemInform(User,Item,"Raum I");
            elseif (Item.data==9052) then
		world:itemInform(User,Item,"Raum II");
	    elseif (Item.data==9053) then
	    	world:itemInform(User,Item,"Raum III");
	    elseif (Item.data==9054) then
		world:itemInform(User,Item,"Raum IV");
	    elseif (Item.data==9055) then
		world:itemInform(User,Item,"Raum V");
	    else
	    	world:itemInform(User,Item,"Du siehst Silberschl�ssel");
	    end
	else
	    if (Item.data==9051) then
                world:itemInform(User,Item,"Room I");
            elseif (Item.data==9052) then
                world:itemInform(User,Item,"Room II");
            elseif (Item.data==9053) then
                world:itemInform(User,Item,"Room III");
            elseif (Item.data==9054) then
                world:itemInform(User,Item,"Room IV");
            elseif (Item.data==9055) then
                world:itemInform(User,Item,"Room V");
	    else
	    	world:itemInform(User,Item,"You see silver key");
            end
	end
end
