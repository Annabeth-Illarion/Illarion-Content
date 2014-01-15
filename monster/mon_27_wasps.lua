--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>.
]]
require("monster.base.drop")
require("monster.base.lookat")
require("monster.base.quests")
require("base.messages");
require("monster.base.kills")
require("base.arena")
require("base.common")
module("monster.mon_27_wasps", package.seeall)


function ini(Monster)

init=true;
monster.base.quests.iniQuests();
killer={}; --A list that keeps track of who attacked the monster last

--Random Messages

msgs = base.messages.Messages();
msgs:addMessage("#me fliegt, ein hohes, weinerlich klingendes Ger�usch machend umher.", "#me flies around, making a high pitched whining sound.");
msgs:addMessage("#me landet nur um wieder abheben zu k�nnen begleitet von einem kurzen Summen.", "#me lands, only to take off again with a short buzz.");
msgs:addMessage("#me peitscht, einen Landeplatz suchend durch die Luft.", "#me whips about in the air, searching for somewhere to land.");
msgs:addMessage("#me schwirrt drohend in keine bestimmte Richtung.", "#me angrily buzzes around in no particular direction.");
msgs:addMessage("Bzzz.", "Bzzz.");
msgs:addMessage("#me fliegt in wilden Kreisen und man kann das Gift an ihrem Stachel aufgl�nzen sehen.", "#me darts around, one can see venom dripping from its sting.");
msgs:addMessage("#me f�hrt ihren spitzen Stachel aus.", "#me extends its sting.");
msgs:addMessage("Summ, summ.", "Buzz, buzz.");
msgs:addMessage("Bsss.", "Bsss.");
msgs:addMessage("#mes Fl�gel verbreiten ein hochfrequentes Summen, welches in den Ohren schmerzt.", "#me's wings exude a buzzing with high frequency, it hurts one's ears.");

end

