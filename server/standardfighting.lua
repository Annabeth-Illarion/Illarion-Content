-- Fighting System
-- All fights are handled with this script
-- Written by martin, Nitram and Xandrina
-- $Id$

-- Hang in base.common - Some functions of the collection are needed
require("base.common")

-- Include base.character to use the methods changing some attributes of the
-- character properly there
require("base.character")

-- Hang in base.playerdeath in order to call it's death recognition functions
require("base.playerdeath")

-- Lists with static values of the fighting system
require("content.fighting")

-- Include the regeneration LTE to access the control functions of this LTE
require("lte.chr_reg");

module("server.standardfighting", package.seeall)

--- Main Attack function. This function is called by the server to start a
-- attack. It is called once for each hand of the attacker. Only the hand with
-- a weapon in it will attack. In case there are weapons in both hands, only the
-- right hand will be used to perform the attack.
-- @param Attacker The character who attacks
-- @param Defender The character who is attacked
-- @return true in case a attack was performed, else false
function onAttack(Attacker, Defender)
    --Attacker:talk(CCharacter.say,"Drin in onAttack");
    -- Prepare the lists that store the required values for the calculation
    local Attacker = { ["Char"]=Attacker };
    local Defender = { ["Char"]=Defender };
    local Globals = {};
    
    -- Newbie Island Check
    if not NewbieIsland(Attacker.Char, Defender.Char) then return false; end;
    
    --Attacker.Char:talk(CCharacter.say,"NI OK");
    -- Load the weapons of the attacker
    LoadWeapons(Attacker);
    
     --   Attacker.Char:talk(CCharacter.say,"WP OK");
    -- Check the range between the both fighting characters
    if not CheckRange(Attacker, Defender.Char) then return false; end;
    
    --Attacker.Char:talk(CCharacter.say,"RANGE OK");
    -- Find out the attack type and the required combat skill
    GetAttackType(Attacker);
    
    --Attacker.Char:talk(CCharacter.say,"ATT TYPE OK");
    -- Check if the attack is good to go (possible weapon configuration)
    if not CheckAttackOK(Attacker) then 
       -- Attacker.Char:talk(CCharacter.say,"ATTER NOT OK");
        return false; 
    end;
    
    --    Attacker.Char:talk(CCharacter.say,"ATTER OK");
    -- Check if ammunition is needed and use it
    if not HandleAmmunition(Attacker) then return false; end;
    
    
    --    Attacker.Char:talk(CCharacter.say,"AMMO OK");
    -- Load Skills and Attributes of the attacking character
    LoadAttribsSkills(Attacker, true);
    
    -- Load weapon data, skills and attributes of the attacked character
    LoadWeapons(Defender);
    LoadAttribsSkills(Defender, false);
    -- Calculate and reduce the required movepoints ******************* NEW **********************
    HandleMovepoints(Attacker)

    base.common.TurnTo(Attacker.Char,Defender.Char.pos);

    -- Show the attacking animation
    ShowAttackGFX(Attacker);
    
    -- Check if a coup de gr�ce is performed
    if CoupDeGrace(Attacker, Defender) then return true; end;
    
    -- Calculate the chance to hit
    if not ChanceToHit(Attacker, Defender) then
        -- Target character was not hit
        LearnDodge(Attacker, Defender);
        
        -- Place some ammo on the ground in case ammo was used
        DropAmmo(Attacker, Defender.Char, true);
        return true;
    end;
    
    -- Calculate the chance to parry
    if ChanceToParry(Defender) then
        -- Hit was parried
        LearnParry(Attacker, Defender);
        
        -- Play the parry sound
        PlayParrySound(Attacker, Defender);
        
        -- Place some ammo on the ground in case ammo was used
        DropAmmo(Attacker, Defender.Char, true);
        return;
    end;
    
    -- Calculate the damage caused by the attack
    CalculateDamage(Attacker, Globals);

--Defender.Char:inform("BaseDamage: "..Globals.Damage);
    
    -- Reduce the damage due the absorbtion of the armor
    ArmorAbsorbtion(Attacker, Defender, Globals);
    
--Defender.Char:inform("BaseDamage after Armor: "..Globals.Damage);    
    -- The effect of the constitution. After this the final damage is avaiable.
    ConstitutionEffect(Defender, Globals);

--Defender.Char:inform("BaseDamage after Consti: "..Globals.Damage);     
    -- Cause the finally calculated damage to the player
    CauseDamage(Attacker, Defender, Globals);
    
    -- Show the final effects of the attack.
    ShowEffects(Attacker, Defender, Globals);
    
    -- Teach the attacker the skill he earned for his success
    LearnSucess(Attacker, Defender)
