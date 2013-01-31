require("handler.sendmessage")
require("base.common")
require("item.gems")

-- UPDATE common SET com_script = 'test.vilarion' WHERE com_itemid = 9;

module("test.vilarion", package.seeall)

function QuestTitle(user)
    return "Test Quest"
end

function QuestDescription(user, status)
    return "Status " .. status
end

function QuestTargets(user, status)
    if status == 1 then
        return position(5, 5, 0)
    elseif status == 2 then
        return {position(5, 10, 0), position(3, 10, 0)}
    elseif status == 3 then
        return {}
    elseif status == 4 then
        return nil
    elseif status == 5 then
        -- ILLEGAL, do NOT set quest progress in quest entrypoints
        user:setQuestProgress(12344, 1);
    end
end

function QuestFinalStatus()
    return 42
end

function getTestLookAt()
    local lookAt = ItemLookAt()

    lookAt.name = "Vilarion's Test Item of pwnage with a microwave"
    lookAt.rareness = ItemLookAt.epicItem;
    lookAt.description = "This item has an evil presence. Also it creates cookies. But they all look like Vilarion."
    lookAt.craftedBy = "Vilarion"
    lookAt.weight = 1
    lookAt.worth = 13333320
    lookAt.qualityText = "supercharged"
    lookAt.durabilityText = "eternal"
    lookAt.durabilityValue = 100
    lookAt.diamondLevel = 1
    lookAt.emeraldLevel = 1
    lookAt.rubyLevel =1
    lookAt.sapphireLevel = 1
    lookAt.amethystLevel = 1
    lookAt.obsidianLevel = 1
    lookAt.topazLevel = 1
    lookAt.bonus = 255

    return lookAt
end

function LookAtItem(player, item)
    world:itemInform(player, item, getTestLookAt())
    return true    
end

function UseItem(User, SourceItem, ltstate)
    if (User.lastSpokenText == "create") then
        User:createItem(529, 1, 599, {craftedBy="Hero"})
        User:createItem(529, 1, 799, {craftedBy="Hero"})
    end

    if (User.lastSpokenText == "server") then
        if isTestserver() then
            User:inform("testserver")
        else
            User:inform("illarionserver")
        end
    end
    
    if (User.lastSpokenText == "weapon") then
        local found, struct = world:getWeaponStruct(2)
        if found then
            User:inform("attack: " .. struct.Attack)
        else
            User:inform("struct not found")
        end
    end

    local found, _, item = string.find(User.lastSpokenText, "count (%d+)")
    if found then
        User:inform("Count item " .. item .. ": " .. User:countItemAt("all", tonumber(item), {}))
    end

    local found, _, book = string.find(User.lastSpokenText, "book (%d+)")
    if found then
        User:sendBook(tonumber(book))
    end

    if (User.lastSpokenText == "take") then
        User:getBackPack():takeItemNr(1, 1)
    end
    
    if (User.lastSpokenText == "anim") then
        User:performAnimation(14)
    end

    if (User.lastSpokenText == "rain") then
        local weather = world.weather
        weather.percipitation_type = 1
        weather.percipitation_strength = 100
        world:setWeather(weather)
    end

    if (User.lastSpokenText == "gem") then
        item.gems.gemCraft:showDialog(User, User)
    end
    
    if (User.lastSpokenText == "scriptvar") then
        ScriptVars:set("var_test", 42)
        ScriptVars:save()
    end
    
    if (User.lastSpokenText == "random") then
        User:inform("uniform: " .. Random.uniform())
        User:inform("d6: " .. Random.uniform(1, 6))
        User:inform("normal: " .. Random.normal(9, 0.5))
    end

    if (User.lastSpokenText == "ltenull") then
        foundEffect, myEffect = User.effects:find(3243)
        if not foundEffect then
            User.effects:addEffect( myEffect )
        end
    end

    if (User.lastSpokenText == "diagnil") then
        User:requestInputDialog( nil )
    end

    if (User.lastSpokenText == "ltenil") then
        User.effects:addEffect( nil )
    end

    if (User.lastSpokenText == "setvar") then
        ScriptVars:set("xq10", "bla123")
    end

    if (User.lastSpokenText == "getvar") then
        found, value = ScriptVars:find("xq10")
        if found then
            User:inform("Value for xq10: " .. value)
        else
            User:inform("Value for xq10 not found")
        end
    end
    
    -- setting quest status
    local a, b, quest, status
    a,b,quest,status = string.find(User.lastSpokenText,"reset (%d+) (%d+)")
    if a ~= nil then
        quest = tonumber(quest)
        status = tonumber(status)
        User:setQuestProgress(quest, status)
        User:inform("Quest " .. quest .. " has been set to " .. status .. "!")
        return
    end
    a,b,quest = string.find(User.lastSpokenText,"reset (%d+)")
    if a ~= nil then
        quest = tonumber(quest)
        User:setQuestProgress(quest, 0)
        User:inform("Quest " .. quest .. " has been reset!")
        return
    end
	-- added by merung: check queststatus
	local a, b, quest
    a,b,quest = string.find(User.lastSpokenText,"getquest (%d+)")
	if a ~= nil then
		quest = tonumber(quest)
		User:inform("Quest "..quest.." has queststatus "..User:getQuestProgress(quest))
		return
	end

    if (User.lastSpokenText == "GM") then
        User:pageGM("test ticket")
    end

    if (User.lastSpokenText == "item") then
        User:createItem(1, 1, 333, 12);
		User:inform("Item erzeugt!");
		local count = User:countItemAt("all", 1, 12);
		if (count > 0) then
			User:inform("Item gefunden");
		else
			User:inform("Item nicht gefunden");
		end;
		count = User:eraseItem(1, 1, 12);
		if (count > 0) then
			User:inform("Item gel�scht");
		else
			User:inform("Item nicht gel�scht");
		end;
    end

    if (User.lastSpokenText == "die") then
        User:increaseAttrib("hitpoints",-10000);
    end
	
    if (User.lastSpokenText == "text") then
        local callback = function(dialog)
            User:inform("Lorem ipsum closed.")
        end;

