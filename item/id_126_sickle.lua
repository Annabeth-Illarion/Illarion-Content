-- Herblore mit Sichel und Ausbreitung der Pflanzen

-- UPDATE common SET com_script='item.id_126_sickle' WHERE com_itemid=126;

require("item.general.metal")
require("base.common")

module("item.id_126_sickle", package.seeall, package.seeall(item.general.metal))

function UseItem( User, SourceItem, TargetItem, Counter, Param, ltstate )
	-- function changes potion Data; only for testing
	local potionA = base.common.GetFrontItemID(User);
	if potionA == 166 or potionA == 329 or potionA == 165 or potionA == 330 or potionA == 59 or potionA == 327 or potionA == 328 or potionA == 167 then
	   local potion = base.common.GetFrontItem( User );
	   local newDataPotion = User.lastSpokenText;
	   potion:setData("potionData",""..newDataPotion);
	   world:changeItem(potion)
	   User:inform("potionData gesetzt auf "..potion:getData("potionData"));
	   return;
	end
	-- function end
	
	-- again, only for testing
	if base.common.GetFrontItemID(User) == 1008 then -- infront of a cauldron?
	   local cauldron = base.common.GetFrontItem( User );
	   cauldron:setData("potionID","")
	   return
	end
	-- function end
	
	-- yet another testing thing
	local CheckBottle = base.common.GetFrontItemID(User)
	if CheckBottle == 164 then
	   
	   User:setSkinColor(128,255,255)
	   User:setHairColor(0,64,0)
	end
	-- testing end
	
	-- again, testing stuff
	if base.common.GetFrontItemID(User) == 775 then -- infront of a cauldron?
	   User:setQuestProgress(305,2)
	   User:inform("queststatus von 305 ist "..User:getQuestProgress(305))
	   return
	end
	--testing end
	
	--testing
	if base.common.GetFrontItemID(User) == 36 then
	   User:setAttrib("body_height",tonumber(User.lastSpokenText))
	   return
	end
    -- testing end	
	
	content.gathering.InitGathering();
	InitHerblore();
	
	base.common.ResetInterruption(User, ltstate);
	if (ltstate == Action.abort) then -- Arbeit unterbrochen
        if (User:increaseAttrib("sex", 0) == 0) then
            gText = "seine";
            eText = "his";
        else
            gText = "ihre";
            eText = "her";
        end
        User:talkLanguage(Character.say, Player.german, "#me unterbricht "..gText.." Arbeit.");
        User:talkLanguage(Character.say, Player.english,"#me interrupts "..eText.." work.");
        return
    end

    if not base.common.CheckItem(User, SourceItem) then -- Sicherheitscheck
        return
    end
    
	if ( ltstate == Action.success ) then         -- Unterbrechungsmeldungen
        if base.common.IsInterrupted( User ) then
            local selectMessage = math.random(1,5);
            if ( selectMessage == 1 ) then
                        base.common.InformNLS( User,
                        "Du wischst dir den Schwei� von der Stirn.",
                        "You wipe sweat off your forehead.");
                    elseif ( selectMessage == 2 ) then
                        base.common.InformNLS( User,
                        "Ein kleines pelziges Tier springt aus dem Geb�sch und rennt davon. F�r einen Moment bist du f�rchterlich erschrocken.",
                        "A small, furry critter jumps out of a bush and darts off. That really surprised you.");
                    elseif ( selectMessage == 3 ) then
                        base.common.InformNLS( User,
                        "Du greifst mit der Hand in eine Blattlauskolonie. Ver�rgert wischt du dir die Hand an der Hose ab.",
                        "The plant is crowded with lice. Annoyed, you wipe your hand clean on your trousers.");
                    elseif ( selectMessage == 4 ) then
                        base.common.InformNLS( User,
                        "W�hrend du nach Kr�utern suchst, verhakt sich deine Sichel und rutscht dir fast aus der Hand.",
            			"While searching for herbs your sickle gets stuck and it nearly slides out of your hand.");
					else
                        base.common.InformNLS( User,
                        "Ein aufdringliches Insekt schwirrt um deinen Kopf herum. Du schl�gst mit der Hand danach und versuchst es zu vertreiben.",
                        "An annoying bug buzzes around your head. You strike at it in order to drive it away.");
            end
            return
        end
    end
    
    if base.common.Encumbrence(User) then    -- Sehr streife R�stung?
        base.common.InformNLS( User,
        "Deine R�stung behindert dabei Kr�uter zu sammeln.",
        "Your armour disturbes you collecting herbs." );
        return
    end

    local TargetItem = base.common.GetFrontItem( User );

    if not TargetItem then
        base.common.InformNLS( User,
        "Hier kannst du nichts finden.",
        "You can't find anything here.");
        return;
    end

    if not base.common.IsLookingAt( User, TargetItem.pos ) then
        base.common.TurnTo( User, TargetItem.pos );
    end

    local harvestList = harvestItem[ TargetItem.id ];
    if harvestList == nil then
        return
    end

    if ( SourceItem:getType() ~= 4 ) then
        base.common.InformNLS( User,
        "Du musst die Sichel in der Hand haben um damit zu arbeiten",
        "You have to hold the sickle in your hand to work with it.");
        return
    end

    local GroundTile = world:getField( TargetItem.pos );

    local TileID = GroundTile:tile();
    local boden = base.common.GetGroundType(TileID);

    local skill = User:getSkill( "herb lore" );

    gem1, str1, gem2, str2=base.common.GetBonusFromTool(SourceItem);
    step=0;
    if gem1==3 then     -- ruby modifies skill!
        step=str1;
    end
    if gem2==3 then
        step=step+str2;
    end
    skill=skill+step;

    month=world:getTime("month");
    if (month == 0) then
        month = 16;
    end
    season=math.ceil(month/4);

    for i, harvest in pairs(harvestList) do
        groundok=false;
        if( harvest[ 1 ] == 0 or harvest[ 1 ] == boden ) then
            groundok = true;
        elseif ( harvest[ 1 ] < 0 ) then
            if SearchTileInRange( harvest[ 1 ] * ( -1 ), 3, TargetItem.pos ) then
                groundok = true;
            end
        end
        if groundok then

            if base.common.ToolBreaks( User, SourceItem ) then -- Werkzeug besch�digen
                base.common.InformNLS( User,
                "Die Sichel zerbricht.",
                "The sickle breaks." );
                return
            end

            if not base.common.FitForWork( User ) then
                return false;
            end

            success = false;
            if ( harvest[ 2 ] == 0 ) and ( harvest[ 4 ] ~= 0 ) then
                success = true;
            elseif ( harvest[ 2 ] > skill ) then
                success = false;
			skilluse=1;
	        base.common.InformNLS( User,
                      "Deine Kenntnisse in der Kr�uterkunde sind nicht ausreichend, um hier etwas Brauchbares zu sammeln.",
                      "Your knowlege in herblore is not sufficient to collect herbs here.");
            elseif ( harvest[ 4 ] ~= 0 ) then
                if( math.random( 100 ) < 80 ) then
                    success = true;
                end
            elseif ( harvest[ 4 ] == 0 ) then
                if ( ltstate == Action.none ) then -- Arbeit nicht gestartet -> Starten
                    User:startAction(content.gathering.herbgathering:GenWorkTime(User,SourceItem), 0, 0, 0, 0 );
                    User:talkLanguage( Character.say, Player.german, "#me beginnt nach Kr�utern zu suchen.");
                    User:talkLanguage( Character.say, Player.english, "#me starts to search for herbs.");
                    return
                end

                if base.common.IsInterrupted( User ) then
                    local selectMessage = math.random(1,4);
                    if ( selectMessage == 1 ) then
                        base.common.InformNLS(User,
                        "Du wischst dir den Schwei� von der Stirn.",
                        "You wipe sweat off your forehead.");
                    elseif ( selectMessage == 2 ) then
                        base.common.InformNLS(User,
                        "Ein kleines pelziges Tier springt aus dem Geb�sch und rennt davon. F�r einen Moment bist du f�rchterlich erschrocken.",
                        "A small, furry critter jumps out of a bush and darts off. That really surprised you.");
                    elseif ( selectMessage == 3 ) then
                        base.common.InformNLS(User,
                        "Du greifst mit der Hand in eine Blattlauskolonie. Ver�rgert wischt du dir die Hand an der Hose ab.",
                        "The plant is crowded with lice. Annoyed, you wipe your hand clean on your trousers.");
                    else
                        base.common.base.common.InformNLS(User,
                        "Ein aufdringliches Insekt schwirrt um deinen Kopf herum. Du schl�gst mit der Hand danach und versuchst es zu vertreiben.",
                        "An annoying bug buzzes around your head. You strike at it in order to drive it away.");
                    end
                    return
                end

                User:startAction(content.gathering.herbgathering:GenWorkTime(User,SourceItem), 0, 0, 0, 0 );
                AreaHerb=GetAreaHerbs(TargetItem.pos);
                chance=100*(1.00037765/(1+(35.1237078*math.exp(-0.71059788*AreaHerb))));
                if chance < 1 then
                    chance = 1;
                end
                -- User:inform( "chance is "..chance );
                if( math.random( 100 ) < chance ) then
                    --User:inform( "success!" );
                    success = true;
                end
            end

            if ( harvest[ 4 ] == 0 ) then
                if( success ) then
                    if( harvest[ 5 ][ season ] >= math.random(20) ) then
                        success = true;
                    else
                        success = false;
                    end
                end
            end

            -- harvest fruit
            if( success ) then
                step=0;
                if gem1==7 then     -- topas modifies skill!
                    step=str1;
                end
                if gem2==7 then
                    step=step+str2;
                end
                --User:inform( "creating harvest" );

                -- replace item with follow up item
                if( harvest[ 4 ] ~= 0 ) then
                    --User:inform( "changing item" );
                    world:erase( TargetItem, 1 );
                else
                    DecreaseAreaHerbs(TargetItem.pos,1);
                end

				-- Hier wird das neue Item erschaffen

	                QualWert = 333
	                User:createItem( harvest[ 3 ], 1, QualWert, harvest[ 6 ] );
					

                User.movepoints=User.movepoints-4;
                if( harvest[ 2 ] > 0 ) then
                    --User:learn( 2, "herb lore", 2, 100 );
					--Replace with new learn function, see learn.lua 
                    base.common.GetHungry( User, 200 );
                else
                    --User:learn( 2, "herb lore", 2, 5 );
					--Replace with new learn function, see learn.lua 
                end

                if base.common.ToolBreaks( User, SourceItem ) then
                    base.common.InformNLS(User,
                    "Die alte und abgenutzte Sichel in deinen H�nden zerbricht.",
                    "The old and used sickle in your hands breaks.");
                end
            end

            if( (not success ) and (skilluse~=1) ) and math.random(1,30) == 10 then --spam protection: 1/30 chance for message
                if( boden == 1 ) then
                    base.common.InformNLS( User,
                    "Deine H�nde graben durch die Erde, aber Du findest nichts.",
                    "Your hands muckrake through the dirt, but you do not find anything." );
                elseif( boden == 2 ) then
                    base.common.InformNLS( User,
                    "Altes Laub und Nadeln sind alles was Du findest.",
                    "Dry leaves are all you find." );
                elseif( boden == 3 ) then
                    base.common.InformNLS( User,
                    "Du findest nichts au�er trockenem Sand.",
                    "You find nothing but dry sand" );
                elseif( boden == 4 ) then
                    base.common.InformNLS( User,
                    "Du findest nichts au�er Unkraut und Gras.",
                    "You find nothing but weed and grass." );
                elseif( boden == 5 ) then
                    base.common.InformNLS( User,
                    "Du findest nichts au�er Ger�ll.",
                    "You find nothing but boulders." );
                elseif( boden == 6 ) then
                    base.common.InformNLS( User,
                    "Du findest nichts au�er ein paar unn�tzen d�rren St�ngeln im Wasser.",
                    "You find nothing except of some useless meagre stipes in the water." );
                elseif( boden == 7 ) then
                    base.common.InformNLS( User,
                    "Du findest nichts au�er ein paar modrigen Pflanzenresten.",
                    "You find nothing but some musty plant remains." );
                elseif( boden == 8 ) then
                    base.common.InformNLS( User,
                    "Du findest nichts au�er Eis und Schnee.",
                    "You find nothing but ice and snow." );
				else
                    base.common.InformNLS( User,
                    "Du findest nichts.",
                    "You  do not find anything." );
                end
            end -- right tile
            return
        end
    end -- for harvestList
