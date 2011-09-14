-- Tree Script
-- Envi
require("base.common")
require("content.tree")

module("item.tree", package.seeall)

-- UPDATE common SET com_script='item.tree' WHERE com_itemid IN (308, 586, 1804, 1807, 1808, 1809, 1817);

TreeListGerman = 
{
"PLACEHOLDER.",
};

TreeListEnglish = 
{
"PLACEHOLDER.",
};


function LookAtItemIdent(User,Item)
    local test = "no value";
	if (first==nil) then
        content.tree.InitTree()
        first=1;
    end

    -- fetching local references
    local signTextDe     = content.tree.signTextDe;
    local signTextEn     = content.tree.signTextEn;
    local signCoo        = content.tree.signCoo;
    local signItemId     = content.tree.signItemId;
    local signPerception = content.tree.signPerception;

    found = false;
    UserPer = User:increaseAttrib("perception",0);
    tablePosition = Item.pos.x .. Item.pos.y .. Item.pos.z;
	if signCoo ~= nil then
		if (signCoo[tablePosition] ~= nil) then
			for i, signpos in pairs(signCoo[tablePosition]) do
				if equapos(Item.pos,signpos) then
					if (UserPer >= signPerception[tablePosition][i]) then
						found = true;
						world:itemInform(User,Item,base.common.GetNLS(User,string.gsub(signTextDe[tablePosition][i],"currentChar",User.name),string.gsub(signTextEn[tablePosition][i],"currentChar",User.name)));
						test = signTextDe[tablePosition][i];
					else
                        found = true;
						world:itemInform(User,Item,base.common.GetNLS(User,"Du erkennst, dass hier etwas ist, kannst es aber nicht entziffern, da du zu blind bist.","You recognise something, but you cannot read it, because you are too blind."));
					end
				end
			end
		end
	end

	--[[local outText = checkNoobiaSigns(User,Item.pos);
	if outText and not found then
		world:itemInform(User,Item,outText);
		found = true;
	end ]]

	if not found then
        world:itemInform(User,Item,world:getItemName(Item.id,User:getPlayerLanguage()));
    end
    --[[if not found then
        val = ((Item.pos.x + Item.pos.y + Item.pos.z) % table.getn(TreeListGerman))+1;
        world:itemInform( User, Item, base.common.GetNLS(User, TreeListGerman[val], TreeListEnglish[val]) );
	end]]-- 
	
--		User:inform("in LookAtItem of base_wegweiser.lua");
		--User:inform(test);
end
--[[
	LookAtItemIdent
	identity of LookAtItem
  ]]
LookAtItem = LookAtItemIdent;