end;

--------------------------------------------------------------------------------
-- The following functions are support functions that are used to make the    --
-- fighting system work in the way expected. They contain all the needed      --
-- calculations to perform a proper fight.                                    --
--------------------------------------------------------------------------------

--- Calculate the damage that is absorbed by the armor and reduce the stored
-- armor value by this amount.
-- @param Attacker The table that stores the data of the attacker
-- @param Defender The table that stores the data of the defender
-- @param Globals The table that stores the global values
function ArmorAbsorbtion(Attacker, Defender, Globals)
    Globals["HittedArea"] = content.fighting.GetHitArea(Defender.Race);
    Globals["HittedItem"] = Defender.Char:getItemAt(Globals.HittedArea);
    
    local armourfound, armour;
    if (Globals.HittedItem ~= nil and Globals.HittedItem.id > 0) then
        armourfound, armour = world:getArmorStruct(Globals.HittedItem.id);
    else
        armourfound = false;
    end;

    local armourValue = 0;
    
    if armourfound then
        if (Attacker.AttackKind == 0) then --wrestling
            armourValue = armour.ThrustArmor;
        elseif (Attacker.AttackKind == 1) then --slashing
            armourValue = armour.StrokeArmor;
        elseif (Attacker.AttackKind == 2) then --concussion
            armourValue = armour.ThrustArmor;
        elseif (Attacker.AttackKind == 3) then --puncture
            armourValue = armour.PunctureArmor;
        elseif (Attacker.AttackKind == 4) then --distance
            armourValue = armour.PunctureArmor;
        end;
    end;

    armourfound, armour = world:getNaturalArmor(Defender.Race);
    if armourfound then
        if (Attacker.AttackKind == 0) then --wrestling
            armourValue = armourValue + armour.thrustArmor;
        elseif (Attacker.AttackKind == 1) then --slashing
            armourValue = armourValue + armour.strokeArmor;
        elseif (Attacker.AttackKind == 2) then --concussion
            armourValue = armourValue + armour.thrustArmor;
        elseif (Attacker.AttackKind == 3) then --puncture
            armourValue = armourValue + armour.punctureArmor;
        elseif (Attacker.AttackKind == 4) then --distance
            armourValue = armourValue + armour.punctureArmor;
        end;
    end;

    Globals.Damage = Globals.Damage - (Globals.Damage * armourValue / 250);
    Globals.Damage = math.max(0, Globals.Damage);
end;

--- Calculate the damage that is caused by the attack. This function calculates
-- the raw damage and stores it in the globals table. The damage calculated here
-- has to be lowered by the armor and the constitution of the attacked
-- character.
-- @param Attacker The table of the character who is attacking
-- @param Globals The global data table
function CalculateDamage(Attacker, Globals)
    local BaseDamage;
    local StrengthBonus;
    local PerceptionBonus;
    local DexterityBonus;
    local SkillBonus;
    local TacticsBonus;
    
    if Attacker.IsWeapon then
        BaseDamage = Attacker.Weapon.Attack * 10;
    else
        BaseDamage = content.fighting.GetWrestlingAttack( Attacker.Race ) * 10;
    end;
  --Defender.Char:inform("Base Damage 1 "..BaseDamage);  
    StrengthBonus = (Attacker.strength - 6) * 3;
    PerceptionBonus = (Attacker.perception - 6) * 1;
    DexterityBonus = (Attacker.dexterity - 6) * 1;
    SkillBonus = (Attacker.skill - 20) * 1;
    TacticsBonus = (Attacker.tactics - 20) * 0.5;

    Globals["Damage"] = BaseDamage * (100 + StrengthBonus + PerceptionBonus + DexterityBonus + SkillBonus + TacticsBonus)/100;
    
end;

