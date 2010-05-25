--Name:        Stalljunge
--Race:        Zwerg
--Town:        Silberbrand
--Function:    Lastentiere verkaufen
--Position:    in einem Stall
--Facing:      South
--Last Update: 12/09/2008
--Update by:   Lennier

require("npcs.base.functions")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    if (lang==0) then thisNPC:talk(CCharacter.say, "Finger weg!") end
    if (lang==1) then thisNPC:talk(CCharacter.say, "Don't you touch me!") end
end

function initializeNpc()
    npcs.base.functions.InitTalkLists()

    thisNPC:increaseSkill(1,"common language",100);
    --------------------------------------------- *** EDIT BELOW HERE ***--------------------------------------

    npcs.base.functions.AddTraderTrigger("[Hh]ello","Hello, Hello");
    npcs.base.functions.AddAdditionalTrigger("[Gg]reetings");
    npcs.base.functions.AddAdditionalTrigger("[Hh]i");
    npcs.base.functions.AddTraderTrigger("[Hh]allo","Gr��e euch!");
    npcs.base.functions.AddAdditionalTrigger("[Gg]r[u�][s�]+");
    npcs.base.functions.AddTraderTrigger("[Ww]ho ","I am "..thisNPC.name.."");
    npcs.base.functions.AddTraderTrigger("[Ww]er ","Ich bin "..thisNPC.name..".");
    npcs.base.functions.AddTraderTrigger("[Ff]arewell","Farewell!");
    npcs.base.functions.AddTraderTrigger("[Bb]ye ","Be well");
    npcs.base.functions.AddTraderTrigger("[Ww]as.+verkauf","Ich verkaufe nicht! Ich verleihe Esel als Transport- und Lastentiere.");
    npcs.base.functions.AddTraderTrigger("[Ww]hat.+sell","I don't sell! But you can lend a mule as pack animal.");
    npcs.base.functions.AddTraderTrigger("[Aa]uf.+[Bb]ald","Man sieht sich!");
    npcs.base.functions.AddAdditionalTrigger("[Bb]is.+[Bb]ald");
    npcs.base.functions.AddTraderTrigger("[Kk]uh","Ich habe keine K�he, ich habe nur Esel hier.");
    npcs.base.functions.AddTraderTrigger("cow","I have no cows, I have just mules.")

    npcs.base.functions.AddCycleText("#me schaut sich um","#me looks around");
    npcs.base.functions.AddCycleText("#me niest","#me sneezes");

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
    
    PreisProKuh = 50;
    Kaution = 200;
end

function nextCycle()  -- ~10 times per second
    if ( TraderInit == nil) then
        TraderInit = {};
    end
    
    if (TraderInit[thisNPC.id] == nil) then
        initializeNpc();
        npcs.base.functions.increaseLangSkill(TradSpeakLang);
        thisNPC.activeLanguage=TradStdLang;
        TraderInit[thisNPC.id] = true;
    end
    npcs.base.functions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npcs.base.functions.BasicNPCChecks(originator,2) then
        if (npcs.base.functions.LangOK(originator,TradSpeakLang)==true) then
            thisNPC.activeLanguage=originator.activeLanguage;
            result = SayPrice(message, originator);
            if not result then result = GetCow(message, originator) end;
            if not result then result = returnCow(message, originator) end;
            if not result then npcs.base.functions.TellSmallTalk(message) end;
        else
            if (verwirrt==false) then
                gText="#me sieht dich leicht verwirrt an";
                eText="#me looks at you a little confused";
                outText=npcs.base.functions.GetNLS(originator,gText,eText);
                npcs.base.functions.NPCTalking(thisNPC,outText);
                verwirrt=true;
            end
        end
    end
end

