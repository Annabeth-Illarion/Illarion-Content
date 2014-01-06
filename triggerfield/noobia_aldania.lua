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
-- INSERT INTO triggerfields VALUES (45,17,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (45,18,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (45,19,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (45,20,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (45,21,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (45,22,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (45,23,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (45,24,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (45,25,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (45,26,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (45,27,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (44,27,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (43,27,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (42,27,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (41,27,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (40,27,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (39,27,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (38,27,100,'triggerfield.noobia_aldania');
-- INSERT INTO triggerfields VALUES (37,27,100,'triggerfield.noobia_aldania');


require("base.common")

module("triggerfield.noobia_aldania", package.seeall)

function MoveToField(Character)

    -- for Noobia: the char has to walk to a field (this triggerfield); he gets a message and we change a queststatus so that we remember he was at the field
	
    find, myEffect = Character.effects:find(13); --Noob effect
	
	if find then --Is this even a noob?
        value = Character:getQuestProgress(310);
	
	    if (value == 0) then --Didn't visit the triggerfield yet

		    Character:setQuestProgress(310,1); --player passed the first station
			
	        local callbackNewbie = function(dialogNewbie) end; --empty callback
			
	        if Character:getPlayerLanguage() == 0 then
		        dialogNewbie = MessageDialog("Tutorial","An dieser Station wird dir die Elfe Aldania erkl�re, wie man Gegenst�nde anlegt, sie benutzt und sie untersucht. Begr��e sie einfach so, wie du es von Henry Cunnigan gelernt hast! Aktiviere deine Chatbox und schreibe 'Hallo'. Du kannst die Chatbox anschlie�end mit einem weiteren Druck der Returntaste deaktivieren.", callbackNewbie)
	        else	
		        dialogNewbie = MessageDialog("Tutorial", "At this station, the elfess Aldania will explain to you how to equip, use and examine items. Greet her as you learned from Henry Cunnigan! Activate your chatbox and type 'Hello'. You can deactivate the chatbox with another hit on the return key.", callbackNewbie)
	        end	
	        Character:requestMessageDialog(dialogNewbie)
		end
	end
end

