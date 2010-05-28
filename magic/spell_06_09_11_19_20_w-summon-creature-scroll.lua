-- SUMMON AGRESSIVE CREATURE
-- Rune 6 & 9 & 11 & 19 & 20 LUK TAUR IRA FHAN LEV
-- INSERT INTO spells VALUES (2^5+2^8+2^10+2^18+2^19,0,'m_06_09_11_19_29_write-summon-creature-scroll.lua');
-- Spruchrollen Zauber
-- Beschw�rungs Zauber

require("magic.base.basics");
module("magic.spell_06_09_11_19_20_write-summon-creature-scroll.lua")
function InitSpell() -- Spell Grundeinstellungen
    Difficult=75;
    NeededSkill="desicio";

    Runes="LUK TAUR IRA FHAN LEV";

    Effect=53;
    SFX=4;

    timeToCast=50;
    timeGfxEffect=21;
    timeRptGfxEffect=10;
    timeSndEffect=0;
    timeRptSndEffect=0;

    maxHPNeeded=0;
    minHPNeeded=0;
    maxFPNeeded=0;
    minFPNeeded=0;
    maxAPNeeded=25;
    minAPNeeded=7;
    maxMPNeeded=1500;
    minMPNeeded=500;
    maxPPCaused=0;
    minPPCaused=0;

    SpRange=7;

    maxStrength=90;

    -- RaceID,CasterBoni
    magic.base.basics.SetRaceBoni(0,1.00); --human
    magic.base.basics.SetRaceBoni(1,0.70); --dwarf
    magic.base.basics.SetRaceBoni(2,0.75); --halfling
    magic.base.basics.SetRaceBoni(3,1.25); --elf
    magic.base.basics.SetRaceBoni(4,0.60); --orc
    magic.base.basics.SetRaceBoni(5,0.65); --lizardman
    magic.base.basics.SetRaceBoni(6,1.10); --gnome
    magic.base.basics.SetRaceBoni(7,1.45); --fairy
    magic.base.basics.SetRaceBoni(8,1.15); --goblin
    magic.base.basics.SetRaceBoni(9,0.20); --troll
    magic.base.basics.SetRaceBoni(10,1.00);--mumie
    magic.base.basics.SetRaceBoni(11,1.05);--skeleton
    magic.base.basics.SetRaceBoni(12,1.15);--beholder
    magic.base.basics.SetRaceBoni(13,1.00);--cloud
    magic.base.basics.SetRaceBoni(14,1.00);--healer
    magic.base.basics.SetRaceBoni(15,1.00);--buyer
    magic.base.basics.SetRaceBoni(16,1.00);--seller
    magic.base.basics.SetRaceBoni(17,0.20);--insects
    magic.base.basics.SetRaceBoni(18,0.20);--sheep
    magic.base.basics.SetRaceBoni(19,0.20);--spider
    magic.base.basics.SetRaceBoni(20,1.50);--demonskeleton
    magic.base.basics.SetRaceBoni(21,0.20);--rotworm
    magic.base.basics.SetRaceBoni(22,2.00);--bigdemon
    magic.base.basics.SetRaceBoni(23,0.20);--scorpion
    magic.base.basics.SetRaceBoni(24,0.20);--pig
    magic.base.basics.SetRaceBoni(25,1.00);--invisible
    magic.base.basics.SetRaceBoni(26,1.20);--skull
    magic.base.basics.SetRaceBoni(27,0.20);--wasp
    magic.base.basics.SetRaceBoni(28,0.50);--foresttroll
    magic.base.basics.SetRaceBoni(29,1.80);--shadowskeleton
    magic.base.basics.SetRaceBoni(30,0.20);--stonegolem
    magic.base.basics.SetRaceBoni(31,1.00);--mgoblin
    magic.base.basics.SetRaceBoni(32,0.30);--gnoll
    magic.base.basics.SetRaceBoni(33,0.85);--dragon
    magic.base.basics.SetRaceBoni(34,1.00);--mdrow
    magic.base.basics.SetRaceBoni(35,1.00);--fdrow
    magic.base.basics.SetRaceBoni(36,1.80);--lesserdemon