end

function InitHerblore()
    if (harvestItem == nil) then

        harvestItem = { };
        AreaHerbs = { };
        AreaTime = { };
        -- Format of entry: boden, difficulty, product, followup item, aviable in seasons[0..10]{spring,summer,fall,winter}
        -- Ground(field=1,forest=2,sand=3,grass=4,rocks=5,water=6,dirt=7,snow=8)
        
        
        -- Druidenkr�uter
        
        harvestItem[ 273 ] = {                       -- Blume
        { 2, 5, 144, 0, {10, 1,10,16}, 37 },             -- Wald: 	Jungfernkraut
        { 3, 5, 137, 0, {10, 1,10,16}, 25 },             -- Sand: 	Flammkelchbl�te
        { 4, 7, 135, 0, {16,10, 1,10}, 17 },             -- Wiese:	Gelbkraut
        { 5, 0, 148, 0, {10,16,10, 1}, 47 },             -- Fels: 	Firnisbl�te
        { 6, 0, 763, 0, {10,16,10, 1}, 47 },             -- Wasser:	Sumpfblume
        { 7,50, 138, 0, { 1,10,16,10}, 26 },             -- Dreck:	Nachengelsbl�te
        { 8,50, 757, 0, {10,16,10, 1}, 26 } };           -- Schnee:  Gottesblume
        
        harvestItem[ 274 ] = {                       -- Farn
        { 2,30, 140, 0, {10,16,10, 1}, 27 },               	-- Wald: 	Donfblatt
        { 3, 0, 156, 0, {10, 1,10,16}, 61 },               	-- Sand: 	Steppenfarn
        { 4,10, 153, 0, {16,10, 1,10}, 52 },               	-- Wiese:	Fu�blatt
        { 5,20, 768, 0, {10,16,10, 1}, 52 },               	-- Fels: 	Wolfsfarn
		{ 6, 0, 754, 0, {10,16,10, 1}, 52 },            	-- Wasser:  Wasserfarn
		{ 7,50, 752, 0, { 1,10,16,10}, 26 },             	-- Dreck:	Alraune
		{ 8,50, 760, 0, { 1,10,16,10}, 26 } };             	-- Schnee:  Eisblatt
        
        harvestItem[ 301 ] = {                       -- Hecke
        { 2, 0, 147, 0, { 1,10,16,10}, 46 },              -- Wald: 	Brombeere
        { 3, 5, 142, 0, {10, 1,10,16}, 35 },              -- Sand: 	Sandbeere
        { 4, 0, 143, 0, { 1,10,16,10}, 36 },              -- Wiese: Roter Holunder
        { 5,20, 756, 0, {10,16,10, 1}, 52 },              -- Fels:  Frommbeere
        { 7,50, 136, 0, { 1,10,16,10}, 18 } };            -- Dreck: Wutbeere
        
        harvestItem[ 338 ] = {                       -- Schilf
        { 4, 5, 134, 0, {10, 1,10,16}, 16 },              -- Wiese:	 Vierbl�ttrige Einbeere
        { 6,30, 155, 0, {10,16,10, 1}, 54 } };            -- Wasser: Sibanac Blatt
        
        harvestItem[ 1782 ] = {                      -- Gras
        { 2, 0, 151, 0, {10,16,10, 1}, 48 },             -- Wald: 	Erdbeere
        { 3, 5, 146, 0, { 1,10,16,10}, 28 },             -- Sand: 	W�stenhimmelskapsel
        { 4,20, 141, 0, { 1,10,16,10}, 38 },             -- Wiese:	Schwarze Distel
        { 5,20, 145, 0, {16,10, 1,10}, 38 },             -- Stein:	Heidebl�te
        { 6, 0, 761, 0, { 1,10,16,10}, 52 },             -- Wasser:  Regenkraut
        { 7,50, 762, 0, {10, 1,10,16}, 18 } };           -- Dreck:   Schwefelgras

        harvestItem[ 1783 ] = {                      -- Gras
        { 2, 0, 151, 0, {10,16,10, 1}, 48 },             -- Wald: 	Erdbeere
        { 3, 5, 146, 0, { 1,10,16,10}, 28 },             -- Sand: 	W�stenhimmelskapsel
        { 4,20, 141, 0, { 1,10,16,10}, 38 },             -- Wiese:	Schwarze Distel
        { 5,20, 145, 0, {16,10, 1,10}, 38 },             -- Stein:	Heidebl�te
        { 6, 0, 761, 0, { 1,10,16,10}, 52 },             -- Wasser:  Regenkraut
        { 7,50, 762, 0, {10, 1,10,16}, 18 } };           -- Dreck:   Schwefelgras
        
        harvestItem[ 1791 ] = {                      -- Sonnenblumen
        { 4,30, 133, 0, {10,16,10, 1}, 15 } };            -- Wiese: Sonnenkraut
        
        harvestItem[ 767 ] = {                      -- Wasserlilie
        { 6,30, 767, 0, {10,16,10,1}, 15 } };            -- Wasser: Wasserlilie
        
        harvestItem[ 1807 ] = {                      -- Ceridern
        { 0,30, 753, 0, {16,10, 1,10}, 15 } };            -- alle: Ceridern-Beere
        
        harvestItem[ 1808 ] = {                      -- Drachenbaum
        { 0,30, 755, 0, {16,10, 1,10}, 15 } };            -- alle: Feuerschote
        
        -- Pilze

        harvestItem[ 159 ] = {                       -- Fliegenpilz
        { 0, 0, 159, 0, { 1,10,16,10}, 11 }};             -- Alle: Fliegenpilz

         harvestItem[ 161 ] = {                       -- Hirtenpilz
        { 0, 0, 161, 0, { 1,10,16,10}, 11 }};             -- Alle: Hirtenpilz

        harvestItem[ 426 ] = {                       -- Pilz
        { 0, 0, 162, 0, {16,10, 1,10}, 11 }};             -- Alle: Geburtspilz

        harvestItem[ 158 ] = {                       -- Knollenschwamm
        { 0, 0, 158, 0, {10, 1,10,16}, 11 }};             -- Alle: Knollenschwamm

        
        harvestItem[ 1790 ] = {                      -- Pilzkreis
        { 0, 0, 163, 0, { 1,10,16,10}, 73 } };             -- Alle: Champignon
        
        -- Hilfskraut

        harvestItem[ 203 ] = {                       -- Palme
        { 0, 0, 157, 0, {10,10,10,10}, 11 }};             -- Alle: Faulbaumrinde
        
        harvestItem[ 2169 ] = {                      -- Alter Baumstamm
        { 2,30, 157, 0, {10,16,10,1}, 11 },                -- Wald: Faulbaumrinde
        { 7,10, 157, 0, {10,16,10,1}, 11 } };              -- Dreck: Faulbaumrinde

        harvestItem[ 2170 ] = {                      -- Alter Baumstamm
        { 2,30, 157, 0, {10,16,10,1}, 11 },                -- Wald: Faulbaumrinde
        { 7,10, 157, 0, {10,16,10,1}, 11 } };              -- Dreck: Faulbaumrinde



		-- Ackerbau

    	harvestItem[ 290 ] = {                       -- Kohl
        { 0, 0, 290, -1, {14,20,16,0}, 11 } };             -- Alle: Kohl
        
        harvestItem[ 537 ] = {                       -- reife Zwiebeln
        { 0, 0, 201, -1, {14,20,16,0}, 74 } };            -- Alle: Zwiebeln

        harvestItem[ 540 ] = {                       -- reife Tomaten
        { 0, 0, 200, -1, {14,20,16,0}, 82 } };            -- Alle: Tomaten

        harvestItem[ 731 ] = {                       -- Hopfen
        { 0, 0, 154, -1, {14,20,16,0}, 53 } };            -- Alle: Hopfen

        harvestItem[ 732 ] = {                       -- alter Hopfen
        { 0, 0, 728, -1, {14,20,16,0}, 11 } };            -- Alle: Hopfenwurzel
        
        harvestItem[ 2492 ] = {                      -- reife Karotten
        { 0, 0, 2493, -1, {14,20,16,0}, 11 } };            -- Alle: Karotten

		harvestItem[ 782 ] = {                      -- reifes Zuckerrohr
        { 0, 0, 778, -1, {14,20,16,0}, 73 } };            -- Alle: Zuckerrohr

        harvestItem[ 777 ] = {                      -- reifer Tabak
        { 0, 0, 772, -1, {14,20,16,0}, 82 } };            -- Alle: Tabak

		-- Sonstiges

        harvestItem[ 308 ] = {                       -- Tannenbaum
        { 0,0, 149, 0, {16,10,5,10}, 11 } };             -- Alle: Tannensetzling

        harvestItem[ 1812 ] = {                      -- kleine Palme
        { 3,20, 80, 0, {14,20,16,1}, 11 } };               -- Sand: Banane

        harvestItem[ 1813 ] = {                      -- kleine Palme
        { 3,20, 80, 0, {14,20,16,1}, 11 } };               -- Sand: Banane
        
        
        harvestItem[ 125 ] = {                       -- Baumstumpf Apfel
        { 0,0, 152, 0, {10, 1,10,16}, 11 } };             -- Alle: Lebenswurz
        
        harvestItem[ 309 ] = {                       -- Baumstumpf Tanne
        { 0,0, 152, 0, {10, 1,10,16}, 11 } };             -- Alle: Lebenswurz
        
        harvestItem[ 541 ] = {                       -- Baumstumpf Kirsche
        { 0,0, 152, 0, {10, 1,10,16}, 11 } };             -- Alle: Lebenswurz
        
        harvestItem[ 542 ] = {                       -- Baumstumpf Cachdern
        { 0,0, 152, 0, {10, 1,10,16}, 11 } };             -- Alle: Lebenswurz
        
        harvestItem[ 584 ] = {                       -- Baumstumpf Eldan-Eiche
        { 0,0, 152, 0, {10, 1,10,16}, 11 } };             -- Alle: Lebenswurz
        
        harvestItem[ 585 ] = {                       -- Baumstumpf Kiefer
        { 0,0, 152, 0, {10, 1,10,16}, 11 } };             -- Alle: Lebenswurz
        
        harvestItem[ 587 ] = {                       -- Baumstumpf Naldor
        { 0,0, 152, 0, {10, 1,10,16}, 11 } };             -- Alle: Lebenswurz


    end
