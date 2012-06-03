-- INSERT INTO triggerfields VALUES (45,21,100,'triggerfield.noobia_light');
-- INSERT INTO triggerfields VALUES (45,21,100,'triggerfield.noobia_light');
-- INSERT INTO triggerfields VALUES (45,21,100,'triggerfield.noobia_light');
-- INSERT INTO triggerfields VALUES (45,21,100,'triggerfield.noobia_light');

require("base.common")

module("triggerfield.noobia_light", package.seeall)

function MoveToField(Character)
    -- for noobia: the char has to walk to a specific field (this triggerfield); he gets a message and we add a LTEvalue so that we remember he was at the field
	local callbackNewbie = function(dialogNewbie)
           find, myEffect = Character.effect:find(13)
		   if find then
		      myEffect:addValue("noobiaLight",1)
			end  
	end
	
	if player:getPlayerLanguage() == 0 then
		dialogNewbie = MessageDialog("Willkommen!","Um mit dem Echsenmann zu sprechen, �ffne die Sprechkonsole mit Enter, schreibe etwas und dr�cke wieder Enter. Alle NPCs (NonPlayerCharacters) reagiern auf bestimmte Signal W�rter wenn du in ihrer N�he stehst. Versuche den Echsenmann um 'Hilfe' zu bitten. Ist die Sprachkonsole leer, kannst du sie mit erneutem dr�cken der Entertaste schlie�en.", callbackNewbie)
	else	
		dialogNewbie = MessageDialog("Welcome!", "translation", callbackNewbie)
	end	
	player:requestMessageDialog(dialogNewbie)
	
end

