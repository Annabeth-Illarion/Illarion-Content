-- I_2744_pfeife.lua
--
require("base.common")
require("item.general.wood")

module("item.id_2744_pipe", package.seeall, package.seeall(item.general.wood))

-- UPDATE common SET com_script='item.id_2744_pipe' WHERE com_itemid = 2744;

--[[This item has been claimed by faladron to do his biding and sate his scripting curiosity.
	It will do anything and everything with the exception of what should be expected from it]]
function UseItem( User, SourceItem, TargetItem, Counter, Param)
	a,b,playername,message = string.find(User.lastSpokenText,"!(.+)! (.+)");
	User:inform("Der Empf�nger ist "..playername)
	User:inform("Die Nachricht ist "..message)
	
		char = CheckIfOnline(playername)
		if char then 
			base.common.InformNLS(User, "Du liest die Schriftrolle, sie zerf�llt in deinen H�nden zu Staub!","You read the scroll, it turns to dust in your hands!");
			base.common.InformNLS(char, "Du bekommst eine Nachricht von: "..User.name, "You receive a message from: "..User.name);
			char:inform(message);
			User:eraseItem( 2744, 1 );
		else
		User:inform("Noob not found!")
		end
	
	
	
	--[[ if ( SourceItem.number == 1 ) then  --1 W�rfel

		WurfEins = (math.random(6))
		if WurfEins == 1 then	gValue = "ein Auge"; eValue = "one eye";
		elseif WurfEins == 1 then	gValue = "ein Augen"; eValue = "one eye"; 
		elseif WurfEins == 2 then	gValue = "zwei Augen"; eValue = "two eyes";
		elseif WurfEins == 3 then	gValue = "drei Augen"; eValue = "three eyes";
		elseif WurfEins == 4 then	gValue = "vier Augen"; eValue = "four eyes";
		elseif WurfEins == 5 then	gValue = "f�nf Augen"; eValue = "five eyes";
		else
		gValue = "sechs Augen"; eValue = "six eyes"; end    
		
		User:talkLanguage(Character.say, Player.german, "#me rollt einen W�rfel. Er zeigt "..gValue.." oben.");
		User:talkLanguage(Character.say, Player.english, "#me rolls a dice. It shows "..eValue.." on top.");
		
		
	--elseif ( SourceItem.number >= 10) then --2 W�rfel
		WurfEins = (math.random(6))
		if WurfEins == 1 then	gValue = "ein Auge"; eValue = "one eye";
		elseif WurfEins == 1 then	gValue = "ein Augen"; eValue = "one eye"; 
		elseif WurfEins == 2 then	gValue = "zwei Augen"; eValue = "two eyes";
		elseif WurfEins == 3 then	gValue = "drei Augen"; eValue = "three eyes";
		elseif WurfEins == 4 then	gValue = "vier Augen"; eValue = "four eyes";
		elseif WurfEins == 5 then	gValue = "f�nf Augen"; eValue = "five eyes";
		else
		gValue = "sechs Augen"; eValue = "six eyes"; end  
		WurfSwai = (math.random(6))
		if WurfSwai == 1 then	gValue = "ein Auge"; eValue = "one eye";
		elseif WurfSwai == 1 then	gValue2 = "ein Augen"; eValue2 = "one eye"; 
		elseif WurfSwai == 2 then	gValue2 = "zwei Augen"; eValue2 = "two eyes";
		elseif WurfSwai == 3 then	gValue2 = "drei Augen"; eValue2 = "three eyes";
		elseif WurfSwai == 4 then	gValue2 = "vier Augen"; eValue2 = "four eyes";
		elseif WurfSwai == 5 then	gValue2 = "f�nf Augen"; eValue2 = "five eyes";
		else
		gValue2 = "sechs Augen"; eValue2 = "six eyes"; end  
		
		User:talkLanguage(Character.say, Player.german, "#me rollt 2 W�rfel. Sie zeigen "..gValue.." und"..gValue2.." oben.");
		User:talkLanguage(Character.say, Player.english, "#me rolls 2 dice. They show "..eValue.." and"..gValue2.." on top.");
		
	end
end]]
   
	--local ammountSib = User:countItemAt("belt",155);
	--local ammountTob = User:countItemAt("belt",772);
	if (User:countItemAt("belt",155) == 0 and User:countItemAt("belt",772) == 0) then
		base.common.InformNLS( User,
        "Du ben�tigst Sibanac-Bl�tter oder Tabak um Pfeife rauchen zu k�nnen.",
        "You need sibanac-leaves or tobacco to smoke a pipe." );
		
		
	elseif (User:countItemAt("belt",155) ~= 0) then 
		User:talkLanguage(Character.say,Player.german ,"#me nimmt einen tiefen Zug von der Pfeife.");
		User:talkLanguage(Character.say,Player.english,"#me takes a deep drag from the pipe.");
		User:eraseItem( 155, 1 );
			
	elseif (User:countItemAt("belt",772) ~= 0) then
		User:talkLanguage(Character.say,Player.german ,"#me bl�st einen Rauchkringel in die Luft.");
		User:talkLanguage(Character.say,Player.english,"#me puffs a ring of smoke into the air.");
		User:eraseItem( 772, 1 );
	--[[Effekt setzen falls noch nicht vorhanden
	-- LTE to get High, currently not working
			find, stonedEffect = Character.effects:find(19);
			if find then
			found, stonedIndex = stonedEffect:findValue("stonedIndex");
			if found then
			stonedEffect:addValue("stonedIndex",(stonedIndex+1));
			end
			else

			Character.effects:addEffect( LongTimeEffect(19,10) );
			end]]

	end
end

-- 

function CheckIfOnline(playername)
	playerlist = world:getPlayersOnline();
		   
	for i = 1, #(playerlist) do 
		if playerlist[i].name == playername then
		return playerlist[i]
		end
	end
	return nil
end
		
			
     	

	
	
function LookAtItem(User, Item)
	
	local lookat = base.lookat.GetItemDescription(User,Item,2,false,false);
	world:itemInform(User, Item, lookat)
end
