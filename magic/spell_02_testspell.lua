-- TestScript f�r neues Magie System
-- Rune 2 - RA
-- INSERT INTO spells VALUES (1,0,'m_01_testspell.lua');
-- Fl�chen Zauber
-- Effekt Zauber


function CastMagic(Caster,counter,param,ltstate)
	Caster:inform("moep");
	
    find, magicEffect =  Caster.effects:find(600);
    if find then
    
    	found,magicWaterNew = magicEffect:findValue("magicWater");    -- get the strength of the effect water
	found,magicFireNew = magicEffect:findValue("magicFire");    -- get the strength of the effect fire
	Caster:inform("Ui...ein Wasserspruch!");
	if found then
	       magicWaterNew=magicWaterNew+1;
	       magicFireNew=magicFireNew-1;
	Caster:inform("Wasserskill erh�ht - Feuerskill gesenkt");
	end
    end
    magicEffect:addValue("magicWater",magicWaterNew);
    magicEffect:addValue("magicFire",magicFireNew);
	
	Caster:inform("moepEnde");
	
end

function CastMagicOnCharacter(Caster,TargetCharacter,counter,param,ltstate)
end

function CastMagicOnField(Caster,Targetpos,counter,param,ltstate)
end

function CastMagicOnItem(Caster,TargetItem,counter,param,ltstate)
end
