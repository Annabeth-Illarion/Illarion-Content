require("base.factions")
require("base.common")
require("content.guards")
require("content.areas")
require("development.guards_static")
module("npc.base.guards_static", package.seeall)

-- modes to define how players are handled. Monsters are always attacked (TO DO, for now: warp only)
ACTION_NONE = 0;		-- do nothing at all
ACTION_PASSIVE = 1;		-- if in attackmode, warp away
ACTION_HOSTILE = 2;		-- warp away
ACTION_AGGRESSIVE = 3;	-- attack (TO DO)

--- Checks for chars in range and handles them (warp)
-- @param guard The character struct of the guard NPC
function CheckForEnemies(guard) 
    if isTestserver() then
	    development.guards_static.CheckForEnemies(guard)
		return
	end	

	-- check for hostile monsters
	local monsterList = world:getMonstersInRangeOf(guard.pos, content.guards.Guards[guard.name].radius);
  local warpedMonster = false;
	for i,mon in pairs(monsterList) do
    if (content.areas.PointInArea(mon.pos,content.guards.Guards[guard.name].areaName)) then
      if ( not base.common.IsMonsterDocile(mon:getMonsterType()) ) then
        -- TODO call help
        -- for now only warp
        warpedMonster = true;
        Warp(guard, mon);
      end
    end
	end
  if (warpedMonster) then
    guard:talkLanguage(Character.say, Player.german, "Weg mit dir, widerliche Kreatur!");
    guard:talkLanguage(Character.say, Player.english, "Go away, nasty creature!");
  end

	-- check for player characters
	local charList = world:getPlayersInRangeOf(guard.pos, content.guards.Guards[guard.name].radius);
  local warpedPlayers = false;
  local hittedPlayers = false;
	for i,char in pairs(charList) do
    if (content.areas.PointInArea(char.pos,content.guards.Guards[guard.name].areaName)) then
      local mode = GetMode(char, content.guards.Guards[guard.name].faction);
      if (mode == ACTION_AGGRESSIVE) then
        -- spawn monster guards
        -- TODO
        -- for now: just hit and warp
        local hitValue = -1000;
        char:increaseAttrib("hitpoints", hitValue);
        hittedPlayers = true;
        warpedPlayers = true;
        Warp(guard, char);
      elseif (mode == ACTION_HOSTILE or (mode == ACTION_PASSIVE and char.attackmode)) then
        -- warp
        warpedPlayers = true;
        Warp(guard, char);
      end
    end
	end
  if (warpedPlayers) then
    guard:talkLanguage(Character.say, Player.german, "Pass blo� auf! Wir brauchen hier kein Gesindel.");
    guard:talkLanguage(Character.say, Player.english, "You'd better watch out! We don't need such lowlifes here.");
  end
  if (hittedPlayers) then
    world:makeSound(3, guard.pos);
  end
end

--- get the mode for this faction depending on the char's faction
-- @param char The character whose faction is to be checked
-- @param thisFaction The faction ID of the guard
function GetMode(char, thisFaction)
	
	-- if char:isAdmin() then
		-- return ACTION_NONE;
	-- end

	local f = base.factions.getFaction(char).tid;
	return GetModeByFaction(thisFaction, f);
end

--- get the mode for this faction by the other (hostile) faction
-- @param thisFaction The faction ID of the guard
-- @param otherFaction The faction ID that is to be checked
function GetModeByFaction(thisFaction, otherFaction)
	local found, mode = ScriptVars:find("Mode_".. thisFaction);
	if not found then
		InitMode(thisFaction);
		return GetModeByFaction(thisFaction, otherFaction);
	end
	mode = mode % (10^(otherFaction+1));
	mode = math.floor(mode / 10^otherFaction);
	return mode;
end

--- set the mode for all guards of this faction
-- @param thisFaction The faction ID of the guard
-- @param otherFaction The faction ID whose mode is to be changed
-- @param newMode The new mode, e.g. ACTION_NONE
function SetMode(thisFaction, otherFaction, newMode)
	-- get mode for all factions
	local found, modeAll = ScriptVars:find("Mode_".. thisFaction);
	local oldMode = 0;
	if not found then
		InitMode(thisFaction);
		SetMode(thisFaction, otherFaction, newMode);
		return;
	else
		-- calculate the old mode for the otherFaction
		oldMode = modeAll % (10^(otherFaction+1));
		oldMode = math.floor(oldMode / 10^otherFaction);
	end
	-- subtract old mode
	modeAll = modeAll - (oldMode * 10^(otherFaction));
	-- add new mode
	modeAll = modeAll + (newMode * 10^(otherFaction));
	-- set ScriptVar again
	modeAll = math.max(0,math.min(9999, modeAll)); -- must not be negative & exceed 9999 (3 towns + outcasts)
	ScriptVars:set("Mode_".. thisFaction, modeAll);
end

--- initialize the mode for all factions, only the current faction gets access
-- @param thisFaction The faction ID of the current faction
function InitMode(thisFaction)
	ScriptVars:set("Mode_".. thisFaction, 0);
	SetMode(thisFaction, thisFaction, ACTION_NONE);
	local factions = {0,1,2,3};
	for _,f in pairs(factions) do
		if (thisFaction ~= f) then
			SetMode(thisFaction, f, ACTION_HOSTILE);
		end
	end
end

--- warp the char to the defined warp position
-- @param guard The guard that warps the char
-- @param char The char that will be warped
function Warp(guard, char)
	char:warp(content.guards.Guards[guard.name].warpPos);
	base.common.InformNLS(char,
		"Du wurdest soeben von einer Wache der Stadt verwiesen.",
		"You've just been expelled from the town by a guard.");
end

function NextCycle(NpcChar)
  content.guards.InitGuards();
  if (CheckCount == nil) then
    CheckCount = {};
  elseif (CheckCount[NpcChar.id] == nil) then
    CheckCount[NpcChar.id] = 0;
  elseif (CheckCount[NpcChar.id] == 5) then
    if (content.guards.Guards~=nil) then 
      CheckForEnemies(NpcChar);
    end
    CheckCount[NpcChar.id] = 0;
  else
    CheckCount[NpcChar.id] = CheckCount[NpcChar.id] + 1;
  end
end

--[[
-- ## REPLACE THE nextCycle FUNCTION AND ADD THE REQUIREMENT IN THE LUA CODE OF EACH GUARD ##
require("npc.base.guards_static")

function nextCycle(npcChar)
  mainNPC:nextCycle(npcChar);
  npc.base.guards_static.NextCycle(npcChar);
end;

]]