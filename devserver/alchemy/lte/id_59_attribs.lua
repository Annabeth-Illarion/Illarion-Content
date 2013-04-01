-- LTE f�r das Druidensystem
-- by Falk
require("base.common")

module("alchemy.lte.id_59_attribs", package.seeall)

-- INSERT INTO longtimeeffects VALUES (59, 'alchemy_attribs', 'alchemy.lte.id_59_attribs');

attribList ={"strength","willpower","perception","intelligence","constitution","agility","dexterity","essence"};
bottomBorder = 1;

function addEffect(Effect, User)
 
end

function callEffect(Effect,User)
    -- callEffect is only called once; we just need to return false
	base.common.InformNLS( User, "Du f�hlst, dass der St�rkungstrank seine Wirkung verliert.", "You feel that the strengthening potion looses its effect.")
	return false

end

function removeEffect(Effect,User)
    -- restore the attributes
	local find_i, attrib_i, attribValue
	for i=1,8 do
		find_i,attrib_i = Effect:findValue(""..attribList[i])
		if find_i then
			attribValue = attrib_i - 5 
			User:increaseAttrib(attribList[i],-attribValue);
		end
	end
end

function loadEffect(Effect,User)
    -- login, we have to change the attributes again
	local find_i, attrib_i
	for i=1,8 do
		find_i,attrib_i = Effect:findValue(""..attribList[i])
		if find_i then
			User:increaseAttrib(attribList[i],attrib_i - 5)
		end	
	end
end