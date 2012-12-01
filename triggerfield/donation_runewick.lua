-- INSERT INTO triggerfields VALUES (897,779,2,'triggerfield.donation_runewick');
-- INSERT INTO triggerfields VALUES (897,780,2,'triggerfield.donation_runewick');
-- INSERT INTO triggerfields VALUES (896,779,2,'triggerfield.donation_runewick');
-- INSERT INTO triggerfields VALUES (896,780,2,'triggerfield.donation_runewick');

require("base.common")
require("triggerfield.donation_base")

module("triggerfield.donation_runewick", package.seeall)

-- Donation to the Runewick treasury
-- 898, 779, 2 = Runewick

function PutItemOnField(Item,User)

    donated=triggerfield.donation_base.donate(Item,User,"Runewick","Elvaine Morgan","TreasureRunewick"); -- That's all folks

   -- Quest 205 (Runewick Treasury, NPC Neiran el Nyarale)

    if (donated) and (User:getQuestProgress(205) == 1) then
		User:setQuestProgress(205, 2); --Quest solved!
		base.common.InformNLS(User,"[Queststatus] Du hast erfolgreich die Aufgabe von Neiran el Nyarale aufgef�hrt. Sprich mit ihm, um deine Belohnung einzufordern.","[Quest status] You successfully completet the task given by Neiran el Nyarale. Talk to him to claim your reward."); --sending a message
	end

	-- Quest end

end
