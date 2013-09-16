require("monster.base.drop")
require("monster.base.lookat")
require("monster.base.quests")
require("base.messages");
require("monster.base.kills")
require("base.arena")
module("monster.mon_57_ratmans", package.seeall)


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

if (MonID==571) then --Nuzzler, Level: 3, Armourtype: light, Weapontype: puncture

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(697,1,20,(100*math.random(2,3)+math.random(22,33)),0,1); --fur boots
        if not done then done=monster.base.drop.AddDropItem(19,1,10,(100*math.random(2,3)+math.random(22,33)),0,1); end --metal shield
        if not done then done=monster.base.drop.AddDropItem(366,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --fur trousers
        if not done then done=monster.base.drop.AddDropItem(365,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --half leather armor
        if not done then done=monster.base.drop.AddDropItem(365,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --half leather armor

        --Category 2: Special Loot

        local done=monster.base.drop.AddDropItem(333,1,20,(100*math.random(2,3)+math.random(22,33)),0,2); --horn
        if not done then done=monster.base.drop.AddDropItem(92,1,10,(100*math.random(2,3)+math.random(22,33)),0,2); end --oil lamp
        if not done then done=monster.base.drop.AddDropItem(306,5,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --ham
        if not done then done=monster.base.drop.AddDropItem(97,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --bag
        if not done then done=monster.base.drop.AddDropItem(224,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --golden goblet

        --Category 3: Weapons

        local done=monster.base.drop.AddDropItem(78,1,20,(100*math.random(2,3)+math.random(22,33)),0,3); --short sword
        if not done then done=monster.base.drop.AddDropItem(445,1,10,(100*math.random(2,3)+math.random(22,33)),0,3); end --wooden sword
        if not done then done=monster.base.drop.AddDropItem(2757,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --scimitar
        if not done then done=monster.base.drop.AddDropItem(25,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --sabre
        if not done then done=monster.base.drop.AddDropItem(2701,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --longsword

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3076,math.random(20,60),100,773,0,4); --copper coins


    elseif (MonID==572) then --Baiter, Level: 4, Armourtype: light, Weapontype: slashing

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(257,1,20,(100*math.random(3,4)+math.random(33,44)),0,1); --leather shoes
        if not done then done=monster.base.drop.AddDropItem(253,1,10,(100*math.random(3,4)+math.random(33,44)),0,1); end --leather legs
        if not done then done=monster.base.drop.AddDropItem(251,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --light hunting armor
        if not done then done=monster.base.drop.AddDropItem(252,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --full leatherarmor
        if not done then done=monster.base.drop.AddDropItem(255,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --light blue breastplate

        --Category 2: Special Loot

        local done=monster.base.drop.AddDropItem(197,1,20,(100*math.random(3,4)+math.random(33,44)),0,2); --amethyst
        if not done then done=monster.base.drop.AddDropItem(251,1,10,(100*math.random(3,4)+math.random(33,44)),0,2); end --raw amethyst
        if not done then done=monster.base.drop.AddDropItem(277,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --amethyst ring
        if not done then done=monster.base.drop.AddDropItem(79,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --amethyst amulet
        if not done then done=monster.base.drop.AddDropItem(2185,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --wooden cup

        --Category 3: Weapons

        local done=monster.base.drop.AddDropItem(190,1,20,(100*math.random(3,4)+math.random(33,44)),0,3); --ornate dagger
        if not done then done=monster.base.drop.AddDropItem(27,1,10,(100*math.random(3,4)+math.random(33,44)),0,3); end --simple dagger
        if not done then done=monster.base.drop.AddDropItem(2668,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --poisoned simple dagger
        if not done then done=monster.base.drop.AddDropItem(2672,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --poisoned dagger
        if not done then done=monster.base.drop.AddDropItem(2689,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --poisoned ornate dagger

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3076,math.random(30,90),100,773,0,4); --copper coins

    end
    monster.base.drop.Dropping(Monster);
end