--- Deform some final checks on the damage that would be caused and send it to
-- the character. Also here the Coup de Gr�ce is done.
-- @param Attacker The table of the attacking Character
-- @param Defender The table of the attacked Character
-- @param Globals The table of the global values
function CauseDamage(Attacker, Defender, Globals)
    --Defender.Char:talk(CCharacter.say, "-" .. Globals.Damage .. "HP");
    if base.character.IsPlayer(Defender.Char) 
        and base.character.WouldDie(Defender.Char, Globals.Damage + 1)
        and (Attacker.AttackKind ~= 4)
        and not base.character.AtBrinkOfDeath(Defender.Char) then
        -- Character would die. Nearly killing him and moving him back in case
        -- its possible
        base.character.ToBrinkOfDeath(Defender.Char);

        local CharOffsetX = Attacker.Char.pos.x - Defender.Char.pos.x;
        local CharOffsetY = Attacker.Char.pos.y - Defender.Char.pos.y;

        if (CharOffsetY > 0) then
            CharOffsetY = (Attacker.Weapon.Range - math.abs(CharOffsetX) + 1)
                * (-1);
        elseif (CharOffsetY < 0) then
            CharOffsetY = (Attacker.Weapon.Range - math.abs( CharOffsetX ) + 1);
        end;

        if (CharOffsetX > 0) then
            CharOffsetX = (Attacker.Weapon.Range - math.abs(CharOffsetY) + 1)
                * (-1);
        elseif (CharOffsetX < 0) then
            CharOffsetX = (Attacker.Weapon.Range - math.abs(CharOffsetY) + 1);
        end;

        local newPos = position(Defender.Char.pos.x + CharOffsetX,
            Defender.Char.pos.y + CharOffsetY, Defender.Char.pos.z);
            Defender.Char:warp(newPos);

        base.common.TalkNLS(Defender.Char, CCharacter.say,
            "#me stolpert zur�ck und geht zu Boden.",
            "#me stumbles back and falls to the ground.");

        base.common.ParalyseCharacter(Defender.Char, 7, false, true);

        lte.chr_reg.stallRegeneration(Defender.Char, 20);

        return true;
    else
        if not base.character.ChangeHP(Defender.Char, -Globals.Damage) then
            if base.character.IsPlayer(Defender.Char) then
                base.playerdeath.playerKilledByFighting(Defender.Char,
                    Attacker.Char);
            else
                base.playerdeath.monsterKilledByFighting(
                    Defender.Char:get_mon_type(), Attacker.Char);
            end;
        end;
        
        if (Attacker.AttackKind == 4) then -- distanz angriff.
            Defender.Char.movepoints = Defender.Char.movepoints - 5;
            DropAmmo(Attacker, Defender.Char, false);
        end;
    end;
end;

--- Check if the attacking character is hitting the target or not.
-- @param Attacker The table that stores the values of the attacker
-- @param Defender The table that stores the values of the defender
-- @return true in case the target receives the hit
function ChanceToHit(Attacker, Defender)
    local chance = (20 + Attacker.skill)
        / ((20 + Defender.dodge)
            * 2);
    if (Attacker.isWeapon) then
        chance = chance * (40 + Attacker.Weapon.Accuracy) / 100;
    else
        chance = chance * (40 + content.fighting.GetWrestlingAccuracy( Attacker.Race )) / 100;
    end;
    return base.common.Chance(chance);
end;

--- Calculate the chance to parry. This considers both weapons the defender
-- carries and seaches for the fest item to parry with.
-- @param Defender The table that stores all data of the defender
-- @return true in case the hit was parried
function ChanceToParry(Defender)
    if not Defender.LeftIsWeapon and not Defender.RightIsWeapon then
        return false;
    end;
    
    local parryType = -1;
    local parryWeapon;
    if Defender.LeftIsWeapon then
        local weaponType = Defender.LeftWeapon.WeaponType;
        if (weaponType == 14) then -- shield
            parryType = 3;
            parryWeapon = Defender.LeftWeapon;
        elseif (weaponType == 1) or (weaponType == 2) or (weaponType == 3) then
            -- one hand weapon
            parryType = 2;
            parryWeapon = Defender.LeftWeapon;
        elseif (weaponType == 4) or (weaponType == 5) or (weaponType == 6) then
            -- two hand weapon
            parryType = 1;
            parryWeapon = Defender.LeftWeapon;
        end;
    end;
    
    if Defender.RightIsWeapon then
        local weaponType = Defender.RightWeapon.WeaponType;
        if (weaponType == 14) then -- shield
            if (parryType == 3) then
                if (parryWeapon.Defence < Defender.RightWeapon.Defence) then
                    parryWeapon = Defender.RightWeapon;
                end;
            else
                parryType = 3;
                parryWeapon = Defender.RightWeapon;
            end;
        elseif ((weaponType == 1) or (weaponType == 2) or (weaponType == 3))
            and (parryType <= 2) then -- one hand weapon
            if (parryType == 2) then
                if (parryWeapon.Defence < Defender.RightWeapon.Defence) then
                    parryWeapon = Defender.RightWeapon;
                end;
            else
                parryType = 2;
                parryWeapon = Defender.RightWeapon;
            end;
        elseif ((weaponType == 4) or (weaponType == 5) or (weaponType == 6))
            and (parryType <= 1) then
            if (parryType == 1) then -- two hand weapon
                if (parryWeapon.Defence < Defender.RightWeapon.Defence) then
                    parryWeapon = Defender.RightWeapon;
                end;
            else
                parryType = 1;
                parryWeapon = Defender.RightWeapon;
            end;
        end;
    end;
    
    local chance;
    if (parryType == 3) then -- shield parry
        chance = (Defender.parry / 4);
        chance = chance * (1 - math.max((16 - Defender.dexterity) / 20, 0));
        chance = chance + (parryWeapon.Defence - 70) / 8;
    elseif (parryType == 2) then -- one handed parry
        chance = (Defender.parry / 8);
        chance = chance * (1 - math.max((16 - Defender.dexterity) / 20, 0));
        chance = chance + (30 - parryWeapon.Defence) / 2;
    elseif (parryType == 1) then -- two handed parry
        chance = (Defender.parry / 8);
        chance = chance * (1 - math.max((16 - Defender.dexterity) / 20, 0));
        chance = chance + (66 - parryWeapon.Defence) / 1.5;
    else
        return false;
    end;
    
    return base.common.Chance(chance, 100);
