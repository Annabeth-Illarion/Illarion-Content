require("monster.base.drop")
require("monster.base.lookat")
require("monster.base.quests")
require("base.messages");
module("monster.")


function ini(Monster)

init=true;
monster.base.quest.iniQuests();
killer={}; --A list that keeps track of who attacked the monster last

--Random Messages

msgs = base.messages.Messages();
msgs:addMessage("#me klappert drohend mit den Scheren.", "#me clatters angrily with its claws.");
msgs:addMessage("#me sieht sich mit tief schwarzen Augen um.", "#me looks around with deep black eyes.");
msgs:addMessage("#me t�nzelt erregt vor und zur�ck, der Stachel zittert in der Luft und etwas Gift tropft schon zu Boden, so angriffslustig scheint das Tier zu sein", "#me prances excitedly back and forth, shaking its sting in the air and some venom drips to the ground. The animal seems to be aggressive.");
msgs:addMessage("#me sticht w�tend mehrfach in die Luft, um dann flink auf die F��e des Feindes zuzukrabbeln", "#me stings the air angrily, then crawls nimbly towards the feet of the enemy.");
msgs:addMessage("#me ist ein pechschwarzes Unget�m, ein R�uber der W�ste.", "#me is a pitch black beast, a predator of the desert.");
msgs:addMessage("#mes gef�hlslosen Augen machen es schwer zu glaube, dass dieses Wesen etwas anderes als Mordlust versp�rt.", "#me's lifeless eyes make it hard to believe that this beast is driven by something else but bloodlust.");
msgs:addMessage("#me l��t seine Scheren blitzschnell zuschnappen, ein klickendes Ger�usch zeugt von der Gef�hrlichkeit dieser Mordinstrumente.", "#me closes its claws rapidly, a clicking noise introduces the danger of the killing tools.");
msgs:addMessage("#me schie�t mit so ungeheurer Geschwindigkeit vor, dass die Bewegungen zu verschwimmen scheinen.", "#me darts forward with such great a speed that the movement becomes indistinct.");
msgs:addMessage("#mes Scheren zucken wild vor und zur�ck.", "#me's claws twitch back and forth swiftly.");
msgs:addMessage("#me kriecht mit acht feingeliederten Beinen �ber den Boden.", "#me crawls on the ground with eight segmented legs.");

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

            monster.base.quest.checkQuest(murderer,Monster);
            killer[Monster.id]=nil;
            murderer=nil;

        end
    end

    monster.base.drop.Clearmonster.base.drop.Dropping();

--No drops

    monster.base.drop.Dropping(Monster);
end