end

function CastMagic(Caster,counter,param, ltstate)
    WriteTeleSpell(Caster, ltstate);
end

function CastMagicOnCharacter(Caster,TargetCharacter,counter,param, ltstate)
    WriteTeleSpell(Caster, ltstate);
end

function CastMagicOnField(Caster,Targetpos,counter,param, ltstate)
    WriteTeleSpell(Caster, ltstate);
end

function CastMagicOnItem(Caster,TargetItem,counter,param, ltstate)
    WriteTeleSpell(Caster, ltstate);
end

function WriteTeleSpell(Caster, ltstate )
    InitSpell();
    magic.base.basics.InitializeHelpList();
    if ( ltstate == nil or ltstate == Action.success or timeToCast == 0 ) then
        local CasterVal=magic.base.basics.CasterValue(Caster);
        --Caster:inform("CasterVal: "..CasterVal);
        local HPChange=CalcAttribChange(minHPNeeded,maxHPNeeded,CasterVal);
        local FPChange=CalcAttribChange(minFPNeeded,maxFPNeeded,CasterVal);
        local APChange=CalcAttribChange(minAPNeeded,maxAPNeeded,CasterVal);
        local MPChange=CalcAttribChange(minMPNeeded,maxMPNeeded,CasterVal);
        --Caster:inform("MPChange: "..MPChange);
        local PPCaused=CalcAttribChange(minPPCaused,maxPPCaused,CasterVal);
        if CheckAttrib(Caster,"hitpoints",HPChange) then
            if CheckAttrib(Caster,"foodlevel",FPChange) then
                if CheckAttrib(Caster,"mana",MPChange) then
                    if (HPChange~=0) then Caster:increaseAttrib("hitpoints",-HPChange) end;
                    if (FPChange~=0) then Caster:increaseAttrib("foodlevel",-FPChange) end;
                    if (MPChange~=0) then Caster:increaseAttrib("mana",-MPChange) end;
                    if (PPCaused~=0) then Caster:increasePoisonValue(PPCaused) end;
                    if (APChange~=0) then Caster.movepoints=Caster.movepoints-APChange end;
                    if (CasterVal>0) then
                        -- magic.base.basics.SayRunes(Caster);
                        if (LuaAnd(Caster:getQuestProgress(24),1) == 0 ) then
                            Caster:learn(3,NeededSkill,3,math.max(0,math.min(100,CasterVal+30)));
                        end

			-- Variablen setzen
			--
			parchment=nil;
			itemL=nil;
			itemR=nil;
			ash=nil;
			diamond=nil;

			--quality setzen

                        -- Meine H�nde
                        itemL = Caster:getItemAt(5);
                        itemR = Caster:getItemAt(6);

                     -- Stufe 1: Streue Asche auf die offene Pergamentrolle
			local successStepOne = true;

                        -- Wo ist die offene Pergamentrolle, haben wir �berhaupt eine?
                        if ( (itemL.id == 3109) and (itemL.data~=600) ) then
                            parchment = itemL;
                        elseif ( (itemR.id == 3109) and (itemL.data~=600) ) then
                            parchment = itemR;
                        else
                            successStepOne = false;
                        end

			-- Und was ist �berhaupt mit der Asche?
			--

			if  (itemL.id == 314) then
                            ash = itemL;
                        elseif (itemR.id == 314) then
                            ash = itemR;
                        else
			    if ( (ash~=nil) and ((ash.quality==101) or (ash.quality==111) or (ash.quality==171) or (ash.quality==211) or (ash.quality==231)) ) then
                            	successStepOne = true;
			    else
			    	successStepOne = false;
			    end
                        end

		    -- Stufe 2: Schriftrolle versiegeln
		    	local successStepTwo = true;

			-- Wo ist die angefangene Pergamentrolle, haben wir eine und ist es auch die richtige?
			Caster:inform("moep->start");
			if ( (itemL.id == 3109) and (itemL.data==600) ) then
			    Caster:inform("moep->Scroll links");
			    parchment = itemL;
			elseif ( (itemR.id == 3109) and (itemR.data==600) ) then
			    Caster:inform("moep->Scroll rechts");
			    parchment = itemR;
			else
			    successStepTwo = false;
			end

			-- Und ist auch der Diamant zu versiegeln da?
			if (itemL.id == 285) then
			    Caster:inform("moep->Stein links");
			    diamond = itemL;
			elseif (itemR.id == 285) then
			    Caster:inform("moep->Stein rechts");
			    diamond = itemR;
                        else
                            successStepTwo = false;
                        end

                        if successStepOne then
                            world:erase( ash, 1 );
			    parchment.quality=ash.quality;
			    parchment.data=600;

			    world:changeItem(parchment);

			    world:gfx(Effect,Caster.pos);
			    world:makeSound(SFX,Caster.pos);

			elseif successStepTwo then
			    world:erase( diamond,1 );

			    Caster:inform("moep1->ID: "..parchment.id..", QUAL: "..parchment.quality..", DATA: "..parchment.data);
			    parchment.quality=parchment.quality;
			    Caster:inform("moep2->ID: "..parchment.id..", QUAL: "..parchment.quality..", DATA: "..parchment.data);
			    world:swap(parchment, 3110, parchment.quality);
			    Caster:inform("moep3->ID: "..parchment.id..", QUAL: "..parchment.quality..", DATA: "..parchment.data);

			    world:gfx(Effect,Caster.pos);
			    world:makeSound(SFX,Caster.pos);
			else
			    InformNLS(Caster,"Ein leichter Windsto� f�hrt �ber dich hinweg.","You feel some wind passing by.");
			end

                    else
                        InformNLS(Caster,"Der Spruch gelingt nicht","The spell fails.");
                    end
                else
                    InformNLS(Caster,"Nicht gen�gend Mana","Not enough mana.");
                end
            else
                InformNLS(Caster,"Du hast Hunger und kannst dich nicht konzentrieren.","You are hungry and can't concentrate.");
            end
        else
            InformNLS(Caster,"Du w�rdest es nicht �berleben, jetzt diesen Spruch zu sprechen.","You die if you cast this spell now.");
        end
    elseif ( ltstate == Action.none ) then
        local CasterVal=magic.base.basics.CasterValue(Caster);
        --Caster:inform("CasterVal: "..CasterVal);
        local HPChange=CalcAttribChange(minHPNeeded,maxHPNeeded,CasterVal);
        local FPChange=CalcAttribChange(minFPNeeded,maxFPNeeded,CasterVal);
        local APChange=CalcAttribChange(minAPNeeded,maxAPNeeded,CasterVal);
        local MPChange=CalcAttribChange(minMPNeeded,maxMPNeeded,CasterVal);
        --Caster:inform("MPChange: "..MPChange);
        local PPCaused=CalcAttribChange(minPPCaused,maxPPCaused,CasterVal);
        if CheckAttrib(Caster,"hitpoints",HPChange) then
            if CheckAttrib(Caster,"foodlevel",FPChange) then
                if CheckAttrib(Caster,"mana",MPChange) then
                   Caster:startAction( timeToCast, timeGfxEffect, timeRptGfxEffect, timeSndEffect, timeRptSndEffect);
                   Caster:talkLanguage( CCharacter.say, CPlayer.german, "#me beginnt mit einer mystischen Formel.");
                   Caster:talkLanguage( CCharacter.say, CPlayer.english, "#me starts with a mystical formula.");
                else
                    InformNLS(Caster,"Nicht gen�gend Mana","Not enough mana");
                end;
            else
                InformNLS(Caster,"Du hast Hunger und kannst dich nicht konzentrieren.","You are hungry and can't concentrate.");
            end;
        else
            InformNLS(Caster,"Du w�rdest es nicht �berleben, jetzt diesen Spruch zu sprechen.","You die if you cast this spell now.");
        end;
    elseif ( ltstate == Action.abort ) then
        Caster:talkLanguage(CCharacter.say, CPlayer.german, "#me stoppt apprupt mit dem Zaubern.");
        Caster:talkLanguage(CCharacter.say, CPlayer.english,"#me abruptly stops casting.");
    end
end