end;

--- Check if the setting of items the character is using is good for a attack
-- @param CharStruct The table of the attacker that holds all values load
-- @return true in case the attack is fine
function CheckAttackOK(CharStruct)
    if (CharStruct["AttackKind"] == nil) then -- finding the attack type failed
        return false;
    end;
    --CharStruct.Char:talk(CCharacter.say,"check 1 ok");
    if (CharStruct.WeaponItem.id == 228) then -- Item is occupied
        return false;
    end;
    --CharStruct.Char:talk(CCharacter.say,"check 2 ok");
    if (CharStruct.SecIsWeapon) then
        -- there is something in the second hand
        if (CharStruct.AttackKind == 0) then
            -- but nothing in the first
            --CharStruct.Char:talk(CCharacter.say,"check 3 ok");
            return false;
        elseif (CharStruct.SecWeapon.WeaponType == 7) then
            -- but a distance weapon in the first
            --CharStruct.Char:talk(CCharacter.say,"check 4 ok");
            return false;
        elseif (CharStruct.Weapon.WeaponType == 13) then
            -- but a wand in the first
            --CharStruct.Char:talk(CCharacter.say,"check 5 ok");
            return false;
        end;
    end;
   -- CharStruct.Char:talk(CCharacter.say,"check 7 ok");
    return true;
end;

--- Check the range from the attacker to the defender and ensure that it is
-- within weapon distance.
-- @param AttackerStruct The table that stores the data of the attacker
-- @param Defender The character who is attacked
-- @return true in case the range is fine, else false
function CheckRange(AttackerStruct, Defender)
    local distance = AttackerStruct.Char:distanceMetric(Defender);
    if AttackerStruct.IsWeapon then
        return (distance <= AttackerStruct.Weapon.Range);
    end;
    return (distance <= 1 );
end;

--- Calculate the effect of the constitution on the damage. Depending on the
-- constitution this can raise or lower the damage.
-- @param Defender The table that stores the data of the defender
-- @param Globals The table that stores the global values
function ConstitutionEffect(Defender, Globals)
    if (Globals.Damage == 0) then
        return;
    end;
    
    Globals.Damage = Globals.Damage * 14 / Defender.constitution;
end;

--- Checks if a coup de gr�ce is performed on the attacked character and kills
-- the char if needed
-- @param Attacker The table of the attacking character
-- @param Defender The table of the attacked character
-- @return true if a coup de gr�ce was done
function CoupDeGrace(Attacker, Defender)
    if (Attacker.Char:get_type() ~= 0) then -- Only for player characters
        return false;
    end;

    if (Attacker.AttackKind == 4) then -- Not done for distance weapons
        return false;
    end;

    if content.fighting.IsTrainingWeapon(Attacker.WeaponItem.id) then
        -- not done for training weapons
        return false;
    end;

    if (base.character.AtBrinkOfDeath(Defender.Char)) then
        -- character nearly down
        local gText = base.common.GetGenderText(Attacker.Char, "seinem",
            "ihrem");
        local eText = base.common.GetGenderText(Attacker.Char, "his",
            "her");
        Attacker.Char:talkLanguage(CCharacter.say, CPlayer.german,
            string.format("#me gibt %s Gegner den Gnadensto�.", gText));
        Attacker.Char:talkLanguage(CCharacter.say, CPlayer.english,
            string.format("#me gives %s enemy the coup de gr�ce.", eText));
        
        -- Kill character and notify other scripts about the death
        if not base.character.Kill(Defender.Char) then
            -- something interrupted the kill
            return true;
        end;
        base.playerdeath.playerKilledByFighting(Defender.Char, Attacker.Char);
    
        -- Drop much blood around the player
        DropMuchBlood(Defender.Char.pos);
    end;
    
    return false;
