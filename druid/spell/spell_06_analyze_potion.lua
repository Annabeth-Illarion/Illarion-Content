--spell_05_analyze_potion.lua / Rune 3 (5)
--Druidensystem
-- Original by Falk
-- Edited by Blay09

require("base.common")
require("druid.base.alchemy")

module("druid.spell.spell_05_analyze_potion", package.seeall(druid.base.alchemy))

-- INSERT INTO spells VALUES (2^5,3,'druid.spell.spell_05_analyze_potion');

function ds_codices()
  if firsttime == nil then
    --Für Flasche 059,166
    LVDe={"Ende","Hölle","Höhle","Kerker","Ruhe","Quelle","Orden","Tempel","Siegel"}
    PADe={" der Kraft"," des Willens"," der Sinne"," des Wissens"," des Fleisches"," des Windes"," des Diebes"," des Geistes"}
    SADe={" des Lebens"," des Riesen"," der Quellen"," des Glücks"," der Qualen"," des Ethos"," des Fleißes"," des Zaubers"}
    LVEn={"end of ","hell of ","cave of ","dungeon of ","silence of ","spring of ","order of ","temple of ","seal of "}
    PAEn={"power","will","senses","intelligence","constitution","the wind","the thief","spirit"}
    SAEn={"life","giants","springs","luck","pain","ethos","diligence","magic"}
    -- für Flasche 165
    WVDe={"","","","","","","","",""}
    WVEn={"","","","","","","","",""}
    WMDe={"Metallpaste","Vitalstoff","Lederfett","Edelstein-Creme","Edelmetall-Öl","Holzpolitur","Stoffpflegemittel","Hornfett"}
    WMEn={"metal","food","leather","gemstones","noble metal","wood","textile","horn"}

    firsttime = 1
  end
end

function ds_analyseDATA(Caster,Item)
  workdata = Item.data
  dataZList = {}
  dataZList = SplitBottleData(Caster,workdata)
  return dataZList
end

function ds_analyse_059(Caster,Item)
--rote Flasche
--Prim�rattribute
--Caster:inform("rote Flasche")
  if Item.data == 0 then
    EtikettDe ="Heil- und Stärkungstrank"
    EtikettEn ="Healing- And Refreshment-Potion"
  else
    ds_codices()
    dataZList = ds_analyseDATA(Caster,Item)

    EtikettDe = "eine Mischung aus \n\n"..LVDe[dataZList[1]]..PADe[1].."\n"
    for i = 2,7 do
      EtikettDe = EtikettDe..LVDe[dataZList[i]]..PADe[i].."\n"
    end
    EtikettDe = EtikettDe.." und "..LVDe[dataZList[8]]..PADe[8]

    EtikettEn = "a mixture of \n"..LVEn[dataZList[1]]..PAEn[1].."\n"
    for i = 2,7 do
      EtikettEn = EtikettEn..LVEn[dataZList[i]]..PAEn[i].."\n"
    end
    EtikettEn = EtikettEn.." and "..LVEn[dataZList[8]]..PAEn[8]
  end
  return EtikettDe,EtikettEn
end

function ds_analyse_165(Caster,Item)
--hellblaue Flasche
--Pasten
--Caster:inform("hellblaue Flasche")
  if Item.data == 0 then
    EtikettDe ="ein Pflegemittel, ein Öl oder eine Politur."
    EtikettEn ="A care product, maybe an oil or a polish."
  else
    ds_codices()
    dataZList = ds_analyseDATA(Caster,Item)

    EtikettDe = "eine Mischung aus \n\n"
    EtikettEn = "a mixture of \n"
    for i = 1,7 do
      if dataZList[i] ~= 5 then
        EtikettDe = EtikettDe..WVDe[dataZList[i]]..WMDe[i]
        EtikettEn = EtikettEn..WVEn[dataZList[i]]..WMEn[i]
      end
    end
    if dataZList[8] ~=5 then
      EtikettDe = EtikettDe.." und "..WVDe[dataZList[8]]..WMDe[8]
      EtikettEn = EtikettEn.." and "..WVEn[dataZList[8]]..WMEn[8]
    end
  end
  return EtikettDe,EtikettEn
end

