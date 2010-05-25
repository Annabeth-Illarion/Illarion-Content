--Name:        Ramond
--Race:        Human
--Town:        Graveyard
--Function:    Public Trader
--Position:    x=95 y=36 z=0
--Facing:      North
--Last Update: 04/26/2006
--Update by:   Nitram

dofile("npc_trader_functions.lua")
dofile("npc_functions.lua")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    if (lang==0) then thisNPC:talk(CCharacter.say, "Finger weg!") end
    if (lang==1) then thisNPC:talk(CCharacter.say, "Don't you touch me!") end
end

function initializeNpc()
    npcs.base.autonpcfunctions.InitTalkLists()
    InitItemLists()

    thisNPC:increaseSkill(1,"common language",100);
    --------------------------------------------- *** EDIT BELOW HERE ***--------------------------------------
    --            EPr ,ID  ,Am,SPr,SA,Qual ,Dura   ,Data,Catagory
    AddTraderItem(24  ,24  ,5 ,0  ,5 ,{2,3},{11,22},0   ,0       ); -- shovel

    TraderCopper=0;

    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]ello","Greetings my friend.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Gg]reetings");
    npcs.base.autonpcfunctions.AddAdditionalText("A pleasure to meet you, friend.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]allo","Gr��e mein Freund.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Gg]r�[s�]+e");
    npcs.base.autonpcfunctions.AddAdditionalText("Ist mir eine Freude euch zu treffen.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Jj]ob","I take care of this graveyard");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Bb]eruf","Ich k�mmere mich um diesen Friedhof");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]ravejard","This is the place where everybody finds the eternal sleep.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ff]riedhof","Das ist der Ort wo jeder seine ewige Ruhe finden kann.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Mm]ission","My friend, I am a simple man with no needs.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Aa]uftrag","Mein Freund, ich bin ein einfach Mann der nichts braucht.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Qq]uest","My friend, I am a simple man with no needs.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Nn]eed.+help","All you could do for me, is helping me with the garden work. Like taking care of the graves.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Bb]rauch.+[Hh]ilfe","Alles was ihr f�r mich tun k�nntet, ist mir bei der Garten Arbeit zu helfen. Zum Beispiel k�nntet ihr euch etwas um die Gr�ber k�mmern.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]rave","I take care of them as good as I can, but sometimes they even scare me.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]r[a�]b","Ich k�mmere mich um sie, so gut ich kann, aber machmal erschrecken sie mich.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ss]care","During these nights without moon, I could swear that a body left a grave and npcs.base.autonpcfunctions.walked away!");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ss]reck","W�hrend der N�chte ohne Mond, k�nnte ich schw�ren das ein K�rper sein Grab verlassen hat und weg gelaufen ist!");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]hat.+sell","I cannot offer you much, only maybe one of my old shovels.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as.+verkaufen","I kann nicht viel Anbieten. Allerh�chstens vielleicht meine alten Schaufeln.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]hat buy","I fear, my friend, that there is nothing I would want to buy right now.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as.+%skauf","Ich f�rchte, mein Freund, es gibt nichts was ich im Augenblick von euch kaufen w�rde.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]ho.+[Yy]ou","I am Brother "..thisNPC.name);
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]er.+[DdIi][uh]r*","Ich bin Bruder "..thisNPC.name);
    npcs.base.autonpcfunctions.AddTraderTrigger("[Dd]ungeon below [Gg]raveyard","What!? I know nothing about it.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Tt]empel below [Gg]raveyard");
    npcs.base.autonpcfunctions.AddAdditionalText("What!? I know nothing about it.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]�hle.+unter.+[Ff]riedhof","Was? Davon weis ich nichts.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Tt]empel.+unter.+[Ff]riedhof");
    npcs.base.autonpcfunctions.AddAdditionalText("Was?! Davon w�sste ich doch!");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Bb]ye","Walk in peace, my friend.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Ff]are.*well");
    npcs.base.autonpcfunctions.AddAdditionalText("Walk in peace, my friend.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Aa]uf.+[Bb]ald","Geh in Frieden, mein Freund.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("[Bb]is.+[Bb]ald");
    npcs.base.autonpcfunctions.AddAdditionalText("Geh in Frieden, mein Freund.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[hH]elp","'List your wares', 'I want to buy <number> <wares>', 'I want to buy a <ware>', 'I want to sell <number|a> <wares>', 'Price of ...','What do you pay for ...', 'What wares do you buy?'");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]ilfe","'Welche Waren verkauft ihr', 'Ich m�chte <Anzahl> <Ware> kaufen', 'Ich m�chte <Ware> kaufen', 'Ich m�chte <Anzahl> <Ware> verkaufen', 'Was ist der Preis von <Ware>','Was zahlt ihr f�r <Ware>', 'Was kauft ihr?'");

    TraderLang={"Gold","gold","Silber", "silver","Kupfer","copper","st�cke","pieces"};
    TraderMonths={"Elos","Tanos","Zhas","Ushos","Siros","Ronas","Bras","Eldas","Irmas","Malas","Findos","Olos","Adras","Naras","Chos","Mas"};

    RefreshTime={10000,40000};

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

