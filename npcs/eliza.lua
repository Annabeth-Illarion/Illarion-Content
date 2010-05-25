--Name:        Eliza
--Race:        Lizard
--Town:        Troll's Bane
--Function:    Public trader
--Position:    x=-63 y=-120 z=0
--Facing:      South
--Last Update: 03/07/2008
--Update by:   Lennier

dofile("npc_trader_functions.lua")
dofile("npc_functions.lua")
require("base.common")

TraderInterface = {};
TraderInterface["page"] = {};
TraderInterface["amount"] = {};
TraderInterface["addItem"] = 	function(User)
								return "worked";
end

Wares = {};
--Wares["page"]

function lookAtNpc( player, mode )
	player:sendCharDescription( thisNPC.id , "Hier steht ein Fisch auf dem Flur." );
	base.common.InformNLS(player,
		"#b|0|61|Hier k�nnen Infos und Hilfe stehen.",
		"#b|0|62|Here you could read info and help.");
end

function useNPC(User,counter,param)
    if BasicNPCChecks(User,2) then
        if (LangOK(User,TradSpeakLang)==true) then
            User:inform("param "..param);
			if ( param == 228 ) then
               User:inform(TraderInterface:addItem(User));
			   --thisNPC:talk( CCharacter.say, "How many will you be buying?" );
            else
               thisNPC:talk( CCharacter.say, "Greetings friend. Have a look at my wares." );
               local newMenu = MenuStruct();
			   newMenu:addItem( 1 );
               newMenu:addItem( 228 );
			   newMenu:addItem( 4 );
			   
               User:sendMenu( newMenu );
            end
            
            --NPCUsed(User,counter,param);
        end;
    end;
    --local lang=User:getPlayerLanguage();
    --thisNPC:increaseSkill(1,"common language",100);
    --thisNPC:talkLanguage(CCharacter.say, CPlayer.german , "Fassst mich nicht an! Parameter: "..param );
    --thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Don't touch me! Parameter: "..param );
end



function GetItems( User, ItemID, DataValue )
    local retList = {};
	local addItem =	function( theItem, bag )
						table.insert( retList, { ["item"]=theItem, ["bag"]=bag } );
	end
	local posList = {5,6,12,13,14,15,16,17};
	local myItem;
	
	retList[0] = 0;
	
    for _,i in posList do
        myItem = User:getItemAt( i );
        if ( myItem.id == ItemID and ( DataValue == nil or myItem.data == DataValue ) and myItem.quality >= 100) then
			addItem( myItem );
			retList[0] = retList[0] + myItem.number;
        end
    end

    local theBackpack=User:getBackPack();
    if theBackpack==nil then
        return retList;
    end
    local i = 0;
    local worked = true;
    local thisCont;
    repeat
        i = i + 1;
        worked,myItem,thisCont=theBackpack:viewItemNr(i);
        if worked then
            if ( myItem.id == ItemID and ( DataValue == nil or myItem.data == DataValue ) ) then
				addItem( myItem, i );
				retList[0] = retList[0] + myItem.number;
            end
        end
    until not worked;
    return retList;
end