end;

--- Drops the used ammo in case there is any ammo. This functions placed the
-- used ammunition under the character in case the target character is a player,
-- else the ammunition is dropped into the inventory of the target.
-- @param Attacker The table of the attacking char
-- @param Defender The character of the character that is supposed to receive
--                  the attack
-- @param GroundOnly true in case the item is supposed to be dropped only on the
--                  ground
function DropAmmo(Attacker, Defender, GroundOnly)
    if ( Attacker.AttackKind ~= 4 ) then -- no distanz Attack --> no ammo
        return;
    end;
    
    if base.common.Chance(0.33) then
        local AmmoItem;
        if (Attacker.Weapon.AmmunitionType
            == Attacker.SecWeapon.WeaponType) then
            AmmoItem = Attacker.SecWeaponItem;
        elseif (Attacker.Weapon.AmmunitionType == 255) then
            AmmoItem = Attacker.WeaponItem;
        else
            return false;
        end;
    
        if not GroundOnly and (Defender:get_type() == 1) then -- monsters get 
            -- the ammo into the inventory
            Defender:createItem(AmmoItem.id, 1, AmmoItem.quality,
                AmmoItem.data);
        else
            if world:isItemOnField(Defender.pos) then
                local oldItem = world:getItemOnField(Defender.pos);
                if (oldItem.wear < 255 and oldItem.id == AmmoItem.id
                    and oldItem.quality == AmmoItem.quality
                    and oldItem.data == AmmoItem.data) then
                    
                    oldItem.number = oldItem.number + 1;
                    oldItem.wear = 5;
                    world:changeItem( oldItem );
                    return;
                elseif (oldItem.wear == 255) then
                    return;
                end;
            end;
            world:createItemFromId(AmmoItem.id, 1, dropPos, true,
            AmmoItem.quality, AmmoItem.data);
        end;
    end;
end;

--- Drop a blood spot on the ground at a specified location.
-- @param Posi The location where the blood spot is placed
function DropBlood(Posi)
    if world:isItemOnField(Posi) then
        local item = world:getItemOnField(Posi);
        if (item.id == 3101 or item.wear ~= 255) then
            return;
        end;
    end;
    Blood = world:createItemFromId(3101, 1, Posi, true, 333, 0);
    Blood.wear = 2;
    world:changeItem(Blood);
end;

--- Drop alot of blood. This function drops blood on every tile around the
-- position set as center.
-- @param Posi The center of the bloody area
function DropMuchBlood(Posi)
    local workingPos = base.common.CopyPosition(Posi);
    
    workingPos.x = workingPos.x - 1;
    workingPos.y = workingPos.y - 1;
    for i = 1, 3 do
        for j = 1, 3 do
            DropBlood(workingPos);
            workingPos.x = workingPos.x + 1;
        end;
        workingPos.x = workingPos.x - 3;
        workingPos.y = workingPos.y + 1;
    end;
end;

--- Identify the used attack kind and set up identifier values and the skill
-- name This also finds out if a one or a two handed weapoon is used
-- Possible Values for AttackKind
-- 0 - wrestling
-- 1 - slashing
-- 2 - concussion
-- 3 - puncture
-- 4 - distance
-- @param CharStruct The table of the character the values should be generated
function GetAttackType(CharStruct)
    if not CharStruct.IsWeapon then
        CharStruct["AttackKind"] = 0;
        CharStruct["UsedHands"] = 1;
        CharStruct["Skillname"] = "wrestling";
        return;
    end;
    
    local weaponType = CharStruct.Weapon.WeaponType;
    if (weaponType == 1) or (weaponType == 4) then
        CharStruct["AttackKind"] = 1;
        CharStruct["Skillname"] = "slashing weapons";
        if (weaponType == 1) then
            CharStruct["UsedHands"] = 1;
        else
            CharStruct["UsedHands"] = 2;
        end;
    elseif (weaponType == 2) or (weaponType == 5) then
        CharStruct["AttackKind"] = 2;
        CharStruct["Skillname"] = "concussion weapons";
        if (weaponType == 2) then
            CharStruct["UsedHands"] = 1;
        else
            CharStruct["UsedHands"] = 2;
        end;
    elseif (weaponType == 3) or (weaponType == 6) then
        CharStruct["AttackKind"] = 3;
        CharStruct["Skillname"] = "puncture weapons";
        if (weaponType == 3) then
            CharStruct["UsedHands"] = 1;
        else
            CharStruct["UsedHands"] = 2;
        end;
    elseif (weaponType == 7) then
        CharStruct["AttackKind"] = 4;
        CharStruct["Skillname"] = "distance weapons";
        if (weaponType == 255) then
            CharStruct["UsedHands"] = 1;
        else
            CharStruct["UsedHands"] = 2;
        end;
    end;
