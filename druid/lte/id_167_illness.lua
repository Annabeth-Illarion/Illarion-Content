-- LTE f�r das Druidensystem
-- by Falk
require("base.common")
require("druid.base.outfit")

module("druid.lte.id_167_illness", package.seeall(druid.base.outfit))

-- INSERT INTO longtimeeffects VALUES (167, 'druids_illness', 'druid.lte.id_167_illness');

function DoInfection(Character,Runde,Diag)
-- Ansteckung:
-- Feststellen ob jemand in Kontaktweite steht
   local const = 1;
   local myPos = Character.pos
   local charsAround = world:getCharactersInRangeOf(myPos,2)
   if charsAround == nil then
      -- niemand da zum Anstecken
   else
      for i,chars in pairs(charsAround) do
--       Hier kommt die Sache mit dem Langzeiteffekt:
         find, Effect = chars.effects:find(167);
		 const = math.min(25,chars:increaseAttrib("constitution",0));
         if not find and math.random(90) <= math.ceil(Runde/const) then
            Effect=CLongTimeEffect(167,1);
--          Laufzeit nach Quality berechnen
            duration = math.random(111,999)
            Effect:addValue("zaehler",duration)
            Effect:addValue("illness",Diag)
--          Effekt an Char binden
            chars.effects:addEffect(Effect);
         else
--          Char hat schon eine Infektion
         end
      end
   end
end

function getEffect_1(Character,Runde)
-- Character:inform("Ork-Fieber/orc-fever")
-- Hitzewallung (man reisst sich alle Kleider, R�stungen vom Leib)
	if Runde -(math.floor(Runde/10)*10) == 0 then
--   jede 10. Runde etwas ausziehen
		local foundCloth = false;
		local curItem = nil;
		Character:inform("Runde "..Runde)
		L = {1,3,4,9,10,11};
		for i=0,3 do
			curItem = Character:getItemAt(L[math.random(1,table.getn(L))]);
			if curItem.id >0 then break end;
		end
		if curItem == 0 then
			for i,pos in pairs(L) do
				curItem = Character:getItemAt(pos);
				if curItem.id >0 then break end;
			end
		end
		if curItem.id > 0 then
			base.common.InformNLS(Character,
				"#w Du f�hlst eine unangenehme Hitze in dir aufsteigen und Du hast den Zwang, Dir die Kleider vom Leib zu rei�en",
				"#w You feel a painful heat emerging and you have to put off some clothes");
			world:createItemFromItem(curItem,Character.pos,true);
			world:erase(curItem,1);
		end
	end
-- Krankheit verbreiten:
--   DoInfection(Character,Runde,1)
end

function getEffect_2(Character,Runde)
-- Character:inform("Sumpfkrampf/bog-attack")
-- Erbrechen, Char dreht sich ,rp-kotzen, foodl halbieren, R�ckgang von hp
-- Jede 25. Runde:
   if Runde -(math.floor(Runde/25)*25) == 0 then

--    Enstprechender RP-Text
      base.common.InformNLS(Character,"#w Dir wird urpl�tzlich schlecht, Dein Magen rebelliert und Du musst Dich �bergeben.",
                           "#w You feel sick, your stomache strikes back and you need to puke")

--    Spieler dreht sich ab
      xpos = Character.pos.x
      ypos = Character.pos.y
      zpos = Character.pos.z
      richtung = Character:get_face_to()

      if richtung == 0 then
--         richtung = 2
         ypos = ypos -1
      elseif richtung == 2 then
--         richtung = 4
         xpos = xpos + 1
      elseif richtung == 4 then
--         richtung = 6
         ypos = ypos +1
      else
--         richtung = 0
         xpos = xpos -1
      end

      Character:setAttrib("faceto",richtung)
--    Grafik f�r Erbrochenes?
--    W�rge-Sound w�re nicht schlecht
      Character:talkLanguage(CCharacter.say,CPlayer.german,"#me muss sich �bergeben.");
	  Character:talkLanguage(CCharacter.say,CPlayer.english,"#me has to vomit.");
      world:makeSound(23,Character.pos)

--    Foodlevel halbieren
      setFood(Character,Character:increaseAttrib("foodlevel",0)/2);

--    HP R�ckgang um 26-constitution %
      local const = math.min(25,Character:increaseAttrib("constitution",0));
	  Character:increaseAttrib("hitpoints",math.floor(Character:increaseAttrib("hitpoints",0) * -(26-const)/100) )

   end
