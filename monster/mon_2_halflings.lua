require("monster.base.drop")
require("monster.base.lookat")
require("monster.base.quests")
require("base.messages");
module("monster.mon_2_halflings")


function ini(Monster)

init=true;
monster.base.quest.iniQuests();
killer={}; --A list that keeps track of who attacked the monster last

--Random Messages

msgs = base.messages.Messages();
msgs:addMessage("#me grinst breit.", "#me grins widely.");
msgs:addMessage("#me kichert.", "#me giggles.");
msgs:addMessage("#me lacht.", "#me laughs.");
msgs:addMessage("Bei Adron's Laute!", "By Adron's lute!");
msgs:addMessage("Der lauteste Tyrann stirbt mit einer Faust im Gem�cht!", "The worst tyrant dies by a fist in his sleep!");
msgs:addMessage("Du bekommst keinen Kuchen von mir!", "You don't get a cake from me!");
msgs:addMessage("Einen toten Halbling ehren Hunderte!", "A dead halfling is honoured by hundreds!");
msgs:addMessage("Ich geb dir 'nen Nachschlag!", "Here, let me give you a second helping!");
msgs:addMessage("Lange Beine, kleines Hirn. Hau ab!", "Long legs, little brain. Go away!");
msgs:addMessage("Von deinem Gesicht wird ja die Milch sauer!", "Milk goes sour after seeing your face!");
msgs:addMessage("Von dir kann man sich eine Scheibe abschneiden!", "I'll cut a slice off of you!");

end