end

function GetAreaHerbs(TargetPosi)
    local AreaFieldX=math.floor((TargetPosi.x+500))+1;
    local AreaFieldY=math.floor((TargetPosi.y+500))+1;
    if (AreaHerbs[AreaFieldX]==nil) then
        AreaHerbs[AreaFieldX] = { };
    end
    if (AreaTime[AreaFieldX]==nil) then
        AreaTime[AreaFieldX] = { };
    end
    if (AreaHerbs[AreaFieldX][AreaFieldY]==nil) then
        AreaHerbs[AreaFieldX][AreaFieldY] = 20;
    end
    if (AreaTime[AreaFieldX][AreaFieldY]==nil) then
        AreaTime[AreaFieldX][AreaFieldY] = GetServerSeconds();
    end
    IncreaseAreaHerbs(TargetPosi)
    return AreaHerbs[AreaFieldX][AreaFieldY]
end

function DecreaseAreaHerbs(TargetPosi,Amount)
    local AreaFieldX=math.floor((TargetPosi.x+500))+1;
    local AreaFieldY=math.floor((TargetPosi.y+500))+1;
    AreaHerbs[AreaFieldX][AreaFieldY]=AreaHerbs[AreaFieldX][AreaFieldY]-Amount;
    AreaTime[AreaFieldX][AreaFieldY]=GetServerSeconds();
    return
