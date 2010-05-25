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
    local Qual=Item.quality;
    if (specialnames==nil) then
        specialnames={};
        specialnames[604]={"Seahorse Generalschl�ssel","Seahorse Generalkey"};
        specialnames[614]={"Seahorse Schl�ssel Zimmer 1","Seahorse key room 1"};
        specialnames[624]={"Seahorse Schl�ssel Zimmer 2","Seahorse key room 2"};
        specialnames[634]={"Seahorse Schl�ssel Zimmer 3","Seahorse key room 3"};
        specialnames[644]={"Seahorse Schl�ssel Zimmer 4","Seahorse key room 4"};
    end
    local lang=User:getPlayerLanguage();
    if (specialnames[Qual][1]~=nil) then
        if (lang==0) then
            world:itemInform(User,Item,"Du siehst "..specialnames[Qual][1]);
        else
            world:itemInform(User,Item,"You see "..specialnames[Qual][2]);
        end
    else
        base.common.InformNLS(User,"Klappt nicht");
        if (lang==0) then
            world:itemInform(User,Item,"Du siehst Schl�ssel");
        else
            world:itemInform(User,Item,"You see key");
        end
    end
end