function enemyNear(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    if math.random(1,10) == 1 then
        monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while
    end

    local MonID=Monster:getMonsterType();
    if (MonID==278) then
        world:gfx(9,Monster.pos);
    end
    return false
end

function enemyOnSight(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while

    local MonID=Monster:getMonsterType();
    if (MonID==278) then
        world:gfx(9,Monster.pos);
    end
    if monster.base.drop.DefaultSlowdown( Monster ) then
        return true
    else
        return false
    end
end


function onAttacked(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end
    monster.base.kills.setLastAttacker(Monster,Enemy)
    killer[Monster.id]=Enemy.id; --Keeps track who attacked the monster last
end

function onCasted(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end
    monster.base.kills.setLastAttacker(Monster,Enemy)
    killer[Monster.id]=Enemy.id; --Keeps track who attacked the monster last
end


function onDeath(Monster)

    if base.arena.isArenaMonster(Monster) then
        return
    end

    monster.base.drop.ClearDropping();
    local MonID=Monster:getMonsterType();
    monster.base.drop.AddDropItem(2529,1,100,333,0,1); --honeycombs

    if (MonID==278) then -- wasp of Fire!!!

        CreateCircle( 1, 250,Monster.pos,3,false);
        CreateCircle( 9, 750,Monster.pos,2,true);
        CreateCircle(44,1000,Monster.pos,1,true);
        world:gfx(36,Monster.pos);
        world:makeSound(5,Monster.pos);
    end
    monster.base.drop.Dropping(Monster);
end

function CreateCircle(gfxid,Damage,CenterPos,Radius,setFlames)
    local irad = math.ceil(Radius);

    local x;
    local y;
    local map = {};
    for x = -irad-1, irad do
        map[x] = {};
        for y = -irad-1, irad do
            map[x][y] = (x+0.5)*(x+0.5)+(y+0.5)*(y+0.5)-irad*irad > 0
        end;
    end;
    for x = -irad, irad do
        for y = -irad, irad do
            if not( map[x][y] and  map[x-1][y] and map[x][y-1] and map[x-1][y-1] )
               and( map[x][y] or   map[x-1][y] or  map[x][y-1] or  map[x-1][y-1] ) then
                HitPos=position( CenterPos.x + x, CenterPos.y + y, CenterPos.z );
                world:gfx(gfxid,HitPos);
                HitChar(HitPos,Damage,CenterPos);
                if not SetNextTrap(HitPos,CenterPos) then
                    if setFlames then
                        if (math.random(1,5)==1) then
                            world:createItemFromId(359,1,HitPos,true,math.random(200,600),nil);
                        end
                    end
                end
            end;
        end;
    end;
end;

function HitChar(Posi,Hitpoints,CenterPos)
    if world:isCharacterOnField(Posi) then
        local Character = world:getCharacterOnField(Posi);

        if (Character:getType() == 2) then --dont touch npcs
            return;
        end

		local posX;
		local posY;
        if (Posi == CenterPos) then
			posX = Character.pos.x+math.random(-9,9)
			posY = Character.pos.y+math.random(-9,9)
        else
            local Distance = Character:distanceMetricToPosition(CenterPos);
            local Diffx = CenterPos.x - Character.pos.x;
            local Diffy = CenterPos.y - Character.pos.y;
            if (Distance == 1) then
                Diffx = 6*Diffx;
                Diffy = 6*Diffy;
            elseif (Distance == 2) then
                Diffx = 2*Diffx;
                Diffy = 2*Diffy;
            end
			posX = Character.pos.x-Diffx
			posY = Character.pos.y-Diffy
		end

			local listOfStuff = world:LoS(Character.pos, position(posX,posY,Character.pos.z))

			if listOfStuff ~= nil then
				local minDistance = Character:distanceMetricToPosition(position(posX,posY,Character.pos.z));

				for i, listEntry in pairs(listOfStuff) do
					local itemPos = listEntry.OBJECT.pos
					local field = world:getField(itemPos)
					local tempX = posX;
					local tempY = posY;
					-- something not passable is in the way, recalculate position
					if not field:isPassable() then
						--Character:inform("phi stuff "..i);
						local phi = base.common.GetPhi(Character.pos, itemPos);
						if (phi < math.pi / 8) then
							tempX = itemPos.x - 1
						elseif (phi < 3 * math.pi / 8) then
							tempX = itemPos.x - 1
							tempY = itemPos.y - 1
						elseif (phi < 5 * math.pi / 8) then
							tempY = itemPos.y - 1
						elseif (phi < 7 * math.pi / 8) then
							tempX = itemPos.x + 1
							tempY = itemPos.y - 1
						elseif (phi < 9 * math.pi / 8) then
							tempX = itemPos.x + 1
						elseif (phi < 11 * math.pi / 8) then
							tempX = itemPos.x + 1
							tempY = itemPos.y + 1
						elseif (phi < 13 * math.pi / 8) then
							tempY = itemPos.y + 1
						elseif (phi < 15 * math.pi / 8) then
							tempX = itemPos.x - 1
							tempY = itemPos.y + 1
						else
							tempX = itemPos.x - 1
						end;

						local tempDistance = Character:distanceMetricToPosition(position(tempX,tempY,Character.pos.z));
						if (  tempDistance < minDistance) then
							minDistance = tempDistance;
							posX = tempX;
							posY = tempY;
						end
					end
				end
			end

		Character:warp(position(posX,posY,Character.pos.z));
        base.common.InformNLS(Character,
        "Getroffen von der Detonation wirst du davon geschleudert.",
        "Hit by the detonation, you get thrown away.");
        Character:increaseAttrib("hitpoints",-Hitpoints);
    end;
end;

function SetNextTrap(Posi,CenterPos)
    if (Posi == CenterPos) then
        return false
    end

    if not world:isItemOnField(Posi) then
        return false
    end

    TestItem = world:getItemOnField(Posi);

    if ((TestItem.id >= 377) and (TestItem.id <=381)) then
        local tempmonster = world:createMonster(401,Posi,-50);
        if isValidChar(tempmonster) then
            tempmonster.fightpoints = tempmonster.fightpoints - 100;
            return true
        end
    end
    return false
end
