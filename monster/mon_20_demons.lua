require("monster.base.drop")
require("monster.base.lookat")
require("monster.base.quests")
require("base.messages");
module("monster.mon_20_demons")


function ini(Monster)

init=true;
monster.base.quests.iniQuests();
killer={}; --A list that keeps track of who attacked the monster last

--Random Messages

msgs = base.messages.Messages();
base.messages.msgs:addMessage("#me br�llt ohrenbet�ubend.", "#me roars deafeningly.");
base.messages.msgs:addMessage("#me lacht k�hn.", "#me laughs audaciously.");
base.messages.msgs:addMessage("Auf die Knie!", "Kneel before me!");
base.messages.msgs:addMessage("Das Blut der letzten Sterblichen, die vorbei kamen, ist noch gar nicht richtig getrocket.", "The blood of the last mortals walking by here is not even dry yet.");
base.messages.msgs:addMessage("Dein Ende ist nah!", "Your end is nigh!");
base.messages.msgs:addMessage("Dein Fleisch wird ein Festschmaus.", "I will feast on your flesh!");
base.messages.msgs:addMessage("Du hast keine Chance!", "You don't stand a chance!");
base.messages.msgs:addMessage("Du h�ttest nicht herkommen sollen.", "It was foolish to come here.");
base.messages.msgs:addMessage("Du h�ttest weglaufen sollen, Sterblicher. Nun ist es zu sp�t f�r dich.", "You should be running away, mortal. Now its too late for you.");
base.messages.msgs:addMessage("Erb�rmliche Kreatur!", "Pitiful creature!");
base.messages.msgs:addMessage("Euch zu t�ten ist so einfach, gerade zu langweilig. Wieso werft ihr Sterblichen euer Leben so weg?", "Killing you is so simple, it's boring. Why do you mortals throw your lives away like this?");
base.messages.msgs:addMessage("Flieht, ihr Narren!", "Start running, coward!");
base.messages.msgs:addMessage("Frischfleisch!", "Fresh meat!");
base.messages.msgs:addMessage("Heute Nacht speist du an Cherga's Tafel!", "Tonight you dine in Cherga's realm!");
base.messages.msgs:addMessage("Ihr Sterblichen seid so j�mmerlich. Immer wieder versucht ihr euch gegen mich und immer wieder scheitert ihr.", "You mortals are so miserable. Again and again you challenge me and again and again you fail.");
base.messages.msgs:addMessage("Komm nur Sterblicher, bald werden die Ratten sich an deinem K�rper laben. Vielleicht ist dabei sogar noch ein Rest deines Lebensfunken in dir.", "Come, mortal. Soon enough, the rats shall feast upon your flesh, and I will make sure you're still breathing when they start!");
base.messages.msgs:addMessage("Komm zu mir Sterblicher, ich werde dich in die Dunkelheit f�hren wo deine Seele ewige Qualen erfahren wird.", "Come to me mortal. I will guide you into the darkness where your soul will suffer for eternity.");
base.messages.msgs:addMessage("Lass mich dir den Weg zeigen in die Dunkelheit und K�lte.", "Let me show you the way into the darkness and the cold.");
base.messages.msgs:addMessage("Nieder, kleiner Sterblicher!", "Cower, foolish mortal!");
base.messages.msgs:addMessage("Sieh dich um, Sterblicher. Dies ist der letzte Ort den deine Augen erblicken werden!", "Look around, mortal. This is the last place you will ever see!");
base.messages.msgs:addMessage("Sp�rst du die K�lte, Sterblicher? Sp�rst du wie das Leben aus dir weicht, jetzt so kurz vor deinem Ende?", "Do you feel the cold, mortal? Do you feel the spark of life vanishing? Soon the end will come.");
base.messages.msgs:addMessage("Vielleicht solltest du zu deinen G�ttern beten. Auch wenn sie dir hier nicht helfen k�nnen.", "Maybe you should pray to your gods, though they can't help you anymore.");
base.messages.msgs:addMessage("Wenn du Dunkelheit und Tod gesucht hast, Sterblicher, dann bist du hier genau richtig.", "If you were looking for darkness and death, mortal, then you are in the right place.");