function ds_analyse_166(Caster,Item)
--lila Flasche
--Sekund�rattribute
--Caster:inform("lila Flasche")
  if Item.data == 0 then
    EtikettDe ="ein Heil- oder Stärkungstrank"
    EtikettEn ="a healing- or refreshment-potion"
  else
    ds_codices()
    dataZList = ds_analyseDATA(Caster,Item)

    EtikettDe = "eine Mischung aus \n\n"..LVDe[dataZList[1]]..SADe[1].."\n"
    for i = 2,7 do
      EtikettDe = EtikettDe..LVDe[dataZList[i]]..SADe[i].."\n"
    end
    EtikettDe = EtikettDe.." und "..LVDe[dataZList[8]]..SADe[8]

    EtikettEn = "a mixture of \n"..LVEn[dataZList[1]]..SAEn[1].."\n"
    for i = 2,7 do
      EtikettEn = EtikettEn..LVEn[dataZList[i]]..SAEn[i].."\n"
    end
    EtikettEn = EtikettEn.." and "..LVEn[dataZList[8]]..SAEn[8]
  end
  return EtikettDe,EtikettEn
end

function ds_analyse_167(Caster,Item)
--gelbe Flasche
--Viren
--Caster:inform("gelbe Flasche")
  if Item.data == 83795161 then
    Etikett ="Gwenwyn Anghenfil Twymyn"
    EtikettDe ="ein Erreger von "..illness[1][1].."\n"
    EtikettEn =illness[2][1].." pathogens".."\n"
  elseif Item.data == 26343194 then
    Etikett ="Gwenwyn Morfa Cwlwm Gwythi"
    EtikettDe ="ein Erreger von "..illness[1][2].."\n"
    EtikettEn =illness[2][2].." pathogens".."\n"
  elseif Item.data == 98886573 then
    Etikett ="Gwenwyn Trolio Caethineb"
    EtikettDe ="ein Erreger von "..illness[1][3].."\n"
    EtikettEn =illness[2][3].." pathogens".."\n"
  elseif Item.data == 65336351 then
    Etikett ="Gwenwyn Corrach Rhithdyb"
    EtikettDe ="ein Erreger von "..illness[1][4].."\n"
    EtikettEn =illness[2][4].." pathogens".."\n"
  elseif Item.data == 28455363 then
    Etikett ="Gwenwyn Rhag Vein-Syndrome"
    EtikettDe ="ein Erreger von "..illness[1][5].."\n"
    EtikettEn =illness[2][5].." pathogens".."\n"
  elseif Item.data == 95819741 then
    Etikett ="Gwenwyn Draig Brech Moddion"
    EtikettDe ="ein Erreger von "..illness[1][6].."\n"
    EtikettEn =illness[2][6].." pathogens".."\n"
  elseif Item.data == 15386558 then
    Etikett ="Gwenwyn Sgorpion Epidemig"
    EtikettDe ="ein Erreger von "..illness[1][7].."\n"
    EtikettEn =illness[2][7].." pathogens".."\n"
  elseif Item.data == 58595367 then
    Etikett ="Gwenwyn Blaidd Haint"
    EtikettDe ="ein Erreger von "..illness[1][8].."\n"
    EtikettEn =illness[2][8].." pathogens".."\n"
  else
    Etikett ="Siwgr Dwfr"
    EtikettDe ="ein Virus-Erreger"
    EtikettEn ="Pathogens"
  end
  return EtikettDe,EtikettEn
end

