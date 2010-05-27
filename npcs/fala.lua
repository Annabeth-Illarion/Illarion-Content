require("npcs.base.functions")
module("npcs.fala")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    if (lang==0) then thisNPC:talk(CCharacter.say, "Fasst mich nicht an!") end
    if (lang==1) then thisNPC:talk(CCharacter.say, "Don't you touch me!") end
end

function initializeNpc()
    npcs.base.functions.InitTalkLists()
    
    	npcs.base.functions.AddTraderTrigger("[Gg]r�.+","Die F�nf mit euch. Ihr seht ratlos aus, braucht ihr Hilfe?");
	npcs.base.functions.AddAdditionalTrigger("[Hh]allo");
	npcs.base.functions.AddAdditionalTrigger("[Gg]uten Tag");	
	npcs.base.functions.AddTraderTrigger("[Hh]ilfe","Nun, ich kann euch einiges erz�hlen �ber: Gobaith, die St�dte, die G�tter, die Rassen und die Sehensw�rdigkeiten"); 
	npcs.base.functions.AddTraderTrigger("[Gg]obaith","Gobaith ist die Insel auf der ihr euch befindet, es gibt einige Siedlungen hier und viele Orte die sehr sehenswert sind"); 
	npcs.base.functions.AddAdditionalTrigger("[Ii]nsel");
	
npcs.base.functions.AddTraderTrigger("[Ss]t�dte","Da gibt es einmal Trollsbane, Silberbrand, Varshikar, Greenbriar und nat�rlich Tol Vanima"); 
	npcs.base.functions.AddAdditionalTrigger("[Ss]iedlungen");
	npcs.base.functions.AddTraderTrigger("[Ss]ilberbrand","Silberbrand ist die Stadt der Zwerge, verlasst die Stadt durch das Osttor und folgt der Stra�e nach Osten, der Weg ist beschildert.");
	npcs.base.functions.AddTraderTrigger("[Vv]arshikar","Varshikar ist eine kleinere Siedlung in den Bergen, geht durch das Osttor nach Osten und haltet euch auf dem Weg, passt auf R�uber, Fliegen und Skorpione auf");
	npcs.base.functions.AddTraderTrigger("[Rr]�uber","Wegelagerer die euch ohne z�gern t�ten k�nnten! Sie lagern bekanntlich im W�ldchen zwischen Silberbrand und Varshikar und im und um den Nordwald herum.");
	npcs.base.functions.AddTraderTrigger("[Ss]korpione","Ihr Biss ist extrem giftig! Sie leben in der W�ste zwischen Silberbrand und Varshikar, seid vorsichtig wenn ihr sie sieht!");
	npcs.base.functions.AddTraderTrigger("[Ff]liegen","Eher l�stige Biester, aber untersch�tzt sie nicht! Ihr trefft sie am ehesten in der N�he von S�mpfen.");
	npcs.base.functions.AddTraderTrigger("[Gg]reenbriar","Eine Halblingssiedlung auf einer Insel s�dwestlich von hier. Verlasst die Stadt durch das Westtor und folgt der Stra�e und den Wegweisern ");
	npcs.base.functions.AddTraderTrigger("[Tt]ol.+[Vv]anima","Tol Vanima ist die Insel der Elfen. Ihr erreicht sie per Schiff vom Hafen aus. Es ist Unsitte dort Waffen zu tragen!");




	npcs.base.functions.AddTraderTrigger("[Oo]rte","Nun, Lake Adron, die Burg der Grauen, die drei Schwestern, das Druidenhaus, und der Hafen sind einige interessante Orte");
	npcs.base.functions.AddAdditionalTrigger("[Ss]ehensw�rdigkeiten");
	npcs.base.functions.AddAdditionalTrigger("[Pp]l�tze");

	npcs.base.functions.AddTraderTrigger("[Ll]ake.+[Aa]dron","Der See hat seinen Namen vom Gott Adron und begrenzt Trollsbane im Osten, ein h�bsches Pl�tzchen.");

	npcs.base.functions.AddTraderTrigger("[Bb]urg","Die Burg erhebt sich n�rdlich von Trollsbane und wacht �ber die umliegende Landschaft, ein beeindruckendes Bauwerk. ");

	npcs.base.functions.AddTraderTrigger("[Dd]rei.+[Ss]chwestern","Die drei Schwestern oder Inseln der Sirani sind Gobaith vorgelagert. Eine F�hre pendelt vom Hafen aus dort hin. Ein wirklich romantischer Ort...");

	npcs.base.functions.AddTraderTrigger("[Dd]ruidenhaus","");

	npcs.base.functions.AddTraderTrigger("[Tt]rollsbane","Trollsbane ist die �lteste Menschensiedlung der Insel. Sie liegt sehr zentral und ist auch die gr��te Stadt. Ach ja, und ihr steht mitten in ihr, braucht ihr eine Stadt�bersicht?");
	npcs.base.functions.AddTraderTrigger("[Ss]tadt�bersicht","Es gibt viele Geb�ude hier: Die Stadttore, das Seahorse Inn, die Taverne, die B�cherei, die Werkstatt, das Gef�ngnis, das Krankenhaus, der Laden");
	npcs.base.functions.AddTraderTrigger("[Ss]tadttore","Nun die Tore sind keine Geb�ude an sich aber durch sie k�nnt ihr die Stadt verlassen, es gibt ein Nordtor, ein Osttor und ein Westtor");
	npcs.base.functions.AddTraderTrigger("[Ss]eahorse Inn","Wenn ihr eine bleibe sucht, seid ihr hier richtig! Es ist ein gro�es mehrst�ckiges Haus am Westtor, gleich neben Lake Adron, ihr k�nnt es nicht verfehlen!");
	npcs.base.functions.AddTraderTrigger("[Tt]averne","Die Fluffy Sheep Taverne ist gleich auf der anderen Stra�enseite dieses Geb�udes. Der Barkeeper ist ruppig, aber die Getr�nke sind gut und preiswert.");
	npcs.base.functions.AddTraderTrigger("[Bb]�cherei","Ihr befindet euch in der B�cherei. Dieser Schrein ist Elara, der"); --- noch schreiben
	npcs.base.functions.AddTraderTrigger("[Ww]erkstatt","Die Werkstatt ist gleich �stlich vom Seahorse Inn. In der Werkstatt findet ihr sperriges Werkzeug f�r manches Handwerk."); 
	npcs.base.functions.AddTraderTrigger("[Gg]ef�ngnis","Hofft dass ihr es nie von Innen sehen m�sst! Es ist etwas westlich vom Nordtor.");
	npcs.base.functions.AddTraderTrigger("[Kk]rankenhaus","Das Krankenhaus liegt zwischen Taverne und Seahorse Inn. Dort k�nnt ihr Kr�uter und Heiltr�nke erstehen und behandelt werden sollte ein Heiler pr�sent sein.");
	npcs.base.functions.AddTraderTrigger("[Ll]aden","Zum Laden kommt ihr wenn ihr der Stra�e drau�en Richtung Osten folgt. Eliza verkauft Waffen, die anderen H�ndler Kleidung und Gemischtwaren.");

  
    
    	npcs.base.functions.AddCycleText("#me schaut sich um","#me looks around");
    	npcs.base.functions.AddCycleText("#me murmelt ein Gebet in sich hinein","#me murmurs a prayer towards himself");

    
    TradSpeakLang={0,1,4};  -- Sprache die der NPC spricht
    TradStdLang=0;          -- Sprache die der NPC normalerweise spricht
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
            npcs.base.functions.TellSmallTalk(message);
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
