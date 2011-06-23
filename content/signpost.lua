module("content.signpost", package.seeall)

function InitWegweiser()
    signTextDe={};
    signTextEn={};
    signCoo={};
    signItemId={};
    signPerception={};

	--UPDATE common SET com_script="item/signpost.lua" WHERE com_itemid=245;

    ---------------- WEGWEISER ----------------

    --AddWeg({X,Y,Z},german text,english text, direction, needed value of perception);
    --directions:
    -- 0 = north
    -- 2 = east
    -- 4 = south
    -- 6 = west
    AddTree({734,762,0},"Zur Mitte, zum Saft, zack, zack!","To the middle, to the juice, zack, zack!", 6,5);

    --SW/Cadomyr map
    AddWeg({42,634,0},"Piratenbucht","Pirate Cove",0,0); -- <Name hier> Piratenbucht -- <name here> pirate cove
    AddWeg({50,640,0},"Faber's Wache","Faber's Guardhouse",6,0); -- <Name hier> Zerst�rter Au�enposten -- <name here> ruin of a outpost
    AddWeg({110,659,0},"Cape Farewell; Faber's Wache","Cape Farewell; Faber's Guardhouse",6,0);
	AddWeg({112,659,0},"Grundstein der Aufrichtigkeit; Malach�ntempel; Rosaline-Kubus; Harbour","Candour Foundation; Malach�n Temple; Rosaline Cube; Harbour",4,0);
	AddWeg({114,659,0},"Katanbi Desert; Freiheitsbruch; Arena; Gladiatoren; Sklavenmarkt; Galmair; Runewick","Katanbi Desert; Liberty Quarry; Arena; Gladiatoren; Slave Market; Galmair; Runewick",2,0);
	AddWeg({87,642,0},"Cadomyr","Cadomyr",0,0);
    AddWeg({137,633,0},"Cadomyr","Cadomyr",0,0);
    AddWeg({126,611,0},"Marktplatz","Marketplace",0,0);
    AddWeg({130,583,0},"Werkstatt","Workshop",0,0);
    AddWeg({116,589,0},"Taverne 'Einh�rniger L�we'","Tavern 'Unicorn Lion'",0,0);
    AddWeg({91,586,0},"Gasthaus 'Seeufer'","Inn 'Lakeshore'",0,0);
    AddWeg({123,568,0},"Palast Ihrer Majest�t","Palace of Her Majesty",0,0);
    AddWeg({120,568,0},"Palast Ihrer Majest�t","Palace of Her Majesty",0,0);
    AddWeg({129,563,0},"Zhambratempel","Zhambratemple",2,0);
    AddWeg({129,699,0},"Grundstein der Aufrichtigkeit","Candour Foundation",2,0);  --<coal mine>
    AddWeg({176,612,0},"Freiheitsbruch","Liberty Quarry",6,0); --<copper/gold/iron mine>
    AddWeg({174,635,0},"Freiheitsbruch","Liberty Quarry",0,0); --<copper/gold/iron mine>
	AddWeg({209,552,0},"Grugmutz's H�hle","Grugmutz's cave",6,0); -- <Name hier> Ogerversteck -- <name here> ogre hideout
    AddWeg({145,694,1},"Malach�ntempel","Malach�n Temple",0,0);
    AddWeg({90,690,0},"Rosaline-Kubus","Rosaline Cube",4,0); -- <Name hier> Pyramide der K�nigin -- <name here> pyramid of the queen
    AddWeg({76,689,0},"Cape Farewell","Cape Farewell",6,0);
    AddWeg({109,771,0},"K�niglicher Hafen","Royal Harbour",4,0);
    AddWeg({219,646,0},"Katanbi Br�cke; dahinter Cadomyr","Katanbi Bridge; behind Cadomyr",6,0);
    AddWeg({245,685,0},"Die Blutkreisarena","The Blood Circle Arena",0,0); -- <Name hier> Arena -- <name here> arena
    AddWeg({235,686,0},"F�r Ehre k�mpfen wir, in Blut sterben wir! Die K�nigliche Akademie der Gladiatoren","For honour we fight, in blood we die! The Royal Academy of Gladiators",4,0); -- <Name hier> Gladiatorschule -- <name here> gladiatorschool
    AddWeg({244,556,0},"Perle der Sirani","Pearl of Sirani",0,0); -- <Name hier> Oase -- <name here> oasis
    AddWeg({372,552,0},"Achtung! Verfluchter Ort","Attention! Cursed Place",2,0); -- <Name hier> Zerst�rtes Geb�ude -- <name here> destroyed building
    AddWeg({389,590,0},"Pellundria","Pellundria",2,0); -- <Name hier> Nekromantenh�hle -- <name here> necromancer cave
    AddWeg({399,619,0},"Schattenland! Gefahr!","Shadowland! Danger!",2,0); -- <Name hier> Moria/Vampirschloss -- <name here> moria/ vampirecastle
    AddWeg({427,676,0},"Schattenland! Gefahr!","Shadowland! Danger!",0,0); -- <Name hier> Moria/Vampirschloss -- <name here> moria/ vampirecastle
	AddWeg({439,638,0},"Cadomyr","Cadomyr",0,0);
	AddWeg({433,637,0},"Galmair","Galmair",6,0);
    AddWeg({400,739,0},"Moshrans Brut - Bleibt fern!","Moshran's Brood - Stay away!",0,0); -- <Name hier> Oase/Ruine -- <name here> oasis/ruin
    AddWeg({389,771,0},"Moshrans Brut - Bleibt fern!","Moshran's Brood - Stay away!",0,0); -- <Name hier> Oase/Ruine -- <name here> oasis/ruin
    AddWeg({203,724,0},"Siranitempel, Berg Letma","Mount Letma, Tear of Sirani",4,0); -- <Name hier> K�stengebirge/Gebirgskette -- <name here> mountain range
    AddWeg({208,774,0},"Berg Letma","Mount Letma",2,0); -- <Name hier> K�stengebirge/Gebirgskette -- <name here> mountain range
    AddWeg({112,817,0},"Verlorener Hafen","Lost Harbour",4,0); -- <Name hier> Ruinen -- <name here> ruins
    AddWeg({294,700,0},"W�stenloch","Desert Hole",2,0); -- <Name hier> ehemaliges Bergwerk -- <name here> former pit
    AddWeg({294,680,0},"W�stenloch","Desert Hole",6,0); -- <Name hier> ehemaliges Bergwerk -- <name here> former pit
    AddWeg({347,692,0},"Sternenoase","Oasis of Stars",2,0); -- <Name hier> Sandcamp -- <name here> sandcamp
    AddWeg({253,690,0},"K�niglicher Sklavenmarkt; W�stenloch; Sternenoase","Royal Slave Market; Desert Hole; Oasis of Stars",2,0); -- <Name hier> Sandcamp -- <name here> sandcamp
    AddWeg({200,757,0},"Tr�ne der Sirani","Tear of Sirani",6,0);
	AddWeg({166,758,0},"Siranitempel","Temple of Sirani",2,0);
    AddWeg({468,794,0},"Katanbi W�ste; dahinter Cadomyr","Katanbi Desert; behind Cadomyr",6,0);
    AddWeg({481,794,0},"Wachst�tzpunkt; Leuchtturm; Galmair; Runewick","Sentry Outpost; Lighthouse; Galmair; Runewick",2,0);
    AddWeg({290,673,0},"K�niglicher Sklavenmarkt","Royal Slave Market",0,0);
    AddWeg({226,646,0},"Perle der Sirani","Pearl of Sirani",0,0); -- <Name hier> Oase -- <name here> oasis
    AddWeg({109,771,0},"Cadomyr Hafen","Cadomyr Harbour",4,0);

    --NW/Galmair-map
    AddWeg({365,247,0},"Guilianni-Residenz oder Galmair's Crest","Guilianni Residence or Galmair's Crest",0,0); -- Don's palace
    AddWeg({392,249,0},"","",0,0);-- <Name hier> Gildengeb�ude -- <name here> guild hall
    AddWeg({376,259,0},"Werkstatt","Workshop",2,0);-- <Name hier> Werkstatt -- <name here> workshop
    AddWeg({401,293,0},"Gasthof zum schl�frigen Bujhaar","Sleepy Bujhaar Inn",2,0);-- <Name hier> Gasthaus -- <name here> Inn
    AddWeg({418,357,0},"Malachitmine","Malachite Mine",2,0);
    AddWeg({421,251,0},"Galmair","Galmair",6,0);
    AddWeg({421,247,0},"Galmair","Galmair",6,0);
    AddWeg({343,259,0},"Taverne zur Gefl�gelten Sau","The Winged Sow Tavern",0,0);-- <Name hier> Taverne -- <name here> tavern
    AddWeg({311,282,0},"Villa 'Goldader'","Villa 'Goldvein'",6,0);-- <Name hier> Villa -- <name here> villa
    AddWeg({311,265,0},"Irmoroms Tempel","Tempel of Irmorom",0,0);
    AddWeg({332,254,0},"Schlackengrube","Scoria Mine",0,0);-- <Name hier> Galmair Underground -- <name here> Galmair underground
    AddWeg({474,251,0},"Galmair","Galmair",6,0);
    AddWeg({474,248,0},"Galmair","Galmair",6,0);
    AddWeg({501,212,0},"Hafen + Dunkellochmine","Harbour + Dark Hole Mine",0,0);
    AddWeg({444,123,0},"Hafen","Harbour",0,0);
    AddWeg({409,148,0},"Dunkellochmine","Dark Hole Mine",6,0);
    AddWeg({409,143,0},"Dunkellochmine","Dark Hole Mine",6,0);
    AddWeg({193,430,0},"Festung Hammerfall","Fortress Hammerfall",0,0);-- <Name hier> Zwergenfort -- <name here> dwarfen fortress
    AddWeg({417,385,0},"Cadomyr","Cadomyr",4,0);
    AddWeg({338,238,-6},"Schweinebaue","Hog Dens",2,0);-- <Name hier> Orksh�hle - <name here> orccave
    AddWeg({342,243,-6},"Gemmenschacht","Cameo Pit",2,0);-- <Name hier> Wohnviertel
    AddWeg({343,247,-6},"Ronagans Tempel - Achtung, �berflutet!","Tempel of Ronagan - Attention, flooded!",4,0);-- <Name hier> �berflutetes Viertels(ronagan schrein)
    AddWeg({337,248,-6},"Taverne zur Gefl�gelten Sau","The Winged Sow Tavern",4,0);
    AddWeg({332,251,-6},"Abwassersch�chte","Sewers",4,0);
    AddWeg({330,249,-6},"Schimmersenke","Flicker Swale",6,0);-- <Name hier> Schwarzmarkt -- <name here> black market
    AddWeg({503,213,0},"Gasthof zur Hanfschlinge; Cadomyr; Runewick","The Hemp Necktie Inn; Cadomyr; Runewick",2,0);
    AddWeg({501,218,0},"Galmair","Galmair",4,0);
    AddWeg({427,247,0},"Hafen; Dunkellochmine; Gasthof zur Hanfschlinge; Cadomyr; Runewick","Harbour; Dark Hole Mine; The Hemp Necktie Inn; Cadomyr; Runewick",2,0);
    AddWeg({485,248,0},"Hafen; Dunkellochmine; Gasthof zur Hanfschlinge; Cadomyr; Runewick","Harbour; Dark Hole Mine; The Hemp Necktie Inn; Cadomyr; Runewick",2,0);
    AddWeg({397,253,0},"Malachitmine","Malachite Mine",4,0);

    --SE/Runewick-map
    AddWeg({525,782,0},"Cadomyr","Cadomyr",6,0);
	AddWeg({644,715,0},"Wachst�tzpunkt","Sentry Outpost",0,0);
	AddWeg({528,782,0},"Wachst�tzpunkt","Sentry Outpost",2,0);
	AddWeg({528,781,0},"Leuchtturm; Galmair; Runewick","Lighthouse; Galmair; Runewick",0,0);
    AddWeg({539,530,0},"Leuchttrum; Wachst�tzpunkt; Cadomyr","Lighthouse; Sentry Outpost; Cadomyr",4,0);
    AddWeg({517,583,0},"Leuchttrum; Wachst�tzpunkt; Cadomyr","Lighthouse; Sentry Outpost; Cadomyr",4,0);
    AddWeg({887,638,0},"Eastport","Eastport",0,0);
    AddWeg({887,639,0},"Runewick","Runewick",4,0);
    AddWeg({725,559,0},"Gasthof zur Hanfschlinge; Cadomyr; Galmair","The Hemp Necktie Inn; Cadomyr; Galmair",0,0);
    AddWeg({725,559,0},"Gasthof zur Hanfschlinge; Cadomyr; Galmair - Achtung! Diebe!","The Hemp Necktie Inn; Cadomyr; Galmair - Attention! Thieves!",2,0);
    AddWeg({758,669,0},"Drachenbau! Achtung hei�!","Dragon Lair! Dangerous heat!",0,0);
    AddWeg({755,669,0},"Drachenbau! Achtung hei�!","Dragon Lair! Dangerous heat!",0,0);
    AddWeg({749,669,0},"Drachenbau! Achtung hei�!","Dragon Lair! Dangerous heat!",0,0);
    AddWeg({746,669,0},"Drachenbau! Achtung hei�!","Dragon Lair! Dangerous heat!",0,0);
    AddWeg({743,669,0},"Drachenbau! Achtung hei�!","Dragon Lair! Dangerous heat!",0,0);
    AddWeg({760,632,0},"Drachenbau! Achtung hei�!","Dragon Lair! Dangerous heat!",2,0);
    AddWeg({790,687,0},"Runewick - Viel Gl�ck!","Runewick - Good luck!",4,0);
    AddWeg({789,681,0},"Schlechte Wahl!","Bad choice!",6,0);
    AddWeg({790,681,0},"Sehr schlechte Wahl!","Very bad choice!",2,0);
    AddWeg({759,735,0},"B�renh�hle; Drachenbau; Norden","Bear Cave; Dragon Lair; North",0,0);
    AddWeg({847,728,0},"Heitere Lichtung","Merryglade",0,0);
    AddWeg({847,730,0},"Osthafen","Eastport",2,0);
    AddWeg({786,777,0},"Anthilbach","Anthil Brook",6,0);
    AddWeg({786,777,0},"Heitere Lichtung; Osthafen","Merryglade; Eastport",2,0);
    AddWeg({739,803,0},"Hafen","Harbour",6,0);
    AddWeg({739,806,0},"Hafen","Harbour",6,0);
    AddWeg({739,807,0},"Hafen","Harbour",6,0);
    AddWeg({739,810,0},"Hafen","Harbour",6,0);
    AddWeg({739,811,0},"Hafen","Harbour",6,0);
    AddWeg({739,814,0},"Hafen","Harbour",6,0);
    AddWeg({757,813,0},"Vierbeiniger Roter Vogel; Hafen","Quadruped Red Bird; Harbour",6,0);
    AddWeg({762,801,0},"Bauernh�fe","Farmland",2,0);
    AddWeg({761,800,0},"B�renh�hle; Drachenbau; Cadomyr; Galmair; Gasthof zur Hanfschlinge","Bear Cave; Dragon Lair; Cadomyr; Galmair; The Hemp Necktie Inn",0,0);
    AddWeg({783,798,0},"Erzmagier Elvaine Morgan; Vierbeiniger Roter Vogel; Hafen","Archmage Elvaine Morgan; Quadruped Red Bird; Harbour",6,0);
    AddWeg({783,797,0},"Anthilbach; Heitere Lichtung; Osthafen","Anthil Brook; Merryglade; Eastport",0,0);
    AddWeg({761,813,0},"Erzmagier Elvaine Morgan","Archmage Elvaine Morgan",2,0);
    AddWeg({791,821,0},"Erzmagier Elvaine Morgan","Archmage Elvaine Morgan",2,0);
    AddWeg({840,821,0},"Erzmagier Elvaine Morgan","Archmage Elvaine Morgan",2,0);
    AddWeg({840,824,0},"Erzmagier Elvaine Morgan","Archmage Elvaine Morgan",2,0);
    AddWeg({853,821,0},"H�lzf�llersiedlung; Zwillingsaugen Inseln","Woodcutter's Hut; Twin Eyes Islands",4,0);
    AddWeg({855,814,0},"Heilige Eiche; Triumphfeuer","Holy Oak; Fire of Triumph",0,0);
    AddWeg({851,816,0},"Vierbeiniger Roter Vogel; Hafen; Bauernh�fe; Cadomyr; Galmair; ...","Quadruped Red Bird; Harbour; Farmland; Cadomyr; Galmair; ...",6,0);
    AddWeg({856,819,0},"Erzmagier Elvaine Morgan","Archmage Elvaine Morgan",2,0);
    

    --NE/Neutral-map
    AddWeg({680,311,0},"Galmair","Galmair",6,0);
    AddWeg({685,317,0},"Gasthof zur Hanfschlinge","The Hemp Necktie Inn",2,0);
    AddWeg({676,326,0},"Cadomyr","Cadomyr",6,0);
    AddWeg({682,328,0},"Runewick","Runewick",4,0);
    AddWeg({723,385,0},"Gasthof zur Hanfschlinge; Galmair","The Hemp Necktie Inn; Galmair",6,0);
    AddWeg({730,391,0},"Runewick","Runewick",4,0);
	AddWeg({714,488,0},"Cadomyr","Cadomyr",6,0);
    AddWeg({718,488,0},"Gasthof zur Hanfschlinge; Galmair","The Hemp Necktie Inn; Galmair",0,0);
    AddWeg({717,455,0},"Cadomyr","Cadomyr",6,0);
    AddWeg({729,459,0},"Runewick","Runewick",4,0);
    AddWeg({729,448,0},"Gasthof zur Hanfschlinge; Galmair","The Hemp Necktie Inn; Galmair",0,0);
    AddWeg({564,394,0},"Funkelh�hle","Glittering Cave",0,0);

	-- Noobia --
	--AddPicture({129,524,0},"TEST","A man is lying in his bed. He seems very sick. A young woman is sitting next to him and is holding one of his hands. He hands her a crown while she is shimmering in an almost divine sun light. At the bottom right is a date: 22 AS.", 7,0); --palace
    --AddPicture({127,524,0},"TEST","A man is lying in his bed. He seems very sick. A young woman is sitting next to him and is holding one of his hands. He hands her a crown while she is shimmering in an almost divine sun light. At the bottom right is a date: 22 AS.", 6,0); --palace

	  
	
