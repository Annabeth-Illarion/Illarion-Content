--Name:        Mondosch
--Race:        Dwarf
--Town:        Silverbrand
--Function:    Tax Collector
--Position:    x=137 y=-212 z=-3
--Facing:      South
--Last Update: 11/27/2005
--Update by:   Nitram

-- INSERT INTO npc VALUES (74, 1, 137,-212,-3,4,'f','Mondosch','npc_mondosch.lua',0);

dofile("npc_functions.lua")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    if (lang==0) then thisNPC:talk(CCharacter.say, "Finger weg!") end
    if (lang==1) then thisNPC:talk(CCharacter.say, "Don't you touch me!") end
end

function initializeNpc()
    InitTalkLists()

    thisNPC:increaseSkill(1,"common language",100);

    AddTraderTrigger("[Gg]reetings","Greetings. Can i help you?");
    AddAdditionalTrigger("[Hh]ello");
    AddAdditionalText("Be greeted. I'm "..thisNPC.name..". Can I help you?");
    AddTraderTrigger("[Gg]r�[�s]+e","Gr��e. Kann ich euch helfen?");
    AddAdditionalTrigger("[hH]allo");
    AddAdditionalText("Guten Tag. Ich bin "..thisNPC.name..". Kann ich euch helfen?");
    AddTraderTrigger("[Yy]ou.+[Tt]rader","No. I'm no trader. I'm the tax collector of Silverbrand.");
    AddTraderTrigger("[DdIi][uh]r*.+[Hh]�ndler","Nein ich bin kein H�ndler. Ich bin der Steuerneintreiber von Silberbrand.");
    AddTraderTrigger("[Ww]hat.+sell","Nothing. I'm no trader so i sell nothing.");
    AddTraderTrigger("[Ww]as.+verkauf","Ich bin kein H�ndler also verkaufe ich auch nichts.");
    AddTraderTrigger("[Tt]ell.+[Ss]omething","Sorry, I'm pretty busy right now.");
    AddTraderTrigger("[Ee]rz�hl.+[Ww]as","Tut mir leid, ich bin grad ziemlich besch�ftigt.");
    AddTraderTrigger("[Gg]oodbye","Be well.");
    AddAdditionalTrigger("[Bb]ye");
    AddAdditionalTrigger("[Ff]arewell");
    AddAdditionalText("Farewell!");
    AddAdditionalText("Good bye.");
    AddTraderTrigger("[Aa]uf.+[Bb]ald","Auf wiedersehen.");
    AddAdditionalTrigger("[Bb]is.+[Bb]ald");
    AddAdditionalText("Auf bald");
    
    TraderMonths={"Elos","Tanos","Zhas","Ushos","Siros","Ronas","Bras","Eldas","Irmas","Malas","Findos","Olos","Adras","Naras","Chos","Mas"};

    RefreshTime={10000,20000};
    
    AllowedTaxCollectors = { };
    AllowedTaxCollectors[1323381921] = true; -- Tialdin
    
    file = "silverbrand.dat";

    TradSpeakLang={0,2};
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
    
    TraderCoinLanguage={"Gold","gold","Silber","silver","Kupfer","copper","st�cke","pieces"};

end

--------------------------------------------- *** DON'T EDIT BELOW HERE ***--------------------------------------

function nextCycle()  -- ~10 times per second
    if (TraderFirst == nil) then
        initializeNpc();
        increaseLangSkill(TradSpeakLang)
        thisNPC.activeLanguage=TradStdLang;
    end
    SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if BasicNPCChecks(originator,2) then
        if (LangOK(originator,TradSpeakLang)==true) then
            thisNPC.activeLanguage=originator.activeLanguage;
            Status,Values=TakeTaxes(originator, message)
            if (Status==0) then Status,Values=TellDate(originator, message, TraderMonths) end
            if (Status==0) then TellSmallTalk(message) end

            ----------------------------EDIT BELOW HERE-----------------------------------
            if (Status==1) then -- Gefragt nach Steuern, darf sie aber nicht nehmen
                gText="Ja. Ich sammel die Steuern der H�ndler ein. Aber dir werd ich das Geld ganz sicher nicht geben.";
                eText="Indeed. I collect the money of the traders. But won't give you the money for sure.";
            elseif (Status==2) then -- Gefragt nach Steuern, bekommt diese
                gText="Hier habt ihr die "..MoneyText(0,Values[1],Values[2],Values[3],TraderCoinLanguage).." aus der Steuerkasse.";
                eText="There you got the "..MoneyText(1,Values[1],Values[2],Values[3],TraderCoinLanguage).." from the tax money";
            elseif (Status==3) then -- Nicht genug Geld um das Item zu bezahlen // not enough money to buy the item
                gText="Die Steuerkasse ist zur Zeit leider leer.";
                eText="There is currently no tax money.";
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
                outText=GetNLS(originator,gText,eText);
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
                outText=GetNLS(originator,gText,eText);
                thisNPC:talk(CCharacter.say,outText);
                verwirrt=true;
            end
        end
    end --id