end;

--- Checks if the attacker is using a distance weapon and check and remove the
-- ammunition in case its needed
-- @param Attacker The table that stores the data of the attacking char
-- @return true in case the attack is good to go
function HandleAmmunition(Attacker)
    if (Attacker.Char:get_type() == 1) then -- Monsters do not use ammo
        return true;
    end;
    
    if (Attacker.AttackKind ~= 4) then -- Ammo only needed for distance attacks
        return true;
    end;
    
    if (Attacker.Weapon.AmmunitionType == Attacker.SecWeapon.WeaponType) then
        Attacker.Char:increaseAtPos(Attacker.SecWeaponItem.itempos, -1);
    elseif (Attacker.Weapon.AmmunitionType == 255) then
        Attacker.Char:increaseAtPos(Attacker.WeaponItem.itempos, -1);
    else
        return false;
    end;
    return true;
end;

--- Calculate the required movepoints for this attack and reduce the attacker
-- movepoints by the fitting value.
-- @param Attacker The table that stores the values of the attacker
function HandleMovepoints(Attacker)
    local weaponFightpoints;
    if Attacker.IsWeapon then
        weaponFightpoints = Attacker.Weapon.ActionPoints;
    else
        weaponFightpoints = content.fighting.GetWrestlingMovepoints(
            Attacker.Race);
    end;
    
    local reduceFightpoints = math.max( 7 , weaponFightpoints*(100 - (Attacker.agility)*2.5) / 100 );
    base.character.ChangeFightingpoints(Attacker.Char,
        -math.floor(reduceFightpoints));
    Attacker.Char.movepoints=Attacker.Char.movepoints-7; 
    return true;
end;

--- Learning function called when ever the attacked character dodges the attack.
-- The defender learns dodge skill in this case, the attacker learns his
-- attack skill as well as the tactics skill.
-- @param Attacker The table containing the attacker data
-- @param Defender The table containing the defender data
function LearnDodge(Attacker, Defender)
    if (Attacker.skill >= Defender.dodge - 10) then
        --Defender.Char:learn(5, "dodge", 2,base.common.Limit(Attacker.skill + 10, 0, 100 ));
		--Replace with new learn function, see learn.lua 
    end;
    
    if (Defender.dodge >= Attacker.skill - 10) then
        --Attacker.Char:learn(5, Attacker.Skillname, 2,base.common.Limit(Defender.dodge + 10, 0, 100 ));
		--Replace with new learn function, see learn.lua
    end;
    
    if base.common.Chance(0.25) then
        --Attacker.Char:learn(5, "tactics", 1, 100);
		--Replace with new learn function, see learn.lua 
    end;
end;

--- Learning function called when ever the attacked character fails to avoid the
-- attack. The defender learns nothing in this case, the attacker learns his
-- attack skill as well as the tactics skill.
-- @param Attacker The table containing the attacker data
-- @param Defender The table containing the defender data
function LearnSucess(Attacker, Defender)
    if (math.max(Defender.dodge, Defender.parry) >= Attacker.skill - 10) then
        --Attacker.Char:learn(5, Attacker.Skillname, 2,base.common.Limit(Defender.dodge + 10, 0, 100 ));
		--Replace with new learn function, see learn.lua 
    end;
    
    if base.common.Chance(0.33) then
        --Attacker.Char:learn(5, "tactics", 1, 100);3
		--Replace with new learn function, see learn.lua
    end;
end;

--- Learning function called when ever the attacked character parries the
-- attack. The defender learns parry skill in this case, the attacker learns his
-- attack skill as well as the tactics skill.
-- @param Attacker The table containing the attacker data
-- @param Defender The table containing the defender data
function LearnParry(Attacker, Defender)
    if (Attacker.skill >= Defender.parry - 10) then
        --Defender.Char:learn(5, "parry", 2,base.common.Limit(Attacker.skill + 10, 0, 100 ));
		--Replace with new learn function, see learn.lua
    end;
        
    if (Defender.parry >= Attacker.skill - 10) then
        --Attacker.Char:learn(5, Attacker.Skillname, 2,base.common.Limit(Defender.dodge + 10, 0, 100 ));
		--Replace with new learn function, see learn.lua
    end;
        
    if base.common.Chance(0.25) then
        --Attacker.Char:learn(5, "tactics", 1, 100);
		--Replace with new learn function, see learn.lua
    end;
