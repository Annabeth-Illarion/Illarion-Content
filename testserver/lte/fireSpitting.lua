-- fireSpitting, id 60

require("base.common")
module("lte.fireSpitting", package.seeall)

function addEffect(Effect, User)               				

end

function callEffect(Effect, User) 
    
	local findSecondTime, sceondTime = Effect:findValue("secondTime")
    if not findSecondTime then
	    User:inform("Hitze erf�llt dein Inneres und in deinem Magen f�ngt es zu kochen an.",
		            "Your inner body is heating up and it seems to start boiling in your stomach.")
        User:talkLanguage(Character.say, Player.german, "#me's Gesicht f�rbt sich knallrot.")
		User:talkLanguage(Character.say, Player.english, "#me's face turns bright red.")
        Effect:addValue("secondTime",1)	
	    Effect.nextCalled = 50
		return true
	else
		User:inform("Hei� und kochend steigt es deine Kehle hinauf und pl�tzlich...",
		            "Hot and boiling it's coming up your throat and suddenly...")
        User:talkLanguage(User.say, Player.german, "#me spuckt Feuer aus seinem Mund raus.")
		User:talkLanguage(User.say, Player.english, "#me spits fire out of his mouth.")
        local findQuality, quality = Effect:findValue("quality")
		local spitFire = function(posi) 
		    if world:isUserOnField(posi) then
			    local char = world:getUserOnField(posi)
				char:inform("Du wirst von einer Flamme erwischt! Aua!","You are hit by fire! Ouch!",User.highPriority)
			    char:increaseAttrib("hitpoints",-(200*quality))
			end	
		    world:gfx(10,posi)
			world:gfx(36,posi)			
		end
		base.common.CreateLine(base.common.GetFrontPosition(User), base.common.GetFrontPosition(User, 3+quality), spawnFire)
        return false
    end
end

function removeEffect(Effect,User)

end

function loadEffect(Effect,User)                  			

end