-- Krankheit verbreiten:
--   DoInfection(Character,Runde,2)
end

function getEffect_3(Character,Effect,Runde)
--Character:inform("Trollsucht/Troll's rash")
-- Verlust der Sprachf�higkeiten (language skills, vielleicht Leseskill oa)
-- da der Verlust der Sprachskills am Anfang des LTE steht, ist hier nur die Zeit abzuwarten

-- Krankheit verbreiten:
--   DoInfection(Character,Runde,3)

   if Runde == 1 then
--    wieder die alten Werte herstellen
      sprache = {"ancient language","orc language","dwarf language","elf language","lizard language","fairy language","goblin language","gnome language","halfling language","human language"}
      for i = 1, table.getn(sprache) do
         find,wert = Effect:findValue(sprache[i])
         if find then
            Character:increaseSkill(sprache[i],wert)
         else
            Character:inform("debug 167-333: Value missing, please call dev")
         end
      end
   end

end

function getEffect_4(Character,Runde)
-- Character:inform("Gnom-Wahn/gnome-paranoia")
-- Umdrehen und ein paar Schritte in die andere Richtung machen
-- shorter intervals at high counter
-- shortest interval: every 5sec
   local interval = math.max(5,30-math.floor(Runde/30));
   if Runde -(math.floor(Runde/interval)*interval) == 0 then
--   Blickrichtung feststellen, Gegenrichtung feststellen
     richtung = Character:get_face_to()
     richtung = richtung + 4
     if richtung > 6 then richtung = 0 end

