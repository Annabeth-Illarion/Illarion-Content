--Script needs to be put in modules and all that crap - no idea how to do that!!!
--Base_common needs to be included.

--Priest magic: Becoming a devotee, change devotion, become a priest by using an altar

--Altars are dedicated to gods, encoded in the data value

--Overview of queststatus:
--AAA contains the ID of the god the character is devoted to
--BBB contains the ID of the god the character is a priest of. MUST be equal to AAA or 0.

--Elder Gods

--1: Ushara � Goddess of earth 
--2: Br�gon � God of fire
--3: Eldan � God of spirit
--4: Tanora/Zelphia � Goddess of water
--5: Findari � Goddess of air

--Younger Gods

--6: Narg�n � God of chaos
--7: Elara � Goddess of wisdom and knowledge
--8: Adron � God of festivities and wine
--9: Oldra � Goddess of life and fertility
--10: Cherga � Goddess of spirits and the underworld
--11: Malach�n � God of battle and hunting
--12: Irmorom � God of trade and craftsmanship
--13: Sirani � Goddess of love and pleasure
--14: Zhambra � God of friendship and loyalty  
--15: Ronagan � God of thieves and shadows
--16: Moshran � God of blood and bones

function ini()

    init=true;

    --Setting the names of the gods

    godName={};
    godName[1]="Ushara";
    godName[2]="Br�gon";
    godName[3]="Eldan";
    godName[4]="Tanora";
    godName[5]="Findari";
    godName[6]="Narg�n";
    godName[7]="Elara";
    godName[8]="Adron";
    godName[9]="Oldra";
    godName[10]="Cherga";
    godName[11]="Malach�n";
    godName[12]="Irmorom";
    godName[13]="Sirani";
    godName[14]="Zhambra";
    godName[15]="Ronagan";
    godName[16]="Moshran";

    --Setting the gods' descriptions

    godDescriptionE={};
    godDescriptionE[1]="Goddess of earth";
    godDescriptionE[2]="God of fire";
    godDescriptionE[3]="God of spirit";
    godDescriptionE[4]="Goddess of water";
    godDescriptionE[5]="Goddess of air";
    godDescriptionE[6]="God of chaos";
    godDescriptionE[7]="Goddess of wisdom and knowledge";
    godDescriptionE[8]="God of festivities and wine";
    godDescriptionE[9]="Goddess of life and fertility";
    godDescriptionE[10]="Goddess of spirits and the underworld";
    godDescriptionE[11]="God of battle and hunting";
    godDescriptionE[12]="God of trade and craftsmanship";
    godDescriptionE[13]="Goddess of love and pleasure";
    godDescriptionE[14]="God of friendship and loyalty";
    godDescriptionE[15]="God of thieves and shadows";
    godDescriptionE[16]="God of blood and bones";

    godDescriptionG={};
    godDescriptionG[1]="der Gott des Feuers";
    godDescriptionG[2]="der Gott des Geistes";
    godDescriptionG[3]="die G�ttin der Luft";
    godDescriptionG[4]="die G�ttin des Wassers";
    godDescriptionG[5]="die G�ttin der Erde";
    godDescriptionG[6]="der Gott des Weines und der Feste";
    godDescriptionG[7]="die G�ttin der Geister und der Unterwelt";
    godDescriptionG[8]="die G�ttin des Wissens und der Weisheit";
    godDescriptionG[9]="der Gott des Handels und des Handwerks";
    godDescriptionG[10]="der Gott der Jagd und der Schlachten";
    godDescriptionG[11]="der Gott des Blutes und der Gebeine";
    godDescriptionG[12]="der Gott des Chaos";
    godDescriptionG[13]="die G�ttin der Fruchtbarkeit und des Lebens";
    godDescriptionG[14]="der Gott der Diebe und der Schatten";
    godDescriptionG[15]="die G�ttin der Liebe und der Freude";
    godDescriptionG[16]="der Gott der Freundschaft und Treue";

