--Name:        Zaruk
--Race:        Human
--Town:        Harbour
--Function:    Public trader
--Position:    x=-287 y=38 z=0
--Facing:      South
--Last Update: 4/15/2008
--Update by:   Lennier

dofile("npc_trader_functions.lua")
require("npcs.base.functions")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    if (lang==0) then thisNPC:talk(CCharacter.say, "Fast mich nicht an!") end
    if (lang==1) then thisNPC:talk(CCharacter.say, "Don't you touch me!") end
end

function initializeNpc()
    npcs.base.functions.InitTalkLists()
    InitItemLists()

    thisNPC:increaseSkill(1,"common language",100);
    --------------------------------------------- *** EDIT BELOW HERE ***--------------------------------------
    --            EPr ,ID  ,Am ,SPr,SA ,Qual ,Dura   ,Data,Catagory
    AddTraderItem(100 ,333 ,5  ,5  ,5  ,{6,8},{66,88},0   ,0       );    -- Horn
    AddTraderItem(100 ,2760,10 ,40 ,2  ,{6,8},{66,88},0   ,0       );    -- Rope/Seil
    AddTraderItem(40  ,58  ,15 ,0  ,15 ,{6,8},{66,88},0   ,0       );    -- Mortar/M�rser
    AddTraderItem(90  ,2586,15 ,5  , 5 ,{6,8},{66,88},0   ,0       );    -- Fur/Felle
    AddTraderItem(3   ,2588,300,0  ,300,{3,3},{33,33},0   ,0       );    -- Bricks/Ziegelsteine
    AddTraderItem(150 ,92  ,5 ,30  ,10 ,{6,7},{33,66},0   ,0       );    -- Oil lamp/�llampe
    AddTraderItem(400 ,236 ,0 ,50  ,50 ,{6,7},{33,66},0   ,0       );    -- Gold ingots/Goldbarren
    AddTraderItem(400 ,1008 ,0 ,50 ,50 ,{6,7},{33,66},0   ,0       );    -- Copper kettle/Kupferkessel
    
    TraderCopper=5000;

    npcs.base.functions.AddTraderTrigger("[Hh]ello","Greetin's.");
    npcs.base.functions.AddAdditionalTrigger("[Gg]reetings");
    npcs.base.functions.AddAdditionalText("Aye! Greetins to ye'.");
    npcs.base.functions.AddTraderTrigger("[Hh]allo","Moin");
    npcs.base.functions.AddAdditionalTrigger("[Gg]r�[�s]+e");
    npcs.base.functions.AddAdditionalText("Aye. Gr�� euch.");
    npcs.base.functions.AddTraderTrigger("[Jj]ob","I'm an importer, and I pull in wares from far and wide. Puts the jingle in me purse.");
    npcs.base.functions.AddTraderTrigger("[Bb]eruf","Ich bin ein Importierer und bekomm Waren von weit, weit weg.");
    npcs.base.functions.AddTraderTrigger("[Ii]mported","Aye, imported wares, from the mainland to right here. See all the ships? Well, it's a quiet day today. Aye?");
    npcs.base.functions.AddTraderTrigger("[Ii]mportiert","Aye, importiere Waren, vom Festland direkt hier her. Siehst all die Schiffe. Nuja, ist ein ruhiger Tag heute, aye?");
    npcs.base.functions.AddTraderTrigger("[Ww]ares","I have all sorts of gimcracks that ye'll surely be interested in. You seen my list?");
    npcs.base.functions.AddTraderTrigger("[Ww]are","Ich hab alle Arten von Zeug die dich garantiert interessieren. Willst meine Warenliste sehen?");
    npcs.base.functions.AddTraderTrigger("[Ss]hip","Aye! I once sailed across the seas. Hard work. Not enough coin.");
    npcs.base.functions.AddTraderTrigger("[Ss]chiff","Aye! Bin lange zur See gefahren. Harte Arbeit und beschissene Bezahlung.");
    npcs.base.functions.AddTraderTrigger("[Bb]ye","Aye! Farewell there.");
    npcs.base.functions.AddAdditionalTrigger("[Ff]arewell");
    npcs.base.functions.AddAdditionalText("'Ave a pleasant day, there!");
    npcs.base.functions.AddTraderTrigger("[Aa]uf.+[Bb]ald","Aye. Auf bald.");
    npcs.base.functions.AddAdditionalTrigger("[Bb]is.+[Bb]ald");
    npcs.base.functions.AddAdditionalText("Aye. Sch�n Tag noch.");
    npcs.base.functions.AddTraderTrigger("[hH]elp","'List your wares', 'I want to buy <number> <wares>', 'I want to buy a <ware>', 'I want to sell <number|a> <wares>', 'Price of ...','What do you pay for ...', 'What wares do you buy?'");
    npcs.base.functions.AddTraderTrigger("[Hh]ilfe","'Welche Waren verkauft ihr', 'Ich m�chte <Anzahl> <Ware> kaufen', 'Ich m�chte <Ware> kaufen', 'Ich m�chte <Anzahl> <Ware> verkaufen', 'Was ist der Preis von <Ware>','Was zahlt ihr f�r <Ware>', 'Was kauft ihr?'");

    TraderLang={"Gold","gold","Silber", "silver","Kupfer","copper","st�cke","pieces"};
    TraderMonths={"Elos","Tanos","Zhas","Ushos","Siros","Ronas","Bras","Eldas","Irmas","Malas","Findos","Olos","Adras","Naras","Chos","Mas"};

    RefreshTime={10000,40000}

    TradSpeakLang={0,1};
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

