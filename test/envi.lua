-- INSERT INTO triggerfields VALUES (8,12,0,'test.envi');
-- INSERT INTO triggerfields VALUES (8,16,0,'test.envi');
-- INSERT INTO triggerfields VALUES (9,16,0,'test.envi');
require("base.common")
require("base.factions");
require("lte.deathaftertime");
module("test.envi", package.seeall)




function MoveToField(char)
	if char:getType() ~= Character.player then --Monsters will be ingored
		return
	end
	if math.random(0,99)< 100  and char:increaseAttrib("hitpoints",0)>0 then --Chance of 10% and Hitpoints above
		world:gfx(41,position(5,5,0));
        	world:createMonster(921,position(5,5,0),0);
		world:gfx(41,position(5,6,0));
        	world:createMonster(922,position(5,6,0),0);
		world:gfx(46,position(4,5,0));
        	world:createMonster(931,position(4,5,0),0);
		world:gfx(46,position(4,6,0));
        	world:createMonster(932,position(4,6,0),0);
		world:gfx(53,position(6,5,0));
        	world:createMonster(941,position(6,5,0),0);
		world:gfx(53,position(6,6,0));
        	world:createMonster(942,position(6,6,0),0);
--		world:gfx(53,position(8,16,0));
--        	world:createMonster(942,position(8,16,0),0);
		world:gfx(53,position(9,16,0));
        	world:createMonster(942,position(9,16,0),0);
		char:inform("Oh nein, ein Hinterhalt!", "Oh no, an ambush!")
	end
--[[	if base.factions.getMembership(char) == 2 then
			char:inform("funkt1!", "funkt1!")
			local monsters = world:getMonstersInRangeOf(char.pos, 30);
			char:inform("funkt2!", "funkt2!")
			for i,mon in ipairs(monsters) do
			char:inform("funkt3!", "funkt3!")
			--	mon:increaseAttrib("hitpoints", -10000)
				base.character.DeathAfterTime(mon,10,51,1)
			char:inform("funkt4!", "funkt4!")
			end
		elseif base.factions.getMembership(char) == 0 then
		char:inform("Ohoh, ein Hinterhalt f�r Vogelfreie!", "Ohoh, an ambush for outlaws!")
		world:gfx(53,position(10,10,0)); 
		world:gfx(2,position(11,11,0));
		world:gfx(46,position(10,10,0));
		else
		char:inform("Ohoh, ein Hinterhalt!", "Ohoh, an ambush!")
	end ]]--
--[[	else
			char:warp(position(8,16,0))
			world:gfx(37,char.pos);
			world:makeSound(13,char.pos);
			char:inform("Die kr�chzende Stimme meldet sich wieder: \"Keine Chance!\" Worauf eine Stimme aus dem S�dwesten sagt: \"Lauf weg!\"", "The jagged voice says: \"No Chance!\". A voice from the southwest replies: \"Run away!\"")  
			world:makeSound(25,char.pos);			
			world:gfx(13,char.pos);
			char:increaseAttrib("hitpoints", -5000)
	end ]]--

end


function MoveFromField(char)
	if char:getType() ~= Character.player then
		local test = world:getPlayersInRangeOf(char.pos, 10);
		for i,player in ipairs(test) do
		if base.factions.getMembership(player) == 3 then
			world:gfx(53,position(10,10,0));
			base.character.DeathAfterTime(char,14,0,1)
			player:inform("Bevor du auch noch reagieren kannst, schie�en Pfeile an dir vorbei und t�ten deine Widersacher. Du blickst in die Richtung von wo die Pfeile kamen und siehst die Wachen auf der Stadtmauer von Galmair dir zu winken mit ihren Armbr�ste. Gut, dass du dem Don deine Steuern zahlst und er dich besch�tzt!", "Even before you are able to react, arrows shouting around you and take down your enemies. You look into the direction of the orgin of the arrows and see guards on the town wall of Galmair waving to you with their crossbows. Good you have paid your taxes to the Don and he protects you!")
			local monsters = world:getMonstersInRangeOf(player.pos, 30);
			--player:inform("Danke2!", "Thanks2!")
			for i,mon in ipairs(monsters) do
			--player:inform("Danke3!", "Thanks3!")
			--	mon:increaseAttrib("hitpoints", -10000)
				base.character.DeathAfterTime(mon,15,0,33)
			--player:inform("Danke4!", "Thanks4!")
			end
			return
		else
			world:gfx(2,position(11,11,0));
			player:inform("Du wirfst einen Blick zur Stadtmauer von Galmair und siehst die Wachen dort wie sie dich und dein Schicksal beobachten. Was, wenn du nur dem Don deine Steuern zahlen w�rdest?", "You look to the town wall of Galmair and see guards on the wall watching your faith. What if you would pay your taxes to the Don?")	
		end
		end	
	else
	return
	end
end

--[[
function MoveFromField(char)
	if char:getType() ~= Character.player then
		local test = world:getPlayersInRangeOf(char.pos, 10);
		for i,player in ipairs(test) do
		if base.factions.getMembership(player) == 2 then
			world:gfx(53,position(10,10,0));
			char:increaseAttrib("hitpoints", -10000)
			player:inform("Danke1!", "Thanks1!")
			return
		else
			world:gfx(2,position(11,11,0));
			player:inform("Ohoh, ein Hinterhalt!", "Ohoh, an ambush!")	
		end
		end	
	else
		char:inform("Nix!", "Nix!")
	end
end
]]--

--[[
function MoveFromField(char)
	if char:getType() ~= Character.player then --Monsters will be ingored
		return
	end
	if base.factions.getMembership(char) == 2 then
			char:inform("funkt1!", "funkt1!")
			local monsters = world:getMonstersInRangeOf(char.pos, 30);
			char:inform("funkt2!", "funkt2!")
			for i,mon in ipairs(monsters) do
			char:inform("funkt3!", "funkt3!")
				mon:increaseAttrib("hitpoints", -10000)
			char:inform("funkt4!", "funkt4!")
			end
		elseif base.factions.getMembership(char) == 0 then
		char:inform("Ohoh, ein Hinterhalt f�r Vogelfreie!", "Ohoh, an ambush for outlaws!")
		world:gfx(53,position(10,10,0)); 
		world:gfx(2,position(11,11,0));
		world:gfx(46,position(10,10,0));
		else
		char:inform("Ohoh, ein Hinterhalt!", "Ohoh, an ambush!")
		end
end
]]--