--These are the items I need to become a devotee
--Items by Cromwell

    devoteItems={};
    devoteItems[1]={733,316,2588}; --Ushara: Stone block, Quartz sand, Brick
    devoteItems[2]={314,236,43}; --Br�gon: Pott ash, Gold ignot, Candle
    devoteItems[3]={256,2745,155}; --Eldan: Raw diamonds, Parchment, Sibanac leaf
    devoteItems[4]={52,253,72}; --Tanora: Bucket of water, Raw bluestone, Fishing rod
    devoteItems[5]={64,463,65}; --Findari: Arrow, Quill, Short Bow
    devoteItems[6]={80,356,733}; --Narg�n: Banana, Slouch hat, Stone block
    devoteItems[7]={2745,329,463}; --Elara: Parchment, Ink, Quill
    devoteItems[8]={223,2500,388}; --Adron: Iron Goblet, Bottle of Wine, Grapes
    devoteItems[9]={258,534,259}; --Oldra: Flail, Onion seeds, Grain
    devoteItems[10]={24,43,182}; --Cherga: Shovel, Candle, Black shirt
    devoteItems[11]={19,65,2586}; --Malach�n: Metal shield, Short bow, Fur
    devoteItems[12]={3077,23,2140}; --Irmorom: Silver coin, Hammer, Tongs
    devoteItems[13]={235,144,174}; --Sirani: Gold ring, Virgins weed, Red cloth
    devoteItems[14]={2760,17,78}; --Zhambra: Rope, Wooden shield, Short sword
    devoteItems[15]={2760,190,48}; --Ronagan: Rope, Ornate dagger, Leather gloves
    devoteItems[16]={16,63,2757}; --Moshran: Orcish helmet, Entrails, Scimitar

--These are the items I need to become a priest

    priestItems={};
    priestItems[1]={2416,40,26,726,735}; --Ushara: Brown priest robe, Cleric's staff, Clay, Coarse sand, Raw stone
    priestItems[2]={2419,40,391,46,234}; --Br�gon: Red priest robe, Cleric's staff, Torch, Ruby, Gold nugget
    priestItems[3]={2418,40,41,285,463}; --Eldan: Grey priest robe, Cleric's staff, Glass ignot, Diamond, Quill
    priestItems[4]={193,40,2496,284,279}; --Tanora: Blue robe, Cleric's staff, Bottle of Water, Bluestone, Bluestone ring
    priestItems[5]={2421,40,2780,322,166}; --Findari: White priest robe, Cleric's staff, Longbow, Wind arrow, Big empty bottle
    priestItems[6]={2418,445,355,225,290}; --Narg�n: Grey priest robe, Wooden sword, Salmon, Crown, Cabbage
    priestItems[7]={368,76,397,3110,222}; --Elara: Yellow priest robe, Mage's staff, Oil lamp, Pell, Amulet
    priestItems[8]={2419,224,335,2744,155}; --Adron: Red priest robe, Golden goblet, Lute, Pipe, Sibanac leaf
    priestItems[9]={2416,271,126,2786,249}; --Oldra: Brown priest robe, Scythe, Sickle, Branch, Bundle of grain
    priestItems[10]={2420,271,138,314,726}; --Cherga: Black priest robe, Scythe, Night angels blossom, Pott ash, Coarse sand
    priestItems[11]={2421,20,391,2291,78}; --Malach�n: White priest robe, Large metal shield, Torch, Salkamaerian Paladin's helmet, Shortsword
    priestItems[12]={2418,226,74,2763,2752}; --Irmorom: Gray priest robe, War Hammer, Hatchet, Pickaxe, Carving tools
    priestItems[13]={2421,40,280,354,222}; --Sirani: White priest robe, Cleric's staff, Diamond ring, Strawberry cake, Amulet
    priestItems[14]={368,20,2701,40,333}; --Zhambra: Yellow priest robe, Large metal shield, Longsword, Cleric's staff, Horn
    priestItems[15]={2420,2689,384,365,285}; --Ronagan: Black priest robe, Poisoned ornate dagger, Thieves gloves, Half leather armor, Diamond
    priestItems[16]={2420,552,39,69,2746}; --Moshran: Black priest robe, Deer meat, Skull staff, Raw leather, razor blade