local message = [[
Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

--

Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.

Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.

At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.

Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
]]

        local dialog = MessageDialog("Lorem ipsum", message, callback)
        User:requestMessageDialog(dialog)
        return
    end

	if (User.lastSpokenText == "input") then
		local callback = function(dialog)
			if not dialog:getSuccess() then
				User:inform("You canceled! How dare you?")
			else
				User:inform("You wrote: " .. dialog:getInput())
			end
		end
		local dialog = InputDialog("Insert some text!", "Some boring long text has to be inserted, not that anyone cared, but whatever...", false, 255, callback)
		User:requestInputDialog(dialog)
		return
	end

    --if User.id ~= 64 then
    --    User:inform("e-Vil says: You are not allowed to use this!");
    --    return;
    --end;

    if (User.lastSpokenText == "ltelarge") then
        User.effects:addEffect(LongTimeEffect(777, 100))
    end

    --pos = User.pos
    --pos.x = pos.x + 1
    --world:createDynamicNPC("Lasttier",50,pos,0,"npc.lasttier")
    --User:setQuestProgress(8, 1)

    if (User.lastSpokenText == "trade") then
        local callback = function(dialog)
            result = dialog:getResult()
            if result == MerchantDialog.playerSells then
                item = dialog:getSaleItem()
                User:inform("Selling " .. item.number .. " of item " .. item.id .. "!")
            else
                if result == MerchantDialog.playerBuys then
                    User:inform("Buying " .. dialog:getPurchaseAmount() .. " of index " .. dialog:getPurchaseIndex() .. "!")
                else
                    User:inform("Trade Aborted!")
                end
            end
        end
        local dialog = MerchantDialog("Trader 0",  callback)
        dialog:addOffer(1, "Krasses Schwert", 20000)
        dialog:addOffer(2, "Weizenmehl", 20, 100)
        dialog:addOffer(2, "Roggenmehl", 33, 50)
        dialog:addOffer(100, "Maurerkelle des Verderbens", 4711)
        dialog:addPrimaryRequest(2, "Weizenmehl", 2)
        dialog:addPrimaryRequest(2, "Gammeliges Mehl", 1)
        dialog:addSecondaryRequest(1, "Nicht so krasses Schwert", 123)
        User:inform("start dialog")
        User:requestMerchantDialog(dialog)
    end

    if (User.lastSpokenText == "craft") then
        local callback = function(dialog)
            result = dialog:getResult()
            if result == CraftingDialog.playerCrafts then
                local item = dialog:getCraftableIndex()
                local amount = dialog:getCraftableAmount()
                User:inform("Craft " .. amount .. " of item index " .. item)
                local startCrafting = true
                return startCrafting
            elseif result == CraftingDialog.playerLooksAtItem then
                local item = dialog:getCraftableIndex()
                User:inform("Look at item index " .. item)
                return getTestLookAt()
            elseif result == CraftingDialog.playerLooksAtIngredient then
                local item = dialog:getCraftableIndex()
                local ingredient = dialog:getIngredientIndex()
                User:inform("Look at ingredient " .. ingredient .. " of item index " .. item)
                return getTestLookAt()
            elseif result == CraftingDialog.playerCraftingComplete then
                User:inform("Crafting complete!")
            elseif result == CraftingDialog.playerCraftingAborted then
                User:inform("Crafting aborted!")
            else
                User:inform("Dialog closed!")
            end
        end
        local dialog = CraftingDialog("Craft 0", callback)
        dialog:addGroup("Group 1")
        dialog:addGroup("Group 2")
        dialog:addGroup("Group 3")
        dialog:addCraftable(0, 1, "Krasses Schwert", 100)
        dialog:addCraftableIngredient(104, 13);
        dialog:addCraftable(1, 2, "Weizenmehl", 10, 10)
        dialog:addCraftableIngredient(2)
        dialog:addCraftableIngredient(2, 7)
        dialog:addCraftable(1, 2, "Roggenmehl", 10, 10)
        dialog:addCraftableIngredient(136, 11)
        dialog:addCraftableIngredient(138, 2)
        dialog:addCraftableIngredient(140, 7)
        User:requestCraftingDialog(dialog)

    end

    if (User.lastSpokenText == "select") then
        local items = {1, 2, 2}
        local names = {"Krasses Schwert", "Weizenmehl", "Roggenmehl"}
        local callback = function(dialog)
            success = dialog:getSuccess()
            if success then
                selected = dialog:getSelectedIndex()
                User:inform("Success, selected index " .. selected .. ": '" .. names[selected+1] .. "' (Item ID " .. items[selected+1] .. ").")
            else
                User:inform("Selection aborted!")
            end
        end
        local dialog = SelectionDialog("Selection 0", "Select some stuff...", callback)
        for i=1,#items do
            dialog:addOption(items[i], names[i])
        end
        User:requestSelectionDialog(dialog)
    end