function enemyNear(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while

    local MonID=Monster:get_mon_type();
    if (MonID==23) then
        return ( monster.base.drop.Stealing(Monster,Enemy) == true );
    else
        return false;
    end
end

function enemyOnSight(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while

    local MonID=Monster:get_mon_type();

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

    killer[Monster.id]=Enemy.id; --Keeps track who attacked the monster last
end

function onCasted(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    killer[Monster.id]=Enemy.id; --Keeps track who attacked the monster last
end

function onDeath(Monster)

    if killer[Monster.id] ~= nil then

        murderer=getCharForId(killer[Monster.id]);
    
        if murderer then --Checking for quests

            monster.base.quest.checkQuest(murderer,Monster);
            killer[Monster.id]=nil;
            murderer=nil;

        end
    end

    monster.base.drop.Clearmonster.base.drop.Dropping();
    local MonID=Monster:get_mon_type();
    if (MonID==21) then --Halfling, Level: 3, Armourtype: cloth, Weapontype: slashing

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(34,1,20,(100*math.random(2,3)+math.random(22,33)),0,1); --black trousers
        if not done then done=monster.base.drop.AddDropItem(808,1,10,(100*math.random(2,3)+math.random(22,33)),0,1); end --yellow doublet
        if not done then done=monster.base.drop.AddDropItem(180,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --red shirt
        if not done then done=monster.base.drop.AddDropItem(181,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --blue shirt
        if not done then done=monster.base.drop.AddDropItem(459,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --red trousers

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(49,1,20,(100*math.random(2,3)+math.random(22,33)),0,2); --bread
        if not done then done=monster.base.drop.AddDropItem(191,1,10,(100*math.random(2,3)+math.random(22,33)),0,2); end --bread roll
        if not done then done=monster.base.drop.AddDropItem(303,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --cherry cake
        if not done then done=monster.base.drop.AddDropItem(354,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --strawberry cake
        if not done then done=monster.base.drop.AddDropItem(353,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --apple pie

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(445,1,20,(100*math.random(2,3)+math.random(22,33)),0,3); --wooden sword
        if not done then done=monster.base.drop.AddDropItem(78,1,10,(100*math.random(2,3)+math.random(22,33)),0,3); end --short sword
        if not done then done=monster.base.drop.AddDropItem(1,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --serinjah sword
        if not done then done=monster.base.drop.AddDropItem(2711,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --barbarian axe
        if not done then done=monster.base.drop.AddDropItem(2946,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --battleaxe

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3076,math.random(2,6),100,333,0,4); --copper coins


    elseif (MonID==22) then --Halfling Warrior, Level: 4, Armourtype: light, Weapontype: slashing

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(18,1,20,(100*math.random(3,4)+math.random(33,44)),0,1); --light metal shield
        if not done then done=monster.base.drop.AddDropItem(366,1,10,(100*math.random(3,4)+math.random(33,44)),0,1); end --leather legs
        if not done then done=monster.base.drop.AddDropItem(369,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --leather shoes
        if not done then done=monster.base.drop.AddDropItem(365,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --half leather armor
        if not done then done=monster.base.drop.AddDropItem(364,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --light hunting armor

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(2744,1,20,(100*math.random(3,4)+math.random(33,44)),0,2); --pipe
        if not done then done=monster.base.drop.AddDropItem(155,1,10,(100*math.random(3,4)+math.random(33,44)),0,2); end --sibanac
        if not done then done=monster.base.drop.AddDropItem(2719,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --comb
        if not done then done=monster.base.drop.AddDropItem(227,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --cooking spoon
        if not done then done=monster.base.drop.AddDropItem(2760,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --rope

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(78,1,20,(100*math.random(3,4)+math.random(33,44)),0,3); --short sword
        if not done then done=monster.base.drop.AddDropItem(445,1,10,(100*math.random(3,4)+math.random(33,44)),0,3); end --wooden sword
        if not done then done=monster.base.drop.AddDropItem(1,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --serinjah sword
        if not done then done=monster.base.drop.AddDropItem(2711,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --barbarian axe
        if not done then done=monster.base.drop.AddDropItem(2946,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --battleaxe

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3076,math.random(3,9),100,333,0,4); --copper coins


    elseif (MonID==23) then --Halfling Thief, Level: 4, Armourtype: light, Weapontype: puncture

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(53,1,20,(100*math.random(3,4)+math.random(33,44)),0,1); --leather boots
        if not done then done=monster.base.drop.AddDropItem(2114,1,10,(100*math.random(3,4)+math.random(33,44)),0,1); end --short fur trousers
        if not done then done=monster.base.drop.AddDropItem(363,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --leather scale armor
        if not done then done=monster.base.drop.AddDropItem(365,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --half leather armor
        if not done then done=monster.base.drop.AddDropItem(364,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --light hunting armor

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(46,1,20,(100*math.random(3,4)+math.random(33,44)),0,2); --ruby
        if not done then done=monster.base.drop.AddDropItem(67,1,10,(100*math.random(3,4)+math.random(33,44)),0,2); end --ruby amulet
        if not done then done=monster.base.drop.AddDropItem(68,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --ruby ring
        if not done then done=monster.base.drop.AddDropItem(255,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --raw ruby
        if not done then done=monster.base.drop.AddDropItem(1840,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --copper goblet

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(27,1,20,(100*math.random(3,4)+math.random(33,44)),0,3); --simple dagger
        if not done then done=monster.base.drop.AddDropItem(189,1,10,(100*math.random(3,4)+math.random(33,44)),0,3); end --dagger
        if not done then done=monster.base.drop.AddDropItem(2675,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --rapier
        if not done then done=monster.base.drop.AddDropItem(190,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --ornate dagger
        if not done then done=monster.base.drop.AddDropItem(389,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --silvered dagger

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3076,math.random(3,9),100,333,0,4); --copper coins


    elseif (MonID==24) then --Halfling Peasant, Level: 3, Armourtype: cloth, Weapontype: slashing

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(811,1,20,(100*math.random(2,3)+math.random(22,33)),0,1); --red doublet
        if not done then done=monster.base.drop.AddDropItem(457,1,10,(100*math.random(2,3)+math.random(22,33)),0,1); end --green shirt
        if not done then done=monster.base.drop.AddDropItem(460,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --yellow trousers
        if not done then done=monster.base.drop.AddDropItem(458,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --yellow shirt
        if not done then done=monster.base.drop.AddDropItem(461,1,1,(100*math.random(2,3)+math.random(22,33)),0,1); end --blue trousers

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(249,1,20,(100*math.random(2,3)+math.random(22,33)),0,2); --bundle of grain
        if not done then done=monster.base.drop.AddDropItem(259,1,10,(100*math.random(2,3)+math.random(22,33)),0,2); end --grain
        if not done then done=monster.base.drop.AddDropItem(2,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --flour
        if not done then done=monster.base.drop.AddDropItem(5,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --dough
        if not done then done=monster.base.drop.AddDropItem(49,1,1,(100*math.random(2,3)+math.random(22,33)),0,2); end --bread

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(126,1,20,(100*math.random(2,3)+math.random(22,33)),0,3); --sickle
        if not done then done=monster.base.drop.AddDropItem(271,1,10,(100*math.random(2,3)+math.random(22,33)),0,3); end --skythe
        if not done then done=monster.base.drop.AddDropItem(445,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --wooden sword
        if not done then done=monster.base.drop.AddDropItem(78,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --short sword
        if not done then done=monster.base.drop.AddDropItem(2752,1,1,(100*math.random(2,3)+math.random(22,33)),0,3); end --carving tools

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3076,math.random(2,6),100,333,0,4); --copper coins


    elseif (MonID==25) then --Halfling Hunter, Level: 4, Armourtype: light, Weapontype: distance

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(48,1,20,(100*math.random(3,4)+math.random(33,44)),0,1); --leather gloves
        if not done then done=monster.base.drop.AddDropItem(2113,1,10,(100*math.random(3,4)+math.random(33,44)),0,1); end --fur trousers
        if not done then done=monster.base.drop.AddDropItem(363,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --leather scale armor
        if not done then done=monster.base.drop.AddDropItem(365,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --half leather armor
        if not done then done=monster.base.drop.AddDropItem(364,1,1,(100*math.random(3,4)+math.random(33,44)),0,1); end --light hunting armor

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(553,1,20,(100*math.random(3,4)+math.random(33,44)),0,2); --rabbit meat
        if not done then done=monster.base.drop.AddDropItem(552,1,10,(100*math.random(3,4)+math.random(33,44)),0,2); end --deer meat
        if not done then done=monster.base.drop.AddDropItem(555,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --rabbit dish
        if not done then done=monster.base.drop.AddDropItem(554,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --venison dish
        if not done then done=monster.base.drop.AddDropItem(2495,1,1,(100*math.random(3,4)+math.random(33,44)),0,2); end --pan

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(1266,10,20,(100*math.random(3,4)+math.random(33,44)),0,3); --stones
        if not done then done=monster.base.drop.AddDropItem(89,1,10,(100*math.random(3,4)+math.random(33,44)),0,3); end --sling
        if not done then done=monster.base.drop.AddDropItem(65,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --short bow
        if not done then done=monster.base.drop.AddDropItem(2714,1,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --hunting bow
        if not done then done=monster.base.drop.AddDropItem(64,10,1,(100*math.random(3,4)+math.random(33,44)),0,3); end --arrows

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3076,math.random(3,9),100,333,0,4); --copper coins


    elseif (MonID==26) then
        -- Drops
    elseif (MonID==27) then
        --Drops
    elseif (MonID==28) then
        --Drops
    elseif (MonID==29) then
        --Drops
    else
        --Drops
    end
    monster.base.drop.Dropping(Monster);
end