end

function AddWeg(Posi,dText,eText,Dir,Percept)
    local tablePos = Posi[1]..Posi[2]..Posi[3];
    PrepareTables(tablePos);
    table.insert(signCoo[tablePos],position(Posi[1],Posi[2],Posi[3]));
    table.insert(signTextDe[tablePos],dText);
    table.insert(signTextEn[tablePos],eText);
    table.insert(signPerception[tablePos],Percept);
    CheckAndPlaceItem(position(Posi[1],Posi[2],Posi[3]),DirToItemID(Dir));
end

function AddGrave(Posi,dText,eText,Type,Percept)
    local tablePos = Posi[1]..Posi[2]..Posi[3];
    PrepareTables(tablePos);
    table.insert(signCoo[tablePos],position(Posi[1],Posi[2],Posi[3]));
    table.insert(signTextDe[tablePos],dText);
    table.insert(signTextEn[tablePos],eText);
    table.insert(signPerception[tablePos],Percept);
    CheckAndPlaceItem(position(Posi[1],Posi[2],Posi[3]),DirToItemID(Type+10));
end

function AddPicture(Posi,dText,eText,Type,Percept)
    local tablePos = Posi[1]..Posi[2]..Posi[3];
    PrepareTables(tablePos);
    table.insert(signCoo[tablePos],position(Posi[1],Posi[2],Posi[3]));
    table.insert(signTextDe[tablePos],dText);
    table.insert(signTextEn[tablePos],eText);
    table.insert(signPerception[tablePos],Percept);
    CheckAndPlaceItem(position(Posi[1],Posi[2],Posi[3]),DirToItemID(Type+20));
