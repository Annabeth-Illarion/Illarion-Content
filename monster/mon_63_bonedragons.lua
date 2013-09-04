require("item.gems")
require("monster.base.drop")
require("monster.base.lookat")
require("monster.base.quests")
require("base.messages");
require("monster.base.kills")
module("monster.mon_63_bonedragons", package.seeall)

function ini(Monster)

init=true;
monster.base.quests.iniQuests();
killer={}; --A list that keeps track of who attacked the monster last

--Random Messages
msgs = base.messages.Messages();
msgs:addMessage("#me knurrt.", "#me growls.");

end

function onSpawn(Monster)
    
	local MonID=Monster:getMonsterType() 
	if MonID == 631 then
		local find, reg_effect = Monster.effects:find(2);
		if not find then
			Monster.effects:addEffect( LongTimeEffect(2,10) );
		end
	end
end

function enemyNear(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    if math.random(1,10) == 1 then
        monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while
    end
	
	return false;
end

function enemyOnSight(Monster,Enemy)
    local MonID=Monster:getMonsterType();

    if init==nil then
        ini(Monster);
    end

    monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while

    if monster.base.drop.DefaultSlowdown( Monster ) then
        return true
	else
		return false;
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
    if (MonID==631) then --Bone Dragon, Level: 8, Armourtype: medium, Weapontype: concussion

        --Category 1: Special Loot

        local done=monster.base.drop.AddDropItem(447,1,20,(100*math.random(7,8)+math.random(77,88)),0,1); --ruby powder
        if not done then done=monster.base.drop.AddDropItem(449,1,10,(100*math.random(7,8)+math.random(77,88)),0,1); end --obsidian powder
        if not done then done=monster.base.drop.AddDropItem(738,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --dragon egg
        if not done then done=monster.base.drop.AddDropItem(505,1,1,(100*math.random(7,8)+math.random(77,88)),nil,1); end --treasure map
        if not done then done=monster.base.drop.AddDropItem(450,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --amethyst powder

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(45,1,20,(100*math.random(7,8)+math.random(77,88)),0,2); --emerald
        if not done then done=monster.base.drop.AddDropItem(285,1,10,(100*math.random(7,8)+math.random(77,88)),0,2); end --diamond
        if not done then done=monster.base.drop.AddDropItem(46,1,1,(100*math.random(7,8)+math.random(77,88)),0,2); end --ruby
        if not done then done=monster.base.drop.AddDropItem(198,1,1,(100*math.random(7,8)+math.random(77,88)),0,2); end --topaz
        if not done then done=monster.base.drop.AddDropItem(item.gems.getMagicGemId(item.gems.AMETHYST),1,1,999,item.gems.getMagicGemData(1),2); end --magic amethyst

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(281,1,20,(100*math.random(7,8)+math.random(77,88)),0,3); --emerald ring
        if not done then done=monster.base.drop.AddDropItem(280,1,10,(100*math.random(7,8)+math.random(77,88)),0,3); end --diamond ring
        if not done then done=monster.base.drop.AddDropItem(68,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --ruby ring
        if not done then done=monster.base.drop.AddDropItem(282,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --topaz ring
        if not done then done=monster.base.drop.AddDropItem(277,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --amethyst ring

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3077,math.random(30,90),100,333,0,4); --silver coins

    end
    monster.base.drop.Dropping(Monster);
end