end

function IncreaseAreaHerbs(TargetPosi)
    local AreaFieldX=math.floor((TargetPosi.x+500))+1;
    local AreaFieldY=math.floor((TargetPosi.y+500))+1;
    if (AreaHerbs[AreaFieldX][AreaFieldY]<20) then
        local TimeDiff=GetServerSeconds()-AreaTime[AreaFieldX][AreaFieldY];
        if (TimeDiff>600) then
            AreaHerbs[AreaFieldX][AreaFieldY]=AreaHerbs[AreaFieldX][AreaFieldY]+math.min(20,math.floor(TimeDiff/600));
            AreaTime[AreaFieldX][AreaFieldY]=GetServerSeconds();
        end
    end
    return
end

function GetServerSeconds()
    local retVal=0;
    retVal=retVal+world:getTime("second");
    retVal=retVal+world:getTime("minute")*60;
    retVal=retVal+world:getTime("hour")*60*60;
    retVal=retVal+world:getTime("day")*24*60*60;
    local month=world:getTime("month");
    if (month==0) then
        retVal=retVal+16*6*24*60*60;
    else
        retVal=retVal+month*24*24*60*60;
    end
    retVal=retVal+world:getTime("year")*366*24*60*60;
    return math.floor(retVal/4)
end

function SearchTileInRange(GroundType,Radius,Posi)
    local i=-Radius;
    local k=-Radius
    local found=false;
    repeat
    k=-Radius;
    repeat
    SearchPos=position(Posi.x+i,Posi.y+k,Posi.z)
    field = world:getField( SearchPos )
    TileID = field:tile();
    bodenart = base.common.GetGroundType( TileID )
    for itn=1,table.getn(GroundType) do
        if (bodenart==GroundType[itn]) then
            found=true
        end
    end
    k=k+1;
    until (found or k==Radius+1)
    i=i+1;
    until (found or i==Radius+1)
    return found
end

function SearchItemInRange(ItemIDs,Radius,Posi)
    local i=-Radius;
    local k=-Radius
    local found=false;
    repeat
    k=-Radius;
    repeat
    SearchPos=position(Posi.x+i,Posi.y+k,Posi.z)
    if world:isItemOnField(SearchPos) then
        for itn=1,table.getn(ItemIDs) do
            if (Item.id==ItemIDs[itn]) then
                found=true
            end
        end
    end
    k=k+1;
    until (found or k==Radius+1)
    i=i+1;
    until (found or i==Radius+1)
    return found
end

function CheckValidHerb(HerbID,TargetPos)
    return true;
end