--    K�rper drehen, Schritte machen
      Character:setAttrib("faceto",richtung)
      Character:move(richtung, true);

	  -- inform every 30sec
	  if Runde - (math.floor(Runde/30)*30) == 0 then
		if paranoiaList == nil then
			raceList = {};
			raceList[1] = {};
			raceList[2] = {}
			raceList[1][1] = "Menschen";
			raceList[2][1] = "human";
			raceList[1][2] = "Zwergen";
			raceList[2][2] = "dwarf";
			raceList[1][3] = "Halblings";
			raceList[2][3] = "halfling";
			raceList[1][4] = "Elfen";
			raceList[2][4] = "elf";
			raceList[1][5] = "Orks";
			raceList[2][5] = "orc";
			raceList[1][6] = "Echsenmenschen";
			raceList[2][6] = "lizardman";
			raceList[1][7] = "Gnoms";
			raceList[2][7] = "gnome";
			raceList[1][8] = "Feenmanns";
			raceList[2][8] = "fairy"
			raceList[1][9] = "Goblins";
			raceList[2][9] = "goblin";

			paranoiaList = {};
			paranoiaList[1] = {};
			paranoiaList[2] = {};

			paranoiaList[1][1] = "Vor deinem inneren Auge erscheint eine gr�ssliche Kreatur, in der sich alles B�se zu vereinen scheint.";
			paranoiaList[2][1] = "With your inner eye you envision a horrible creature that seems to be made up of all the evil in the world.";
			paranoiaList[1][2] = "Schlangen erscheinen von �berall her vor dir, sie kommen aus jeder Ritze, aus jedem Loch. Unmengen! Flucht ist das Einzige, was dir noch in den Sinn kommt.";
			paranoiaList[2][2] = "Snakes appear all around you, they are coming out of every chasm, out of every hole. To run away is the only thing which leaps into your mind.";
			paranoiaList[1][3] = "Ein Panther springt pl�tzlich von der Seite in dein Sichtfeld. Lauf, sonst bohrt er seine Krallen in deine Haut und zerbei�t dir den Sch�del!";
			paranoiaList[2][3] = "A panther jumps suddenly in front of you. Run, otherwise he is going to rip off your flesh with his claws and crack your skull in it's maw.";
			paranoiaList[1][4] = "Aus der Luft bildet sich eine Nebelgestalt. Grob erkennst du ihn. Ein alter Mann. Seine stumpfen Augen starren dich an. Warum starrt er dich an? Was will er? Du wei�t es nicht. Du wei�t nur, du musst hier weg.";
			paranoiaList[2][4] = "An image of a man made out of fog appears from out of thin air. You struggle to see his features: An old man. His dull eyes are staring at you. Why is he staring at you? What does he want? You only know that you must get away. ";
			paranoiaList[1][5] = "Diese Hitze. Vulkanausbruch! Der Lavastrom flie�t auf dich zu. Hinfort mit dir!";
			paranoiaList[2][5] = "A burst of incredible heat! Volcanic eruption! The stream of lava is flowing towards you. Run away!";
			paranoiaList[1][6] = "Warum beobachtet er dich? Dieses paar Augen, welche nur von dem vermummten Gesicht zu sehen sind. Ein R�uber! Er will dein Geld, schlimmer, dein Leben! Doch dazu muss er dich erstmal fangen.";
			paranoiaList[2][6] = "Why is he spying on you? You only see his eyes in the shadow of his hood. A thief! He wants your money! Worse! He's a murderer!! Run before he catches you.";
			paranoiaList[1][7] = "Eine dunkle Wolke bildet sich direkt �ber deinem Kopf. Spannung liegt in der Luft. Mit einem Mal schie�en Blitze aus der Wolke und treffen den Boden um dich herum. Flieh, bevor du zu Asche wirst!";
			paranoiaList[2][7] = "A dark cloud forms over your head. The air is unsettling. Lightning strikes from above all around you! Flee, before you turn to ash.";
			paranoiaList[1][8] = "Dieser riesige Baum, welcher in die Wolken ragt, warum fiel er dir nie auf? Er schwankt. Am Fu�e steht ein Mann mit einem Beil. Der Baum f�llt genau in deine Richtung. Lauf, lauf oder er wird dich zermalmen.";
			paranoiaList[2][8] = "You see a tree so tall it's branches are lost in the clouds. Why didn't you notice it before? Suddenly the tree shakes. You hear someone yell 'timber!' as the tree begins to crash in your direction! Run!";
			paranoiaList[1][9] = "Du �ffnest deine Augen und findest dich in einer schwarzen H�hle wieder. Was machst du hier? Wie kamst du her? ROOOOOOOAR! Was war das?! Hinter dir scheint tr�be das Tageslicht. Der Ausgang.";
			paranoiaList[2][9] = "You open your eyes to discover yourself in a black cave. What are you doing here? How did you get here? ROOOOOOOAR! What was that?! Behind you the light of day flares. Make your escape.";
			paranoiaList[1][10] = "Du siehst eine Armee von Goblins. Sie haben B�gen, Speere, Messer und einer h�lt den Kopf eines %RACETEXT in der Hand. Der H�uptling zeigt mit dem Stab auf dich. Sie jagen dich!";
			paranoiaList[2][10] = "You see an army of goblins armed to the teeth. One of them holds a decapitated %RACETEXT head in his hand. The goblin chieftain points at you with his staff. They are about to hunt you!";
			paranoiaList[1][11] = "Der Boden bricht auf. Flammen schie�en aus dem Boden und mit ihnen steigt eine Kreatur mir roter Haut, blutigen Klauen und einer abscheulichen Fratze hervor. Ein D�mon, da hilft nur die Flucht!";
			paranoiaList[2][11] = "The ground trembles and cracks open. Flames shoot up from the cracks and with them a creature with red skin, bloody claws and hideous grimace arises: a demon.";
		end
		local chance = math.random(1,table.getn(paranoiaList[1]));
		local race = Character:get_race() + 1;
		if race > 9 then race = 4 end;
		base.common.TempInformNLS(Character,
			string.gsub(paranoiaList[1][chance],"%RACETEXT",raceList[1][race]),
			string.gsub(paranoiaList[2][chance],"%RACETEXT",raceList[2][race]));
	  end
   end
-- Krankheit verbreiten:
--   DoInfection(Character,Runde,4)
end

function getEffect_5(Character,Effect,Runde)
--Character:inform("Vein'sches Syndrom/Veins'syndrome")
--Kontaktallergien auf Kleidung
	local doInform = false;
	local posList = {1,3,4,9,10,11};
	local LIST_outfit = {};
	-- metal
	LIST_outfit[3] = {4,7,16,94,101,184,185,187,202,324,325,326,2111,2112,2116,2117,2172,2286,2287,2290,2291,2302,2303,2357,2359,2360,2363,2364,2365,2367,2369,2389,2390,2393,2395,2399,2400,2402,2403,2407,2441,2444};
	-- cloth
	LIST_outfit[2] = {34,48,55,180,181,182,183,193,194,195,196,357,358,368,370,371,384,385,547,548,558,2295,2377,2378,2380,2384,2416,2418,2419,2420,2421};
	-- leather
	LIST_outfit[1] = {53,356,362,363,364,365,366,367,369};
	local foundAllergy, allergy = Effect:findValue("allergy");
	if not foundAllergy then
		allergy = math.random(1,3);
		Effect:addValue("allergy",allergy);
	end
	allergy = math.min(math.max(1,allergy),3);