end

function LookAtItem( User, Item )

    thisGod=Item.data;

    if init==nil or init==false then
        ini();
    end

    --Tell the user who's altar that is

    if thisGod==0 or thisGod>16 then --undedicated altar

        base.common.InformNLS(User,"Ungeweihter Altar","Undedicated altar");

    elseif thisGod > 0 then --dedicated altar

        base.common.InformNLS(User,"Altar "..godName[thisGod].."s, "..godDescriptionG[thisGod]..".","Altar of "..godName[thisGod]..", the "..godDescriptionE[thisGod]..".");
    
        --Now send the user some infos what he should do if he wants to become a devotee, change dedication or become a priest

        devotion=User:getQuestProgress(AAA);
        priesthood=User:getQuestProgress(BBB);

        --Check for corrupted status

        if priesthood ~= 0 and devotion ~= priesthood and User:getMagicType()== 1 then --Error! The character is a priest, but not a priest of "his" god!

            base.common.InformNLS(User,"#w Fehler! Bitte informiere einen Entwickler. Der Priesterstatus deines Charakters ist fehlerhaft.","#w Error! Please inform a developer, the priest status of your character is flawed.");
            return; --bailing out

        end

        if priesthood ~= 0 and User:getMagicType()~= 1 then --Error! The character is not a priest, but has a priest quest status!

            base.common.InformNLS(User,"#w Fehler! Bitte informiere einen Entwickler. Der Priesterstatus deines Charakters ist fehlerhaft.","#w Error! Please inform a developer, the priest status of your character is flawed.");
            return; --bailing out

        end

        --Check what the User is and send him instructions accordingly

        if devotion == 0 then --a noob without a god

             base.common.InformNLS(User,"#w Um euch "..godName[thisGod].." zu weihen, werdet ihr folgendes opfern m�ssen:","#w To devote yourself to "..godName[thisGod]..", you'll have to donate:");
             User:inform(tellStuff(devoteItems[thisGod],User:getPlayerLanguage())); --stuff4devotee

        elseif devotion ~= thisGod and priesthood == devotion and User:getMagicType()== 1 then --a priest of another god
             
             base.common.InformNLS(User,"#w Als Priester einer anderen Gottheit m��tet ihr eurer Gottheit abschw�ren, um ein Priester "..godName[thisGod].."s zu werden.","#w As priest of another god, you'll have to abjure your god to become a priest of "..godName[thisGod]..".");
             base.common.InformNLS(User,"#w Um ein Priester "..godName[thisGod].."s zu werden, werdet ihr folgendes opfern m�ssen:","#w To devote yourself to "..godName[thisGod]..", you'll have to donate:");
             User:inform(tellStuff(devoteItems[thisGod],User:getPlayerLanguage())); --stuff4devotee
             User:inform(tellStuff(priestItems[thisGod],User:getPlayerLanguage())); --stuff4priest

        elseif devotion ~= thisGod and priesthood == 0 and User:getMagicType()~= 1 then --a devotee of another god

             base.common.InformNLS(User,"#w Als Anh�nger einer anderen Gottheit werdet ihr eurem Gott abschw�ren m�ssen, um euch "..godName[thisGod].." zu weihen.","#w As devotee of another god, you'll have to abjure your god to devote yourself to "..godName[thisGod]..".");
             base.common.InformNLS(User,"#w Um euch "..godName[thisGod].." zu weihen, werdet ihr folgendes opfern m�ssen:","#w To devote yourself to "..godName[thisGod]..", you'll have to donate:");
             User:inform(tellStuff(devoteItems[thisGod],User:getPlayerLanguage())); --stuff4devotee

        elseif devotion == thisGod and priesthood == thisGod and User:getMagicType()== 1 then --a priest of this god

             base.common.InformNLS(User,"#w Der Anblick von "..godName[thisGod].."s Altar erf�llt dich in deiner Ergebenheit mit Stolz.","#w Beholding the altar of "..godName[thisGod].." makes you feel proud of your devotion.");

        elseif devotion == thisGod and priesthood == 0 and User:getMagicType()~= 1 then --a devotee of this god.

            if User:getMagicType()== 0 and User:getMagicFlags(0)~= 0 then --a mage! Can't become priest 

                base.common.InformNLS(User,"#w Ein Magier kann leider kein Priester werden.","#w As a magician, you cannot become a priest anymore.");

            elseif User:getMagicType()== 2 and User:getMagicFlags(2)~= 0 then --a bard! Can't become priest

                base.common.InformNLS(User,"#w Ein Barde kann leider kein Priester werden.","#w As a bard, you cannot become a priest anymore.");

            elseif User:getMagicType()== 3 and User:getMagicFlags(3)~= 0 then --a druid! Can't become priest

                base.common.InformNLS(User,"#w Ein Druide kann leider kein Priester werden.","#w As a druid, you cannot become a priest anymore.");

            else --a noob, may become priest

                base.common.InformNLS(User,"#w Um ein Priester "..godName[thisGod].."s zu werden, werdet ihr folgendes opfern m�ssen:","#w To become a priest of "..godName[thisGod]..", you'll have to donate:");
                User:inform(tellStuff(priestItems[thisGod],User:getPlayerLanguage())); --stuff4priest

            end

        else --uhm, no idea!
            base.common.InformNLS(User,"#w Fehler! Bitte informiere einen Entwickler. Der Religionsstatus deines Charakters ist fehlerhaft.","#w Error! Please inform a developer, the religious status of your character is flawed.");
            return; --bailing out
        end

    end --dedicated altar

