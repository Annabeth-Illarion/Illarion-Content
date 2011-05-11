require("monster.base.drop")
require("monster.base.lookat")
require("monster.base.quests")
require("base.messages");
module("monster.mon_8_wolfs")


function ini(Monster)

init=true;
monster.base.quest.iniQuests();
killer={}; --A list that keeps track of who attacked the monster last

--Random Messages

msgs = base.messages.Messages();
msgs:addMessage("#me bleibt steifbeinig und aufgerichtet stehen.", "#me stands stiff legged and tall.");
msgs:addMessage("#me duckt sich, bereit anzugreifen.", "#me crouches, ready to strike.");
msgs:addMessage("#me hat Schaum vor dem Maul.", "#me foams at the mouth.");
msgs:addMessage("#me hebt seinen Kopf und heult.", "#me raises its head and howls.");
msgs:addMessage("#me kl�fft laut.", "#me barks loudly.");
msgs:addMessage("#me knirscht mit den Z�hnen.", "#me gnashes its teeth.");
msgs:addMessage("#me knurrt, das Ger�usch ist kaum h�rbar.", "#me growls, the noise barely audible.");
msgs:addMessage("#me kr�mmt seinen R�cken.", "#me arches its back.");
msgs:addMessage("#me l�sst ein b�ses Knurren h�ren.", "#me lets out a vicious snarl.");
msgs:addMessage("#me stellt seine Ohren auf.", "#me's ears perk up.");
msgs:addMessage("#me bleckt die Z�hne.", "#me bares its teeth.");
msgs:addMessage("#mes Fell str�ubt sich.", "#me's fur bristles");
msgs:addMessage("#mes Schwanz streckt sich hinter seinem K�rper gerade aus.", "#me's tail extends straight out from its body.");

end


function enemyNear(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while

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

    monster.base.drop.Clearmonster.base.drop.Dropping();
    monster.base.drop.AddDropItem(63,1,50,333,0,1); --inners
    monster.base.drop.AddDropItem(2586,1,100,333,0,2); --fur
    monster.base.drop.Dropping(Monster);
end