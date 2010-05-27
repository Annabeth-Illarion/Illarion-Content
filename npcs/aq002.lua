--Name:        Hubert
--Race:        Halfling
--Town:        Newbie Isle.
--Function:    Newbe Quest
--Position:    x=-83 y=-83 z=23
--Facing:      South
--last update: 01/20/2006
--Update by:   Nitram

require("npcs.base.functions")
module("npcs.aq002")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    if (lang==0) then thisNPC:talk(CCharacter.say, "Fasst mich nicht an!") end
    if (lang==1) then thisNPC:talk(CCharacter.say, "Don't you touch me!") end
end

function initializeNpc()
    npcs.base.functions.InitTalkLists();
    applefrom = { };
    thisNPC:increaseSkill(1,"common language",100);
    TraderFirst=1;
    --------------------------------------------- *** EDIT BELOW HERE ***--------------------------------------
    npcs.base.functions.AddTraderTrigger("[Gg]reetings","Hiho! Welcome Traveller! Could you help me?");
    npcs.base.functions.AddAdditionalTrigger("[Hh]ello");
    npcs.base.functions.AddAdditionalTrigger("[Hh][Ii]");
    npcs.base.functions.AddTraderTrigger("[Gg]r[u�][s�]+","Hiho! Willkommen Reisender! K�nntest du mir helfen?");
    npcs.base.functions.AddAdditionalTrigger("[Hh]allo");
    npcs.base.functions.AddTraderTrigger("[Hh]elp","I need two apples to bake a very tasty pie, could you bring me two?");
    npcs.base.functions.AddTraderTrigger("[Tt]ree","#me points \"There! The trees. Can you see them?\"");
    npcs.base.functions.AddTraderTrigger("[Hh]ow.+[gG]et","#w (( hold the shift key. Click on the tree and release the shift key. This is the way you can use items ))");
    npcs.base.functions.AddTraderTrigger("[Hh][ei]lf","Ich brauche zwei �pfel um einen sehr leckeren Kuchen zu backen. K�nntest du mir welche bringen?");
    npcs.base.functions.AddTraderTrigger("[Bb][�a]um","#me zeigt auf die B�ume \"Dort! Die B�ume! Kannst du sie sehen?\"");
    npcs.base.functions.AddTraderTrigger("[Ww]ie.+[Bb]ekomm","#w (( dr�ck die Shift Taste. Klicke den Baum an und lass die Shift-Taste wieder los. So kannst du Gegenst�nde benutzen ))");

    TradSpeakLang={0,6};
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
        thisNPC.activeLanguage=TradStdLang;
    end
    npcs.base.functions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npcs.base.functions.BasicNPCChecks(originator,2) then
        if (npcs.base.functions.LangOK(originator,TradSpeakLang)==true) then
            thisNPC.activeLanguage=originator.activeLanguage;
            Status=Apfelgeben(originator,message)
            if (Status==0) then npcs.base.functions.TellSmallTalk(message) end;

            -----------------------------------------------------------------------------
            if (Status==1) then
                gText="Danke f�r die �pfel! Hier hast du als Dank den leckeren Kuchen!";
                eText="Thanks for the apples! Take this pie as my thanks!";
            elseif (Status==2) then
                gText="Danke f�r den Apfel! Aber ich brauche zwei damit ich einen Kuchen machen kann";
                eText="Thanks for the apple! But I need two to make a pie!";
            elseif (Status==3) then
                gText="Ja! Sie wachsen auf den B�umen dort dr�ben";
                eText="Yes! They grow at the trees there";
            elseif (Status==4) then
                gText="Ich hab doch schon den Kuchen gebacken!";
                eText="Oh, I already made the pie!";
            end

            if (Status~=0) then
                outText=npcs.base.functions.GetNLS(originator,gText,eText);
                thisNPC:talk(CCharacter.say,outText);
            end
        else
            if (verwirrt==false) then
                gText="#me sieht dich leicht verwirrt an, er scheint die Sprache die du sprichst nicht zu verstehen";
                eText="#me looks at you a little confused, it seems he doesn't understand the language you speak";
                outText=npcs.base.functions.GetNLS(originator,gText,eText);
                thisNPC:talk(CCharacter.say,outText);
                verwirrt=true;
            end
        end
    end
end--function

function Apfelgeben(originator,message)
    local retVal=0;
    if (string.find(message,"[Aa��]pfel")~=nil or string.find(message,"[Aa]pple")~=nil) then
        if (originator:countItem(15)>1) then
            if (applefrom[originator.id]==nil) then
                retVal=1;
                originator:eraseItem(15,2);
            elseif (applefrom[originator.id]==1) then
                retVal=1;
                originator:eraseItem(15,1);
            end
            if (applefrom[originator.id]==2) then
                retVal=4;
            else
                originator:createItem(353,1,333,0);
            end
        elseif (originator:countItem(15)==1) then
            if (applefrom[originator.id]==nil) then
                applefrom[originator.id]=0;
            end
            originator:eraseItem(15,1);
            applefrom[originator.id]=applefrom[originator.id]+1;
            if (applefrom[originator.id]==2) then
                originator:createItem(353,1,333,0);
                retVal=1;
            else
                retVal=2;
            end
        else
            retVal=3;
        end
    end
    return retVal
end