end

function AddPennant(Posi,dText,eText,Type,Percept)
    local tablePos = Posi[1]..Posi[2]..Posi[3];
    PrepareTables(tablePos);
    table.insert(signCoo[tablePos],position(Posi[1],Posi[2],Posi[3]));
    table.insert(signTextDe[tablePos],dText);
    table.insert(signTextEn[tablePos],eText);
    table.insert(signPerception[tablePos],Percept);
    CheckAndPlaceItem(position(Posi[1],Posi[2],Posi[3]),DirToItemID(Type+30));
end

function AddTree(Posi,dText,eText,Type,Percept)
    local tablePos = Posi[1]..Posi[2]..Posi[3];
    PrepareTables(tablePos);
    table.insert(signCoo[tablePos],position(Posi[1],Posi[2],Posi[3]));
    table.insert(signTextDe[tablePos],dText);
    table.insert(signTextEn[tablePos],eText);
    table.insert(signPerception[tablePos],Percept);
    CheckAndPlaceItem(position(Posi[1],Posi[2],Posi[3]),DirToItemID(Type+40));
end

function AddPillar(Posi,dText,eText,Type,Percept)
    local tablePos = Posi[1]..Posi[2]..Posi[3];
    PrepareTables(tablePos);
    table.insert(signCoo[tablePos],position(Posi[1],Posi[2],Posi[3]));
    table.insert(signTextDe[tablePos],dText);
    table.insert(signTextEn[tablePos],eText);
    table.insert(signPerception[tablePos],Percept);
    CheckAndPlaceItem(position(Posi[1],Posi[2],Posi[3]),DirToItemID(Type+50));