function ds_analyse_327(Caster,Item)
--dunkelblaue Flasche
--Wurfk�rper ua
--Caster:inform("dunkelblaue Flasche")
  if Item.data == 93531588 then
    EtikettDe ="Wurfbombe".."\n"
    EtikettEn ="".."\n"
  elseif Item.data == 25269755 then
    EtikettDe ="".."\n" --noch nicht belegt
    EtikettEn ="".."\n"
  elseif Item.data == 58731981 then
    EtikettDe ="".."\n" --noch nicht belegt
    EtikettEn ="".."\n"
  elseif Item.data == 84613666 then
    EtikettDe ="Hasenplage".."\n"
    EtikettEn ="Rabbit Menace".."\n"
  elseif Item.data == 59595521 then
    EtikettDe ="Schlammfeld".."\n"
    EtikettEn ="Bogfield".."\n"
  elseif Item.data == 42718255 then
    EtikettDe ="".."\n" --noch nicht belegt
    EtikettEn ="".."\n"
  elseif Item.data == 16359531 then
    EtikettDe ="Schwarzes Loch".."\n" --Mana-Entzug auf 9er Feld
    EtikettEn ="Black Hole".."\n"
  elseif Item.data == 21915579 then
    EtikettDe ="Sattmacher".."\n" --Sattmacher (noch in Arbeit)
    EtikettEn ="".."\n"
  elseif Item.data == 43245354 then
    EtikettDe ="Rostschleuder" --Haltbarkeitsschaden f�r R�stungen auf 9er Feld
    EtikettEn ="Rusttrap"
  elseif Item.data == 64175321 then
    EtikettDe ="Holzk�fer" --Haltbarkeitsschaden f�r Holzwaren auf 9er Feld
    EtikettEn =""
  elseif Item.data == 15516428 then
    EtikettDe ="Schwertgrab" --Halbarkeitsschaden f�r Waffen auf 9er Feld
    EtikettEn =""
  elseif Item.data == 17616268 then
    EtikettDe ="Rostfresser" --Haltbarkeitsschaden f�r R�stungen auf 1 Feld
    EtikettEn =""
  elseif Item.data == 16623552 then
    EtikettDe ="Holzwurm" --Haltbarkeitsschaden f�r Holzwaren auf 1 Feld
    EtikettEn =""
  elseif Item.data == 92124379 then
    EtikettDe ="Waffennarr" --Halbarkeitsschaden f�r Waffen auf 1 Feld
    EtikettEn =""
  elseif Item.data == 63321157 then
    EtikettDe ="Windtrank" --Herstellen von Windpfeilen
    EtikettEn ="Wind Potion"
  else
    EtikettDe ="Allerlei"
    EtikettEn ="Farrago"
  end
  return EtikettDe,EtikettEn
end

function ds_analyse_328(Caster,Item)
--orange Flasche
--Medizin
--Caster:inform("orange Flasche")
  if Item.data == 27315949 then
     Etikett ="Rhag Anghenfil Twymyn"
     EtikettDe ="Medizin gegen "..illness[1][1]
     EtikettEn ="medicine against "..illness[2][1]
  elseif Item.data == 84767916 then
     Etikett ="Rhag Morfa Cwlwm Gwythi"
     EtikettDe ="Medizin gegen "..illness[1][2]
     EtikettEn ="medicine against "..illness[2][2]
  elseif Item.data == 12224537 then
     Etikett ="Trolio Caethineb Meddyginiaeth"
     EtikettDe ="Medizin gegen "..illness[1][3]
     EtikettEn ="medicine against "..illness[2][3]
  elseif Item.data == 45774759 then
     Etikett ="Corrach Rhithdyb Gwrthwenwyn"
     EtikettDe ="Medizin gegen "..illness[1][4]
     EtikettEn ="medicine against "..illness[2][4]
  elseif Item.data == 82655747 then
     Etikett ="Rhag Vein-Syndrome Meddyginiaeth"
     EtikettDe ="Medizin gegen "..illness[1][5]
     EtikettEn ="medicine against "..illness[2][5]
  elseif Item.data == 15291369 then
     Etikett ="Draig Brech Moddion"
     EtikettDe ="Medizin gegen "..illness[1][6]
     EtikettEn ="medicine against "..illness[2][6]
  elseif Item.data == 95724552 then
     Etikett ="Gwrthwenwyn Rhag Sgorpion Epidemig"
     EtikettDe ="Medizin gegen "..illness[1][7]
     EtikettEn ="medicine against "..illness[2][7]
  elseif Item.data == 52515743 then
     Etikett ="Blaidd Haint Meddyginiaeth"
     EtikettDe ="Medizin gegen "..illness[1][8]
     EtikettEn ="medicine against "..illness[2][8]
  else
     Etikett ="Siwgr Dwfr"
     EtikettDe ="Medizin"
     EtikettEn ="Medicine"
  end
  return EtikettDe,EtikettEn
end