end--function

function CalcSilverCopper(CAmount)
    local GAmount=math.floor(CAmount/10000);
    local SAmount=math.floor((CAmount-GAmount*10000)/100);
    local CAmount=CAmount-(SAmount*100+GAmount*10000);
    return GAmount,SAmount,CAmount
end

function TakeTaxes(originator, message)
    if ((string.find(message,"[Tt]ax") ~= nil) or (string.find(message,"[St]euer") ~= nil)) then
        if not AllowedTaxCollectors[originator.id] then
            return 1,nil;
        else
            filepoint,errmsg=io.open("/home/nitram/money/"..file,"r");
            if (filepoint~=nil) then
                filepoint:seek("set");
                coins = filepoint:read("*n");
                filepoint:close();
            end
            if (coins == 0) then
                return 3,nil;
            end
            filepoint,errmsg=io.open("/home/nitram/money/"..file,"w+");
            if (filepoint~=nil) then
                filepoint:seek("set");
                filepoint:write("0");
                filepoint:close();
            end
            GoldCoins,SilverCoins,CopperCoins = CalcSilverCopper(coins);
            if (GoldCoins > 0) then
                originator:createItem(61,GoldCoins,333,0);
            end
            if (SilverCoins > 0) then
                originator:createItem(3077,SilverCoins,333,0);
            end
            if (CopperCoins > 0) then
                originator:createItem(3076,CopperCoins,333,0);
            end
            return 2,{GoldCoins,SilverCoins,CopperCoins};
        end
    else
        return 0,nil;
    end
end

--TLang={"Gold,"gold","Silber","silver","Kupfer","copper","st�cke","pieces"};
-- Erstellt Text f�r die Kosten
-- Return 1: Text(Str)
function MoneyText(lang,Gold,Silver,Copper,TLang)
    local retText="";
    local GText="";
    local SText="";
    local CText="";
    local EndText="";
    if (Gold>0) then
        GText=Gold.." "..TLang[lang+1];
        EndText=Zeitform(Gold,TLang[lang+7]);
    end
    if (Silver>0) then
        SText=Silver.." "..TLang[lang+3];
        EndText=Zeitform(Silver,TLang[lang+7]);
    end
    if (Copper>0) then
        CText=Copper.." "..TLang[lang+5];
        EndText=Zeitform(Copper,TLang[lang+7]);
    end
    retText=GText;
    if (SText~="") then
        if (retText~="") then
            if (CText~="") then
                retText=retText..", "..SText;
            else
                if (lang == 0) then
                    retText=retText.." und "..SText;
                else
                    retText=retText.." and "..SText;
                end
            end
        else
            retText=SText;
        end
    end
    if (CText~="") then
        if (retText~="") then
            if (lang == 0) then
                retText=retText.." und "..CText;
            else
                retText=retText.." and "..CText;
            end
        else
            retText=CText;
        end
    end
    retText=" "..retText..EndText;
    return retText
end

-- Erstellt Sigular von W�rtern
-- Funktionst�chtig in Deutsch und englisch
function Zeitform(Zahl,Word)
    if (Zahl==1) then
        local retStr="";
        local cursor=string.len(Word);
        local finish=false;
        repeat
            lett=string.sub(Word,cursor,cursor)
            if ((lett~="e" and lett~="s") or finish==true)  then
                retStr=lett..retStr;
            else
                finish=true;
            end
            cursor=cursor-1;
        until (cursor==0)
        return retStr;
    else
        return Word;
    end
end