end

function AddChimney(Posi,dText,eText,Type,Percept)
    local tablePos = Posi[1]..Posi[2]..Posi[3];
    PrepareTables(tablePos);
    table.insert(signCoo[tablePos],position(Posi[1],Posi[2],Posi[3]));
    table.insert(signTextDe[tablePos],dText);
    table.insert(signTextEn[tablePos],eText);
    table.insert(signPerception[tablePos],Percept);
    CheckAndPlaceItem(position(Posi[1],Posi[2],Posi[3]),DirToItemID(Type+60));
end

function AddMirror(Posi,dText,eText,Type,Percept)
    local tablePos = Posi[1]..Posi[2]..Posi[3];
    PrepareTables(tablePos);
    table.insert(signCoo[tablePos],position(Posi[1],Posi[2],Posi[3]));
    table.insert(signTextDe[tablePos],dText);
    table.insert(signTextEn[tablePos],eText);
    table.insert(signPerception[tablePos],Percept);
    CheckAndPlaceItem(position(Posi[1],Posi[2],Posi[3]),DirToItemID(Type+70));
end


function CheckAndPlaceItem(Posi,ItemID)
    if world:isItemOnField(Posi) then
        if ( world:getItemOnField(Posi).id ~= ItemID ) then
            world:createItemFromId(ItemID,1,Posi,true,333,0);
        end
    else
        world:createItemFromId(ItemID,1,Posi,true,333,0);
    end
