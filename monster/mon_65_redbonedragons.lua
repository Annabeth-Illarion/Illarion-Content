require("monster.base.drop")
require("monster.base.lookat")
require("monster.base.quests")
require("base.messages");
require("monster.base.kills")
require("base.arena")
module("monster.mon_65_redbonedragons", package.seeall)

function ini(Monster)

init=true;
monster.base.quests.iniQuests();
killer={}; --A list that keeps track of who attacked the monster last

--Random Messages
msgs = base.messages.Messages();
msgs:addMessage("#me knurrt.", "#me growls.");

end

function onSpawn(Monster)
    
	-- Regeneration for high level monsters >= level 7
	local MonID=Monster:getMonsterType() 
	if MonID == 651 then --Undead Firedragon
		local find, reg_effect = Monster.effects:find(2);
		if not find then
			Monster.effects:addEffect( LongTimeEffect(2,10) );
		end
	end
end

function FireBreath(Monster,Enemy)
    if (firstBreath==nil) then
        NearBreathShape={};
        NearBreathShape[1]={9,9,9,9,9};
        NearBreathShape[2]={0,9,9,9,0};
        NearBreathShape[3]={0,9,9,9,0};
        NearBreathShape[4]={0,0,9,0,0};
        NearBreathShape[5]={0,0,9,0,0};
        firstBreath=true;
    end
    local retVal=false;
    BreathTry=math.random(1,66);
    if (BreathTry==1) and (Monster.pos.z==Enemy.pos.z) then
        retVal=true;
        Monster.fightpoints=Monster.fightpoints-40;
        if (Monster:distanceMetric(Enemy)<=4) then
            Looking=Monster:getFaceTo()
            if (Looking==0) then
                BreathShape=NearBreathShape;
            elseif (Looking==2) then
                BreathShape=ShapeDrehen(NearBreathShape);
            elseif (Looking==4) then
                BreathShape=ShapeDrehen(ShapeDrehen(NearBreathShape));
            elseif (Looking==6) then
                BreathShape=ShapeDrehen(ShapeDrehen(ShapeDrehen(NearBreathShape)));
            end
            for i=1,5 do
                for k=1,5 do
                    if (Looking==0) then
                        BreathPos=position(Monster.pos.x-3+k,Monster.pos.y-7+i,Monster.pos.z);
                    elseif (Looking==2) then
                        BreathPos=position(Monster.pos.x+k,Monster.pos.y-3+i,Monster.pos.z);
                    elseif (Looking==4) then
                        BreathPos=position(Monster.pos.x-3+k,Monster.pos.y+i,Monster.pos.z);
                    elseif (Looking==6) then
                        BreathPos=position(Monster.pos.x-7+k,Monster.pos.y-3+i,Monster.pos.z);
                    end
                    if (BreathShape[i][k]~=0) then
                        world:gfx(BreathShape[i][k],BreathPos);
                        if (math.random(1,5)==1) then
                            world:createItemFromId(359,1,BreathPos,true,math.random(200,600),nil);
                            world:makeSound(5,BreathPos);
                        end
                        if world:isCharacterOnField(BreathPos) then
                            HitChar=world:getCharacterOnField(BreathPos);
                            HitChar:increaseAttrib("hitpoints",-2000)
                        end
                    end
                end
            end
        else
            monster.base.drop.CastMonMagic(Monster,Enemy,1,{2500,2500},{{9,5}},{},0,1,{50,100})
        end
    end
    growltry=math.random(1,8);
    if (growltry==1) then
        world:makeSound(26,Monster.pos);
    end
    return retVal
end

function ShapeDrehen(Shape)
    retShape={};
    for i=1,5 do
        retShape[i]={Shape[5][i],Shape[4][i],Shape[3][i],Shape[2][i],Shape[1][i]};
    end
    return retShape
end

function enemyNear(Monster,Enemy)

    if init==nil then
        ini(Monster);
    end

    if math.random(1,10) == 1 then
        monster.base.drop.MonsterRandomTalk(Monster,msgs); --a random message is spoken once in a while
    end
	
    return ( FireBreath(Monster,Enemy) == true );
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
        return ( FireBreath(Monster,Enemy) == true );
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
    if (MonID==651) then --Undead Firedragon, Level: 7, Armourtype: heavy, Weapontype: slashing

        --Category 1: Special Loot

        local done=monster.base.drop.AddDropItem(450,1,20,(100*math.random(6,7)+math.random(66,77)),0,1); --amethyst powder
        if not done then done=monster.base.drop.AddDropItem(446,1,10,(100*math.random(6,7)+math.random(66,77)),0,1); end --sapphire powder
        if not done then done=monster.base.drop.AddDropItem(236,1,1,(100*math.random(6,7)+math.random(66,77)),0,1); end --gold ingot
        if not done then done=monster.base.drop.AddDropItem(2745,1,1,(100*math.random(6,7)+math.random(66,77)),0,1); end --parchment
        if not done then done=monster.base.drop.AddDropItem(447,1,1,(100*math.random(6,7)+math.random(66,77)),0,1); end --ruby powder

        --Category 2: Gems

        local done=monster.base.drop.AddDropItem(284,1,20,(100*math.random(6,7)+math.random(66,77)),0,2); --sapphire
        if not done then done=monster.base.drop.AddDropItem(45,1,10,(100*math.random(6,7)+math.random(66,77)),0,2); end --emerald
        if not done then done=monster.base.drop.AddDropItem(197,1,1,(100*math.random(6,7)+math.random(66,77)),0,2); end --amethyst
        if not done then done=monster.base.drop.AddDropItem(285,1,1,(100*math.random(6,7)+math.random(66,77)),0,2); end --diamond
        if not done then done=monster.base.drop.AddDropItem(283,1,1,(100*math.random(6,7)+math.random(66,77)),0,2); end --obsidian

        --Category 3: Rings

        local done=monster.base.drop.AddDropItem(279,1,20,(100*math.random(6,7)+math.random(66,77)),0,3); --sapphire ring
        if not done then done=monster.base.drop.AddDropItem(281,1,10,(100*math.random(6,7)+math.random(66,77)),0,3); end --emerald ring
        if not done then done=monster.base.drop.AddDropItem(277,1,1,(100*math.random(6,7)+math.random(66,77)),0,3); end --amethyst ring
        if not done then done=monster.base.drop.AddDropItem(280,1,1,(100*math.random(6,7)+math.random(66,77)),0,3); end --diamond ring
        if not done then done=monster.base.drop.AddDropItem(278,1,1,(100*math.random(6,7)+math.random(66,77)),0,3); end --obsidian ring

        --Category 4: Perma Loot
        monster.base.drop.AddDropItem(3077,math.random(10,30),100,333,0,4); --silver coins

    end
    monster.base.drop.Dropping(Monster);
end
