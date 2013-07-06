require("base.common")
--require("item.bookrests")

module("base.pirates", package.seeall)

optionsDE={"K�mpfe","Flieh","Zahl"}
optionsEN={"Fight","Flee","Pay"}

items={1,53,61}

function piratesattack(User,SourceItem,travler)
	User:inform("names: ","names: ")
	for i,player in ipairs(travler) do
		player:inform("Piraten n�hern sich eurem Schiff, dir stehen folgende M�glichkeiten zur Wahl.", "Pirates are coming closer to your ship. You can choose between following options.")
		world:gfx(1,player.pos)
		world:makeSound(9,player.pos);
		player:warp(position(352,870,1))
		world:gfx(11,player.pos)
		world:makeSound(9,player.pos);	
	end

	local options
	local Amountoptions = table.getn(optionsDE)	
	for j = 1,Amountoptions do
	   	if  User:getPlayerLanguage() == Player.german then
			options = optionsDE
		else
			options = optionsEN
		end
	end


	local callback = function(dialogs) 
		success = dialogs:getSuccess() 
		if success then
			selected = dialogs:getSelectedIndex() 
			User:inform("Success, you selected option "..selected+1) 
		else
			User:inform("Selection aborted!") 
		end
	end
--	debug("..selected ")
	local dialogs
	if User:getPlayerLanguage() == Player.german then
		dialogs = SelectionDialog("Piraten Angriff", "Piraten n�hern sich eurem Schiff, dir stehen folgende M�glichkeiten zur Wahl.", callback)
	else
		dialogs = SelectionDialog("Pirates attack", "Pirates are coming closer to your ship. You can choose between following options.", callback)
	end
	dialogs:setCloseOnMove()
	
	for i=1,Amountoptions do
		dialogs:addOption(items[i],options[i])
	end
	User:requestSelectionDialog(dialogs)
end
