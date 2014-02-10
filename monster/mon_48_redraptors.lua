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
require("monster.base.base")
require("monster.base.drop")
require("monster.base.lookat")
require("monster.base.quests")
require("base.messages");
require("monster.base.kills")
require("base.arena")
module("monster.mon_48_redraptors", package.seeall)


function ini(Monster)

init=true;
monster.base.quests.iniQuests();
killer={}; --A list that keeps track of who attacked the monster last

--Random Messages
msgs = base.messages.Messages();
msgs:addMessage("#me knurrt.", "#me growls.");

end

function enemyNear(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    if math.random(1,10) == 1 then
        monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while
    end
	
    return false
end

function enemyOnSight(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while
	if monster.base.base.isMonsterArcherInRange(Monster, Enemy) then
		return true
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

	
    if killer and killer[Monster.id] ~= nil then

        murderer=getCharForId(killer[Monster.id]);
    
        if murderer then --Checking for quests

            monster.base.quests.checkQuest(murderer,Monster);
            killer[Monster.id]=nil;
            murderer=nil;

        end
    end
    
    monster.base.drop.ClearDropping();
    local MonID=Monster:getMonsterType();

if (MonID==524) then --Fireraptor, Level: 6, Armourtype: medium, Weapontype: puncture

        --Category 1: Plants

        local done=monster.base.drop.AddDropItem(133,1,20,(100*math.random(5,6)+math.random(55,66)),0,1); --sun herb
        if not done then done=monster.base.drop.AddDropItem(144,1,10,(100*math.random(5,6)+math.random(55,66)),0,1); end --virgins weed
        if not done then done=monster.base.drop.AddDropItem(157,1,1,(100*math.random(5,6)+math.random(55,66)),0,1); end --rotten tree bark
        if not done then done=monster.base.drop.AddDropItem(159,1,1,(100*math.random(5,6)+math.random(55,66)),0,1); end --toadstool
        if not done then done=monster.base.drop.AddDropItem(145,1,1,(100*math.random(5,6)+math.random(55,66)),0,1); end --heath flower

        --Category 2: Plants

        local done=monster.base.drop.AddDropItem(145,1,20,(100*math.random(5,6)+math.random(55,66)),0,2); --heath flower
        if not done then done=monster.base.drop.AddDropItem(157,1,10,(100*math.random(5,6)+math.random(55,66)),0,2); end --bulbsponge mushroom
        if not done then done=monster.base.drop.AddDropItem(158,1,1,(100*math.random(5,6)+math.random(55,66)),0,2); end --red head
        if not done then done=monster.base.drop.AddDropItem(160,1,1,(100*math.random(5,6)+math.random(55,66)),0,2); end --herder's mushroom
        if not done then done=monster.base.drop.AddDropItem(161,1,1,(100*math.random(5,6)+math.random(55,66)),0,2); end --black thistle

        --Category 3: More plants

        local done=monster.base.drop.AddDropItem(134,1,20,(100*math.random(5,6)+math.random(55,66)),0,3); --fourleafed oneberry
        if not done then done=monster.base.drop.AddDropItem(135,1,10,(100*math.random(5,6)+math.random(55,66)),0,3); end --yellow weed
        if not done then done=monster.base.drop.AddDropItem(152,1,1,(100*math.random(5,6)+math.random(55,66)),0,3); end --life root
        if not done then done=monster.base.drop.AddDropItem(758,1,1,(100*math.random(5,6)+math.random(55,66)),0,3); end --liveblood
        if not done then done=monster.base.drop.AddDropItem(764,1,1,(100*math.random(5,6)+math.random(55,66)),0,3); end --daydevil

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(63,math.random(1,1),100,333,0,4); --entrails
    end
    monster.base.drop.Dropping(Monster);
end