function SayPrice(message, originator)
    if (string.find(message,"koste")~=nil) or (string.find(message,"costs")~=nil) then
        thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Ein Esel kostet "..PreisProKuh.." Kupferst�cke. Au�erdem m�sst ihr "..(Kaution/100).." Silberst�cke als Kaution hinterlegen die ihr aber wieder bekommt, wenn ihr den Esel sicher wieder hier her bringt.");
        thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "A mule costs "..PreisProKuh.." coppercoins. Furthermore you have to pay "..(Kaution/100).." silvercoins as surety, but you get these coins back in case you bring the mule safely back to me.");
        return true
    end
    return false
end

function createCow( player )
    
    posList = { 0, 1, -1, 2, -2 };
    for i, XPos in pairs(posList) do
        for k, YPos in pairs(posList) do
            SettingPos = position(player.pos.x+XPos,player.pos.y+YPos,player.pos.z);
            TileID = world:getField( SettingPos ):tile();
            if not world:isCharacterOnField( SettingPos ) and not world:isItemOnField( SettingPos ) and ( TileID ~= 0 ) and ( TileID ~= 5 ) and ( TileID ~= 6 ) and ( TileID ~= 42 ) then
                if world:createDynamicNPC("Lasttier",50,SettingPos,0,"npc_lasttier.lua") then
                    return SettingPos;
                else
                    return false;
                end
            end
        end
    end
    return false;
end

function GetCow(message, originator)
    message = string.lower( message );
    if (string.find(message,"esel.+leihen")~=nil)
    or (string.find(message,"leihe.+esel")~=nil)
    or (string.find(message,"lasttier.+leihen")~=nil)
    or (string.find(message,"leihe.+lasttier")~=nil)
    or (string.find(message,"rent.+pack.+animal")~=nil)
    or (string.find(message,"rent.+mule"  )~=nil)
    or (string.find(message,"rent.+donkey"  )~=nil)
    or (string.find(message,"rent.+burro"  )~=nil)
    or (string.find(message,"lend.+pack.+animal")~=nil)
    or (string.find(message,"lend.+mule"  )~=nil)
    or (string.find(message,"lend.+donkey"  )~=nil)
    or (string.find(message,"lend.+burro"  )~=nil)
    or (string.find(message,"hire.+pack.+animal")~=nil)
    or (string.find(message,"hire.+donkey" )~=nil)
    or (string.find(message,"hire.+burro"  )~=nil)
    or (string.find(message,"hire.+mule" )~=nil) then
        
    
    
        if (originator:getQuestProgress(8) == 0) then
            GCoins,SCoins,CCoins = CalcSilverCopper(PreisProKuh + Kaution);
            if CheckMoney(originator,GCoins,SCoins,CCoins) then
                if false then
                      thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Ich darf dir im Augenblick keinen Esel verkaufen." );
                    thisNPC:talkLanguage( CCharacter.say, CPlayer.english,"I'm not allowed to sell you a mule currently, sorry." );
                    return true;
                end
                posOfCow = createCow(originator);
                if not posOfCow then
                    thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Leider kein Esel mehr da. Kommt sp�ter wieder." );
                    thisNPC:talkLanguage( CCharacter.say, CPlayer.english,"There are no more mules in the stable. Please come back later." );
                    return true
                else
                    Transporter = world:getCharacterOnField(posOfCow);
                    transport_effect = CLongTimeEffect( 10, 500000 );
                    transport_effect:addValue("owner",originator.id);
                    Transporter.effects:addEffect(transport_effect);
                    
                    Pay(originator,GCoins,SCoins,CCoins);
                    thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Hier habt ihr den Esel. Bring ihn sicher wieder dann bekommt ihr die "..(Kaution/100).." Silberst�cke Kaution wieder.");
                    thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "There you have your mule. Bring him back safely then you get your "..(Kaution/100).." silvercoins surety back.");
                    thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Wenn du \"bleib stehen\" sagst, bleibt der Esel stehen und du kannst ihn be- und entladen. Sagst du \"weiter\" folgt er dir wieder. Pass auf dass er dich nicht aus den Augen verliert." );
                    thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "If you say \"stay\", the mule will stay where it is and you can put your things on the mule or take your things from it. If you say \"follow me\" the mule follows you again. Make sure you do not lose the mule." );
                    originator:setQuestProgress(8,1);
                    
                    Depot = originator:getDepot( originator.id );    
                    while Depot:takeItemNr( 0, 250 ) do
                    end;
                    
                end
            else
                thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Du hast nicht genug Geld. Ein Esel kostet "..PreisProKuh.." Kupferst�cke und "..(Kaution/100).." Silberst�cke m�sst ihr als Kaution hinterlegen." );
                thisNPC:talkLanguage( CCharacter.say, CPlayer.english,"You don't have enough money. A mule costs "..PreisProKuh.." coppercoins and you have to pay "..(Kaution/100).." silvercoins as surety." );
            end
            return true
        else
            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Du hast schon einen Esel. Mehr als einer geht nicht." );
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "You have allready a mule. More then one is not possible." );
        end
        return true
    elseif ((string.find(message,"esel.+kaufen")~=nil) and not (string.find(message,"esel.+verkaufen")~=nil))
    or ((string.find(message,"lasttier.+kaufen")~=nil) and not (string.find(message,"lasttier.+verkaufen")~=nil))
    or ((string.find(message,"kaufe.+lasttier")~=nil) and not (string.find(message,"verkaufe.+lasttier")~=nil))
    or (string.find(message,"buy.+pack.+animal")~=nil)
    or (string.find(message,"buy.+mule"   )~=nil)
    or (string.find(message,"buy.+burro"   )~=nil)
    or (string.find(message,"buy.+donkey"   )~=nil) then
        if (string.find(message,"[Ee]sel")~=nil) or (string.find(message,"mule")~=nil) then
            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Ich verkaufe keine Esel. Ihr k�nnt sie euch von mir h�chstens leihen." );
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "I don't sell mules. You can just rent them." );
        else
            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Ich verkaufe meine Esel nicht. Ihr k�nnt sie euch von mir h�chstens leihen." );
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "I don't sell my mules. You can just rent them." );
        end
    end
    return false
