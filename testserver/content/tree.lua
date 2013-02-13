module("content.tree", package.seeall)
--UNDER CONSTRUCTION by envi--
function InitTree()
    signTextDe={};
    signTextEn={};
    signCoo={};
    signItemId={};
    signPerception={};

	--UPDATE common SET com_script="item/signpost.lua" WHERE com_itemid=245;

   
    ---------------- B�UME ----------------

    --AddTree({X,Y,Z},german text,english text, type, needed value of perception);
    --typs:
    -- 1 = fri tree
    -- 2 = cachdern tree
    -- 3 = naldor tree
    -- 4 = blooming ceridern
    -- 5 = ceridern tree
    -- 6 = eldan oak
    -- 7 = scandrel pine
    -- 8 = winter tree
    -- 9 = autum tree
    --10 = spring tree
    --11 = summer tree
 
    --Adron's Covert
	AddTree({734,764,0},"Zur Mitte, zum Saft, zack, zack!","To the middle, to the juice, chop, chop!", 6,5);
	AddTree({734,770,0},"Zur Mitte, zum Saft, zack, zack!","To the middle, to the juice, chop, chop!", 6,5);
	AddTree({754,764,0},"Zur Mitte, zum Saft, zack, zack!","To the middle, to the juice, chop, chop!", 6,5);
	AddTree({754,770,0},"Zur Mitte, zum Saft, zack, zack!","To the middle, to the juice, chop, chop!", 6,5);
	--[[--Bramus REst
	AddTree({752,378,0},"","", 1,5);
	--Gnuremground
	AddTree({578,708,0},"","", 1,5);
	AddTree({576,712,0},"","", 1,5);
	AddTree({568,714,0},"","", 1,5);
	AddTree({565,712,0},"","", 1,5);
	AddTree({564,710,0},"","", 3,5);
	--Irundar
	AddTree({286,546,0},"","", 6,5); --tree check!!!  ]]--
	--Oldra's Corner
	AddTree({653,681,0},"Ein sehr alt wirkender Baum, welcher alle Art von Fr�chten tr�gt, und dessen Zweige bis zur Sonne reichen.","A very old looking tree carries all kinds of fruit and leaves and almost reaches the sun with it's branches.", 6,0);
	--Runewick Hinterland
	--AddTree({853,778,0},"","", 9,5); --Holy Oak
    AddTree({842,850,0},"Ein sehr alt wirkender Baum, welcher alle Art von Fr�chten tr�gt, und dessen Zweige bis zur Sonne reichen.","A very old looking tree carries all kinds of fruit and leaves and almost reaches the sun with it's branches.", 8,0); --Oldra's Column
    AddTree({840,842,0},"Der Baum tr�gt eine Eingravierung welche eine st�rkere, �ltere Frau durch einen Garten gehend zeigt, gefolgt von mehreren Tieren, verschiedenster Art.","The tree bears an engraving which shows a stout, elderly woman walking through a garden, followed by several animals of different kinds.", 11,5); --Oldra's Column
	AddTree({834,843,0},"Der Baum enth�lt eine Gravur ~Wenn wir sterben, werden wir zu einem prachtvollen Gartentor gebracht, und wenn wir gut waren d�rfen wir an diesem wunderbaren Ort leben und treffen dort all unsere Freunde wieder.~","The tree bears an engraving ~When we die, we will be brought to a big garden gate. Oldra stands at this gate, welcomes us, and if we have been good, we can enjoy the wonders of the never ending garden, meeting old and new friends in it.~", 2,5); --Oldra's Column
	AddTree({839,850,0},"Der Baum enth�lt eine Gravur ~Wenn wir sterben, werden wir zu einem prachtvollen Gartentor gebracht, und wenn wir gefehlt haben, wird uns eine Rast gestattet, dann werden wir unter neuem Namen wiedergeboren, um es besser zu machen.~","The tree bears an engraving ~When we die, we will be brought to a big garden gate. Oldra stands at this gate, welcomes us, and if we have failed, we are allowed a rest before we are sent back to be reborn with a new name to make good use of our life.~", 7,5); --Oldra's Column
	--Snakehead Coast
	AddTree({653,465,0},"Zwischen uns f�hrt der Weg zur Finsternis.","The way to the Darkness starts between us.", 6,5);
	AddTree({647,465,0},"Zwischen uns f�hrt der Weg zur Finsternis.","The way to the Darkness starts between us.", 6,5);
	AddTree({653,479,0},"Zwischen uns f�hrt der Weg zum Licht.","The way to the Light starts between us.", 6,5);
	AddTree({647,479,0},"Zwischen uns f�hrt der Weg zum Licht.","The way to the Light starts between us.", 6,5);
	--The Swamp
	--[[AddTree({501,107,0},"","", 6,5);]]--


end

function AddTree(Posi,dText,eText,Type,Percept)
    local tablePos = tostring(Posi[1]).." "..tostring(Posi[2]).." "..tostring(Posi[3]);
    PrepareTables(tablePos);
    table.insert(signCoo[tablePos],position(Posi[1],Posi[2],Posi[3]));
    table.insert(signTextDe[tablePos],dText);
    table.insert(signTextEn[tablePos],eText);
    table.insert(signPerception[tablePos],Percept);
    CheckAndPlaceItem(position(Posi[1],Posi[2],Posi[3]),DirToItemID((Type+30)));
end


function CheckAndPlaceItem(Posi,ItemID)
    if world:isItemOnField(Posi) then
        if ( world:getItemOnField(Posi).id ~= ItemID ) then
            world:createItemFromId(ItemID,1,Posi,true,333,nil);
        end
    else
        world:createItemFromId(ItemID,1,Posi,true,333,nil);
    end
end

function PrepareTables(TablePos)
    if (signCoo[TablePos] == nil) then
        signCoo[TablePos] = {};
        signTextDe[TablePos] = {};
        signTextEn[TablePos] = {};
        signPerception[TablePos] = {};
    end
end

-- DirToItemID converts item IDs into local type values for the Add functions to work with

function DirToItemID(Value)
    if (Value==31) then
        return 308
    elseif (Value==32) then
        return 586
    elseif (Value==33) then
        return 1804
    elseif (Value==34) then
        return 1807
    elseif (Value==35) then
        return 1808
    elseif (Value==36) then
        return 1809
    elseif (Value==37) then
        return 1817
    elseif (Value==38) then
	return 960
    elseif (Value==39) then
	return 961
    elseif (Value==40) then
	return 962
    elseif (Value==41) then
	return 963
	end
end