end

function enemyNear(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while

    local MonID=Monster:get_mon_type();
    if (MonID==203) then
        return ( monster.base.drop.CastMonster(Monster,Enemy,10,{172,173},40) == true );
    else
        return ( monster.base.drop.CastMonMagic(Monster,Enemy,10,{},{},{{359,222,555,0,7},{360,222,555,0,7},{372,222,555,0,7}},20,1) == true );
    end
end

function enemyOnSight(Monster,Enemy)
    local MonID=Monster:get_mon_type();

    if init==nil then
        ini(Monster);
    end

    monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while

    if monster.base.drop.DefaultSlowdown( Monster ) then
        return true
    elseif (MonID==203) then
        return ( monster.base.drop.CastMonster(Monster,Enemy,10,{172,173},40) == true );
    else
        return ( monster.base.drop.CastMonMagic(Monster,Enemy,10,{},{},{{359,222,555,0,7},{360,222,555,0,7},{372,222,555,0,7}},20,1) == true );
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

            monster.base.quests.checkQuest(murderer,Monster);
            killer[Monster.id]=nil;
            murderer=nil;

        end
    end

    monster.base.drop.ClearDropping();
    local MonID=Monster:get_mon_type();
     if (MonID==201) then --Higher Demon, Level: 8, Armourtype: medium, Weapontype: concussion (wrestling)

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(2365,1,20,(100*math.random(7,8)+math.random(77,88)),0,1); --salkamaerian officer's armor
        if not done then done=monster.base.drop.AddDropItem(2367,1,10,(100*math.random(7,8)+math.random(77,88)),0,1); end --albarian noble's armor
        if not done then done=monster.base.drop.AddDropItem(2286,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --flame helmet
        if not done then done=monster.base.drop.AddDropItem(2193,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --hardwood greaves
        if not done then done=monster.base.drop.AddDropItem(2295,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --cloth gloves

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(79,1,20,(100*math.random(7,8)+math.random(77,88)),0,2); --amethyst amulet
        if not done then done=monster.base.drop.AddDropItem(277,1,10,(100*math.random(7,8)+math.random(77,88)),0,2); end --amethyst ring
        if not done then done=monster.base.drop.AddDropItem(336,1,1,(100*math.random(7,8)+math.random(77,88)),0,2); end --mirror
        if not done then done=monster.base.drop.AddDropItem(333,1,1,(100*math.random(7,8)+math.random(77,88)),0,2); end --horn
        if not done then done=monster.base.drop.AddDropItem(197,1,1,(100*math.random(7,8)+math.random(77,88)),1,2); end --magic amethyst

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(226,1,20,(100*math.random(7,8)+math.random(77,88)),0,3); --warhammer
        if not done then done=monster.base.drop.AddDropItem(207,1,10,(100*math.random(7,8)+math.random(77,88)),0,3); end --battle staff
        if not done then done=monster.base.drop.AddDropItem(231,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --morning star
        if not done then done=monster.base.drop.AddDropItem(2737,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --morning star
        if not done then done=monster.base.drop.AddDropItem(230,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --mace

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3077,math.random(3,9),100,333,0,4); --silver coins


    elseif (MonID==202) then --Higher Demon Warrior, Level: 8, Armourtype: heavy, Weapontype: slashing

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(2363,1,20,(100*math.random(7,8)+math.random(77,88)),0,1); --nightplate
        if not done then done=monster.base.drop.AddDropItem(2393,1,10,(100*math.random(7,8)+math.random(77,88)),0,1); end --heavy plate armor
        if not done then done=monster.base.drop.AddDropItem(185,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --black visor helmet
        if not done then done=monster.base.drop.AddDropItem(2116,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --red steel greaves
        if not done then done=monster.base.drop.AddDropItem(530,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --albarian steel gloves

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(67,1,20,(100*math.random(7,8)+math.random(77,88)),0,2); --ruby amulet
        if not done then done=monster.base.drop.AddDropItem(68,1,10,(100*math.random(7,8)+math.random(77,88)),0,2); end --ruby ring
        if not done then done=monster.base.drop.AddDropItem(225,1,1,(100*math.random(7,8)+math.random(77,88)),0,2); end --crown
        if not done then done=monster.base.drop.AddDropItem(334,1,1,(100*math.random(7,8)+math.random(77,88)),0,2); end --icebird charm
        if not done then done=monster.base.drop.AddDropItem(46,1,1,(100*math.random(7,8)+math.random(77,88)),1,2); end --magic ruby

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(205,1,20,(100*math.random(7,8)+math.random(77,88)),0,3); --double axe
        if not done then done=monster.base.drop.AddDropItem(2731,1,10,(100*math.random(7,8)+math.random(77,88)),0,3); end --two handed sword
        if not done then done=monster.base.drop.AddDropItem(2627,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --fire waraxe
        if not done then done=monster.base.drop.AddDropItem(2626,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --magical waraxe
        if not done then done=monster.base.drop.AddDropItem(2662,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --magical dwarven axe

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3077,math.random(3,9),100,333,0,4); --silver coins


    elseif (MonID==203) then --Unholy Archmage, Level: 8, Armourtype: cloth, Weapontype: concussion (wrestling)

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(558,1,20,(100*math.random(7,8)+math.random(77,88)),0,1); --master mage robe
        if not done then done=monster.base.drop.AddDropItem(548,1,10,(100*math.random(7,8)+math.random(77,88)),0,1); end --mage robe
        if not done then done=monster.base.drop.AddDropItem(547,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --novice mage robe
        if not done then done=monster.base.drop.AddDropItem(371,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --expensive wizard hat
        if not done then done=monster.base.drop.AddDropItem(370,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --colourful wizard hat

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(71,1,20,(100*math.random(7,8)+math.random(77,88)),0,2); --bluestone amulet
        if not done then done=monster.base.drop.AddDropItem(279,1,10,(100*math.random(7,8)+math.random(77,88)),0,2); end --bluestone ring
        if not done then done=monster.base.drop.AddDropItem(224,1,1,(100*math.random(7,8)+math.random(77,88)),0,2); end --golden goblet
        if not done then done=monster.base.drop.AddDropItem(2559,1,1,(100*math.random(7,8)+math.random(77,88)),0,2); end --ring of the archmage
        if not done then done=monster.base.drop.AddDropItem(284,1,1,(100*math.random(7,8)+math.random(77,88)),1,2); end --magic bluestone

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(76,1,20,(100*math.random(7,8)+math.random(77,88)),0,3); --mage's staff
        if not done then done=monster.base.drop.AddDropItem(208,1,10,(100*math.random(7,8)+math.random(77,88)),0,3); end --ornate mage's staff
        if not done then done=monster.base.drop.AddDropItem(323,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --wand
        if not done then done=monster.base.drop.AddDropItem(2784,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --wand of water
        if not done then done=monster.base.drop.AddDropItem(2785,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --wand of air

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3077,math.random(3,9),100,333,0,4); --silver coins


    elseif (MonID==204) then --Red Ram, Level: 8, Armourtype: heavy, Weapontype: concussion

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(2357,1,20,(100*math.random(7,8)+math.random(77,88)),0,1); --shadow plate
        if not done then done=monster.base.drop.AddDropItem(2363,1,10,(100*math.random(7,8)+math.random(77,88)),0,1); end --nightplate
        if not done then done=monster.base.drop.AddDropItem(184,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --visor helmet
        if not done then done=monster.base.drop.AddDropItem(2111,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --blue steel greaves
        if not done then done=monster.base.drop.AddDropItem(770,1,1,(100*math.random(7,8)+math.random(77,88)),0,1); end --knight boots

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(82,1,20,(100*math.random(7,8)+math.random(77,88)),0,2); --blackstone amulet
        if not done then done=monster.base.drop.AddDropItem(278,1,10,(100*math.random(7,8)+math.random(77,88)),0,2); end --blackstone ring
        if not done then done=monster.base.drop.AddDropItem(235,1,1,(100*math.random(7,8)+math.random(77,88)),0,2); end --golden ring
        if not done then done=monster.base.drop.AddDropItem(334,1,1,(100*math.random(7,8)+math.random(77,88)),0,2); end --icebird charm
        if not done then done=monster.base.drop.AddDropItem(283,1,1,(100*math.random(7,8)+math.random(77,88)),1,2); end --magic blackstone

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(226,1,20,(100*math.random(7,8)+math.random(77,88)),0,3); --warhammer
        if not done then done=monster.base.drop.AddDropItem(207,1,10,(100*math.random(7,8)+math.random(77,88)),0,3); end --battle staff
        if not done then done=monster.base.drop.AddDropItem(231,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --morning star
        if not done then done=monster.base.drop.AddDropItem(2737,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --morning star
        if not done then done=monster.base.drop.AddDropItem(230,1,1,(100*math.random(7,8)+math.random(77,88)),0,3); end --mace

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3077,math.random(3,9),100,333,0,4); --silver coins


    elseif (MonID==205) then --Son of Ashkatuul, Level: 9, Armourtype: heavy, Weapontype: slashing

        --Category 1: Armor

        local done=monster.base.drop.AddDropItem(2393,1,20,(100*math.random(8,9)+math.random(88,99)),0,1); --heavy plate armor
        if not done then done=monster.base.drop.AddDropItem(2357,1,10,(100*math.random(8,9)+math.random(88,99)),0,1); end --shadow plate
        if not done then done=monster.base.drop.AddDropItem(185,1,1,(100*math.random(8,9)+math.random(88,99)),0,1); end --black visor helmet
        if not done then done=monster.base.drop.AddDropItem(2116,1,1,(100*math.random(8,9)+math.random(88,99)),0,1); end --red steel greaves
        if not done then done=monster.base.drop.AddDropItem(531,1,1,(100*math.random(8,9)+math.random(88,99)),0,1); end --knight gloves

        --Category 2: Special loot

        local done=monster.base.drop.AddDropItem(334,1,20,(100*math.random(8,9)+math.random(88,99)),0,2); --icebird charm
        if not done then done=monster.base.drop.AddDropItem(2559,1,10,(100*math.random(8,9)+math.random(88,99)),0,2); end --ring of the archmage
        if not done then done=monster.base.drop.AddDropItem(197,1,1,(100*math.random(8,9)+math.random(88,99)),1,2); end --magic amethyst
        if not done then done=monster.base.drop.AddDropItem(45,1,1,(100*math.random(8,9)+math.random(88,99)),1,2); end --magic emerald
        if not done then done=monster.base.drop.AddDropItem(285,1,1,(100*math.random(8,9)+math.random(88,99)),1,2); end --magic diamond

        --Category 3: Weapon

        local done=monster.base.drop.AddDropItem(2640,1,20,(100*math.random(8,9)+math.random(88,99)),0,3); --fireaxe
        if not done then done=monster.base.drop.AddDropItem(2627,1,10,(100*math.random(8,9)+math.random(88,99)),0,3); end --fire waraxe
        if not done then done=monster.base.drop.AddDropItem(2626,1,1,(100*math.random(8,9)+math.random(88,99)),0,3); end --magical waraxe
        if not done then done=monster.base.drop.AddDropItem(205,1,1,(100*math.random(8,9)+math.random(88,99)),0,3); end --double axe
        if not done then done=monster.base.drop.AddDropItem(188,1,1,(100*math.random(8,9)+math.random(88,99)),0,3); end --large waraxe

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3077,math.random(9,27),100,333,0,4); --silver coins

    elseif (MonID==206) then
        -- Drops
    elseif (MonID==207) then
        --Drops
    elseif (MonID==208) then
        --Drops
    elseif (MonID==209) then
        --Drops
    else
        --Drops
    end
    monster.base.drop.Dropping(Monster);
end