end

function PrepareTables(TablePos)
    if (signCoo[TablePos] == nil) then
        signCoo[TablePos] = {};
        signTextDe[TablePos] = {};
        signTextEn[TablePos] = {};
        signPerception[TablePos] = {};
    end
end

-- DirToItemID converts item IDs into local type values for the Add functions to work with

function DirToItemID(Value)
    if (Value==0) then
        return 3081
    elseif (Value==2) then
        return 3084
    elseif (Value==4) then
        return 3082
    elseif (Value==6) then
        return 3083
    elseif (Value==11) then
        return 519
    elseif (Value==12) then
        return 521
    elseif (Value==13) then
        return 520
    elseif (Value==14) then
	    return 337
    elseif (Value==21) then
        return 1914
    elseif (Value==22) then
        return 1915
    elseif (Value==23) then
        return 264
    elseif (Value==24) then
        return 265
    elseif (Value==25) then
        return 748
    elseif (Value==26) then
        return 749
    elseif (Value==27) then
        return 750
    elseif (Value==28) then
        return 751
    elseif (Value==31) then
        return 2046
    elseif (Value==32) then
        return 2069
    elseif (Value==33) then
        return 512
    elseif (Value==34) then
        return 2924
    elseif (Value==35) then
        return 2925
    elseif (Value==36) then
        return 2926
    elseif (Value==37) then
        return 2927
    elseif (Value==41) then
        return 308
    elseif (Value==42) then
        return 586
    elseif (Value==43) then
        return 1804
    elseif (Value==44) then
        return 1807
    elseif (Value==45) then
        return 1808
    elseif (Value==46) then
        return 1809
    elseif (Value==47) then
        return 1817
    elseif (Value==51) then
        return 2805
    elseif (Value==52) then
        return 272
    elseif (Value==53) then
        return 692
    elseif (Value==54) then
        return 693
    elseif (Value==55) then
        return 694
    elseif (Value==56) then
        return 695
    elseif (Value==57) then
        return 440
    elseif (Value==58) then
        return 441
    elseif (Value==59) then
        return 442
    elseif (Value==60) then
        return 443
    elseif (Value==61) then
		return 268
	elseif (Value==62) then
		return 269
	elseif (Value==71) then
		return 2873
	elseif (Value==72) then
		return 2874
	end
end