end;

function NotNil(val)
    if val==nil then
        return 0;
    end
    return val;
end


--- Load the attributes and skills of a character. Depending on the offensive
-- parameter the skills for attacking or for defending are load.
-- @param CharStruct The character table of the char the values are load for
-- @param Offensive true in case attributes and skills for the attacker shall be
--                      load
function LoadAttribsSkills(CharStruct, Offensive)
    if Offensive then
        CharStruct["strength"] = NotNil(CharStruct.Char:increaseAttrib("strength", 0));
        CharStruct["agility"] = NotNil(CharStruct.Char:increaseAttrib("agility", 0));
        CharStruct["perception"]
            = NotNil(CharStruct.Char:increaseAttrib("perception", 0));
        CharStruct["skill"] = NotNil(CharStruct.Char:getSkill(CharStruct.Skillname));
        CharStruct["natpoison"] = NotNil(CharStruct.Char:getSkill("poisonstrength"));
        CharStruct["tactics"] = NotNil(CharStruct.Char:getSkill("tactics"));
        CharStruct["dexterity"]
            = NotNil(CharStruct.Char:increaseAttrib("dexterity", 0));
    else
        CharStruct["dexterity"]
            = NotNil(CharStruct.Char:increaseAttrib("dexterity", 0));
        CharStruct["constitution"]
            = NotNil(CharStruct.Char:increaseAttrib("constitution", 0));
        CharStruct["parry"] = NotNil(CharStruct.Char:getSkill("parry"));
        CharStruct["dodge"] = NotNil(CharStruct.Char:getSkill("dodge"));
    end;
    CharStruct["Race"] = CharStruct.Char:get_race();
end;

--- Load all weapon data for a character. The data is stored in the table that
-- is used as the parameter. 
-- @param CharStruct The table of the character the weapons are supposed to be
--                      load for
function LoadWeapons(CharStruct)
    local rItem = CharStruct.Char:getItemAt(CCharacter.right_tool);
    local lItem = CharStruct.Char:getItemAt(CCharacter.left_tool);
    local rAttFound, rAttWeapon = world:getWeaponStruct(rItem.id);
    local lAttFound, lAttWeapon = world:getWeaponStruct(lItem.id);
    
    --CharStruct.Char:inform("R: "..rItem.id .. " L: "..lItem.id);
    
    -- the right item is ALWAYS used as the weapon now!
    
    CharStruct["WeaponItem"] = rItem;
    CharStruct["IsWeapon"] = rAttFound;
    CharStruct["Weapon"] = rAttWeapon;
    
    -- the left item is ALWAYS used as shield or ammunition
 
    CharStruct["SecWeaponItem"] = lItem;
    CharStruct["SecIsWeapon"] = lAttFound;
    CharStruct["SecWeapon"] = lAttWeapon;
    
    CharStruct["LeftWeaponItem"] = lItem;
    CharStruct["LeftIsWeapon"] = lAttFound;
    CharStruct["LeftWeapon"] = lAttWeapon;
    
    CharStruct["RightWeaponItem"] = rItem;
    CharStruct["RightIsWeapon"] = rAttFound;
    CharStruct["RightWeapon"] = rAttWeapon;

end;

--- Check if the character is on newbie island and reject the attack in that.
-- This is required to allow newbie island to work correctly.
-- @param Attacker The character who is attacking
-- @param Defender The character who is attacked
-- @return true in case the attack can go on, else it has to be stopped
function NewbieIsland(Attacker, Defender)
    -- Newbie Island is on z-level 100 and aboth. if that does not fit we are
    -- not in the newbie island and the Attack is okay.
    if (Attacker.pos.z < 100 or Attacker.pos.z > 105) then
        return true;
    end;

    -- in case the character it not a other player character, the Attack is
    -- okay anyway.
    if (Defender:get_type() ~= 0) then
        return true;
    end;

    -- the Attacker did not start the newbie island quest. Attack is fine.
    if (Attacker:getQuestProgress(2) == 0) then
        return true;
    end;

    -- The Attacker is a GM. Attacking is fine
    if Attacker:isAdmin() then
        return true;
    end;

    -- So now the character is on newbie island and not allowed to Attack.
    -- Some lines to ensure the player is not spammed to death if messages
    if (_AntiSpamVar==nil) then
        _AntiSpamVar = {};
    end;
    if (_AntiSpamVar[Attacker.id] == nil) then 
        _AntiSpamVar[Attacker.id] = 0;
    elseif (_AntiSpamVar[Attacker.id] < 280) then
        _AntiSpamVar[Attacker.id] =_AntiSpamVar[Attacker.id] + 1;
    else
        base.common.InformNLS(Attacker,
        "Du darfst jetzt noch keine anderen Spieler angreifen, erst auf Gobaith. Halte STRG gedr�ckt und klicke nochmals auf deinen Gegner, um den Kampf abzubrechen.",
        "You are not allowed to attack other players yet, only as soon as you enter Gobaith. Hold CTRL and click again on your enemy in order to cancel the attack.");
        _AntiSpamVar[Attacker.id] = 0;
    end;
    return false;
