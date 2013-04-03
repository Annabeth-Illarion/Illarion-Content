require("base.keys")
require("base.common")
require("scheduled.factionLeader")

module("server.logout", package.seeall)

function onLogout( theChar )
	
	world:gfx(31,theChar.pos); --A nice GFX that announces clearly: A player logged out.

	-- begin tying
	local foundEffect, Tying = theChar.effects:find(24);
	if foundEffect then -- Char is a captive, save logout time
		Tying:addValue("logout",1);
		Tying:addValue("logyears",world:getTime("year"));
		Tying:addValue("logmonths",world:getTime("month"));
		Tying:addValue("logdays",world:getTime("day"));
		Tying:addValue("loghours",world:getTime("hour"));
		Tying:addValue("logminutes",world:getTime("minute")+3);
		Tying:addValue("logseconds",world:getTime("second"));
		foundCapturer, Capturer = Tying:findValue("Capturer");
		local logText = os.date()..": "..theChar.name.." has logged out."..(foundCapturer and " Capturer: "..Capturer or "")
		coldLog,errMsg=io.open("/home/nitram/logs/tying_log.txt","a");
	    if (coldLog~=nil) then
	        coldLog:write(logText.."\n");
	        coldLog:close();
		end
	end
	-- end tying

	if theChar.name == "Valerio Guilianni" or theChar.name == "Rosaline Edwards" or theChar.name == "Elvaine Morgan" then
		exchangeFactionLeader( theChar.name )
	end

end

-- Function to exchange the faction leader of a town.
function exchangeFactionLeader( playerName )
	for i=1, #(scheduled.factionLeader.informationTable) do
		if playerName == scheduled.factionLeader.informationTable[i].npcName then
			scheduled.factionLeader.updatePosition(scheduled.factionLeader.informationTable[i].newPosition,
				scheduled.factionLeader.informationTable[i].usualPosition)
		end
	end
end