--    Feststellen, ob solche Kleidung getragen wird
--    Kleidungsst�ck fallenlassen
	for i,pos in pairs(posList) do
		thisItem = Character:getItemAt(pos)
		if thisItem.id ~= 0 then
			for j,id in pairs(LIST_outfit[allergy]) do
				if thisItem.id == id then
					world:createItemFromItem(thisItem,Character.pos,true);
					Character:increaseAtPos(pos,-1);
					doInform = true;
				end
			end
		end
	end
	if doInform or Runde-(math.floor(Runde/60)*60) == 0 then
		base.common.InformNLS(Character,
			"#w An deinem K�rper haben sich rote, stark juckende Pusteln gebildet."..(doInform and " Du kannst jene Kleidung nicht am K�rper halten." or ""),
			"#w All over your body you find little red terribly itching blisters."..(doInform and " You can't keep that clothes at your body." or ""));
	end
-- Krankheit verbreiten:
--   DoInfection(Character,Runde,5)
end

function getEffect_6(Character,Runde)
--Character:inform("Drachenpocken/dragon's pox")
--Schmerzhafte Warzen an den H�nden, man kann praktisch nichts mehr in den H�nden halten

	local doInform = false;
	local posList = {4,5,6};
	for i,pos in pairs(posList) do
		thisItem = Character:getItemAt(pos);
		if thisItem.id ~= 0 then
			world:createItemFromItem(thisItem,Character.pos,true);
			Character:increaseAtPos(pos,-1);
			doInform = true;
		end
	end
	if doInform or Runde-(math.floor(Runde/60)*60) == 0 then
		base.common.InformNLS(Character,
			"#w An deinen H�nden haben sich gr�nlich schimmernde schmerzhafte eitrige Dornwarzen gebildet."..(doInform and " Du musst alles in deinen H�nden fallen lassen." or ""),
			"#w Your hands are covered with greenish glimmering painful mucopurulent plantar warts."..(doInform and " You have to drop everything you hold in your hands." or ""));
	end
-- Krankheit verbreiten:
-- DoInfection(Character,Runde,6)
end

function getEffect_7(Character,Runde)
-- Character:inform("Skorpion-Seuche/scorpion's pestilence")
-- Schweres Fieber: Absenken hp auf unter 1000
-- Standard: jede 10. Runde:
   if Runde -(math.floor(Runde/10)*10) == 0 then
      if Character:increaseAttrib("hitpoints",0) > 300 then
         Character:increaseAttrib("hitpoints",-Character:increaseAttrib("hitpoints",0)/2)
      end
      Character.movepoints = Character.movepoints -50
	  if Runde-(math.floor(Runde/30)*30) == 0 then
		base.common.InformNLS(Character,
			"#w Du f�hlst Dich fiebrig, dein Puls ist flach, auf Deiner Stirn gl�nzt kalter Schwei�.",
			"#w You feel febrile, your pulse is low, at your frown cold sweat is shining.");
	  end
   end
-- Krankheit verbreiten:
--   DoInfection(Character,Runde,7)
end

function getEffect_8(Character,Effect,Runde)
--Character:inform("Wolfspest/wolves pest")
--Verlust von Prim�rattributen
-- Standard: jede 10. Runde:
   if Runde -(math.floor(Runde/10)*10) == 0 then
      if math.random(6) == 6 then
         base.common.InformNLS(Character,
			"#w Du hast das Gef�hl, deine Organe w�rden brennen.",
			"#w Your insides feel like burning.");
      end
      local L = {"strength","willpower","perception","intelligence","constitution","agility","dexterity","essence"};
      local i = math.random(1,8);
      local curAttribValue = math.max(1,Character:increaseAttrib(L[i])-1);
	  Character:setAttrib(L[i],curAttribValue);
	  Effect:addValue(L[i].."_cur",curAttribValue);
      local counterValue = math.max(10,math.ceil(Runde/30));
	  if math.random(1,35) < counterValue then
		setFood(Character,Character:increaseAttrib("foodlevel",0)*2/3);
	  end
	  if math.random(1,35) < counterValue then
		Character:increaseAttrib("mana",-Character:increaseAttrib("mana",0)/3);
	  end
	  if Character:increaseAttrib("hitpoints",0) > 500 then
		if math.random(1,35) < counterValue then
			Character:increaseAttrib("hitpoints",-Character:increaseAttrib("hitpoints",0)/3);
		end
	  end
   end