end --function

function UseItemWithCharacter(User, SourceItem, Character, counter, param)
    UseItem(User, SourceItem, nil, counter, param, nil);
end

function UseItemWithField(User, SourceItem, TargetPos, counter, param)
    UseItem(User, SourceItem, nil, counter, param, nil);
end


function UseItem(User, SourceItem, TargetItem, counter, param, ltstate)

    thisGod=SourceItem.data;

    if init==nil or init==false then
        ini();
    end

    --Depending on who's altar that is and who uses it, execute different actions

    if thisGod==0 or thisGod>16 then --undedicated altar

        base.common.InformNLS(User,"Ihr ber�hrt den Altar, die Abwesenheit g�ttlichen Wirkens ist offensichtlich.","You touch the altar, the absence of divine blessing is obvious.");

    elseif thisGod > 0 then --dedicated altar

        --Let us first know who the user is

        devotion=User:getQuestProgress(AAA);
        priesthood=User:getQuestProgress(BBB);

        --Check for corrupted status

        if priesthood ~= 0 and devotion ~= priesthood and User:getMagicType()== 1 then --Error! The character is a priest, but not a priest of "his" god!

            base.common.InformNLS(User,"#w Fehler! Bitte informiere einen Entwickler. Der Priesterstatus deines Charakters ist fehlerhaft.","#w Error! Please inform a developer, the priest status of your character is flawed.");
            return; --bailing out

        end

        if priesthood ~= 0 and User:getMagicType()~= 1 then --Error! The character is not a priest, but has a priest quest status!

            base.common.InformNLS(User,"#w Fehler! Bitte informiere einen Entwickler. Der Priesterstatus deines Charakters ist fehlerhaft.","#w Error! Please inform a developer, the priest status of your character is flawed.");
            return; --bailing out        

        end

        --Check what the User is and act accordingly

        if devotion == 0 then --a noob without a god - wants to become devotee

             if checkStuff(User,devoteItems[thisGod]) then

                 deleteStuff(User,devoteItems[thisGod]);
                 base.common.InformNLS(User,"#w Ihr empfangt den Segen "..godName[thisGod].."s und weiht euer Leben dem Glaube an die Gottheit. Euer Opfer:","#w You receive the blessing of "..godName[thisGod].." and devote your life to the faith in the divinity. Your donation:");
                 world:gfx(16,User.pos);
                 world:makeSound(13,User.pos);
                 User:setQuestProgress(AAA,thisGod); --become devotee
                 User:setQuestProgress(BBB,0); --the char was no priest before - must not be one afterwards
                 
             else --does not have the stuff

                 base.common.InformNLS(User,"#w Um euch "..godName[thisGod].." zu weihen, werdet ihr folgendes opfern m�ssen:","#w To devote yourself to "..godName[thisGod]..", you'll have to donate:");

             end

             User:inform(tellStuff(devoteItems[thisGod],User:getPlayerLanguage())); --stuff4devotee

        elseif devotion ~= thisGod and priesthood == devotion and User:getMagicType()== 1 then --a priest of another god - wants to become priest

            if checkAudience(thisGod,User.pos) then

                if checkStuff(User,devoteItems[thisGod]) and checkStuff(User,priestItems[thisGod]) then

                     deleteStuff(User,devoteItems[thisGod]);
                     base.common.InformNLS(User,"#w Ihr schw�rt eurem alten Glauben ab und empfangt die Weihe eines Priesters "..godName[thisGod].."s. Euer Opfer:","#w You abjure your old faith and receive the ordination to the priesthood of "..godName[thisGod]..". Your donation:");
                     world:gfx(16,User.pos);
                     world:makeSound(13,User.pos);
                     User:setQuestProgress(AAA,thisGod); --become devotee of this god
                     User:setQuestProgress(BBB,thisGod); --become priest of this god
             
                 else --does not have the stuff
 
                    base.common.InformNLS(User,"#w Um ein Priester "..godName[thisGod].."s zu werden, werdet ihr folgendes opfern m�ssen:","#w To become a  priest of "..godName[thisGod]..", you'll have to donate:");

                 end

             else --not enough devotees around

                 base.common.InformNLS(User,"#w Um die Priesterweihe zu empfangen m��t ihr wenigstens drei Anh�nger "..godName[thisGod].."s zu einer Messe versammeln.","#w To receive the ordination to the priesthood of "..godName[thisGod]..", you'll have to gather at least three devotees for a mass.");

             end --audience check

             User:inform(tellStuff(devoteItems[thisGod],User:getPlayerLanguage())); --stuff4devotee
             User:inform(tellStuff(priestItems[thisGod],User:getPlayerLanguage())); --stuff4priest

        elseif devotion ~= thisGod and priesthood == 0 and User:getMagicType()~= 1 then --a devotee of another god - wants to become devotee

             if checkStuff(User,devoteItems[thisGod]) then

                 deleteStuff(User,devoteItems[thisGod]);
                 base.common.InformNLS(User,"#w Ihr empfangt den Segen "..godName[thisGod].."s und weiht euer Leben dem Glaube an die Gottheit. Euer Opfer:","#w You receive the blessing of "..godName[thisGod].." and devote your life to the faith in the divinity. Your donation:");                 world:gfx(16,User.pos);
                 world:makeSound(13,User.pos);
                 User:setQuestProgress(AAA,thisGod); --become devotee
                 User:setQuestProgress(BBB,0); --the char was no priest before - must not be one afterwards

             else --does not have the stuff
                 base.common.InformNLS(User,"#w Um euch "..godName[thisGod].." zu weihen, werdet ihr folgendes opfern m�ssen:","#w To devote yourself to "..godName[thisGod]..", you'll have to donate:");
             end

             User:inform(tellStuff(devoteItems[thisGod],User:getPlayerLanguage())); --stuff4devotee

        elseif devotion == thisGod and priesthood == thisGod and User:getMagicType()== 1 then --a priest of this god. Prays, nothing more.

             base.common.InformNLS(User,"#w Ihr betet zur "..godName[thisGod].." und bekr�ftigt euren Glauben.","#w You pray to "..godName[thisGod].." and confirm your faith.");

        elseif devotion == thisGod and priesthood == 0 and User:getMagicType()~= 1 then --a devotee of this god.

            if User:getMagicType()== 0 and User:getMagicFlags(0)~= 0 then --a mage! Can't become priest 

                base.common.InformNLS(User,"#w Ein Magier kann leider kein Priester werden.","#w As a magician, you cannot become a priest anymore.");

            elseif User:getMagicType()== 2 and User:getMagicFlags(2)~= 0 then --a bard! Can't become priest

                base.common.InformNLS(User,"#w Ein Barde kann leider kein Priester werden.","#w As a bard, you cannot become a priest anymore.");

            elseif User:getMagicType()== 3 and User:getMagicFlags(3)~= 0 then --a druid! Can't become priest

                base.common.InformNLS(User,"#w Ein Druide kann leider kein Priester werden.","#w As a druid, you cannot become a priest anymore.");

            else --a noob, may become priest

                 if checkAudience(thisGod,User.pos) then

                    if checkStuff(User,priestItems[thisGod]) then

                        deleteStuff(User,priestItems[thisGod]);
                        base.common.InformNLS(User,"#w Ihr empfangt die Weihe eines Priesters "..godName[thisGod].."s. Euer Opfer:","#w You receive the ordination to the priesthood of "..godName[thisGod]..". Your donation:");
                        world:gfx(31,User.pos);
                        world:makeSound(13,User.pos);
                        User:setQuestProgress(BBB,thisGod); --become priest of this god
                        User:teachMagic(1,1); --priest runes
                        User:teachMagic(1,2);
                        User:teachMagic(1,3); 
                    
                    else --does not have the stuff

                        base.common.InformNLS(User,"#w Um ein Priester "..godName[thisGod].."s zu werden, werdet ihr folgendes opfern m�ssen:","#w To become a priest of "..godName[thisGod]..", you'll have to donate:");

                    end --item check

                    User:inform(tellStuff(priestItems[thisGod],User:getPlayerLanguage())); --stuff4priest

                 else --not enough devotees around

                     base.common.InformNLS(User,"#w Um die Priesterweihe zu empfangen m��t ihr wenigstens drei Anh�nger "..godName[thisGod].."s zu einer Messe versammeln.","#w To receive the ordination to the priesthood of "..godName[thisGod]..", you'll have to gather at least three devotees for a mass.");

                 end --audience check

            end --noob

        else --uhm, no idea!

            base.common.InformNLS(User,"#w Fehler! Bitte informiere einen Entwickler. Der Religionsstatus deines Charakters ist fehlerhaft.","#w Error! Please inform a developer, the religious status of your character is flawed.");
            return; --bailing out

        end

    end --dedicated altar

end --function

function tellStuff(list,lang)
    string="#w ";
    string=string+world:getItemName(list[1],lang);
    for i=2,table.getn(list) do
        string=string+", ";
        string=string+world:getItemName(list[i],lang);
    end
    return string;
end

function checkStuff(User,list)
    for i=1,table.getn(list) do
        if User:countItem(list[i])<1 then
            return false;
        end
    end
    return true;
end

function deleteStuff(User,list)
    for i=1,table.getn(list) do
        User:eraseItem(list[i],1);
    end
end

function checkAudience(god, position)
    theCandidates=world:getPlayersInRangeOf(position,10);
    counter=0; 
    for i=1,table.getn(theCandidates) do
        candidate=theCandidate[i];
        if candidate:getQuestProgress(AAA) == god then
            counter=counter+1;
        end
    end
    if counter>3 then --I need three other characters with the same devotion around
        return true;
    else
        return false;
    end
end