function ds_analyse_329(Caster,Item)
--schwarze Flasche
--Verwandlungen
--Caster:inform("schwarze Flasche")
  if Item.data == 77744151 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Mensch'"
      EtikettEn = "Shape Shifter Potion 'Human'"
  elseif  Item.data == 18784522 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Zwerg'"
      EtikettEn = "Shape Shifter Potion 'Dwarf'"
  elseif  Item.data == 32699619 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Halbling'"
      EtikettEn = "Shape Shifter Potion 'Halfling'"
  elseif Item.data == 54876565 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Elb'"
      EtikettEn = "Shape Shifter Potion 'Elf'"
  elseif Item.data == 61348438 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Ork'"
      EtikettEn = "Shape Shifter Potion 'Orc'"
  elseif Item.data == 71378653 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Echse'"
      EtikettEn = "Shape Shifter Potion 'Lizard'"
  elseif Item.data == 58548893 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Gnom'"
      EtikettEn = "Shape Shifter Potion 'Gnom'"
  elseif Item.data == 45634355 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Oger'"
      EtikettEn = "Shape Shifter Potion 'Ogre'"
  elseif Item.data == 75529399 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Mumie'"
      EtikettEn = "Shape Shifter Potion 'Mummy'"
  elseif Item.data == 44554428 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Skelett'"
      EtikettEn = "Shape Shifter Potion 'Skeleton'"
  elseif  Item.data == 18861363 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Beholder'"
      EtikettEn = "Shape Shifter Potion 'Beholder'"
  elseif  Item.data == 26562174 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Fliege'"
      EtikettEn = "Shape Shifter Potion 'Fly'"
  elseif Item.data == 47418515 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Schaf'"
      EtikettEn = "Shape Shifter Potion 'Sheep'"
  elseif Item.data == 58151138 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Spinne'"
      EtikettEn = "Shape Shifter Potion 'Spider'"
  elseif Item.data == 22551786 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Rotes Skelett'"
      EtikettEn = "Shape Shifter Potion 'Red Skeleton'"
  elseif Item.data == 72225438 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Rotwurm'"
      EtikettEn = "Shape Shifter Potion 'Redworm'"
  elseif Item.data == 99992352 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Gro�er D�mon'"
      EtikettEn = "Shape Shifter Potion 'Big Demon'"
  elseif Item.data == 38114786 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Skorpion'"
      EtikettEn = "Shape Shifter Potion 'Scorpion'"
  elseif Item.data == 95371655 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Schwein'"
      EtikettEn = "Shape Shifter Potion 'Pig'"
  elseif Item.data == 71796337 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Luft'"
      EtikettEn = "Shape Shifter Potion 'Air'"
  elseif Item.data == 87611881 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Sch�del'"
      EtikettEn = "Shape Shifter Potion 'Skull'"
  elseif Item.data == 31231973 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Wespe'"
      EtikettEn = "Shape Shifter Potion 'Wasp'"
  elseif Item.data == 14523375 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Waldtroll'"
      EtikettEn = "Shape Shifter Potion Forest 'Troll'"
  elseif Item.data == 46852135 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Geister-Skelett'"
      EtikettEn = "Shape Shifter Potion Shadow 'Skeleton'"
  elseif Item.data == 37531813 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Stein-Golem'"
      EtikettEn = "Shape Shifter Potion 'Stone-Golem'"
  elseif Item.data == 85293266 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Goblin'"
      EtikettEn = "Shape Shifter Potion 'Goblin'"
  elseif Item.data == 86659455 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Gnoll'"
      EtikettEn = "Shape Shifter Potion 'Gnoll'"
  elseif Item.data == 51464953 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Drache'"
      EtikettEn = "Shape Shifter Potion 'Dragon'"
  elseif Item.data == 97171535 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Drow'"
      EtikettEn = "Shape Shifter Potion 'Drow'"
  elseif Item.data == 77577615 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Drow-Frau'"
      EtikettEn = "Shape Shifter Potion Female 'Drow'"
  elseif Item.data == 11695753 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Kleiner D�mon'"
      EtikettEn = "Shape Shifter Potion 'Lower Demon'"
  elseif Item.data == 62545579 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Kuh'"
      EtikettEn = "Shape Shifter Potion 'Cow'"
  elseif Item.data == 81519773 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Hirsch'"
      EtikettEn = "Shape Shifter Potion 'Deer'"
  elseif Item.data == 95153618 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Wolf'"
      EtikettEn = "Shape Shifter Potion 'Wolve'"
  elseif Item.data == 52728756 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Panther'"
      EtikettEn = "Shape Shifter Potion 'Panther'"
  elseif Item.data == 91986793 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Hase'"
      EtikettEn = "Shape Shifter Potion 'Rabbit'"
  elseif Item.data == 19831914 then
      EtikettDe = "ein Gestaltenwandler-Trunk 'Gnom'"
      EtikettEn = "Shape Shifter Potion 'gnome'"
  else
      EtikettDe = "ein Janus-Trunk"
      EtikettEn = "Janus Potion"
  end
  return EtikettDe,EtikettEn