end

function returnCow(message, originator)
    message = string.lower( message );
    if (string.find(message,"esel.+zur�ck")~=nil)
    or (string.find(message,"esel.+verkaufen")~=nil)
    or (string.find(message,"verkaufe.+esel")~=nil)
    or (string.find(message,"lasttier.+verkaufen")~=nil)
    or (string.find(message,"verkaufe.+lasttier")~=nil)
    or (string.find(message,"lasttier.+zur�ck")~=nil)
    or (string.find(message,"sell.+mule")~=nil)
    or (string.find(message,"sell.+donkey")~=nil)
    or (string.find(message,"sell.+burro")~=nil)
    or (string.find(message,"sell.+pack.+animal")~=nil)
    or (string.find(message,"return.+pack.+animal")~=nil)
    or (string.find(message,"return.+mule")~=nil)
    or (string.find(message,"return.+burro")~=nil)
    or (string.find(message,"return.+donkey")~=nil) then
        if (originator:getQuestProgress(8) == 0) then
            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Du hast gar keinen Esel." );
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "You do not even have a mule." );
        else
              npcs = world:getNPCSInRangeOf(thisNPC.pos,8);
            for i, npc in pairs(npcs) do
                find_transporter, effect_transporter = npc.effects:find(10);
                if find_transporter then
                    find_owner,value_owner = effect_transporter:findValue("owner");
                    if find_owner then
                        if (value_owner == originator.id) then
                            if world:deleteNPC( npc.id ) then
                                thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Danke f�r den Esel." );
                                thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "Thanks for the mule." );
                                originator:createItem(3077,math.floor(Kaution/100),333,0);
                                originator:setQuestProgress(8,0);
                                return true;
                            end
                        end
                    end
                end
            end
            thisNPC:talkLanguage( CCharacter.say, CPlayer.german, "Wo ist der Esel denn?" );
            thisNPC:talkLanguage( CCharacter.say, CPlayer.english, "Where is the mule?" );
        end
        return true;
    end
    return false;