-- Krankheit verbreiten:
--   DoInfection(Character,Runde,8)
end

function setFood(Character,Food)

	Food = math.max(0,math.min(60000,Food));
	local FoodToAdd = Food - Character:increaseAttrib("foodlevel",0);
	while true do
		Character:increaseAttrib("foodlevel",math.max(-10000,math.min(10000,FoodToAdd)));
		FoodToAdd = FoodToAdd - math.max(-10000,math.min(10000,FoodToAdd));
		if (FoodToAdd == 0) then
			break;
		end
	end
end

function getAction(Character,Effect,Runde)
--Hier die eigentlichen Aktionen eintragen
--Erstmal sehen, waserhat
  find,waserhat = Effect:findValue("illness")
  if find then
    if waserhat == 1 then
       getEffect_1(Character,Runde)
    elseif waserhat == 2 then
       getEffect_2(Character,Runde)
    elseif waserhat == 3 then
       getEffect_3(Character,Effect,Runde)
    elseif waserhat == 4 then
       getEffect_4(Character,Runde)
    elseif waserhat == 5 then
       getEffect_5(Character,Effect,Runde)
    elseif waserhat == 6 then
       getEffect_6(Character,Runde)
    elseif waserhat == 7 then
       getEffect_7(Character,Runde)
    elseif waserhat == 8 then
       getEffect_8(Character,Effect,Runde)
    else
		Character:inform("LTE-Error 167-1: value out of range. Please inform a developer.");
	end
  else
    Character:inform("LTE-Error 167-1: missing value. Please inform a developer.");
	return false;
  end
  return true;
end

function addEffect(Effect, Character)               -- Nur beim ersten Aufruf

	local foundIllness, illness = Effect:findValue("illness");
	if foundIllness then
		local foundImmunityEffect, immunityEffect = Character.effects:find(328);
		if foundImmunityEffect then
			if immunityEffect:findValue("immunity_"..illness) then

				base.common.InformNLS(Character,
					"#w Du sp�rst wie die Krankheit von dir Besitz ergreifen will, doch dein K�rper wehrt sich erfolgreich.",
					"#w You feel the illness trying to take control over you, but your body can resist.");
				Character.effects:removeEffect(167);
				return;
			end
		end
		base.common.InformNLS(Character,
			"#w Du f�hlst dich auf einmal ganz seltsam. Irgendetwas stimmt nicht mit deinem K�rper.",
			"#w You suddenly have a very strange feeling. Something's wrong with your body.");
		if illness == 3 then
			--  Sprachskills sichern
			Effect:addValue("ancient language",Character:getSkill("ancient language"))
			Effect:addValue("orc language",Character:getSkill("orc language"))
			Effect:addValue("dwarf language",Character:getSkill("dwarf language"))
			Effect:addValue("elf language",Character:getSkill("elf language"))
			Effect:addValue("lizard language",Character:getSkill("lizard language"))
			Effect:addValue("fairy language",Character:getSkill("fairy language"))
			Effect:addValue("goblin language",Character:getSkill("goblin language"))
			Effect:addValue("gnome language",Character:getSkill("gnome language"))
			Effect:addValue("halfling language",Character:getSkill("halfling language"))
			Effect:addValue("human language",Character:getSkill("human language"))

			-- Sprachskills auf 0 setzen
			Character:increaseSkill(1,"ancient language",-Character:getSkill("ancient language"))
			Character:increaseSkill(1,"orc language",-Character:getSkill("orc language"))
			Character:increaseSkill(1,"dwarf language",-Character:getSkill("dwarf language"))
			Character:increaseSkill(1,"elf language",-Character:getSkill("elf language"))
			Character:increaseSkill(1,"lizard language",-Character:getSkill("lizard language"))
			Character:increaseSkill(1,"fairy language",-Character:getSkill("fairy language"))
			Character:increaseSkill(1,"goblin language",-Character:getSkill("goblin language"))
			Character:increaseSkill(1,"gnome language",-Character:getSkill("gnome language"))
			Character:increaseSkill(1,"halfling language",-Character:getSkill("halfling language"))
			Character:increaseSkill(1,"human language",-Character:getSkill("human language"))

			--     Evtl. noch library research ua nullen
		end

		--  Alle Prim�rattribute sichern
	    Effect:addValue("strength",Character:increaseAttrib("strength",0))
	    Effect:addValue("willpower",Character:increaseAttrib("willpower",0))
	    Effect:addValue("perception",Character:increaseAttrib("perception",0))
	    Effect:addValue("intelligence",Character:increaseAttrib("intelligence",0))
	    Effect:addValue("constitution",Character:increaseAttrib("constitution",0))
	    Effect:addValue("agility",Character:increaseAttrib("agility",0))
	    Effect:addValue("dexterity",Character:increaseAttrib("dexterity",0))
	    Effect:addValue("essence",Character:increaseAttrib("essence",0))
		--  Alle Sekund�rattribute sichern
	    Effect:addValue("hitpoints",Character:increaseAttrib("hitpoints",0))
	    Effect:addValue("foodlevel",Character:increaseAttrib("foodlevel",0))
	    Effect:addValue("mana",Character:increaseAttrib("mana",0))
	    Effect:addValue("poisonlevel",Character:increaseAttrib("poisonlevel",0))
	    Effect:addValue("luck",Character:increaseAttrib("luck",0))
	    Effect:addValue("attitude",Character:increaseAttrib("attitude",0))
	    Effect:addValue("height",Character:increaseAttrib("height",0))
	    Effect:addValue("weight",Character:increaseAttrib("weight",0))
	end