end

function ds_analyse_330(Caster,Item)
--wei�e Flasche
--Sprache
--Caster:inform("wei�e Flasche")
  if Item.data ==  45942235 then
      EtikettDe = "ein Trank des menschlichen Verstehens"
      EtikettEn = "a Potion Of Human Understanding"
  elseif  Item.data == 62483256 then
      EtikettDe = "ein Trank des zwergischen Verstehens"
      EtikettEn = "a Potion Of Dwarfen Understanding"
  elseif  Item.data == 32529515 then
      EtikettDe = "ein Trank des elfischen Verstehens"
      EtikettEn = "a Potion Of Elbian Understanding"
  elseif Item.data == 15751754 then
      EtikettDe = "ein Trank des echsischen Verstehens"
      EtikettEn = "a Potion Of Lizard Understanding"
  elseif Item.data == 82897532 then
      EtikettDe = "ein Trank des orkischen Verstehens"
      EtikettEn = "a Potion Of Orkish Understanding"
  elseif Item.data == 63296636 then
      EtikettDe = "ein Trank des Halblings-Verstehens"
      EtikettEn = "a Potion Of Halfling Understanding"
  elseif Item.data == 49582625 then
      EtikettDe = "ein Trank des Fee'ischen Verstehens"
      EtikettEn = "a Potion Of Fairy Understanding"
  elseif Item.data == 95738184 then
      EtikettDe = "ein Trank des gnomischen Verstehens"
      EtikettEn = "a Potion Of Gnomish Understanding"
  elseif Item.data == 53261566 then
      EtikettDe = "ein Trank des Goblin-Verstehens"
      EtikettEn = "a Potion Of Goblin Understanding"
  elseif Item.data == 93538334 then
      EtikettDe = "ein Trank des Verstehens der Alten Sprache"
      EtikettEn = "a Potion Of Ancient Language Understanding"
  else
      EtikettDe = "ein Vieltrank"
      EtikettEn = "a Polyjuice Potion"
  end
  return EtikettDe,EtikettEn
end


function CastMagic(Caster,counter,param,ltstate)
--Caster:inform("debug #06.1")
end

function CastMagicOnCharacter(Caster,TargetCharacter,counter,param,ltstate)
--Caster:inform("debug #06.2")
end

function CastMagicOnField(Caster,Targetpos,counter,param,ltstate)
--Caster:inform("debug #06.3")
end

function CastMagicOnItem(Caster,TargetItem,counter,param,ltstate)
--Caster:inform("debug #06.4")
--Analyse eines Trankes auf Inhalt(data)
	pList={59,165,166,167,327,328,329,330};
	local textDE = nil;
	local textEN = nil;
	for i,potion in pairs(pList) do
		if potion == TargetItem.id then

		--Hier kommt jetzt die eigentliche Analyse
			if i == 1 then
			--rote Flasche 059
        textDE, textEN = ds_analyse_059(Caster,TargetItem)
				break
			elseif i == 2 then
			--hellblaue Flasche 165
        textDE, textEN = ds_analyse_165(Caster,TargetItem)
				break
			elseif i == 3 then
			--lila Flasche
        textDE, textEN = ds_analyse_166(Caster,TargetItem)
				break
			elseif i == 4 then
			--gelbe Flasche
        textDE, textEN = ds_analyse_167(Caster,TargetItem)
				break
			elseif i == 5 then
			--dunkelblaue Flasche
        textDE, textEN = ds_analyse_327(Caster,TargetItem)
				break
			elseif i == 6 then
			--orange Flasche
        textDE, textEN = ds_analyse_328(Caster,TargetItem)
				break
			elseif i == 7 then
			--schwarze Flasche
        textDE, textEN = ds_analyse_329(Caster,TargetItem)
				break
			elseif i == 8 then
			--wei�e Flasche
        textDE, textEN = ds_analyse_330(Caster,TargetItem)
			end

  	Caster:learn(6,"exquirere",3,100)

		end
	end
	if textDE then
    if Caster:getPlayerLanguage() == 0 then
		  Caster:inform("#b|0|0|".."In der Flasche befindet sich "..textDE)
	  else
	    Caster:inform("#b|0|0|".."The bottle contains "..textEN)
    end
  else
 	  base.common.InformNLS(Caster,"Das ist kein Druiden-Trank","This is not a potion");
	end

end