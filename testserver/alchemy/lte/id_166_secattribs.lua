-- LTE f�r das Druidensystem
-- by Falk
-- complete new version by Merung

module("alchemy.lte.id_166_secattribs", package.seeall)

-- INSERT INTO longtimeeffects VALUES (166, 'alchemy_secattribs', 'alchemy.lte.id_166_secattribs');

function addEffect(Effect, User)               -- we start with adding the effect
	--User:inform("debug func addEffect")
end

function callEffect(Effect,User) 
    local findCounter,counterPink = Effect:findValue("counterPink")
    
	local findHitpoints,hitpointsIncrease = Effect:findValue("hitpointsIncrease")
    local findMana,manaIncrease = Effect:findValue("manaIncrease")
    local findFoodlevel,foodlevelIncrease = Effect:findValue("foodlevelIncrease")
    local findPoisonvalue,poisonvalueIncrease = Effect:findValue("poisonvalueIncrease")
    
	if findCounter then 
       if counterPink > 0 then
           if findHitpoints then
              User:increaseAttrib("hitpoints",hitpointsIncrease);
           end
           if findMana then   
              User:increaseAttrib("mana",manaIncrease);
           end
           if findFoodlevel then
              foodlevelIncrease = base.common.Limit( (User:increaseAttrib("foodlevel",0) + foodlevelIncrease) , 0 , 60000 );
			  User:setAttrib("foodlevel",foodlevelIncrease);
           end
           if findPoisonvalue then    
	          if isTestserver() then User:inform("poisonvalueIncrease: "..poisonvalueIncrease) end
			  poisonvalueIncrease = base.common.Limit( (User:getPoisonValue() - poisonvalueIncrease) , 0, 10000 ); 
	          if isTestserver() then User:inform("poisonvalueIncrease: "..poisonvalueIncrease) end
			  User:setPoisonValue( poisonvalueIncrease );
	       end
	      
	       if findCounter then
		      counterPink = counterPink - 1;
	          Effect:addValue("counterPink",counterPink)
	       end
	       
		   if counterPink <= 0 then
		        world:gfx(45,User.pos)
				base.common.InformNLS(User,"Die Wirkungsphase des Heiltranks endet.","The effect phase of the healing potion ends.")
				return false
	       end
       end
   end
  Effect.nextCalled = 70
  return true
end

function loadEffect(Effect, User)
    
end	

function removeEffect(Effect,User)         

end