function initializeNpc()
    InitTalkLists()
    InitItemLists()

    thisNPC:increaseSkill(1,"common language",100);
    --------------------------------------------- *** EDIT BELOW HERE ***--------------------------------------
    --            EPr ,ID  ,Am,SPr,SA,Qual ,Dura   ,Data,Catagory
    AddTraderItem(60  ,18  ,100,5  ,50,{3,5},{33,66},0   ,0); -- leichter Metallschild
    AddTraderItem(120 ,20  ,100,7  ,50,{3,5},{33,66},0   ,0); -- Ritterschild
    AddTraderItem(300 ,186 ,100,10 ,50,{3,5},{33,66},0   ,0); -- Metallrundschild
    AddTraderItem(90  ,19  ,100,7  ,50,{3,5},{33,66},0   ,0); -- gro�er Metallschild
    AddTraderItem(400 ,325 ,100,25 ,50,{3,5},{33,66},0   ,0); -- Stahlhandschuhe
    AddTraderItem(400 ,326 ,100,25 ,50,{3,5},{33,66},0   ,0); -- Stahlschuhe
    AddTraderItem(1200,2359,100,80 ,5 ,{3,5},{33,66},0   ,0); -- S�ldnerr�stung
    AddTraderItem(0   ,2360,100,150,5 ,{3,5},{33,66},0   ,0); -- Lor-Angur-W�chterr�stung
    AddTraderItem(0   ,2393,100,120,5 ,{3,5},{33,66},0   ,0); -- schwerer Stahlharnisch
    AddTraderItem(1500,2364,100,100,5 ,{3,5},{33,66},0   ,0); -- Stahlharnisch
    AddTraderItem(0   ,2731,100,30 ,50,{3,5},{33,66},0   ,0); -- Zweih�nder
    AddTraderItem(100 ,2675,100,6  ,50,{3,5},{33,66},0   ,0); -- Degen
    AddTraderItem(150 ,1   ,100,8  ,50,{3,5},{33,66},0   ,0); -- Serinjahschwert
    AddTraderItem(100 ,2658,100,6  ,50,{3,5},{33,66},0   ,0); -- Breitschwert
    AddTraderItem(100 ,2701,100,6  ,50,{3,5},{33,66},0   ,0); -- Langschwert
    AddTraderItem(400 ,2111,100,35 ,50 ,{3,5},{33,66},0  ,0); -- blaue Stahlbeinschienen
    AddTraderItem(400 ,2116,100,35 ,50 ,{3,5},{33,66},0  ,0); -- rote Stahlbeinschienen

    TraderCopper=5000;

    AddTraderTrigger("[Gg]reet","Greetingsss. What isss it you want? Zss.");
    AddAdditionalTrigger("[Hh]ello");
    AddAdditionalText("Greetingsss. You are interesssted in my waresss?");
    AddTraderTrigger("[Ww]hat.+sell","I trade with shieldsss, greavesss, armorsss and weaponsss. Everything made of metal. sss");
    AddTraderTrigger("[Ww]hat.+[Ss]hield","Whatever you likesss: light, normal and large  metal shieldsss and round metalshieldsss");
    AddTraderTrigger("[Ww]hat.+[Aa]rmor","Besst armosss: steel glovesss, steel bootsss, albarian officersss armorss, light mercenary armorss, Lor-Angur guardiansss armorss, steel plate, heavy red plate armorss and heavy plate armorss. For more goodsss asssk for my lissst of waresss.");
    AddTraderTrigger("[Ww]hat.+[Ww]eapon","I trade with two-handed swordss, rapierss, razor bladess, serinjah-swordss. For more goodsss asssk for my lissst of waresss.");
    AddTraderTrigger("[Ww]hat.+[Gg]reave","Look. I have: blue steel greavesss, brassss greavesss, red steel greavesss. For more goodsss asssk for my lissst of waresss!");
    AddTraderTrigger("[Bb]ye","Good day. Zhelphia may blesss you. Ssss.");
    AddAdditionalTrigger("[Ff]arewell");
    AddAdditionalTrigger("[Bb]e [Ww]ell");
    AddAdditionalText("Sss. Farewell. You are welcome to come back.");
    AddTraderTrigger("[hH]elp","'List your wares', 'I want to buy <number> <wares>', 'I want to buy a <ware>', 'I want to sell <number|a> <wares>', 'Price of ...','What do you pay for ...', 'What wares do you buy?'");
    AddTraderTrigger("[Gg]r�[�s]+e","Gr�ssse. Wasss wollt ihr? Zsss");
    AddAdditionalTrigger("[Hh]allo");
    AddAdditionalText("Gr�ssse. Habt ihr Interessse an meinen Waren? Zsss");
    AddTraderTrigger("[Ww]as.+kauf","Sss. Ich handle mit Ssschilden, Beinschienen, R�ssstungen und Waffen. Alles aus Metall. ssss");
    AddTraderTrigger("[Ww]as.+[Ss]child","Wasss auch immer du brauchssst: leichte, normale und gro�e Metallschilde und Metallrundsschilde");
    AddTraderTrigger("[Ww]as.+[Rr]�stung","Bessste R�ssstungen: Ssstahl Handschuhe und Ssstiefel, Albarische Offiziersss R�ssstungen, leicht Sss�ldner R�ssstungen, Lor-Angur W�chter R�ssstungen, Ssstahl Plattenpanzer, ssschwere Rote und ssschwere Ssstahlpanzer.");
    AddTraderTrigger("[Ww]as.+[Ww]affen","Ich handle mit Degen, Rasssierklingen, Ssserinjah-Ssschwertern und Zzweih�nderr.");
    AddTraderTrigger("[Ww]as.+[Ss]chienen","Sssieh! Ich habe: blaue Ssstahl Beinssschienen, Bronze Beinssschienen und rote Ssstahl Beinssschienen.");
    AddTraderTrigger("[Aa]uf [Bb]ald","Auf bald. Zhelphia sssegne euch. Zsss.");
    AddAdditionalTrigger("[Bb]is [Bb]als");
    AddAdditionalTrigger("[Mm]achs [Gg]ut");
    AddAdditionalText("Sss. Bis bald. Ihr k�nnt gern wieder kommen.");
    AddTraderTrigger("[Hh]ilfe","'Welche Waren verkauft ihr', 'Ich m�chte <Anzahl> <Ware> kaufen', 'Ich m�chte <Ware> kaufen', 'Ich m�chte <Anzahl> <Ware> verkaufen', 'Was ist der Preis von <Ware>','Was zahlt ihr f�r <Ware>', 'Was kauft ihr?'");
    
    AddCycleText("#me isst einen Fisch","#me eats a fish");
    AddCycleText("#me schaut sich nach Kunden um","#me looks around for customers");
    AddCycleText("#me l�sst ihren Schwanz hin und her schnalzen","#me flicks her tail");
    AddCycleText("#me z�hlt einige M�nzen","#me counts some coins");
    AddCycleText("Die besssten Ssschmiedewaren verkauf ich! Zzzum besssten Preisss.","I sssell the bessst smithsss productsss. For the bessst pricesss");

    TraderLang={"Gold","gold","Sssilber", "sssilver","Kupfer","copper","ssst�cke","piecesss"};
    