end;

--- Play the sound of a successful parry.
-- @param Attacker The table of the character who is attacking
-- @param Defender The table of the character who is attacked
function PlayParrySound(Attacker, Defender)
    if not Attacker.IsWeapon then
        world:makeSound(32,Attacker.Char.pos);
        return true;
    end;
    
    if not Defender.RightIsWeapon and not Defender.LeftIsWeapon then
        world:makeSound(32,Attacker.Char.pos);
        return true;
    end;
    
    local DefenderWeapon = 0;
    if Defender.RightIsWeapon then
        DefenderWeapon = Defender.RightWeapon.WeaponType;
    end;
    
    if Defender.LeftIsWeapon then
        DefenderWeapon = math.max(DefenderWeapon,
            Defender.LeftWeapon.WeaponType);
    end;
    if (Sounds[DefenderWeapon] ~= nil) then
        if (Sounds[DefenderWeapon][Attacker.Weapon.WeaponType] ~= nil) then
            world:makeSound(Sounds[DefenderWeapon][Attacker.Weapon.WeaponType],
                Attacker.Char.pos);
            return true;
        end;
    end;
    world:makeSound(32, Attacker.Char.pos);
    return true;
end

--- Show the attacking animation for the attacking character.
-- @param Attacker The table that stores the attacker data
function ShowAttackGFX(Attacker)
    if (Attacker.AttackKind == 0) then -- wrestling
        Attacker.Char:performAnimation(5);
    elseif (Attacker.AttackKind == 4) then -- distance
        Attacker.Char:performAnimation(7);
    elseif (Attacker.UsedHands == 2) then -- 2 hands attack
        Attacker.Char:performAnimation(6);
    else -- 1 hand attack
        Attacker.Char:performAnimation(5);
    end;
end;

--- Show the effects of a successfull attack. This Drops some blood in case
-- the attack is very strong or a critical hit and it raises the sound effects
-- that fit this attack.
-- @param Attacker The table of the attacking Character
-- @param Defender The table of the attacked Character
-- @param Globals The table of the global values
function ShowEffects(Attacker, Defender, Globals)
    if (Globals.Damage > 0) then
        world:gfx(13, Defender.Char.pos); -- Blood effect, remove maybe?
        if Globals.criticalHit then
            InformAboutCritical(Attacker.Char, Defender.Char, Globals.HittedArea);
            --[[ Wounds Script - Disabled for now
            if base.character.IsPlayer(Defender.Char) and (math.random(8) == 1) then
                Defender.Char.effects:addEffect(CLongTimeEffect(21, 10));
            end;
            --]]
            
            DropMuchBlood(Defender.Char.pos);
        elseif (Globals.Damage > 2000) then
            DropBlood(Defender.Char.pos);
        end;
    end;
    
    if (Attacker.AttackKind == 0) then --wresting
        world:makeSound(3,Defender.Char.pos);
    elseif (Attacker.AttackKind==1) then --slashing
        world:makeSound(33,Defender.Char.pos);
    elseif (Attacker.AttackKind==2) then --concussion
        world:makeSound(32,Defender.Char.pos);
    elseif (Attacker.AttackKind==3) then --puncture
        world:makeSound(33,Defender.Char.pos);
    elseif (Attacker.AttackKind==4) then --distance
        world:makeSound(31,Defender.Char.pos);
    end;
end;


-- Parry sounds
-- Line and column the item Types the attacker and the defender are
-- using
-- id of the sounds that shall be played at a parry
Sounds={};
Sounds[1]={32,32,32,32,32,32};
Sounds[2]={32,42,43,42,42,44};
Sounds[3]={32,43,41,42,40,41};
Sounds[4]={32,42,42,42,42,44};
Sounds[5]={32,42,40,42,42,44};
Sounds[6]={32,44,41,44,44,41};
Sounds[14]={32,43,41,42,40,41};