end

function callEffect(Effect,Character)               -- Effect wird ausgef�hrt

--Erst einmal kommt der Rundenz�hler
  find,zaehler = Effect:findValue("zaehler")
  if find then
--  Character:inform("debug func callEffect 167-0 Runde "..zaehler)
     zaehler = zaehler -1  -- maximal 999 Runden
     Effect:addValue("zaehler", zaehler)

     Effect.nextCalled = 10  -- n�chster Aufruf in 1 Sekunde

     if not getAction(Character,Effect,zaehler) then
		return false;
	 end

--   Ende der Aktionen, es folgt noch etwas Verwaltung
     if zaehler == 0 then
--      das war die letzte Runde
        return false
     else
        return true
     end
  else
    Character:inform("LTE-Error 167-0: please call dev")
  end
  return false;
end

function removeEffect(Effect,Character)
	--Character:inform("debug func removeEffect")
	-- create immunity
	local foundImmunity = false;
	local foundIllness, illness = Effect:findValue("illness");

	if foundIllness then
		local foundImmunityEffect, immunityEffect = Character.effects:find(328);
		if not foundImmunityEffect then
			immunityEffect = CLongTimeEffect(328,1);
			Character.effects:addEffect(immunityEffect);
		end
		foundImmunity = immunityEffect:findValue("immunity_"..illness);
		-- only add immunity if not immune already.
		if not foundImmunity then
			local immunityTime = math.random(60,120)+60*math.min(25,Character:increaseAttrib("constitution",0));
			immunityEffect:addValue("immunity_"..illness,immunityTime);
		end
	end
	-- if illness is removed as usual and not due to immunity, then inform player and create gfx
	if not foundImmunity then
		base.common.InformNLS(Character,
			"#w Du sp�rst wie die Krankheit aus deinem K�rper weicht und du neue Kraft bekommst.",
			"#w You feel the illness withdrawing from your body and you regain your strength.");
		world:gfx(45,Character.pos);
	end
end

function loadEffect(Effect,Character)                  -- wenn der Charakter erneut einloggt
	--Character:inform("debug func loadEffect")
	find,zaehler = Effect:findValue("zaehler")

	if not find then
		Character:inform("LTE-Error 167-3: please call dev");
		Character.effects:removeEffect(167);
		return;
	end

	local L = {"strength","willpower","perception","intelligence","constitution","agility","dexterity","essence"};
	local foundAttrib, value;

	for i,attrib in pairs(L) do
		foundAttrib, value = Effect:findValue(attrib.."_cur");
		if foundAttrib then
			Character:setAttrib(attrib,value);
		end
  	end
end