TraderMonths={"Elosss","Tanosss","Zhasss","Ushosss","Sssirosss","Ronasss","Brasss","Eldasss","Irmasss","Malasss","Findosss","Olosss","Adrasss","Narasss","Chosss","Masss"};

    RefreshTime={10000,40000};

    TradSpeakLang={0,1,4};
    TradStdLang=0;
    --common language=0
    --human language=1
    --dwarf language=2
    --elf language=3
    --lizard language=4
    --orc language=5
    --halfling language=6
    --fairy language=7
    --gnome language=8
    --goblin language=9
    --ancient language=10

end

--------------------------------------------- *** DON'T EDIT BELOW HERE ***--------------------------------------

function nextCycle()  -- ~10 times per second
    if (TraderFirst == nil) then
        initializeNpc();
        increaseLangSkill(TradSpeakLang)
        TraderStdCopper=TraderCopper;
        thisNPC.activeLanguage=TradStdLang;
    end
    TraderCycle();
    SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if BasicNPCChecks(originator,2) then
        if (LangOK(originator,TradSpeakLang)==true) then
            thisNPC.activeLanguage=originator.activeLanguage;            
            
            --- by abcfantasy --
            if not NPCItem then
               NPCItem = { };
            end
				
            if ( string.find( message, "greeting" ) ) ~= nil then
               useNPC( originator, nil, 0 );
            end
			
            if ( NPCItem[originator.id] ~= 0 ) and ( ( string.find( message, "one" ) ~= nil ) or ( string.find( message, "1" ) ~= nil ) ) then
               thisNPC:talk( CCharacter.say, "You just bought one of the following item: " .. world:getItemName(NPCItem[originator.id],1) );
               NPCItem[originator.id] = 0;
            end

            ---------------------------------- DON'T EDIT BELOW HERE ------------------------------
            if (string.find(message,"[sS]tatus")~=nil and originator:isAdmin()==true) then
                thisNPC:talk(CCharacter.say,"Copper="..TraderCopper ..", next delivery: "..nextDelivery.."cycCount:"..cycCount);
                statusString="Wares: ";
                for itnCnt=1,table.getn(TraderItemId) do
                    if string.len(statusString)+string.len(world:getItemName(TraderItemId[itnCnt],1))>240 then    -- line too long
                        originator:inform(statusString);                     -- say everything until here
                        statusString="";
                    end
                    statusString=statusString..world:getItemName(TraderItemId[itnCnt],1).."="..TraderItemNumber[itnCnt]..", ";
                end
                originator:inform(statusString);
            end
            if (string.find(message,"[Rr]efill")~=nil and originator:isAdmin()==true) then
                for itnCnt=1,table.getn(TraderItemId) do
                    refill(itnCnt);
                    if (TraderCopper<TraderStdCopper) then TraderCopper=TraderStdCopper end
                end
            end -- string find buy/sell/list...
            thisNPC.activeLanguage=TradStdLang;
        else
            if (verwirrt==false) then
                gText="#me sieht dich leicht verwirrt an";
                eText="#me looks at you a little confused";
                outText=GetNLS(originator,gText,eText);
                thisNPC:talk(CCharacter.say,outText);
                verwirrt=true;
            end
        end
    end
end--function
