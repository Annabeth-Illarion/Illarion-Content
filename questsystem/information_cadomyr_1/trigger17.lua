require("handler.sendmessagetoplayer")
require("questsystem.base")
module("questsystem.information_cadomyr_1.trigger17", package.seeall)

local QUEST_NUMBER = 641
local PRECONDITION_QUESTSTATE = 79
local POSTCONDITION_QUESTSTATE = 84

local POSITION = position(117, 579, 0)
local RADIUS = 1
local LOOKAT_TEXT_DE = "Das Bild zeigt stolze Ritter gew�hnliches Volk am Ende einer W�ste, in der N�he von Bergen einen Palast bauen. Einer der Krieger hat einen langen Bart und tr�gt eine Krone. Er h�lt auch einen rot-wei�en Banner. Unten rechts steht ein Datum: 16 BS."
local LOOKAT_TEXT_EN = "The picture shows proud knights watching ordinary folk building a palace at the periphery of a desert close at a mountain. One of the knights has a long beard and wears a crown. He holds also a red-white banner. At the bottom right is a date: 16 BS."

function LookAtItem(PLAYER, item)
  if PLAYER:isInRangeToPosition(POSITION,RADIUS)
      and ADDITIONALCONDITIONS(PLAYER)
      and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then

    itemInformNLS(PLAYER, item, LOOKAT_TEXT_DE, LOOKAT_TEXT_EN)
    
    HANDLER(PLAYER)
    
    questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
    return true
  end

  return false
end

function itemInformNLS(player, item, textDe, textEn)
  if player:getPlayerLanguage() == Player.german then
    world:itemInform(player, item, textDe)
  else
    world:itemInform(player, item, textEn)
  end
end


function HANDLER(PLAYER)
    handler.sendmessagetoplayer.sendMessageToPlayer(PLAYER, "Geh zur�ck zu Frizza und nenne ihr das Geb�ude.", "Go to Frizza back and tell her the building."):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end