end

function nextCycle(npc)  -- ~10 times per second
end

function receiveText(npc, texttype, message, originator)
    if message == "go" then
        start = position(0, 0, 121)
        goal = position(19, 19, 121)
        npc:setOnRoute(false)
        npc.waypoints:clear()
        npc:forceWarp(start)
        npc.waypoints:addWaypoint(goal)
        npc:setOnRoute(true)
    end
end

function addEffect( e, c )
    c:inform("--- effect added ---");
    e:addValue("n",4000000000);
end

function callEffect( e, c )
    local found, n = e:findValue("n");
    c:inform("--- effect called, n == "..n.." ---");
    e.nextCalled = 100;
    return true;
--[[
    c:inform("idleTime: "..c:idleTime());
    if n>0 then
        e:addValue("n",n-1);
        e.nextCalled = 30;
        return true;
    else
        e:removeValue("n");
        return false;
    end;
--]]
end

function doubleEffect( e, c )
    local found, n = e:findValue("n");
    c:inform("--- tried to add effect, but it is still active (n == "..n..") ---");
end;

function MoveItemAfterMove(user, source, target)
    user:inform("MoveItemAfterMove (source): " .. source.pos.x .. ", " .. source.pos.y .. ", " .. source.pos.z)
    user:inform("MoveItemAfterMove (target): " .. target.pos.x .. ", " .. target.pos.y .. ", " .. target.pos.z)
end
