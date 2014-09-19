--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>. 
]]
local M = {}
-- Langzeit Effekt f�r Lasttier

-- Aufgabe: Speichern und �bergeben des Lasttierbesitzers

function M.addEffect(Effect, Carrier)
    return true;
end

function M.callEffect(Effect, Carrier)
    Effect.nextCalled = 360000;
    return true;
end

function M.removeEffect(Effect, Carrier)
    return true;
end

return M