function nextCycle()  -- ~10 times per second
    if (TraderFirst == nil) then
        initializeNpc();
        npcs.base.functions.increaseLangSkill(TradSpeakLang)
        TraderStdCopper=TraderCopper;
        thisNPC.activeLanguage=TradStdLang;
    end
    TraderCycle();
    npcs.base.functions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npcs.base.functions.BasicNPCChecks(originator,2) then
        if (npcs.base.functions.LangOK(originator,TradSpeakLang)==true) then
            thisNPC.activeLanguage=originator.activeLanguage;
            Status,Values=SayPriceSell(originator, message)
            if (Status==0) then Status,Values=SayPriceBuy(originator, message) end
            if (Status==0) then Status,Values=ShowItemList(originator, message) end
            if (Status==0) then Status,Values=Selling(originator, message) end
            if (Status==0) then Status,Values=Buying(originator, message) end
            if (Status==0) then Status,Values=npcs.base.functions.TellDate(originator, message, TraderMonths) end
            if (Status==0) then npcs.base.functions.TellSmallTalk(message) end

            ----------------------------EDIT BELOW HERE-----------------------------------
            if (Status==1) then -- Verkauf von mehreren Items erfolgreich // Selling of multible items succeed
                gText="Ihr m�chtet "..Values[1].." "..world:getItemName(Values[2],0).." kaufen? Bitte sehr, das macht"..MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..".";
                eText="You want "..Values[1].." "..world:getItemName(Values[2],1).."? Here you are, that makes"..MoneyText(1,Values[3],Values[4],Values[5],TraderLang)..".";
            elseif (Status==2) then -- Item kann wegen Platzmangel nicht erstellt werden // Item can't created, cause of lag of space
                gText="Tut mir leid, aber ihr habt nicht genug Platz in eurem Inventar.";
                eText="sorry, you do not have enough spaces in your inventory.";
            elseif (Status==3) then -- Nicht genug Geld um das Item zu bezahlen // not enougth money to buy the item
                gText="Kommt wieder wenn ihr genug Geld habt!";
                eText="Come back when you have enough money!";
            elseif (Status==4) then -- Item ausverkauft // item out of stock
                gText="Tut mir leid. Ich habe das im Moment nicht. Kommt doch bitte sp�ter wieder.";
                eText="I am sorry, I don't have this currently. Come back later.";
            elseif (Status==5) then -- Item wird nicht verkauft // item
                gText="Tut mir Leid. Ich verkaufe das nicht.";
                eText="sorry, I do not sell that item.";
            elseif (Status==6) then -- Verkauf eines einzelnen Items erfolgreich // Selling of a single item succeed
                gText=npcs.base.functions.GenusSel(Values[2],"Ein","Eine","Ein").." "..world:getItemName(Values[2],0).." ist es, was ihr kaufen wollt? Bitte sehr, das macht"..MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..".";
                eText="You want a "..world:getItemName(Values[2],1).."? Here you are, that makes"..MoneyText(1,Values[3],Values[4],Values[5],TraderLang)..".";
            elseif (Status==7) then -- Verkaufspreis Ansage f�r ein Item // selling price announcement for an item
                gText=npcs.base.functions.GenusSel(Values[1],"Ein","Eine","Ein").." "..world:getItemName(Values[1],0).." kostet"..MoneyText(0,Values[2],Values[3],Values[4],TraderLang)..".";
                eText="The "..world:getItemName(Values[1],1).." costs"..MoneyText(1,Values[2],Values[3],Values[4],TraderLang)..".";
            elseif (Status==8) then -- Einkaufspreis Ansage f�r ein Item // buying price announcement for an item
                gText=npcs.base.functions.GenusSel(Values[2],"Ein","Eine","Ein").." "..world:getItemName(Values[2],0).." w�re mir"..MoneyText(0,Values[3],Values[4],Values[5],TraderLang).." wert.";
                eText="I would pay"..MoneyText(1,Values[3],Values[4],Values[5],TraderLang).." for "..Values[1]..world:getItemName(Values[2],1);
            elseif (Status==9) then -- Einkauf von mehreren Items erfolgreich // Buying of multible items succeed
                gText="Ihr wollt "..Values[1].." "..world:getItemName(Values[2],0).." verkaufen? Ich gebe euch"..MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..".";
                eText="You want to sell "..Values[1].." "..world:getItemName(Values[2],1).."? I give you"..MoneyText(1,Values[3],Values[4],Values[5],TraderLang)..".";
            elseif(Status==10) then -- Item das gekauft werden soll nicht vorhanden // item that should be buyed is not aviable
                gText="Kommt wieder wenn ihr das habt!";
                eText="Come back when you have that!";
            elseif (Status==11) then -- H�ndler hat nicht genug Geld // trader don't have enougth money
                gText="Tut mir leid. Ich kann das nicht kaufen. Ich habe nicht genug Geld.";
                eText="sorry, I cannot buy that. I do not have enough money.";
            elseif (Status==12) then -- H�ndler kauft das Item nicht // trader didn't buy the item
                gText="so etwas kaufe ich nicht. Tut mir leid.";
                eText="sorry, I do not buy that item.";
            elseif (Status==13) then -- Einkauf eines einzelnen Items erfolgreich // Buying of a single item succeed
                gText=npcs.base.functions.GenusSel(Values[2],"Ein","Eine","Ein").." "..world:getItemName(Values[2],0).." ist es, was ihr verkaufen m�chtet? Ich gebe euch"..MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..".";
                eText="You want to sell a "..world:getItemName(Values[2],1).."? I give you"..MoneyText(1,Values[3],Values[4],Values[5],TraderLang)..".";
            elseif (Status==14) then -- Liste der Waren die der NPC verkauft ist nicht leer // List of the wares the NPC sells, is not empty
                gText="Ich verkauf gutes und ziemlich schwer zu bekommendes Zeug. Sieh.";
                eText="I sell good and hard to get things. Look";
            elseif (Status==15) then -- Liste der Waren die der NPC verkauft ist leer // List of the wares the NPC sells, is empty
                gText="Ich verkaufe nichts.";
                eText="I sell nothing.";
            elseif (Status==16) then -- Liste der Waren die der NPC kauft ist nicht leer // List of the wares the NPC buys, is not empty
                gText="Ich kauf dies und das. Hier schau. Hier steht alles was ich kauf.";
                eText="I but this and that. Look. On this list everything i sell is written down.";
            elseif (Status==17) then -- Liste der Waren die der NPC kauft ist leer // List of the wares the NPC buys, is empty
                gText="Ich kaufe nichts.";
                eText="I buy nothing.";
            elseif (Status==18) then
                gText="Es ist der "..Values[1]..". Tag des Monates "..Values[2].." im Jahre "..Values[3]..".";
                local seleced=math.random(1,2)
                if (seleced==1) then
                    eText="It's day "..Values[1].." of "..Values[2].." of the year "..Values[3]..".";
                elseif (seleced==2) then
                    eText="It's the "..npcs.base.functions.EnglDigit(Values[1]).." of "..Values[2].." of the year "..Values[3]..".";
                end
            end

            if (Status~=0) then
                outText=npcs.base.functions.GetNLS(originator,gText,eText);
                thisNPC:talk(CCharacter.say,outText);
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
        else
            if (verwirrt==false) then
                gText="#me sieht dich leicht verwirrt an";
                eText="#me looks at you a little confused";
                outText=npcs.base.functions.GetNLS(originator,gText,eText);
                thisNPC:talk(CCharacter.say,outText);
                verwirrt=true;
            end
        end
    end
end--function