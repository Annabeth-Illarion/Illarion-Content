--ds_druidspell_15.lua / 1. Rune des Meisters
--Druidensystem
--Falk

require("base.common")

module("druids.spells.15_analyze_item_quality", package.seeall())

-- INSERT INTO spells VALUES (2^14,3,'druids.spells.15_analyze_item_quality');

function unitDecleration()
  if firsttime == nil then
    ListDE = {}
    ListEN = {}
    ListDE ={"marode", "schlechte", "m��ige", "unauff�llige", "brauchbare", "gute", "sehr gute", "hervorragende", "�berragende"}
    ListEN ={"ramshackle","bad","undistinguished","modest","usable","good", "very good","excellent","superior" }
    firsttime = 1
  end
end

function CastMagic(Caster,counter,param,ltstate)
--Caster:inform("debug #15.1") 
end

function CastMagicOnCharacter(Caster,TargetCharacter,counter,param,ltstate)
--Caster:inform("debug #15.2")    
end

function CastMagicOnField(Caster,Targetpos,counter,param,ltstate)
--Caster:inform("debug #15.3")
end

function CastMagicOnItem(Caster,TargetItem,counter,param,ltstate)
--Caster:inform("debug #15.4") 
  --Quality eines Items feststellen
  unitDecleration()
  ergebnis = math.floor(TargetItem.quality/100)
  base.common.InformNLS( Caster,
                "#b|0|0|die Pr�fung ergibt eine "..ListDE[ergebnis].." Qualit�t",
                "#b|0|0|this inspection results a "..ListEN[ergebnis].." quality" )
end