end
            

function CheckMoney(User,Gold,Silber,Kupfer)
    local UserGold=User:countItem(61);
    local UserSilber=User:countItem(3077);
    local UserKupfer=User:countItem(3076);
    local Amount=(Gold*10000)+(Silber*100)+Kupfer;
    local UserAmount=(UserGold*10000)+(UserSilber*100)+UserKupfer;
    if (Amount<=UserAmount) then
        return true
    else
        return false
    end
end

function Pay(User,Gold,Silber,Kupfer)    
    local GoldID=61;
    local SilberID=3077;
    local KupferID=3076;
    local PayGold=0;
    local PaySilber=0;
    local PayKupfer=0;
    local MissGold=Gold;
    local MissSilber=Silber;
    local MissKupfer=Kupfer;
    local UserGold=User:countItem(GoldID);
    local UserSilber=User:countItem(SilberID);
    local UserKupfer=User:countItem(KupferID);
    local Amount=(Gold*10000)+(Silber*100)+Kupfer;
    local GoldAlsKupfer=0;
    local SilberAlsKupfer=0;
    local GoldAlsSilber=0;
    
    GoldAlsKupfer = math.min( MissGold, math.floor( UserKupfer/10000 ) );
    PayKupfer = GoldAlsKupfer * 10000;
    MissGold = MissGold - GoldAlsKupfer;
    UserKupfer = UserKupfer - PayKupfer;
    
    GoldAlsKupfer = math.floor( UserKupfer/100 );
    GoldAlsSilber = 100 - GoldAlsKupfer;
    if ((MissGold > 0) and (GoldAlsKupfer > 0) and (UserSilber >= GoldAlsSilber)) then
        PayKupfer = PayKupfer + 100 * GoldAlsKupfer;
        PaySilber = PaySilber + GoldAlsSilber;
        MissGold = MissGold - 1;
        UserKupfer = UserKupfer - 100 * GoldAlsKupfer;
        UserSilber = UserSilber - GoldAlsSilber;
    end;
    
    SilberAlsKupfer = math.min( MissSilber, math.floor( UserKupfer/100 ) );
    PayKupfer = PayKupfer + SilberAlsKupfer * 100;
    MissSilber = MissSilber - SilberAlsKupfer;
    UserKupfer = UserKupfer - SilberAlsKupfer * 100;
    
    if (UserKupfer >= MissKupfer) then
        PayKupfer = PayKupfer + MissKupfer;
    else
        MissSilber = MissSilber + 1;
        PayKupfer = PayKupfer + MissKupfer - 100;
    end;
    
    GoldAlsSilber = math.min( MissGold, math.floor( UserSilber/100 ) );
    PaySilber = PaySilber + GoldAlsSilber * 100;
    MissGold = MissGold - GoldAlsSilber;
    UserSilber = UserSilber - GoldAlsSilber * 100;
    
    if (UserSilber >= MissSilber) then
        PayGold = MissGold;
        PaySilber = PaySilber + MissSilber;
    else
        PayGold = MissGold + 1;
        PaySilber = PaySilber + MissSilber - 100;
    end;
    
        
    if (PayGold>0) then
        User:eraseItem(GoldID,PayGold);
    end
    if (PaySilber>0) then
        User:eraseItem(SilberID,PaySilber);
    elseif (PaySilber<0) then
        User:createItem(SilberID,PaySilber*(-1),333,0);
    end
    if (PayKupfer>0) then
        User:eraseItem(KupferID,PayKupfer);
    elseif (PayKupfer<0) then
        User:createItem(KupferID,PayKupfer*(-1),333,0);
    end
end

function CalcSilverCopper(CAmount)
    local GAmount=math.floor(CAmount/10000);
    local SAmount=math.floor((CAmount-GAmount*10000)/100);
    local CAmount=CAmount-(SAmount*100+GAmount*10000);
    return GAmount,SAmount,CAmount
end