--------------------------------------------- *** DON'T EDIT BELOW HERE ***--------------------------------------

function nextCycle()  -- ~10 times per second
    if (TraderFirst == nil) then
        initializeNpc();
        npcs.base.autonpcfunctions.increaseLangSkill(TradSpeakLang)
        TraderStdCopper=TraderCopper;
        thisNPC.activeLanguage=TradStdLang;
    end
    TraderCycle();
    npcs.base.autonpcfunctions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npcs.base.autonpcfunctions.BasicNPCChecks(originator,2) then
        if (npcs.base.autonpcfunctions.LangOK(originator,TradSpeakLang)==true) then
            thisNPC.activeLanguage=originator.activeLanguage;
            Status,Values=SayPriceSell(originator, message)
            if (Status==0) then Status,Values=SayPriceBuy(originator, message) end
            if (Status==0) then Status,Values=ShowItemList(originator, message) end
            if (Status==0) then Status,Values=Selling(originator, message) end
            if (Status==0) then Status,Values=Buying(originator, message) end
            if (Status==0) then Status,Values=TellDate(originator, message, TraderMonths) end
            if (Status==0) then npcs.base.autonpcfunctions.TellSmallTalk(message) end

            ----------------------------EDIT BELOW HERE-----------------------------------
            if (Status==1) then -- Verkauf von mehreren Items erfolgreich // Selling of multible items succeed
                gText="Ihr m�chtet "..Values[1].." "..world:getItemName(Values[2],0).." kaufen? Bitte sehr, macht dann"..MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..".";
                eText="You want "..Values[1].." "..world:getItemName(Values[2],1).."? Here you are, that makes"..MoneyText(1,Values[3],Values[4],Values[5],TraderLang)..".";
            elseif (Status==2) then -- Item kann wegen Platzmangel nicht erstellt werden // Item can't created, cause of lag of space
                gText="Tut mir leid, aber Ihr habt nicht genug Platz in Eurem Inventar.";
                eText="Sorry, you do not have enough space in your inventory.";
            elseif (Status==3) then -- Nicht genug Geld um das Item zu bezahlen // not enougth money to buy the item
                gText="Kommt wieder wenn ihr genug Geld habt!";
                eText="Come back when you have enough money!";
            elseif (Status==4) then -- Item ausverkauft // item out of stock
                gText="Tut mir leid. Ich habe das im Moment nicht. Kommt doch bitte sp�ter wieder.";
                eText="I am sorry, I don't have this currently. Come back later.";
            elseif (Status==5) then -- Item wird nicht verkauft // item
                gText="Tut mir Leid. Ich verkaufe das nicht.";
                eText="Sorry, I do not sell that item.";
            elseif (Status==6) then -- Verkauf eines einzelnen Items erfolgreich // Selling of a single item succeed
                gText=GenusSel(Values[2],"Ein","Eine","Ein").." "..world:getItemName(Values[2],0).." ist es, was ihr kaufen wollt? Bitte sehr, das macht"..MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..".";
                eText="You want a "..world:getItemName(Values[2],1).."? Here you are, that makes"..MoneyText(1,Values[3],Values[4],Values[5],TraderLang)..".";
            elseif (Status==7) then -- Verkaufspreis Ansage f�r ein Item // selling price announcement for an item
                gText=GenusSel(Values[1],"Ein","Eine","Ein").." "..world:getItemName(Values[1],0).." kostet"..MoneyText(0,Values[2],Values[3],Values[4],TraderLang)..".";
                eText="The "..world:getItemName(Values[1],1).." costs"..MoneyText(1,Values[2],Values[3],Values[4],TraderLang)..".";
            elseif (Status==8) then -- Einkaufspreis Ansage f�r ein Item // buying price announcement for an item
                gText=GenusSel(Values[2],"Ein","Eine","Ein").." "..world:getItemName(Values[2],0).." w�re mir"..MoneyText(0,Values[3],Values[4],Values[5],TraderLang).." wert.";
                eText="I would pay"..MoneyText(1,Values[3],Values[4],Values[5],TraderLang).." for "..Values[1]..world:getItemName(Values[2],1);
            elseif (Status==9) then -- Einkauf von mehreren Items erfolgreich // Buying of multible items succeed
                gText="Ihr wollt "..Values[1].." "..world:getItemName(Values[2],0).." verkaufen? Ich gebe euch"..MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..".";
                eText="You want to sell "..Values[1].." "..world:getItemName(Values[2],1).."? I give you"..MoneyText(1,Values[3],Values[4],Values[5],TraderLang)..".";
            elseif (Status==10) then -- Item das gekauft werden soll nicht vorhanden // item that should be buyed is not aviable
                gText="Kommt wieder wenn ihr das habt!";
                eText="Come back when you have that!";
            elseif (Status==11) then -- H�ndler hat nicht genug Geld // trader don't have enougth money
                gText="Tut mir leid. Ich kann das nicht kaufen. Ich habe nicht genug Geld.";
                eText="Sorry, I cannot buy that. I do not have enough money.";
            elseif (Status==12) then -- H�ndler kauft das Item nicht // trader didn't buy the item
                gText="So etwas kaufe ich nicht. Tut mir leid.";
                eText="Sorry, I do not buy that item.";
            elseif (Status==13) then -- Einkauf eines einzelnen Items erfolgreich // Buying of a single item succeed
                gText=GenusSel(Values[2],"Ein","Eine","Ein").." "..world:getItemName(Values[2],0).." ist es, was ihr verkaufen m�chtet? Ich gebe euch"..MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..".";
                eText="You want to sell a "..world:getItemName(Values[2],1).."? I give you"..MoneyText(1,Values[3],Values[4],Values[5],TraderLang)..".";
            elseif (Status==14) then -- Liste der Waren die der NPC verkauft ist nicht leer // List of the wares the NPC sells, is not empty
                gText="Ich verkaufe alte Schaufeln.";
                eText="I sell all kinds of wares for everyday useage.";
            elseif (Status==15) then -- Liste der Waren die der NPC verkauft ist leer // List of the wares the NPC sells, is empty
                gText="Ich verkaufe nichts.";
                eText="I sell nothing.";
            elseif (Status==16) then -- Liste der Waren die der NPC kauft ist nicht leer // List of the wares the NPC buys, is not empty
                gText="Ich kaufe Schaufeln.";
                eText="I buy Schaufeln.";
            elseif (Status==17) then -- Liste der Waren die der NPC kauft ist leer // List of the wares the NPC buys, is empty
                gText="Ich kaufe nichts.";
                eText="I buy nothing.";
            elseif (Status==18) then
                gText="Es ist der "..Values[1]..". Tag des Monates "..Values[2].." im Jahre "..Values[3]..".";
                local seleced=math.random(1,2)
                if (seleced==1) then
                    eText="It's day "..Values[1].." of "..Values[2].." of the year "..Values[3]..".";
                elseif (seleced==2) then
                    eText="It's the "..EnglDigit(Values[1]).." of "..Values[2].." of the year "..Values[3]..".";
                end
            end

            if (Status~=0) then
                outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
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
            thisNPC.activeLanguage=TradStdLang;
        else
            if (verwirrt==false) then
                gText="#me sieht dich leicht verwirrt an";
                eText="#me looks at you a little confused";
                outText=npcs.base.npcautofunction.GetNLS(originator,gText,eText);
                thisNPC:talk(CCharacter.say,outText);
                verwirrt=true;
            end
        end
    end --id
end--function